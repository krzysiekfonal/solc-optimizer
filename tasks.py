import pathlib
import cffi
from invoke import task


@task()
def build_yulopti(c):
    this_dir = pathlib.Path().absolute()
    libsol_dir = this_dir / "libsol"
    print(this_dir)
    ffi = cffi.FFI()
    ffi.cdef("""
        const char* begin(const char* source);
        const char* end(const char* source);
        const char* steps(const char* source, const char* steps);
        const char* toJson(const char* source);
    """)
    ffi.set_source(
        "yulopti_wrapper",
        '#import "yulopti.h"',
        libraries=["yuloptiforml_pywrapper", "solidity", "langutil", "solutil", "yul", "evmasm"],
        #libraries=["yuloptiforml_pywrapper"],
        library_dirs=[libsol_dir.as_posix()],
        extra_link_args=["-Wl,-rpath,."],
        extra_compile_args=['-mmacosx-version-min=11.0']
    )

    ffi.compile(verbose=True)
