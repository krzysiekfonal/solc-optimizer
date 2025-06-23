object "strings_1997" {
    code {
        /// @src 0:2001:25764  "library strings {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("strings_1997_deployed"), datasize("strings_1997_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("strings_1997_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:2001:25764  "library strings {..."
        function constructor_strings_1997() {

            /// @src 0:2001:25764  "library strings {..."

        }
        /// @src 0:2001:25764  "library strings {..."

    }
    /// @use-src 0:"_stringutils/stringutils.sol"
    object "strings_1997_deployed" {
        code {
            /// @src 0:2001:25764  "library strings {..."
            mstore(64, memoryguard(128))

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

        }

        data ".metadata" hex"a2646970667358221220667bee8cfac39452812eb5abd6e0ec2bc95b7f23ae2903031333058046d37f6464736f6c634300081b0033"
    }

}