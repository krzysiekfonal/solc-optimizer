/// @use-src 0:"data/verifier.sol"
object "Pairing_627" {
    code {
        /// @src 0:1128:6232  "library Pairing {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Pairing_627_deployed"), datasize("Pairing_627_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Pairing_627_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:1128:6232  "library Pairing {..."
        function constructor_Pairing_627() {

            /// @src 0:1128:6232  "library Pairing {..."

        }
        /// @src 0:1128:6232  "library Pairing {..."

    }
    /// @use-src 0:"data/verifier.sol"
    object "Pairing_627_deployed" {
        code {
            /// @src 0:1128:6232  "library Pairing {..."
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

        data ".metadata" hex"a26469706673582212207c8a203f7f0575d2b450afc0e02e28aa5a2384a35a6f89843e6c6ec02a29a4c464736f6c637828302e382e32362d646576656c6f702e323032342e332e32302b636f6d6d69742e61666461363938340059"
    }

}
