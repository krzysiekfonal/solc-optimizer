import logging
import os
from functools import cache

from utils import run_command


# @cache
# def do_opt_step(yul_file, opt_step) -> [str, str]:
#     logging.info(f"Optimizing {yul_file} with {opt_step}")
#     out = run_command(f"solc --strict-assembly --optimize --yul-optimizations '{opt_step}:' {yul_file}")
#     start_idx = out.index('Pretty printed source:') + 23
#     end_idx = out.index('\n\n\nBinary')
#
#     opt_yul = out[start_idx:end_idx]
#     logging.debug(opt_yul)
#
#     start_idx = out.index('Binary representation:') + 23
#     end_idx = out.index('\nText')
#     binary = out[start_idx:end_idx]
#
#     logging.debug(binary)
#
#     return opt_yul, binary
#
#
# cached_original_compilation = {}
@cache
def do_opt_step(yul_file, opt_step) -> [str, str]:
    logging.info(f"Optimizing {yul_file} with {opt_step}")
    out = run_command(f"./yuloptiml --steps '{opt_step}' {yul_file}")

    return out, None


@cache
def do_begin(yul_file) -> [str, str]:
    logging.info(f"Optimizing {yul_file} with begin")
    out = run_command(f"./yuloptiml --begin {yul_file}")

    return out, None


@cache
def do_end(yul_file) -> [str, str]:
    logging.info(f"Optimizing {yul_file} with end")
    out = run_command(f"./yuloptiml --end {yul_file}")

    return out, None


cached_original_compilation = {}


def report(msg):
    with open(f"./logs/{os.getpid()}_log.txt", "a") as f:
        f.write(f"{msg}\n")
        print(f"{msg}\n")


@cache
def score(yul_file, opt_steps, init_steps='', binary=None) -> float:
    try:
        if binary is None:
            out = run_command(f"solc --strict-assembly --bin --optimize --yul-optimizations '{opt_steps}:{init_steps}' {yul_file}")
            start_idx = out.index('Binary representation:') + 23
            res1 = out[start_idx:-1]
            logging.debug(res1)
        else:
            res1 = binary

        if yul_file in cached_original_compilation:
            res2 = cached_original_compilation[yul_file]
        else:
            out = run_command(f"solc --strict-assembly --bin --optimize {yul_file}")
            start_idx = out.index('Binary representation:') + 23
            res2 = out[start_idx:-1]
            cached_original_compilation[yul_file] = res2
            logging.debug(res2)

        return len(res2) / len(res1)
    except Exception as e:
        logging.error(f"Error scoring {yul_file}: {e}")
        report(f"Error scoring {yul_file}: {e}")
        return 0
