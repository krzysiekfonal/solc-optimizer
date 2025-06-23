import logging
import json
import math
from functools import cache

from jsonpath_ng import parse
import numpy as np

from utils import run_command


def _extract_node_type_map(ast) -> dict:
    jsonpath_expr = parse('$..nodeType')
    nt_map = dict()
    node_nr = 0
    for node in (i.value for i in jsonpath_expr.find(ast)):
        if node in nt_map:
            nt_map[node] += 1
        else:
            nt_map[node] = 1
        node_nr += 1
    logging.debug(nt_map)

    return nt_map, node_nr


def _extract_function_call_map(ast) -> dict:
    jsonpath_expr = parse('$..functionName')
    fn_map = dict()
    for node in (i.value['name'] for i in jsonpath_expr.find(ast)):
        if node in fn_map:
            fn_map[node] += 1
        else:
            fn_map[node] = 1
    logging.debug(fn_map)

    return fn_map


@cache
def extract_features_map(yul_file=None, yul_json=None) -> list[float]:
    logging.info(f"Extracting features from {yul_file} or {yul_json}")

    # out = run_command(f"solc --strict-assembly --ast-compact-json {yul_file}")
    # ast = json.loads(out.split("\n")[4])
    ast = json.loads(run_command(f"./yuloptiml --json {yul_file}")) if yul_file else json.loads(yul_json)

    # extract Yul elements with count and called function names with count
    nt_map, node_nr = _extract_node_type_map(ast)
    fn_map = _extract_function_call_map(ast)

    # set final features map
    features_yul_elements = np.array([
        nt_map.get('YulAssignment', 0),
        math.sqrt(nt_map.get('YulFunctionCall', 0)),
        nt_map.get('YulVariableDeclaration', 0),
        nt_map.get('YulFunctionDefinition', 0),
        nt_map.get('YulIf', 0) + nt_map.get('YulCase', 0),
        nt_map.get('YulForLoop', 0),
        nt_map.get('YulLeave', 0),
        nt_map.get('YulBreak', 0),
        nt_map.get('YulContinue', 0)
    ])

    features_store_mem_access = np.array([
        fn_map.get('mload', 0),
        fn_map.get('mstore', 0) + fn_map.get('mstore8', 0),
        fn_map.get('sload', 0),
        fn_map.get('sstore', 0),
        fn_map.get('tload', 0),
        fn_map.get('tstore', 0),
        fn_map.get('calldataload', 0),
    ])

    features_general = np.array([
        nt_map.get('YulData', 0),
        nt_map.get('YulCode', 0),
        nt_map.get('YulObject', 0),
        fn_map.get('call', 0) + fn_map.get('callcode', 0) + fn_map.get('delegatecall', 0) + fn_map.get('staticcall', 0),
        # math.sqrt(node_nr) / 10,
    ])

    logging.debug(features_yul_elements)
    logging.debug(features_store_mem_access)
    logging.debug(features_general)

    epsilon = 1e-6  # to avoid division by zero when calculating norm
    features_vec = np.concatenate((
        features_yul_elements,  # / (np.linalg.norm(features_yul_elements) + epsilon),
        features_store_mem_access,  # / (np.linalg.norm(features_store_mem_access) + epsilon),
        features_general)  # / (np.linalg.norm(features_general) + epsilon) + epsilon)
    )
    return features_vec.tolist()
