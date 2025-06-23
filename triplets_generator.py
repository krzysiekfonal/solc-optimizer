import json

from datasets import load_dataset
import json
from subprocess import CalledProcessError

from utils import run_command

EVM_OPCODES = {
    'stop': 'voidTy',
    'add': 'numberTy', 
    'mul': 'numberTy', 
    'div': 'numberTy',
    'sdiv': 'numberTy',
    'mod': 'numberTy',
    'smod': 'numberTy',
    'exp': 'numberTy',
    'not': 'booleanTy',
    'lt': 'booleanTy',
    'gt': 'booleanTy',
    'slt': 'booleanTy',
    'sgt': 'booleanTy',
    'eq': 'booleanTy',
    'iszero': 'booleanTy',
    'and': 'booleanTy',
    'or': 'booleanTy',
    'xor': 'booleanTy',
    'byte': 'numberTy',
    'shl': 'numberTy',
    'shr': 'numberTy',
    'sar': 'numberTy',
    'addmod': 'numberTy',
    'mulmod': 'numberTy',
    'signextend': 'numberTy',
    'keccak256': 'numberTy',
    'pop': 'voidTy',
    'mload': 'numberTy',
    'mstore': 'voidTy',
    'mstore8': 'voidTy',
    'sload': 'numberTy',
    'sstore': 'voidTy',
    'tload': 'numberTy',
    'tstore': 'voidTy',
    'msize': 'numberTy',
    'gas': 'numberTy',
    'address': 'addressTy',
    'balance': 'numberTy',
    'selfbalance': 'numberTy',
    'caller': 'addressTy',
    'callvalue': 'numberTy',
    'calldataload': 'numberTy',
    'calldatasize': 'numberTy',
    'calldatacopy': 'voidTy',
    'codesize': 'numberTy',
    'codecopy': 'voidTy',
    'extcodesize': 'numberTy',
    'extcodecopy': 'voidTy',
    'returndatasize': 'numberTy',
    'returndatacopy': 'voidTy',
    'mcopy': 'voidTy',
    'extcodehash': 'numberTy',
    'create': 'addressTy',
    'create2': 'addressTy',
    'call': 'voidTy',
    'callcode': 'voidTy',
    'delegatecall': 'voidTy',
    'staticcall': 'voidTy',
    'return': 'voidTy',
    'revert': 'voidTy',
    'selfdestruct': 'voidTy',
    'invalid': 'voidTy',
    'log0': 'voidTy',
    'log1': 'voidTy',
    'log2': 'voidTy',
    'log3': 'voidTy',
    'log4': 'voidTy',
    'chainid': 'numberTy',
    'basefee': 'numberTy',
    'blobbasefee': 'numberTy',
    'origin': 'numberTy',
    'gasprice': 'numberTy',
    'blockhash': 'numberTy',
    'blobhash': 'numberTy',
    'coinbase': 'numberTy',
    'timestamp': 'numberTy',
    'number': 'numberTy',
    'difficulty': 'numberTy',
    'prevrandao': 'numberTy',
    'gaslimit': 'numberTy',
}

dataset = load_dataset("KrzysztofFonal/yulcode")
f = open("triplets.csv", "a")

def extract_arguments(ast):
    arguments = []
    for arg in ast:
        if arg["nodeType"] == "YulFunctionCall":
            arguments.append("function")
        elif arg["nodeType"] == "YulIdentifier":
            arguments.append("variable")
        elif arg["nodeType"] == "YulLiteral":
            arguments.append("constant")
        else:
            arguments.append("unknown")
    return "  ".join(arguments)

def extract_function_call(ast):
    opcode_name = ast["functionName"]["name"]
    opcode_type = EVM_OPCODES.get(ast["functionName"]["name"], None)
    if not opcode_type:
        opcode_type = "unknownTy"
        opcode_name = "functioncall"
    
    print(f"{opcode_name}  {opcode_type}  {extract_arguments(ast['arguments'])}", file=f)

# parse yul_json and print all nodes
def extract_triplets(ast):
    nodeType = ast["nodeType"]

    match nodeType:
        # YulObject is root node
        case "YulObject":
            extract_triplets(ast["code"])
        # YulCode is a container for code
        case "YulCode":
            extract_triplets(ast["block"])
        # YulBlock is a container for statements
        case "YulBlock":
            for statement in ast["statements"]:
                extract_triplets(statement)
        # YulFunctionCall is just a function call
        case "YulFunctionCall":
            extract_function_call(ast)
        # Statement is fundamental node inside block consisting of a few other possible node types
        case "YulExpressionStatement":
            extract_triplets(ast["expression"])
            # if ast["expression"]["nodeType"] == "YulFunctionCall":
            #     extract_function_call(ast["expression"])
        # Below nodes are statements options
        case "YulVariableDeclaration":
            if ast["value"]:
                extract_triplets(ast["value"])
        case "YulAssignment":
            extract_triplets(ast["value"])
        case "YulFunctionDefinition":
            # print(ast["name"])
            extract_triplets(ast["body"])
        case "YulIf":
            print(f"if  booleanTy  {extract_arguments([ast['condition']])}", file=f)
            extract_triplets(ast["body"])
        case "YulForLoop":
            print("forloop  voidTy", file=f)
            extract_triplets(ast["pre"])
            extract_triplets(ast["condition"])
            extract_triplets(ast["post"])
            extract_triplets(ast["body"])
        case "YulSwitch":
            print(f"switch  voidTy  {extract_arguments([ast['expression']])}", file=f)
            for switch_case in ast["cases"]:
                extract_triplets(switch_case["body"])
        case "YulBreak":
            print("break  voidTy", file=f)
        case "YulContinue":
            print("continue  voidTy", file=f)
        case "YulLeave":
            print("leave  voidTy", file=f)
        case "YulIdentifier":
            # do nothing
            pass
        case "YulLiteral":
            # do nothing
            pass
        case _:
            print(f"Unknown node type: {nodeType}")

i = 0
for yul_code in dataset["train"]:
    # yul_json=yulopti.to_json(yul_code['source_code'])
    # ast = json.loads(yul_json)
    
    temp_yul = open("temp.yul", "w")
    print(yul_code['source_code'], file=temp_yul)
    temp_yul.close()

    ast = json.loads(run_command('./yuloptiml --json temp.yul'))
    
    extract_triplets(ast)
    for sub_object in ast['subObjects']:
        if 'code' in sub_object:
            extract_triplets(sub_object['code'])
    i += 1
    if i % 5000 == 0:
        print(f"Processed {i} contracts")
        f.flush()
f.close()
