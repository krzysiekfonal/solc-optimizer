from functools import cache
import yulopti_wrapper
import cffi


_ffi = cffi.FFI()


def _ffi_str_to_string(ffi_str):
    return _ffi.string(ffi_str).decode('utf-8')


@cache
def begin(source: str) -> str:
    return _ffi_str_to_string(yulopti_wrapper.lib.begin(source.encode('utf-8')))


@cache
def end(source: str) -> str:
    return _ffi_str_to_string(yulopti_wrapper.lib.end(source.encode('utf-8')))


@cache
def steps(source: str, step_seq: str) -> str:
    return _ffi_str_to_string(
        yulopti_wrapper.lib.steps(source.encode('utf-8'), step_seq.encode('utf-8'))
    )


@cache
def to_json(source: str) -> str:
    return _ffi_str_to_string(yulopti_wrapper.lib.toJson(source.encode('utf-8')))
