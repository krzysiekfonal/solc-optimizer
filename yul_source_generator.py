import json

from datasets import load_dataset
import os
import pathlib
import re
from subprocess import CalledProcessError
import multiprocess as mp

from utils import run_command

print("Loading dataset")
dataset = load_dataset("ASSERT-KTH/DISL", "decomposed")
contracts = {}

print("Processing dataset")
for row in dataset["train"]:
    v = row["compiler_version"]
    if row["language"] == "Solidity" and v.startswith("v0.8") and int(v.split('.')[2].split('+')[0]) >= 10:
        row["parsed_version"] = v.split('+')[0]
        if row["contract_address"] in contracts:
            contracts[row["contract_address"]].append(row)
        else:
            contracts[row["contract_address"]] = [row]

print(len(contracts.keys()))


def extract_yul_from_single_sol(contract) -> bool:
    run_command('rm -rf ./cache/*')
    solc = f"./compilers/solc-{contract['parsed_version']}"
    sol_orig_path = contract['file_path'].replace(' ', '_')
    node_modules = pathlib.Path().absolute() / "node_modules"
    base_path = pathlib.Path().absolute() / "cache"
    sol_path = base_path / (sol_orig_path[1:] if sol_orig_path.startswith("/") else sol_orig_path)
    yul_dir = pathlib.Path().absolute().parent / "dataset" / contract["contract_address"]
    if os.path.exists(yul_dir) and "meta.info" in os.listdir(yul_dir):
        print("Already exists")
        return True
    if os.path.exists(solc):
        # [print(x["file_path"]) for x in contract]
        print(f'Contract name: {contract["contract_name"]}')
        print(contract["compiler_version"])
        print("Sol orig path", sol_orig_path)
        print("Sol final path", sol_path)
        print("Yul dir", yul_dir)
        os.makedirs(sol_path.parent, exist_ok=True)
        with open(sol_path, "w") as f:
            f.write(contract["source_code"])
        out = run_command(f"{solc} --include-path {node_modules} --base-path {base_path}  --ir {sol_path}")
        # split outputs by IR: - separate yul sources
        for yul_source in out.split("IR:"):
            # extract name for yul file based on top Object name
            filename = None
            match = re.search(r'object "(.*)"', yul_source)
            if match:
                filename = match.groups()[0]

            if not filename:
                continue

            # save yul into disk
            yul_path = yul_dir / f"{filename}.yul"
            os.makedirs(yul_dir, exist_ok=True)
            with open(yul_path, "w") as f:
                f.write(yul_source)

            # verify it compiles successfully
            run_command(f"solc --strict-assembly {yul_path}")

        # save metadata to have them and confirm directory is completed
        with (open(yul_dir / "meta.info", "w") as f):
            _contract = contract.copy()
            _contract.pop("source_code")
            json.dump(_contract, f)

        return True
    else:
        print(f"Solc {contract['parsed_version']} not found")

    return False


def process_contract(contract):
    if len(contract) > 1:
        return False

    try:
        return extract_yul_from_single_sol(contract[0])
    except CalledProcessError:
        print(f"Solc error with contract {contract[0]['contract_name']} -> {contract[0]['contract_address']}")
    except Exception as e:
        print(f"Error with contract {contract[0]['contract_name']}: {e}")


print("Generate YUL sources starts")
executor = mp.Pool(1)
succeeded = 0
failed = 0
for result in executor.map(process_contract, contracts.values()):
    if result:
        succeeded += 1
    else:
        failed += 1

print(succeeded)
print(failed)
