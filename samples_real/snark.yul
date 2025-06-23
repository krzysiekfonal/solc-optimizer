object "Pairing_624" {
    code {
        /// @src 0:0:4067  "library Pairing {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Pairing_624_deployed"), datasize("Pairing_624_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Pairing_624_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:0:4067  "library Pairing {..."
        function constructor_Pairing_624() {

            /// @src 0:0:4067  "library Pairing {..."

        }
        /// @src 0:0:4067  "library Pairing {..."

    }
    /// @use-src 0:"snark.sol"
    object "Pairing_624_deployed" {
        code {
            /// @src 0:0:4067  "library Pairing {..."
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

        data ".metadata" hex"a2646970667358221220d4be481ee9ca339ea70454bafb4f1807a1ff361ebd2a40c1bc26c943881c68e164736f6c634300081b0033"
    }

}