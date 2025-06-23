IR:

/// @use-src 0:"snark.sol"
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


IR:

/// @use-src 0:"snark.sol"
object "Test_1595" {
    code {
        /// @src 0:4069:14233  "contract Test {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Test_1595()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Test_1595_deployed"), datasize("Test_1595_deployed"))

        return(_1, datasize("Test_1595_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:4069:14233  "contract Test {..."
        function constructor_Test_1595() {

            /// @src 0:4069:14233  "contract Test {..."

        }
        /// @src 0:4069:14233  "contract Test {..."

    }
    /// @use-src 0:"snark.sol"
    object "Test_1595_deployed" {
        code {
            /// @src 0:4069:14233  "contract Test {..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x26121ff0
                {
                    // f()

                    external_fun_f_754()
                }

                case 0x6dae022f
                {
                    // verifyTx()

                    external_fun_verifyTx_1594()
                }

                case 0xa8aa1b31
                {
                    // pair()

                    external_fun_pair_981()
                }

                case 0xe10fb98f
                {
                    // testMul()

                    external_fun_testMul_831()
                }

                case 0xe2179b8e
                {
                    // g()

                    external_fun_g_789()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_f_754() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_f_754()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_verifyTx_1594() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_verifyTx_1594()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_pair_981() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_pair_981()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_testMul_831() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_testMul_831()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_g_789() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_g_789()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function allocate_memory_struct_t_struct$_G1Point_$5_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function zero_value_for_t_uint256() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_G1Point_$5_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_G1Point_$5_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_G1Point_$5_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_G1Point_$5_memory_ptr()
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            /// @ast-id 754
            /// @src 0:4520:4863  "function f() public returns (bool) {..."
            function fun_f_754() -> var__680 {
                /// @src 0:4549:4553  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__680 := zero_t_bool_1

                /// @src 0:4559:4584  "Pairing.G1Point memory p1"
                let var_p1_686_mpos
                let zero_t_struct$_G1Point_$5_memory_ptr_2_mpos := zero_value_for_split_t_struct$_G1Point_$5_memory_ptr()
                var_p1_686_mpos := zero_t_struct$_G1Point_$5_memory_ptr_2_mpos
                /// @src 0:4588:4613  "Pairing.G1Point memory p2"
                let var_p2_692_mpos
                let zero_t_struct$_G1Point_$5_memory_ptr_3_mpos := zero_value_for_split_t_struct$_G1Point_$5_memory_ptr()
                var_p2_692_mpos := zero_t_struct$_G1Point_$5_memory_ptr_3_mpos
                /// @src 0:4624:4625  "1"
                let expr_697 := 0x01
                /// @src 0:4617:4625  "p1.X = 1"
                let _4 := convert_t_rational_1_by_1_to_t_uint256(expr_697)
                /// @src 0:4617:4619  "p1"
                let _5_mpos := var_p1_686_mpos
                let expr_694_mpos := _5_mpos
                /// @src 0:4617:4621  "p1.X"
                let _6 := add(expr_694_mpos, 0)
                /// @src 0:4617:4625  "p1.X = 1"
                let _7 := _4
                write_to_memory_t_uint256(_6, _7)
                let expr_698 := _4
                /// @src 0:4634:4635  "2"
                let expr_703 := 0x02
                /// @src 0:4627:4635  "p1.Y = 2"
                let _8 := convert_t_rational_2_by_1_to_t_uint256(expr_703)
                /// @src 0:4627:4629  "p1"
                let _9_mpos := var_p1_686_mpos
                let expr_700_mpos := _9_mpos
                /// @src 0:4627:4631  "p1.Y"
                let _10 := add(expr_700_mpos, 32)
                /// @src 0:4627:4635  "p1.Y = 2"
                let _11 := _8
                write_to_memory_t_uint256(_10, _11)
                let expr_704 := _8
                /// @src 0:4646:4647  "1"
                let expr_709 := 0x01
                /// @src 0:4639:4647  "p2.X = 1"
                let _12 := convert_t_rational_1_by_1_to_t_uint256(expr_709)
                /// @src 0:4639:4641  "p2"
                let _13_mpos := var_p2_692_mpos
                let expr_706_mpos := _13_mpos
                /// @src 0:4639:4643  "p2.X"
                let _14 := add(expr_706_mpos, 0)
                /// @src 0:4639:4647  "p2.X = 1"
                let _15 := _12
                write_to_memory_t_uint256(_14, _15)
                let expr_710 := _12
                /// @src 0:4656:4657  "2"
                let expr_715 := 0x02
                /// @src 0:4649:4657  "p2.Y = 2"
                let _16 := convert_t_rational_2_by_1_to_t_uint256(expr_715)
                /// @src 0:4649:4651  "p2"
                let _17_mpos := var_p2_692_mpos
                let expr_712_mpos := _17_mpos
                /// @src 0:4649:4653  "p2.Y"
                let _18 := add(expr_712_mpos, 32)
                /// @src 0:4649:4657  "p2.Y = 2"
                let _19 := _16
                write_to_memory_t_uint256(_18, _19)
                let expr_716 := _16
                /// @src 0:4699:4706  "Pairing"
                let expr_723_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:4711:4713  "p1"
                let _20_mpos := var_p1_686_mpos
                let expr_725_mpos := _20_mpos
                /// @src 0:4715:4717  "p2"
                let _21_mpos := var_p2_692_mpos
                let expr_726_mpos := _21_mpos
                /// @src 0:4699:4718  "Pairing.add(p1, p2)"
                let expr_727_mpos := fun_add_143(expr_725_mpos, expr_726_mpos)
                /// @src 0:4661:4718  "Pairing.G1Point memory explicit_sum = Pairing.add(p1, p2)"
                let var_explicit_sum_722_mpos := expr_727_mpos
                /// @src 0:4759:4766  "Pairing"
                let expr_734_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:4771:4773  "p1"
                let _22_mpos := var_p1_686_mpos
                let expr_736_mpos := _22_mpos
                /// @src 0:4775:4776  "2"
                let expr_737 := 0x02
                /// @src 0:4759:4777  "Pairing.mul(p1, 2)"
                let _23 := convert_t_rational_2_by_1_to_t_uint256(expr_737)
                let expr_738_mpos := fun_mul_191(expr_736_mpos, _23)
                /// @src 0:4722:4777  "Pairing.G1Point memory scalar_prod = Pairing.mul(p1, 2)"
                let var_scalar_prod_733_mpos := expr_738_mpos
                /// @src 0:4789:4801  "explicit_sum"
                let _24_mpos := var_explicit_sum_722_mpos
                let expr_740_mpos := _24_mpos
                /// @src 0:4789:4803  "explicit_sum.X"
                let _25 := add(expr_740_mpos, 0)
                let _26 := read_from_memoryt_uint256(_25)
                let expr_741 := _26
                /// @src 0:4807:4818  "scalar_prod"
                let _27_mpos := var_scalar_prod_733_mpos
                let expr_742_mpos := _27_mpos
                /// @src 0:4807:4820  "scalar_prod.X"
                let _28 := add(expr_742_mpos, 0)
                let _29 := read_from_memoryt_uint256(_28)
                let expr_743 := _29
                /// @src 0:4789:4820  "explicit_sum.X == scalar_prod.X"
                let expr_744 := eq(cleanup_t_uint256(expr_741), cleanup_t_uint256(expr_743))
                /// @src 0:4789:4858  "explicit_sum.X == scalar_prod.X &&..."
                let expr_750 := expr_744
                if expr_750 {
                    /// @src 0:4827:4839  "explicit_sum"
                    let _30_mpos := var_explicit_sum_722_mpos
                    let expr_745_mpos := _30_mpos
                    /// @src 0:4827:4841  "explicit_sum.Y"
                    let _31 := add(expr_745_mpos, 32)
                    let _32 := read_from_memoryt_uint256(_31)
                    let expr_746 := _32
                    /// @src 0:4845:4856  "scalar_prod"
                    let _33_mpos := var_scalar_prod_733_mpos
                    let expr_747_mpos := _33_mpos
                    /// @src 0:4845:4858  "scalar_prod.Y"
                    let _34 := add(expr_747_mpos, 32)
                    let _35 := read_from_memoryt_uint256(_34)
                    let expr_748 := _35
                    /// @src 0:4827:4858  "explicit_sum.Y == scalar_prod.Y"
                    let expr_749 := eq(cleanup_t_uint256(expr_746), cleanup_t_uint256(expr_748))
                    /// @src 0:4789:4858  "explicit_sum.X == scalar_prod.X &&..."
                    expr_750 := expr_749
                }
                /// @src 0:4788:4859  "(explicit_sum.X == scalar_prod.X &&..."
                let expr_751 := expr_750
                /// @src 0:4781:4859  "return (explicit_sum.X == scalar_prod.X &&..."
                var__680 := expr_751
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            function cleanup_t_rational_9_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9_by_1(value)))
            }

            function array_allocation_size_t_array$_t_uint256_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_uint256_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_uint256_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_memory_chunk_t_uint256(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_array$_t_uint256_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_uint256_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_uint256_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_uint256(dataStart, dataSize)
            }

            function allocate_memory_struct_t_struct$_Proof_$677_memory_ptr() -> memPtr {
                memPtr := allocate_memory(256)
            }

            function zero_value_for_t_struct$_G1Point_$5_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_G1Point_$5_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_G2Point_$14_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function array_allocation_size_t_array$_t_uint256_$2_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            function allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_uint256_$2_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

            }

            function allocate_and_zero_memory_array_t_array$_t_uint256_$2_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_uint256_$2_memory_ptr(length)

                zero_memory_chunk_t_uint256(dataStart, dataSize)
            }

            function zero_value_for_t_array$_t_uint256_$2_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
            }

            function allocate_and_zero_memory_struct_t_struct$_G2Point_$14_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_G2Point_$14_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_array$_t_uint256_$2_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_array$_t_uint256_$2_memory_ptr())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_G2Point_$14_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_G2Point_$14_memory_ptr()
            }

            function allocate_and_zero_memory_struct_t_struct$_Proof_$677_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_Proof_$677_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G2Point_$14_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_Proof_$677_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_Proof_$677_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function cleanup_t_rational_12873740738727497448187997291915224677121726020054032516825496230827252793177_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_12873740738727497448187997291915224677121726020054032516825496230827252793177_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_12873740738727497448187997291915224677121726020054032516825496230827252793177_by_1(value)))
            }

            function cleanup_t_rational_21804419174137094775122804775419507726154084057848719988004616848382402162497_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21804419174137094775122804775419507726154084057848719988004616848382402162497_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21804419174137094775122804775419507726154084057848719988004616848382402162497_by_1(value)))
            }

            function cleanup_t_rational_7742452358972543465462254569134860944739929848367563713587808717088650354556_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_7742452358972543465462254569134860944739929848367563713587808717088650354556_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_7742452358972543465462254569134860944739929848367563713587808717088650354556_by_1(value)))
            }

            function cleanup_t_rational_7324522103398787664095385319014038380128814213034709026832529060148225837366_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_7324522103398787664095385319014038380128814213034709026832529060148225837366_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_7324522103398787664095385319014038380128814213034709026832529060148225837366_by_1(value)))
            }

            function cleanup_t_rational_8176651290984905087450403379100573157708110416512446269839297438960217797614_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8176651290984905087450403379100573157708110416512446269839297438960217797614_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8176651290984905087450403379100573157708110416512446269839297438960217797614_by_1(value)))
            }

            function cleanup_t_rational_15588556568726919713003060429893850972163943674590384915350025440408631945055_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15588556568726919713003060429893850972163943674590384915350025440408631945055_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_15588556568726919713003060429893850972163943674590384915350025440408631945055_by_1(value)))
            }

            function cleanup_t_rational_15347511022514187557142999444367533883366476794364262773195059233657571533367_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15347511022514187557142999444367533883366476794364262773195059233657571533367_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_15347511022514187557142999444367533883366476794364262773195059233657571533367_by_1(value)))
            }

            function cleanup_t_rational_4265071979090628150845437155927259896060451682253086069461962693761322642015_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4265071979090628150845437155927259896060451682253086069461962693761322642015_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4265071979090628150845437155927259896060451682253086069461962693761322642015_by_1(value)))
            }

            function allocate_memory_struct_t_struct$_G2Point_$14_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function write_to_memory_t_array$_t_uint256_$2_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function cleanup_t_rational_2979746655438963305714517285593753729335852012083057917022078236006592638393_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2979746655438963305714517285593753729335852012083057917022078236006592638393_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2979746655438963305714517285593753729335852012083057917022078236006592638393_by_1(value)))
            }

            function cleanup_t_rational_6470627481646078059765266161088786576504622012540639992486470834383274712950_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6470627481646078059765266161088786576504622012540639992486470834383274712950_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6470627481646078059765266161088786576504622012540639992486470834383274712950_by_1(value)))
            }

            function cleanup_t_rational_6851077925310461602867742977619883934042581405263014789956638244065803308498_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6851077925310461602867742977619883934042581405263014789956638244065803308498_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6851077925310461602867742977619883934042581405263014789956638244065803308498_by_1(value)))
            }

            function cleanup_t_rational_10336382210592135525880811046708757754106524561907815205241508542912494488506_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10336382210592135525880811046708757754106524561907815205241508542912494488506_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10336382210592135525880811046708757754106524561907815205241508542912494488506_by_1(value)))
            }

            function cleanup_t_rational_12491625890066296859584468664467427202390981822868257437245835716136010795448_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_12491625890066296859584468664467427202390981822868257437245835716136010795448_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_12491625890066296859584468664467427202390981822868257437245835716136010795448_by_1(value)))
            }

            function cleanup_t_rational_13818492518017455361318553880921248537817650587494176379915981090396574171686_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_13818492518017455361318553880921248537817650587494176379915981090396574171686_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_13818492518017455361318553880921248537817650587494176379915981090396574171686_by_1(value)))
            }

            function cleanup_t_rational_12091046215835229523641173286701717671667447745509192321596954139357866668225_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_12091046215835229523641173286701717671667447745509192321596954139357866668225_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_12091046215835229523641173286701717671667447745509192321596954139357866668225_by_1(value)))
            }

            function cleanup_t_rational_14446807589950902476683545679847436767890904443411534435294953056557941441758_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_14446807589950902476683545679847436767890904443411534435294953056557941441758_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_14446807589950902476683545679847436767890904443411534435294953056557941441758_by_1(value)))
            }

            function cleanup_t_rational_21341087976609916409401737322664290631992568431163400450267978471171152600502_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21341087976609916409401737322664290631992568431163400450267978471171152600502_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21341087976609916409401737322664290631992568431163400450267978471171152600502_by_1(value)))
            }

            function cleanup_t_rational_2942165230690572858696920423896381470344658299915828986338281196715687693170_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2942165230690572858696920423896381470344658299915828986338281196715687693170_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2942165230690572858696920423896381470344658299915828986338281196715687693170_by_1(value)))
            }

            function cleanup_t_rational_13986731495506593864492662381614386532349950841221768152838255933892789078521_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_13986731495506593864492662381614386532349950841221768152838255933892789078521_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_13986731495506593864492662381614386532349950841221768152838255933892789078521_by_1(value)))
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_uint256_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_622860516154313070522697309645122400675542217310916019527100517240519630053_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_622860516154313070522697309645122400675542217310916019527100517240519630053_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_622860516154313070522697309645122400675542217310916019527100517240519630053_by_1(value)))
            }

            function cleanup_t_rational_11094488463398718754251685950409355128550342438297986977413505294941943071569_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_11094488463398718754251685950409355128550342438297986977413505294941943071569_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_11094488463398718754251685950409355128550342438297986977413505294941943071569_by_1(value)))
            }

            function cleanup_t_rational_6627643779954497813586310325594578844876646808666478625705401786271515864467_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6627643779954497813586310325594578844876646808666478625705401786271515864467_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6627643779954497813586310325594578844876646808666478625705401786271515864467_by_1(value)))
            }

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            function cleanup_t_rational_2957286918163151606545409668133310005545945782087581890025685458369200827463_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2957286918163151606545409668133310005545945782087581890025685458369200827463_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2957286918163151606545409668133310005545945782087581890025685458369200827463_by_1(value)))
            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function cleanup_t_rational_1384290496819542862903939282897996566903332587607290986044945365745128311081_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1384290496819542862903939282897996566903332587607290986044945365745128311081_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1384290496819542862903939282897996566903332587607290986044945365745128311081_by_1(value)))
            }

            function cleanup_t_rational_5_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5_by_1(value)))
            }

            function cleanup_t_rational_5613571677741714971687805233468747950848449704454346829971683826953541367271_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5613571677741714971687805233468747950848449704454346829971683826953541367271_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5613571677741714971687805233468747950848449704454346829971683826953541367271_by_1(value)))
            }

            function cleanup_t_rational_6_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6_by_1(value)))
            }

            function cleanup_t_rational_9643208548031422463313148630985736896287522941726746581856185889848792022807_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9643208548031422463313148630985736896287522941726746581856185889848792022807_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9643208548031422463313148630985736896287522941726746581856185889848792022807_by_1(value)))
            }

            function cleanup_t_rational_7_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_7_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_7_by_1(value)))
            }

            function cleanup_t_rational_18066496933330839731877828156604_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18066496933330839731877828156604_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18066496933330839731877828156604_by_1(value)))
            }

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8_by_1(value)))
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_25aad7f349380e731cba74f6bbf9edb82f6e8d2377f54a203931a5788343021c(memPtr) {

                mstore(add(memPtr, 0), "Successfully verified.")

            }

            function abi_encode_t_stringliteral_25aad7f349380e731cba74f6bbf9edb82f6e8d2377f54a203931a5788343021c_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 22)
                store_literal_in_memory_25aad7f349380e731cba74f6bbf9edb82f6e8d2377f54a203931a5788343021c(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_25aad7f349380e731cba74f6bbf9edb82f6e8d2377f54a203931a5788343021c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_25aad7f349380e731cba74f6bbf9edb82f6e8d2377f54a203931a5788343021c_to_t_string_memory_ptr_fromStack( tail)

            }

            /// @ast-id 1594
            /// @src 0:11558:14231  "function verifyTx() public returns (bool) {..."
            function fun_verifyTx_1594() -> var__1421 {
                /// @src 0:11594:11598  "bool"
                let zero_t_bool_36 := zero_value_for_split_t_bool()
                var__1421 := zero_t_bool_36

                /// @src 0:11637:11638  "9"
                let expr_1431 := 0x09
                /// @src 0:11626:11639  "new uint[](9)"
                let _37 := convert_t_rational_9_by_1_to_t_uint256(expr_1431)
                let expr_1432_mpos := allocate_and_zero_memory_array_t_array$_t_uint256_$dyn_memory_ptr(_37)
                /// @src 0:11604:11639  "uint[] memory input = new uint[](9)"
                let var_input_1427_mpos := expr_1432_mpos
                /// @src 0:11643:11661  "Proof memory proof"
                let var_proof_1436_mpos
                let zero_t_struct$_Proof_$677_memory_ptr_38_mpos := zero_value_for_split_t_struct$_Proof_$677_memory_ptr()
                var_proof_1436_mpos := zero_t_struct$_Proof_$677_memory_ptr_38_mpos
                /// @src 0:11675:11682  "Pairing"
                let expr_1441_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11691:11768  "12873740738727497448187997291915224677121726020054032516825496230827252793177"
                let expr_1443 := 0x1c76476f4def4bb94541d57ebba1193381ffa7aa76ada664dd31c16024c43f59
                /// @src 0:11770:11847  "21804419174137094775122804775419507726154084057848719988004616848382402162497"
                let expr_1444 := 0x3034dd2920f673e204fee2811c678745fc819b55d3e9d294e45c9b03a76aef41
                /// @src 0:11675:11848  "Pairing.G1Point(12873740738727497448187997291915224677121726020054032516825496230827252793177, 21804419174137094775122804775419507726154084057848719988004616848382402162497)"
                let expr_1445_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _39 := convert_t_rational_12873740738727497448187997291915224677121726020054032516825496230827252793177_by_1_to_t_uint256(expr_1443)
                write_to_memory_t_uint256(add(expr_1445_mpos, 0), _39)
                let _40 := convert_t_rational_21804419174137094775122804775419507726154084057848719988004616848382402162497_by_1_to_t_uint256(expr_1444)
                write_to_memory_t_uint256(add(expr_1445_mpos, 32), _40)
                /// @src 0:11665:11670  "proof"
                let _41_mpos := var_proof_1436_mpos
                let expr_1438_mpos := _41_mpos
                /// @src 0:11665:11672  "proof.A"
                let _42 := add(expr_1438_mpos, 0)
                /// @src 0:11665:11848  "proof.A = Pairing.G1Point(12873740738727497448187997291915224677121726020054032516825496230827252793177, 21804419174137094775122804775419507726154084057848719988004616848382402162497)"
                mstore(_42, expr_1445_mpos)
                let _43_mpos := mload(_42)
                let expr_1446_mpos := _43_mpos
                /// @src 0:11864:11871  "Pairing"
                let expr_1451_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11880:11956  "7742452358972543465462254569134860944739929848367563713587808717088650354556"
                let expr_1453 := 0x111e129f1cf1097710d41c4ac70fcdfa5ba2023c6ff1cbeac322de49d1b6df7c
                /// @src 0:11958:12034  "7324522103398787664095385319014038380128814213034709026832529060148225837366"
                let expr_1454 := 0x103188585e2364128fe25c70558f1560f4f9350baf3959e603cc91486e110936
                /// @src 0:11864:12035  "Pairing.G1Point(7742452358972543465462254569134860944739929848367563713587808717088650354556, 7324522103398787664095385319014038380128814213034709026832529060148225837366)"
                let expr_1455_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _44 := convert_t_rational_7742452358972543465462254569134860944739929848367563713587808717088650354556_by_1_to_t_uint256(expr_1453)
                write_to_memory_t_uint256(add(expr_1455_mpos, 0), _44)
                let _45 := convert_t_rational_7324522103398787664095385319014038380128814213034709026832529060148225837366_by_1_to_t_uint256(expr_1454)
                write_to_memory_t_uint256(add(expr_1455_mpos, 32), _45)
                /// @src 0:11852:11857  "proof"
                let _46_mpos := var_proof_1436_mpos
                let expr_1448_mpos := _46_mpos
                /// @src 0:11852:11861  "proof.A_p"
                let _47 := add(expr_1448_mpos, 32)
                /// @src 0:11852:12035  "proof.A_p = Pairing.G1Point(7742452358972543465462254569134860944739929848367563713587808717088650354556, 7324522103398787664095385319014038380128814213034709026832529060148225837366)"
                mstore(_47, expr_1455_mpos)
                let _48_mpos := mload(_47)
                let expr_1456_mpos := _48_mpos
                /// @src 0:12049:12056  "Pairing"
                let expr_1461_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:12069:12226  "[8176651290984905087450403379100573157708110416512446269839297438960217797614, 15588556568726919713003060429893850972163943674590384915350025440408631945055]"
                let expr_1465_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:12070:12146  "8176651290984905087450403379100573157708110416512446269839297438960217797614"
                let expr_1463 := 0x1213d2149b006137fcfb23036606f848d638d576a120ca981b5b1a5f9300b3ee
                /// @src 0:12069:12226  "[8176651290984905087450403379100573157708110416512446269839297438960217797614, 15588556568726919713003060429893850972163943674590384915350025440408631945055]"
                let _49 := convert_t_rational_8176651290984905087450403379100573157708110416512446269839297438960217797614_by_1_to_t_uint256(expr_1463)
                write_to_memory_t_uint256(add(expr_1465_mpos, 0), _49)
                /// @src 0:12148:12225  "15588556568726919713003060429893850972163943674590384915350025440408631945055"
                let expr_1464 := 0x2276cf730cf493cd95d64677bbb75fc42db72513a4c1e387b476d056f80aa75f
                /// @src 0:12069:12226  "[8176651290984905087450403379100573157708110416512446269839297438960217797614, 15588556568726919713003060429893850972163943674590384915350025440408631945055]"
                let _50 := convert_t_rational_15588556568726919713003060429893850972163943674590384915350025440408631945055_by_1_to_t_uint256(expr_1464)
                write_to_memory_t_uint256(add(expr_1465_mpos, 32), _50)
                /// @src 0:12231:12388  "[15347511022514187557142999444367533883366476794364262773195059233657571533367, 4265071979090628150845437155927259896060451682253086069461962693761322642015]"
                let expr_1468_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:12232:12309  "15347511022514187557142999444367533883366476794364262773195059233657571533367"
                let expr_1466 := 0x21ee6226d31426322afcda621464d0611d226783262e21bb3bc86b537e986237
                /// @src 0:12231:12388  "[15347511022514187557142999444367533883366476794364262773195059233657571533367, 4265071979090628150845437155927259896060451682253086069461962693761322642015]"
                let _51 := convert_t_rational_15347511022514187557142999444367533883366476794364262773195059233657571533367_by_1_to_t_uint256(expr_1466)
                write_to_memory_t_uint256(add(expr_1468_mpos, 0), _51)
                /// @src 0:12311:12387  "4265071979090628150845437155927259896060451682253086069461962693761322642015"
                let expr_1467 := 0x096df1f82dff337dd5972e32a8ad43e28a78a96a823ef1cd4debe12b6552ea5f
                /// @src 0:12231:12388  "[15347511022514187557142999444367533883366476794364262773195059233657571533367, 4265071979090628150845437155927259896060451682253086069461962693761322642015]"
                let _52 := convert_t_rational_4265071979090628150845437155927259896060451682253086069461962693761322642015_by_1_to_t_uint256(expr_1467)
                write_to_memory_t_uint256(add(expr_1468_mpos, 32), _52)
                /// @src 0:12049:12389  "Pairing.G2Point(..."
                let expr_1469_mpos := allocate_memory_struct_t_struct$_G2Point_$14_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1469_mpos, 0), expr_1465_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1469_mpos, 32), expr_1468_mpos)
                /// @src 0:12039:12044  "proof"
                let _53_mpos := var_proof_1436_mpos
                let expr_1458_mpos := _53_mpos
                /// @src 0:12039:12046  "proof.B"
                let _54 := add(expr_1458_mpos, 64)
                /// @src 0:12039:12389  "proof.B = Pairing.G2Point(..."
                mstore(_54, expr_1469_mpos)
                let _55_mpos := mload(_54)
                let expr_1470_mpos := _55_mpos
                /// @src 0:12405:12412  "Pairing"
                let expr_1475_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:12421:12497  "2979746655438963305714517285593753729335852012083057917022078236006592638393"
                let expr_1477 := 0x06967a1237ebfeca9aaae0d6d0bab8e28c198c5a339ef8a2407e31cdac516db9
                /// @src 0:12499:12575  "6470627481646078059765266161088786576504622012540639992486470834383274712950"
                let expr_1478 := 0x0e4e3ed0898ba2ce904a02b739caf9931f9b43c600154592cee5239435f91f76
                /// @src 0:12405:12576  "Pairing.G1Point(2979746655438963305714517285593753729335852012083057917022078236006592638393, 6470627481646078059765266161088786576504622012540639992486470834383274712950)"
                let expr_1479_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _56 := convert_t_rational_2979746655438963305714517285593753729335852012083057917022078236006592638393_by_1_to_t_uint256(expr_1477)
                write_to_memory_t_uint256(add(expr_1479_mpos, 0), _56)
                let _57 := convert_t_rational_6470627481646078059765266161088786576504622012540639992486470834383274712950_by_1_to_t_uint256(expr_1478)
                write_to_memory_t_uint256(add(expr_1479_mpos, 32), _57)
                /// @src 0:12393:12398  "proof"
                let _58_mpos := var_proof_1436_mpos
                let expr_1472_mpos := _58_mpos
                /// @src 0:12393:12402  "proof.B_p"
                let _59 := add(expr_1472_mpos, 96)
                /// @src 0:12393:12576  "proof.B_p = Pairing.G1Point(2979746655438963305714517285593753729335852012083057917022078236006592638393, 6470627481646078059765266161088786576504622012540639992486470834383274712950)"
                mstore(_59, expr_1479_mpos)
                let _60_mpos := mload(_59)
                let expr_1480_mpos := _60_mpos
                /// @src 0:12590:12597  "Pairing"
                let expr_1485_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:12606:12682  "6851077925310461602867742977619883934042581405263014789956638244065803308498"
                let expr_1487 := 0x0f25929bcb43d5a57391564615c9e70a992b10eafa4db109709649cf48c50dd2
                /// @src 0:12684:12761  "10336382210592135525880811046708757754106524561907815205241508542912494488506"
                let expr_1488 := 0x16da2f5cb6be7a0aa72c440c53c9bbdfec6c36c7d515536431b3a865468acbba
                /// @src 0:12590:12762  "Pairing.G1Point(6851077925310461602867742977619883934042581405263014789956638244065803308498, 10336382210592135525880811046708757754106524561907815205241508542912494488506)"
                let expr_1489_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _61 := convert_t_rational_6851077925310461602867742977619883934042581405263014789956638244065803308498_by_1_to_t_uint256(expr_1487)
                write_to_memory_t_uint256(add(expr_1489_mpos, 0), _61)
                let _62 := convert_t_rational_10336382210592135525880811046708757754106524561907815205241508542912494488506_by_1_to_t_uint256(expr_1488)
                write_to_memory_t_uint256(add(expr_1489_mpos, 32), _62)
                /// @src 0:12580:12585  "proof"
                let _63_mpos := var_proof_1436_mpos
                let expr_1482_mpos := _63_mpos
                /// @src 0:12580:12587  "proof.C"
                let _64 := add(expr_1482_mpos, 128)
                /// @src 0:12580:12762  "proof.C = Pairing.G1Point(6851077925310461602867742977619883934042581405263014789956638244065803308498, 10336382210592135525880811046708757754106524561907815205241508542912494488506)"
                mstore(_64, expr_1489_mpos)
                let _65_mpos := mload(_64)
                let expr_1490_mpos := _65_mpos
                /// @src 0:12778:12785  "Pairing"
                let expr_1495_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:12794:12871  "12491625890066296859584468664467427202390981822868257437245835716136010795448"
                let expr_1497 := 0x1b9e027bd5cfc2cb5db82d4dc9677ac795ec500ecd47deee3b5da006d6d049b8
                /// @src 0:12873:12950  "13818492518017455361318553880921248537817650587494176379915981090396574171686"
                let expr_1498 := 0x1e8cfd56691c1245342d15eff3d1ce17c85fed7538c3614d46996d8f85a5c226
                /// @src 0:12778:12951  "Pairing.G1Point(12491625890066296859584468664467427202390981822868257437245835716136010795448, 13818492518017455361318553880921248537817650587494176379915981090396574171686)"
                let expr_1499_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _66 := convert_t_rational_12491625890066296859584468664467427202390981822868257437245835716136010795448_by_1_to_t_uint256(expr_1497)
                write_to_memory_t_uint256(add(expr_1499_mpos, 0), _66)
                let _67 := convert_t_rational_13818492518017455361318553880921248537817650587494176379915981090396574171686_by_1_to_t_uint256(expr_1498)
                write_to_memory_t_uint256(add(expr_1499_mpos, 32), _67)
                /// @src 0:12766:12771  "proof"
                let _68_mpos := var_proof_1436_mpos
                let expr_1492_mpos := _68_mpos
                /// @src 0:12766:12775  "proof.C_p"
                let _69 := add(expr_1492_mpos, 160)
                /// @src 0:12766:12951  "proof.C_p = Pairing.G1Point(12491625890066296859584468664467427202390981822868257437245835716136010795448, 13818492518017455361318553880921248537817650587494176379915981090396574171686)"
                mstore(_69, expr_1499_mpos)
                let _70_mpos := mload(_69)
                let expr_1500_mpos := _70_mpos
                /// @src 0:12965:12972  "Pairing"
                let expr_1505_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:12981:13058  "12091046215835229523641173286701717671667447745509192321596954139357866668225"
                let expr_1507 := 0x1abb4a25eb9379ae96c84fff9f0540abcfc0a0d11aeda02d4f37e4baf74cb0c1
                /// @src 0:13060:13137  "14446807589950902476683545679847436767890904443411534435294953056557941441758"
                let expr_1508 := 0x1ff09a73b455eca26257dc97dbe2c2572e162a9eefc4ce83ac7869b267acc4de
                /// @src 0:12965:13138  "Pairing.G1Point(12091046215835229523641173286701717671667447745509192321596954139357866668225, 14446807589950902476683545679847436767890904443411534435294953056557941441758)"
                let expr_1509_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _71 := convert_t_rational_12091046215835229523641173286701717671667447745509192321596954139357866668225_by_1_to_t_uint256(expr_1507)
                write_to_memory_t_uint256(add(expr_1509_mpos, 0), _71)
                let _72 := convert_t_rational_14446807589950902476683545679847436767890904443411534435294953056557941441758_by_1_to_t_uint256(expr_1508)
                write_to_memory_t_uint256(add(expr_1509_mpos, 32), _72)
                /// @src 0:12955:12960  "proof"
                let _73_mpos := var_proof_1436_mpos
                let expr_1502_mpos := _73_mpos
                /// @src 0:12955:12962  "proof.H"
                let _74 := add(expr_1502_mpos, 224)
                /// @src 0:12955:13138  "proof.H = Pairing.G1Point(12091046215835229523641173286701717671667447745509192321596954139357866668225, 14446807589950902476683545679847436767890904443411534435294953056557941441758)"
                mstore(_74, expr_1509_mpos)
                let _75_mpos := mload(_74)
                let expr_1510_mpos := _75_mpos
                /// @src 0:13152:13159  "Pairing"
                let expr_1515_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:13168:13245  "21341087976609916409401737322664290631992568431163400450267978471171152600502"
                let expr_1517 := 0x2f2ea0b3da1e8ef11914acf8b2e1b32d99df51f5f4f206fc6b947eae860eddb6
                /// @src 0:13247:13323  "2942165230690572858696920423896381470344658299915828986338281196715687693170"
                let expr_1518 := 0x068134ddb33dc888ef446b648d72338684d678d2eb2371c61a50734d78da4b72
                /// @src 0:13152:13324  "Pairing.G1Point(21341087976609916409401737322664290631992568431163400450267978471171152600502, 2942165230690572858696920423896381470344658299915828986338281196715687693170)"
                let expr_1519_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _76 := convert_t_rational_21341087976609916409401737322664290631992568431163400450267978471171152600502_by_1_to_t_uint256(expr_1517)
                write_to_memory_t_uint256(add(expr_1519_mpos, 0), _76)
                let _77 := convert_t_rational_2942165230690572858696920423896381470344658299915828986338281196715687693170_by_1_to_t_uint256(expr_1518)
                write_to_memory_t_uint256(add(expr_1519_mpos, 32), _77)
                /// @src 0:13142:13147  "proof"
                let _78_mpos := var_proof_1436_mpos
                let expr_1512_mpos := _78_mpos
                /// @src 0:13142:13149  "proof.K"
                let _79 := add(expr_1512_mpos, 192)
                /// @src 0:13142:13324  "proof.K = Pairing.G1Point(21341087976609916409401737322664290631992568431163400450267978471171152600502, 2942165230690572858696920423896381470344658299915828986338281196715687693170)"
                mstore(_79, expr_1519_mpos)
                let _80_mpos := mload(_79)
                let expr_1520_mpos := _80_mpos
                /// @src 0:13339:13416  "13986731495506593864492662381614386532349950841221768152838255933892789078521"
                let expr_1525 := 0x1eec35a0e955cad4bee5846ae0f1d0b742d8636b278450c534e38e06a60509f9
                /// @src 0:13328:13416  "input[0] = 13986731495506593864492662381614386532349950841221768152838255933892789078521"
                let _81 := convert_t_rational_13986731495506593864492662381614386532349950841221768152838255933892789078521_by_1_to_t_uint256(expr_1525)
                /// @src 0:13328:13333  "input"
                let _82_mpos := var_input_1427_mpos
                let expr_1522_mpos := _82_mpos
                /// @src 0:13334:13335  "0"
                let expr_1523 := 0x00
                /// @src 0:13328:13416  "input[0] = 13986731495506593864492662381614386532349950841221768152838255933892789078521"
                let _83 := _81
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1522_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1523)), _83)
                let expr_1526 := _81
                /// @src 0:13431:13506  "622860516154313070522697309645122400675542217310916019527100517240519630053"
                let expr_1531 := 0x016086cc934d5cab679c6991a4efcedbab26d7e4fb23b6a1ad4e6b5c2fb59ce5
                /// @src 0:13420:13506  "input[1] = 622860516154313070522697309645122400675542217310916019527100517240519630053"
                let _84 := convert_t_rational_622860516154313070522697309645122400675542217310916019527100517240519630053_by_1_to_t_uint256(expr_1531)
                /// @src 0:13420:13425  "input"
                let _85_mpos := var_input_1427_mpos
                let expr_1528_mpos := _85_mpos
                /// @src 0:13426:13427  "1"
                let expr_1529 := 0x01
                /// @src 0:13420:13506  "input[1] = 622860516154313070522697309645122400675542217310916019527100517240519630053"
                let _86 := _84
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1528_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1529)), _86)
                let expr_1532 := _84
                /// @src 0:13521:13598  "11094488463398718754251685950409355128550342438297986977413505294941943071569"
                let expr_1537 := 0x1887420878c0c8e37605291c626585eabbec8d8b97a848fe8d58a37b00458351
                /// @src 0:13510:13598  "input[2] = 11094488463398718754251685950409355128550342438297986977413505294941943071569"
                let _87 := convert_t_rational_11094488463398718754251685950409355128550342438297986977413505294941943071569_by_1_to_t_uint256(expr_1537)
                /// @src 0:13510:13515  "input"
                let _88_mpos := var_input_1427_mpos
                let expr_1534_mpos := _88_mpos
                /// @src 0:13516:13517  "2"
                let expr_1535 := 0x02
                /// @src 0:13510:13598  "input[2] = 11094488463398718754251685950409355128550342438297986977413505294941943071569"
                let _89 := _87
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1534_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_1535)), _89)
                let expr_1538 := _87
                /// @src 0:13613:13689  "6627643779954497813586310325594578844876646808666478625705401786271515864467"
                let expr_1543 := 0x0ea71d0abb524cac7cfff5323e1d0b14ab705842426c978f96753ccce258ed93
                /// @src 0:13602:13689  "input[3] = 6627643779954497813586310325594578844876646808666478625705401786271515864467"
                let _90 := convert_t_rational_6627643779954497813586310325594578844876646808666478625705401786271515864467_by_1_to_t_uint256(expr_1543)
                /// @src 0:13602:13607  "input"
                let _91_mpos := var_input_1427_mpos
                let expr_1540_mpos := _91_mpos
                /// @src 0:13608:13609  "3"
                let expr_1541 := 0x03
                /// @src 0:13602:13689  "input[3] = 6627643779954497813586310325594578844876646808666478625705401786271515864467"
                let _92 := _90
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1540_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_1541)), _92)
                let expr_1544 := _90
                /// @src 0:13704:13780  "2957286918163151606545409668133310005545945782087581890025685458369200827463"
                let expr_1549 := 0x0689c3dc4311426ee11707866b2cbdf9751dacd07245bf99d2113d3f5a8cac47
                /// @src 0:13693:13780  "input[4] = 2957286918163151606545409668133310005545945782087581890025685458369200827463"
                let _93 := convert_t_rational_2957286918163151606545409668133310005545945782087581890025685458369200827463_by_1_to_t_uint256(expr_1549)
                /// @src 0:13693:13698  "input"
                let _94_mpos := var_input_1427_mpos
                let expr_1546_mpos := _94_mpos
                /// @src 0:13699:13700  "4"
                let expr_1547 := 0x04
                /// @src 0:13693:13780  "input[4] = 2957286918163151606545409668133310005545945782087581890025685458369200827463"
                let _95 := _93
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1546_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_1547)), _95)
                let expr_1550 := _93
                /// @src 0:13795:13871  "1384290496819542862903939282897996566903332587607290986044945365745128311081"
                let expr_1555 := 0x030f7b0c405c888aff922307ea2cd1c70f64664bab76899500341f4260a20929
                /// @src 0:13784:13871  "input[5] = 1384290496819542862903939282897996566903332587607290986044945365745128311081"
                let _96 := convert_t_rational_1384290496819542862903939282897996566903332587607290986044945365745128311081_by_1_to_t_uint256(expr_1555)
                /// @src 0:13784:13789  "input"
                let _97_mpos := var_input_1427_mpos
                let expr_1552_mpos := _97_mpos
                /// @src 0:13790:13791  "5"
                let expr_1553 := 0x05
                /// @src 0:13784:13871  "input[5] = 1384290496819542862903939282897996566903332587607290986044945365745128311081"
                let _98 := _96
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1552_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_1553)), _98)
                let expr_1556 := _96
                /// @src 0:13886:13962  "5613571677741714971687805233468747950848449704454346829971683826953541367271"
                let expr_1561 := 0x0c692b41f1acc961f6ea83bae2c3a1a55c54f766c63ba76989f52c149c17b5e7
                /// @src 0:13875:13962  "input[6] = 5613571677741714971687805233468747950848449704454346829971683826953541367271"
                let _99 := convert_t_rational_5613571677741714971687805233468747950848449704454346829971683826953541367271_by_1_to_t_uint256(expr_1561)
                /// @src 0:13875:13880  "input"
                let _100_mpos := var_input_1427_mpos
                let expr_1558_mpos := _100_mpos
                /// @src 0:13881:13882  "6"
                let expr_1559 := 0x06
                /// @src 0:13875:13962  "input[6] = 5613571677741714971687805233468747950848449704454346829971683826953541367271"
                let _101 := _99
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1558_mpos, convert_t_rational_6_by_1_to_t_uint256(expr_1559)), _101)
                let expr_1562 := _99
                /// @src 0:13977:14053  "9643208548031422463313148630985736896287522941726746581856185889848792022807"
                let expr_1567 := 0x1551dcd4965285ef049512d2d30cbfc1a91acd5baad4a6e19e22e93176197f17
                /// @src 0:13966:14053  "input[7] = 9643208548031422463313148630985736896287522941726746581856185889848792022807"
                let _102 := convert_t_rational_9643208548031422463313148630985736896287522941726746581856185889848792022807_by_1_to_t_uint256(expr_1567)
                /// @src 0:13966:13971  "input"
                let _103_mpos := var_input_1427_mpos
                let expr_1564_mpos := _103_mpos
                /// @src 0:13972:13973  "7"
                let expr_1565 := 0x07
                /// @src 0:13966:14053  "input[7] = 9643208548031422463313148630985736896287522941726746581856185889848792022807"
                let _104 := _102
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1564_mpos, convert_t_rational_7_by_1_to_t_uint256(expr_1565)), _104)
                let expr_1568 := _102
                /// @src 0:14068:14100  "18066496933330839731877828156604"
                let expr_1573 := 0xe40800000000000000008cdcbc
                /// @src 0:14057:14100  "input[8] = 18066496933330839731877828156604"
                let _105 := convert_t_rational_18066496933330839731877828156604_by_1_to_t_uint256(expr_1573)
                /// @src 0:14057:14062  "input"
                let _106_mpos := var_input_1427_mpos
                let expr_1570_mpos := _106_mpos
                /// @src 0:14063:14064  "8"
                let expr_1571 := 0x08
                /// @src 0:14057:14100  "input[8] = 18066496933330839731877828156604"
                let _107 := _105
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1570_mpos, convert_t_rational_8_by_1_to_t_uint256(expr_1571)), _107)
                let expr_1574 := _105
                /// @src 0:14115:14120  "input"
                let _108_mpos := var_input_1427_mpos
                let expr_1577_mpos := _108_mpos
                /// @src 0:14122:14127  "proof"
                let _109_mpos := var_proof_1436_mpos
                let expr_1578_mpos := _109_mpos
                /// @src 0:14108:14128  "verify(input, proof)"
                let expr_1579 := fun_verify_1414(expr_1577_mpos, expr_1578_mpos)
                /// @src 0:14132:14133  "0"
                let expr_1580 := 0x00
                /// @src 0:14108:14133  "verify(input, proof) == 0"
                let expr_1581 := eq(cleanup_t_uint256(expr_1579), convert_t_rational_0_by_1_to_t_uint256(expr_1580))
                /// @src 0:14104:14228  "if (verify(input, proof) == 0) {..."
                switch expr_1581
                case 0 {
                    /// @src 0:14218:14223  "false"
                    let expr_1589 := 0x00
                    /// @src 0:14211:14223  "return false"
                    var__1421 := expr_1589
                    leave
                    /// @src 0:14104:14228  "if (verify(input, proof) == 0) {..."
                }
                default {
                    /// @src 0:14145:14179  "Verified(\"Successfully verified.\")"
                    let _110 := 0x3f3cfdb26fb5f9f1786ab4f1a1f9cd4c0b5e726cbdfc26e495261731aad44e39
                    {
                        let _111 := allocate_unbounded()
                        let _112 := abi_encode_tuple_t_stringliteral_25aad7f349380e731cba74f6bbf9edb82f6e8d2377f54a203931a5788343021c__to_t_string_memory_ptr__fromStack(_111 )
                        log1(_111, sub(_112, _111) , _110)
                    }/// @src 0:14191:14195  "true"
                    let expr_1586 := 0x01
                    /// @src 0:14184:14195  "return true"
                    var__1421 := expr_1586
                    leave
                    /// @src 0:14104:14228  "if (verify(input, proof) == 0) {..."
                }

            }
            /// @src 0:4069:14233  "contract Test {..."

            function cleanup_t_rational_4540444681147253467785307942530223364530218361853237193970751657229138047649_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4540444681147253467785307942530223364530218361853237193970751657229138047649_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4540444681147253467785307942530223364530218361853237193970751657229138047649_by_1(value)))
            }

            function cleanup_t_rational_20954117799226682825035885491234530437475518021362091509513177301640194298072_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20954117799226682825035885491234530437475518021362091509513177301640194298072_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_20954117799226682825035885491234530437475518021362091509513177301640194298072_by_1(value)))
            }

            function cleanup_t_rational_11631839690097995216017572651900167465857396346217730511548857041925508482915_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_11631839690097995216017572651900167465857396346217730511548857041925508482915_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_11631839690097995216017572651900167465857396346217730511548857041925508482915_by_1(value)))
            }

            function cleanup_t_rational_21508930868448350162258892668132814424284302804699005394342512102884055673846_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21508930868448350162258892668132814424284302804699005394342512102884055673846_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21508930868448350162258892668132814424284302804699005394342512102884055673846_by_1(value)))
            }

            function cleanup_t_rational_21888242871839275222246405745257275088696311157297823662689037894645226208583_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21888242871839275222246405745257275088696311157297823662689037894645226208583_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21888242871839275222246405745257275088696311157297823662689037894645226208583_by_1(value)))
            }

            function array_allocation_size_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_complex_memory_array_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(dataStart, dataSizeInBytes) {
                for {let i := 0} lt(i, dataSizeInBytes) { i := add(i, 32) } {
                    mstore(add(dataStart, i), zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                }
            }

            function allocate_and_zero_memory_array_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_complex_memory_array_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(dataStart, dataSize)
            }

            function array_allocation_size_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_complex_memory_array_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(dataStart, dataSizeInBytes) {
                for {let i := 0} lt(i, dataSizeInBytes) { i := add(i, 32) } {
                    mstore(add(dataStart, i), zero_value_for_t_struct$_G2Point_$14_memory_ptr())
                }
            }

            function allocate_and_zero_memory_array_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_complex_memory_array_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(dataStart, dataSize)
            }

            function array_length_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function array_length_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            /// @ast-id 981
            /// @src 0:5645:6841  "function pair() public returns (bool) {..."
            function fun_pair_981() -> var__834 {
                /// @src 0:5677:5681  "bool"
                let zero_t_bool_113 := zero_value_for_split_t_bool()
                var__834 := zero_t_bool_113

                /// @src 0:5724:5731  "Pairing"
                let expr_841_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:5744:5901  "[4540444681147253467785307942530223364530218361853237193970751657229138047649, 20954117799226682825035885491234530437475518021362091509513177301640194298072]"
                let expr_845_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:5745:5821  "4540444681147253467785307942530223364530218361853237193970751657229138047649"
                let expr_843 := 0x0a09ccf561b55fd99d1c1208dee1162457b57ac5af3759d50671e510e428b2a1
                /// @src 0:5744:5901  "[4540444681147253467785307942530223364530218361853237193970751657229138047649, 20954117799226682825035885491234530437475518021362091509513177301640194298072]"
                let _114 := convert_t_rational_4540444681147253467785307942530223364530218361853237193970751657229138047649_by_1_to_t_uint256(expr_843)
                write_to_memory_t_uint256(add(expr_845_mpos, 0), _114)
                /// @src 0:5823:5900  "20954117799226682825035885491234530437475518021362091509513177301640194298072"
                let expr_844 := 0x2e539c423b302d13f4e5773c603948eaf5db5df8ae8a9a9113708390a06410d8
                /// @src 0:5744:5901  "[4540444681147253467785307942530223364530218361853237193970751657229138047649, 20954117799226682825035885491234530437475518021362091509513177301640194298072]"
                let _115 := convert_t_rational_20954117799226682825035885491234530437475518021362091509513177301640194298072_by_1_to_t_uint256(expr_844)
                write_to_memory_t_uint256(add(expr_845_mpos, 32), _115)
                /// @src 0:5906:6064  "[11631839690097995216017572651900167465857396346217730511548857041925508482915, 21508930868448350162258892668132814424284302804699005394342512102884055673846]"
                let expr_848_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:5907:5984  "11631839690097995216017572651900167465857396346217730511548857041925508482915"
                let expr_846 := 0x19b763513924a736e4eebd0d78c91c1bc1d657fee4214057d21414011cfcc763
                /// @src 0:5906:6064  "[11631839690097995216017572651900167465857396346217730511548857041925508482915, 21508930868448350162258892668132814424284302804699005394342512102884055673846]"
                let _116 := convert_t_rational_11631839690097995216017572651900167465857396346217730511548857041925508482915_by_1_to_t_uint256(expr_846)
                write_to_memory_t_uint256(add(expr_848_mpos, 0), _116)
                /// @src 0:5986:6063  "21508930868448350162258892668132814424284302804699005394342512102884055673846"
                let expr_847 := 0x2f8d9f9ab83727c77a2fec063cb7b6e5eb23044ccf535ad49d46d394fb6f6bf6
                /// @src 0:5906:6064  "[11631839690097995216017572651900167465857396346217730511548857041925508482915, 21508930868448350162258892668132814424284302804699005394342512102884055673846]"
                let _117 := convert_t_rational_21508930868448350162258892668132814424284302804699005394342512102884055673846_by_1_to_t_uint256(expr_847)
                write_to_memory_t_uint256(add(expr_848_mpos, 32), _117)
                /// @src 0:5724:6068  "Pairing.G2Point(..."
                let expr_849_mpos := allocate_memory_struct_t_struct$_G2Point_$14_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_849_mpos, 0), expr_845_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_849_mpos, 32), expr_848_mpos)
                /// @src 0:5687:6068  "Pairing.G2Point memory fiveTimesP2 = Pairing.G2Point(..."
                let var_fiveTimesP2_840_mpos := expr_849_mpos
                /// @src 0:6127:6204  "21888242871839275222246405745257275088696311157297823662689037894645226208583"
                let expr_853 := 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                /// @src 0:6118:6204  "uint p = 21888242871839275222246405745257275088696311157297823662689037894645226208583"
                let var_p_852 := convert_t_rational_21888242871839275222246405745257275088696311157297823662689037894645226208583_by_1_to_t_uint256(expr_853)
                /// @src 0:6266:6267  "2"
                let expr_865 := 0x02
                /// @src 0:6244:6268  "new Pairing.G1Point[](2)"
                let _118 := convert_t_rational_2_by_1_to_t_uint256(expr_865)
                let expr_866_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(_118)
                /// @src 0:6208:6268  "Pairing.G1Point[] memory g1points = new Pairing.G1Point[](2)"
                let var_g1points_860_mpos := expr_866_mpos
                /// @src 0:6330:6331  "2"
                let expr_878 := 0x02
                /// @src 0:6308:6332  "new Pairing.G2Point[](2)"
                let _119 := convert_t_rational_2_by_1_to_t_uint256(expr_878)
                let expr_879_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(_119)
                /// @src 0:6272:6332  "Pairing.G2Point[] memory g2points = new Pairing.G2Point[](2)"
                let var_g2points_873_mpos := expr_879_mpos
                /// @src 0:6390:6397  "Pairing"
                let expr_884_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6390:6402  "Pairing.P1()"
                let expr_886_mpos := fun_P1_27()
                /// @src 0:6390:6406  "Pairing.P1().mul"
                let expr_887_self_mpos := expr_886_mpos
                /// @src 0:6407:6408  "5"
                let expr_888 := 0x05
                /// @src 0:6390:6409  "Pairing.P1().mul(5)"
                let _120 := convert_t_rational_5_by_1_to_t_uint256(expr_888)
                let expr_889_mpos := fun_mul_191(expr_887_self_mpos, _120)
                /// @src 0:6376:6384  "g1points"
                let _121_mpos := var_g1points_860_mpos
                let expr_881_mpos := _121_mpos
                /// @src 0:6385:6386  "0"
                let expr_882 := 0x00
                /// @src 0:6376:6409  "g1points[0] = Pairing.P1().mul(5)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_881_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_882)), expr_889_mpos)
                let _122_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_881_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_882)))
                let expr_890_mpos := _122_mpos
                /// @src 0:6427:6434  "Pairing"
                let expr_895_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6427:6439  "Pairing.P1()"
                let expr_897_mpos := fun_P1_27()
                /// @src 0:6427:6446  "Pairing.P1().negate"
                let expr_898_self_mpos := expr_897_mpos
                /// @src 0:6427:6448  "Pairing.P1().negate()"
                let expr_899_mpos := fun_negate_86(expr_898_self_mpos)
                /// @src 0:6413:6421  "g1points"
                let _123_mpos := var_g1points_860_mpos
                let expr_892_mpos := _123_mpos
                /// @src 0:6422:6423  "1"
                let expr_893 := 0x01
                /// @src 0:6413:6448  "g1points[1] = Pairing.P1().negate()"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_892_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_893)), expr_899_mpos)
                let _124_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_892_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_893)))
                let expr_900_mpos := _124_mpos
                /// @src 0:6466:6473  "Pairing"
                let expr_905_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6466:6478  "Pairing.P2()"
                let expr_907_mpos := fun_P2_44()
                /// @src 0:6452:6460  "g2points"
                let _125_mpos := var_g2points_873_mpos
                let expr_902_mpos := _125_mpos
                /// @src 0:6461:6462  "0"
                let expr_903 := 0x00
                /// @src 0:6452:6478  "g2points[0] = Pairing.P2()"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_902_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_903)), expr_907_mpos)
                let _126_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_902_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_903)))
                let expr_908_mpos := _126_mpos
                /// @src 0:6496:6507  "fiveTimesP2"
                let _127_mpos := var_fiveTimesP2_840_mpos
                let expr_913_mpos := _127_mpos
                /// @src 0:6482:6490  "g2points"
                let _128_mpos := var_g2points_873_mpos
                let expr_910_mpos := _128_mpos
                /// @src 0:6491:6492  "1"
                let expr_911 := 0x01
                /// @src 0:6482:6507  "g2points[1] = fiveTimesP2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_910_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_911)), expr_913_mpos)
                let _129_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_910_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_911)))
                let expr_914_mpos := _129_mpos
                /// @src 0:6516:6523  "Pairing"
                let expr_916_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6532:6540  "g1points"
                let _130_mpos := var_g1points_860_mpos
                let expr_918_mpos := _130_mpos
                /// @src 0:6542:6550  "g2points"
                let _131_mpos := var_g2points_873_mpos
                let expr_919_mpos := _131_mpos
                /// @src 0:6516:6551  "Pairing.pairing(g1points, g2points)"
                let expr_920 := fun_pairing_356(expr_918_mpos, expr_919_mpos)
                /// @src 0:6515:6551  "!Pairing.pairing(g1points, g2points)"
                let expr_921 := cleanup_t_bool(iszero(expr_920))
                /// @src 0:6511:6568  "if (!Pairing.pairing(g1points, g2points))..."
                if expr_921 {
                    /// @src 0:6563:6568  "false"
                    let expr_922 := 0x00
                    /// @src 0:6556:6568  "return false"
                    var__834 := expr_922
                    leave
                    /// @src 0:6511:6568  "if (!Pairing.pairing(g1points, g2points))..."
                }
                /// @src 0:6622:6629  "Pairing"
                let expr_928_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6622:6634  "Pairing.P1()"
                let expr_930_mpos := fun_P1_27()
                /// @src 0:6608:6616  "g1points"
                let _132_mpos := var_g1points_860_mpos
                let expr_925_mpos := _132_mpos
                /// @src 0:6617:6618  "0"
                let expr_926 := 0x00
                /// @src 0:6608:6634  "g1points[0] = Pairing.P1()"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_925_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_926)), expr_930_mpos)
                let _133_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_925_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_926)))
                let expr_931_mpos := _133_mpos
                /// @src 0:6652:6659  "Pairing"
                let expr_936_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6652:6664  "Pairing.P1()"
                let expr_938_mpos := fun_P1_27()
                /// @src 0:6638:6646  "g1points"
                let _134_mpos := var_g1points_860_mpos
                let expr_933_mpos := _134_mpos
                /// @src 0:6647:6648  "1"
                let expr_934 := 0x01
                /// @src 0:6638:6664  "g1points[1] = Pairing.P1()"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_933_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_934)), expr_938_mpos)
                let _135_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_933_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_934)))
                let expr_939_mpos := _135_mpos
                /// @src 0:6684:6685  "p"
                let _136 := var_p_852
                let expr_945 := _136
                /// @src 0:6688:6696  "g1points"
                let _137_mpos := var_g1points_860_mpos
                let expr_946_mpos := _137_mpos
                /// @src 0:6697:6698  "1"
                let expr_947 := 0x01
                /// @src 0:6688:6699  "g1points[1]"
                let _138_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_946_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_947)))
                let expr_948_mpos := _138_mpos
                /// @src 0:6688:6701  "g1points[1].Y"
                let _139 := add(expr_948_mpos, 32)
                let _140 := read_from_memoryt_uint256(_139)
                let expr_949 := _140
                /// @src 0:6684:6701  "p - g1points[1].Y"
                let expr_950 := checked_sub_t_uint256(expr_945, expr_949)

                /// @src 0:6668:6676  "g1points"
                let _141_mpos := var_g1points_860_mpos
                let expr_941_mpos := _141_mpos
                /// @src 0:6677:6678  "1"
                let expr_942 := 0x01
                /// @src 0:6668:6679  "g1points[1]"
                let _142_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_941_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_942)))
                let expr_943_mpos := _142_mpos
                /// @src 0:6668:6681  "g1points[1].Y"
                let _143 := add(expr_943_mpos, 32)
                /// @src 0:6668:6701  "g1points[1].Y = p - g1points[1].Y"
                let _144 := expr_950
                write_to_memory_t_uint256(_143, _144)
                let expr_951 := expr_950
                /// @src 0:6719:6726  "Pairing"
                let expr_956_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6719:6731  "Pairing.P2()"
                let expr_958_mpos := fun_P2_44()
                /// @src 0:6705:6713  "g2points"
                let _145_mpos := var_g2points_873_mpos
                let expr_953_mpos := _145_mpos
                /// @src 0:6714:6715  "0"
                let expr_954 := 0x00
                /// @src 0:6705:6731  "g2points[0] = Pairing.P2()"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_953_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_954)), expr_958_mpos)
                let _146_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_953_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_954)))
                let expr_959_mpos := _146_mpos
                /// @src 0:6749:6756  "Pairing"
                let expr_964_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6749:6761  "Pairing.P2()"
                let expr_966_mpos := fun_P2_44()
                /// @src 0:6735:6743  "g2points"
                let _147_mpos := var_g2points_873_mpos
                let expr_961_mpos := _147_mpos
                /// @src 0:6744:6745  "1"
                let expr_962 := 0x01
                /// @src 0:6735:6761  "g2points[1] = Pairing.P2()"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_961_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_962)), expr_966_mpos)
                let _148_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_961_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_962)))
                let expr_967_mpos := _148_mpos
                /// @src 0:6770:6777  "Pairing"
                let expr_969_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6786:6794  "g1points"
                let _149_mpos := var_g1points_860_mpos
                let expr_971_mpos := _149_mpos
                /// @src 0:6796:6804  "g2points"
                let _150_mpos := var_g2points_873_mpos
                let expr_972_mpos := _150_mpos
                /// @src 0:6770:6805  "Pairing.pairing(g1points, g2points)"
                let expr_973 := fun_pairing_356(expr_971_mpos, expr_972_mpos)
                /// @src 0:6769:6805  "!Pairing.pairing(g1points, g2points)"
                let expr_974 := cleanup_t_bool(iszero(expr_973))
                /// @src 0:6765:6822  "if (!Pairing.pairing(g1points, g2points))..."
                if expr_974 {
                    /// @src 0:6817:6822  "false"
                    let expr_975 := 0x00
                    /// @src 0:6810:6822  "return false"
                    var__834 := expr_975
                    leave
                    /// @src 0:6765:6822  "if (!Pairing.pairing(g1points, g2points))..."
                }
                /// @src 0:6833:6837  "true"
                let expr_978 := 0x01
                /// @src 0:6826:6837  "return true"
                var__834 := expr_978
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            function cleanup_t_rational_14125296762497065001182820090155008161146766663259912659363835465243039841726_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_14125296762497065001182820090155008161146766663259912659363835465243039841726_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_14125296762497065001182820090155008161146766663259912659363835465243039841726_by_1(value)))
            }

            function cleanup_t_rational_16229134936871442251132173501211935676986397196799085184804749187146857848057_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16229134936871442251132173501211935676986397196799085184804749187146857848057_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16229134936871442251132173501211935676986397196799085184804749187146857848057_by_1(value)))
            }

            function cleanup_t_rational_18256332256630856740336504687838346961237861778318632856900758565550522381207_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18256332256630856740336504687838346961237861778318632856900758565550522381207_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18256332256630856740336504687838346961237861778318632856900758565550522381207_by_1(value)))
            }

            function cleanup_t_rational_6976682127058094634733239494758371323697222088503263230319702770853579280803_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6976682127058094634733239494758371323697222088503263230319702770853579280803_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6976682127058094634733239494758371323697222088503263230319702770853579280803_by_1(value)))
            }

            /// @ast-id 831
            /// @src 0:5045:5643  "function testMul() public returns (bool) {..."
            function fun_testMul_831() -> var__792 {
                /// @src 0:5080:5084  "bool"
                let zero_t_bool_151 := zero_value_for_split_t_bool()
                var__792 := zero_t_bool_151

                /// @src 0:5090:5114  "Pairing.G1Point memory p"
                let var_p_798_mpos
                let zero_t_struct$_G1Point_$5_memory_ptr_152_mpos := zero_value_for_split_t_struct$_G1Point_$5_memory_ptr()
                var_p_798_mpos := zero_t_struct$_G1Point_$5_memory_ptr_152_mpos
                /// @src 0:5186:5263  "14125296762497065001182820090155008161146766663259912659363835465243039841726"
                let expr_803 := 0x1f3aa27851409fd573e3ea94a243d632307287b4024954c113900bb4c23f3dbe
                /// @src 0:5180:5263  "p.X = 14125296762497065001182820090155008161146766663259912659363835465243039841726"
                let _153 := convert_t_rational_14125296762497065001182820090155008161146766663259912659363835465243039841726_by_1_to_t_uint256(expr_803)
                /// @src 0:5180:5181  "p"
                let _154_mpos := var_p_798_mpos
                let expr_800_mpos := _154_mpos
                /// @src 0:5180:5183  "p.X"
                let _155 := add(expr_800_mpos, 0)
                /// @src 0:5180:5263  "p.X = 14125296762497065001182820090155008161146766663259912659363835465243039841726"
                let _156 := _153
                write_to_memory_t_uint256(_155, _156)
                let expr_804 := _153
                /// @src 0:5273:5350  "16229134936871442251132173501211935676986397196799085184804749187146857848057"
                let expr_809 := 0x23e15d674823d41160c3c801819a46393127b39997a9c97d4c14a0a8e4d01cf9
                /// @src 0:5267:5350  "p.Y = 16229134936871442251132173501211935676986397196799085184804749187146857848057"
                let _157 := convert_t_rational_16229134936871442251132173501211935676986397196799085184804749187146857848057_by_1_to_t_uint256(expr_809)
                /// @src 0:5267:5268  "p"
                let _158_mpos := var_p_798_mpos
                let expr_806_mpos := _158_mpos
                /// @src 0:5267:5270  "p.Y"
                let _159 := add(expr_806_mpos, 32)
                /// @src 0:5267:5350  "p.Y = 16229134936871442251132173501211935676986397196799085184804749187146857848057"
                let _160 := _157
                write_to_memory_t_uint256(_159, _160)
                let expr_810 := _157
                /// @src 0:5358:5365  "Pairing"
                let expr_813_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:5370:5371  "p"
                let _161_mpos := var_p_798_mpos
                let expr_815_mpos := _161_mpos
                /// @src 0:5373:5450  "13986731495506593864492662381614386532349950841221768152838255933892789078521"
                let expr_816 := 0x1eec35a0e955cad4bee5846ae0f1d0b742d8636b278450c534e38e06a60509f9
                /// @src 0:5358:5451  "Pairing.mul(p, 13986731495506593864492662381614386532349950841221768152838255933892789078521)"
                let _162 := convert_t_rational_13986731495506593864492662381614386532349950841221768152838255933892789078521_by_1_to_t_uint256(expr_816)
                let expr_817_mpos := fun_mul_191(expr_815_mpos, _162)
                /// @src 0:5354:5451  "p = Pairing.mul(p, 13986731495506593864492662381614386532349950841221768152838255933892789078521)"
                var_p_798_mpos := expr_817_mpos
                let _163_mpos := var_p_798_mpos
                let expr_818_mpos := _163_mpos
                /// @src 0:5465:5466  "p"
                let _164_mpos := var_p_798_mpos
                let expr_820_mpos := _164_mpos
                /// @src 0:5465:5468  "p.X"
                let _165 := add(expr_820_mpos, 0)
                let _166 := read_from_memoryt_uint256(_165)
                let expr_821 := _166
                /// @src 0:5472:5549  "18256332256630856740336504687838346961237861778318632856900758565550522381207"
                let expr_822 := 0x285cb7c6f3f02b845c94e350484cf47ce9f6f245c0c5609ad88aa5b86c4c3397
                /// @src 0:5465:5549  "p.X == 18256332256630856740336504687838346961237861778318632856900758565550522381207"
                let expr_823 := eq(cleanup_t_uint256(expr_821), convert_t_rational_18256332256630856740336504687838346961237861778318632856900758565550522381207_by_1_to_t_uint256(expr_822))
                /// @src 0:5465:5639  "p.X == 18256332256630856740336504687838346961237861778318632856900758565550522381207 &&..."
                let expr_828 := expr_823
                if expr_828 {
                    /// @src 0:5556:5557  "p"
                    let _167_mpos := var_p_798_mpos
                    let expr_824_mpos := _167_mpos
                    /// @src 0:5556:5559  "p.Y"
                    let _168 := add(expr_824_mpos, 32)
                    let _169 := read_from_memoryt_uint256(_168)
                    let expr_825 := _169
                    /// @src 0:5563:5639  "6976682127058094634733239494758371323697222088503263230319702770853579280803"
                    let expr_826 := 0x0f6ca982921c98fe59a3d42894ec8e0546704a4236d52d3a87472510067351a3
                    /// @src 0:5556:5639  "p.Y == 6976682127058094634733239494758371323697222088503263230319702770853579280803"
                    let expr_827 := eq(cleanup_t_uint256(expr_825), convert_t_rational_6976682127058094634733239494758371323697222088503263230319702770853579280803_by_1_to_t_uint256(expr_826))
                    /// @src 0:5465:5639  "p.X == 18256332256630856740336504687838346961237861778318632856900758565550522381207 &&..."
                    expr_828 := expr_827
                }
                /// @src 0:5455:5639  "return..."
                var__792 := expr_828
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            /// @ast-id 789
            /// @src 0:4865:5043  "function g() public returns (bool) {..."
            function fun_g_789() -> var__757 {
                /// @src 0:4894:4898  "bool"
                let zero_t_bool_170 := zero_value_for_split_t_bool()
                var__757 := zero_t_bool_170

                /// @src 0:4931:4938  "Pairing"
                let expr_764_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:4943:4950  "Pairing"
                let expr_766_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:4943:4955  "Pairing.P1()"
                let expr_768_mpos := fun_P1_27()
                /// @src 0:4957:4964  "Pairing"
                let expr_769_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:4972:4979  "Pairing"
                let expr_771_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:4972:4984  "Pairing.P1()"
                let expr_773_mpos := fun_P1_27()
                /// @src 0:4957:4985  "Pairing.negate(Pairing.P1())"
                let expr_774_mpos := fun_negate_86(expr_773_mpos)
                /// @src 0:4931:4986  "Pairing.add(Pairing.P1(), Pairing.negate(Pairing.P1()))"
                let expr_775_mpos := fun_add_143(expr_768_mpos, expr_774_mpos)
                /// @src 0:4904:4986  "Pairing.G1Point memory x = Pairing.add(Pairing.P1(), Pairing.negate(Pairing.P1()))"
                let var_x_763_mpos := expr_775_mpos
                /// @src 0:5018:5019  "x"
                let _171_mpos := var_x_763_mpos
                let expr_777_mpos := _171_mpos
                /// @src 0:5018:5021  "x.X"
                let _172 := add(expr_777_mpos, 0)
                let _173 := read_from_memoryt_uint256(_172)
                let expr_778 := _173
                /// @src 0:5025:5026  "0"
                let expr_779 := 0x00
                /// @src 0:5018:5026  "x.X == 0"
                let expr_780 := eq(cleanup_t_uint256(expr_778), convert_t_rational_0_by_1_to_t_uint256(expr_779))
                /// @src 0:5018:5038  "x.X == 0 && x.Y == 0"
                let expr_785 := expr_780
                if expr_785 {
                    /// @src 0:5030:5031  "x"
                    let _174_mpos := var_x_763_mpos
                    let expr_781_mpos := _174_mpos
                    /// @src 0:5030:5033  "x.Y"
                    let _175 := add(expr_781_mpos, 32)
                    let _176 := read_from_memoryt_uint256(_175)
                    let expr_782 := _176
                    /// @src 0:5037:5038  "0"
                    let expr_783 := 0x00
                    /// @src 0:5030:5038  "x.Y == 0"
                    let expr_784 := eq(cleanup_t_uint256(expr_782), convert_t_rational_0_by_1_to_t_uint256(expr_783))
                    /// @src 0:5018:5038  "x.X == 0 && x.Y == 0"
                    expr_785 := expr_784
                }
                /// @src 0:5017:5039  "(x.X == 0 && x.Y == 0)"
                let expr_786 := expr_785
                /// @src 0:5010:5039  "return (x.X == 0 && x.Y == 0)"
                var__757 := expr_786
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            function array_allocation_size_t_array$_t_uint256_$4_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            function allocate_memory_array_t_array$_t_uint256_$4_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_uint256_$4_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

            }

            function allocate_and_zero_memory_array_t_array$_t_uint256_$4_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_uint256_$4_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_uint256_$4_memory_ptr(length)

                zero_memory_chunk_t_uint256(dataStart, dataSize)
            }

            function zero_value_for_split_t_array$_t_uint256_$4_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_array_t_array$_t_uint256_$4_memory_ptr(4)
            }

            function array_length_t_array$_t_uint256_$4_memory_ptr(value) -> length {

                length := 0x04

            }

            function memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$4_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                addr := add(baseRef, offset)
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            /// @ast-id 143
            /// @src 0:1129:1525  "function add(G1Point memory p1, G1Point memory p2) internal returns (G1Point memory r) {..."
            function fun_add_143(var_p1_90_mpos, var_p2_93_mpos) -> var_r_97_mpos {
                /// @src 0:1198:1214  "G1Point memory r"
                let zero_t_struct$_G1Point_$5_memory_ptr_177_mpos := zero_value_for_split_t_struct$_G1Point_$5_memory_ptr()
                var_r_97_mpos := zero_t_struct$_G1Point_$5_memory_ptr_177_mpos

                /// @src 0:1225:1226  "4"
                let expr_101 := 0x04
                /// @src 0:1220:1240  "uint[4] memory input"
                let var_input_104_mpos
                let zero_t_array$_t_uint256_$4_memory_ptr_178_mpos := zero_value_for_split_t_array$_t_uint256_$4_memory_ptr()
                var_input_104_mpos := zero_t_array$_t_uint256_$4_memory_ptr_178_mpos
                /// @src 0:1255:1257  "p1"
                let _179_mpos := var_p1_90_mpos
                let expr_109_mpos := _179_mpos
                /// @src 0:1255:1259  "p1.X"
                let _180 := add(expr_109_mpos, 0)
                let _181 := read_from_memoryt_uint256(_180)
                let expr_110 := _181
                /// @src 0:1244:1249  "input"
                let _182_mpos := var_input_104_mpos
                let expr_106_mpos := _182_mpos
                /// @src 0:1250:1251  "0"
                let expr_107 := 0x00
                /// @src 0:1244:1259  "input[0] = p1.X"
                let _183 := expr_110
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_106_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_107)), _183)
                let expr_111 := expr_110
                /// @src 0:1274:1276  "p1"
                let _184_mpos := var_p1_90_mpos
                let expr_116_mpos := _184_mpos
                /// @src 0:1274:1278  "p1.Y"
                let _185 := add(expr_116_mpos, 32)
                let _186 := read_from_memoryt_uint256(_185)
                let expr_117 := _186
                /// @src 0:1263:1268  "input"
                let _187_mpos := var_input_104_mpos
                let expr_113_mpos := _187_mpos
                /// @src 0:1269:1270  "1"
                let expr_114 := 0x01
                /// @src 0:1263:1278  "input[1] = p1.Y"
                let _188 := expr_117
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_113_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_114)), _188)
                let expr_118 := expr_117
                /// @src 0:1293:1295  "p2"
                let _189_mpos := var_p2_93_mpos
                let expr_123_mpos := _189_mpos
                /// @src 0:1293:1297  "p2.X"
                let _190 := add(expr_123_mpos, 0)
                let _191 := read_from_memoryt_uint256(_190)
                let expr_124 := _191
                /// @src 0:1282:1287  "input"
                let _192_mpos := var_input_104_mpos
                let expr_120_mpos := _192_mpos
                /// @src 0:1288:1289  "2"
                let expr_121 := 0x02
                /// @src 0:1282:1297  "input[2] = p2.X"
                let _193 := expr_124
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_120_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_121)), _193)
                let expr_125 := expr_124
                /// @src 0:1312:1314  "p2"
                let _194_mpos := var_p2_93_mpos
                let expr_130_mpos := _194_mpos
                /// @src 0:1312:1316  "p2.Y"
                let _195 := add(expr_130_mpos, 32)
                let _196 := read_from_memoryt_uint256(_195)
                let expr_131 := _196
                /// @src 0:1301:1306  "input"
                let _197_mpos := var_input_104_mpos
                let expr_127_mpos := _197_mpos
                /// @src 0:1307:1308  "3"
                let expr_128 := 0x03
                /// @src 0:1301:1316  "input[3] = p2.Y"
                let _198 := expr_131
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_127_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_128)), _198)
                let expr_132 := expr_131
                /// @src 0:1320:1332  "bool success"
                let var_success_135
                let zero_t_bool_199 := zero_value_for_split_t_bool()
                var_success_135 := zero_t_bool_199
                /// @src 0:1336:1502  "assembly {..."
                {
                    var_success_135 := call(sub(gas(), 2000), 6, 0, var_input_104_mpos, 0xc0, var_r_97_mpos, 0x60)
                    switch var_success_135
                    case 0 { invalid() }
                }
                /// @src 0:1513:1520  "success"
                let _200 := var_success_135
                let expr_139 := _200
                /// @src 0:1505:1521  "require(success)"
                require_helper(expr_139)

            }
            /// @src 0:4069:14233  "contract Test {..."

            function array_allocation_size_t_array$_t_uint256_$3_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            function allocate_memory_array_t_array$_t_uint256_$3_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_uint256_$3_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

            }

            function allocate_and_zero_memory_array_t_array$_t_uint256_$3_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_uint256_$3_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_uint256_$3_memory_ptr(length)

                zero_memory_chunk_t_uint256(dataStart, dataSize)
            }

            function zero_value_for_split_t_array$_t_uint256_$3_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_array_t_array$_t_uint256_$3_memory_ptr(3)
            }

            function array_length_t_array$_t_uint256_$3_memory_ptr(value) -> length {

                length := 0x03

            }

            function memory_array_index_access_t_array$_t_uint256_$3_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$3_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                addr := add(baseRef, offset)
            }

            /// @ast-id 191
            /// @src 0:1653:2013  "function mul(G1Point memory p, uint s) internal returns (G1Point memory r) {..."
            function fun_mul_191(var_p_147_mpos, var_s_149) -> var_r_153_mpos {
                /// @src 0:1710:1726  "G1Point memory r"
                let zero_t_struct$_G1Point_$5_memory_ptr_201_mpos := zero_value_for_split_t_struct$_G1Point_$5_memory_ptr()
                var_r_153_mpos := zero_t_struct$_G1Point_$5_memory_ptr_201_mpos

                /// @src 0:1737:1738  "3"
                let expr_157 := 0x03
                /// @src 0:1732:1752  "uint[3] memory input"
                let var_input_160_mpos
                let zero_t_array$_t_uint256_$3_memory_ptr_202_mpos := zero_value_for_split_t_array$_t_uint256_$3_memory_ptr()
                var_input_160_mpos := zero_t_array$_t_uint256_$3_memory_ptr_202_mpos
                /// @src 0:1767:1768  "p"
                let _203_mpos := var_p_147_mpos
                let expr_165_mpos := _203_mpos
                /// @src 0:1767:1770  "p.X"
                let _204 := add(expr_165_mpos, 0)
                let _205 := read_from_memoryt_uint256(_204)
                let expr_166 := _205
                /// @src 0:1756:1761  "input"
                let _206_mpos := var_input_160_mpos
                let expr_162_mpos := _206_mpos
                /// @src 0:1762:1763  "0"
                let expr_163 := 0x00
                /// @src 0:1756:1770  "input[0] = p.X"
                let _207 := expr_166
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$3_memory_ptr(expr_162_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_163)), _207)
                let expr_167 := expr_166
                /// @src 0:1785:1786  "p"
                let _208_mpos := var_p_147_mpos
                let expr_172_mpos := _208_mpos
                /// @src 0:1785:1788  "p.Y"
                let _209 := add(expr_172_mpos, 32)
                let _210 := read_from_memoryt_uint256(_209)
                let expr_173 := _210
                /// @src 0:1774:1779  "input"
                let _211_mpos := var_input_160_mpos
                let expr_169_mpos := _211_mpos
                /// @src 0:1780:1781  "1"
                let expr_170 := 0x01
                /// @src 0:1774:1788  "input[1] = p.Y"
                let _212 := expr_173
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$3_memory_ptr(expr_169_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_170)), _212)
                let expr_174 := expr_173
                /// @src 0:1803:1804  "s"
                let _213 := var_s_149
                let expr_179 := _213
                /// @src 0:1792:1797  "input"
                let _214_mpos := var_input_160_mpos
                let expr_176_mpos := _214_mpos
                /// @src 0:1798:1799  "2"
                let expr_177 := 0x02
                /// @src 0:1792:1804  "input[2] = s"
                let _215 := expr_179
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$3_memory_ptr(expr_176_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_177)), _215)
                let expr_180 := expr_179
                /// @src 0:1808:1820  "bool success"
                let var_success_183
                let zero_t_bool_216 := zero_value_for_split_t_bool()
                var_success_183 := zero_t_bool_216
                /// @src 0:1824:1990  "assembly {..."
                {
                    var_success_183 := call(sub(gas(), 2000), 7, 0, var_input_160_mpos, 0x80, var_r_153_mpos, 0x60)
                    switch var_success_183
                    case 0 { invalid() }
                }
                /// @src 0:2001:2008  "success"
                let _217 := var_success_183
                let expr_187 := _217
                /// @src 0:1993:2009  "require(success)"
                require_helper(expr_187)

            }
            /// @src 0:4069:14233  "contract Test {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            /// @ast-id 1414
            /// @src 0:10468:11531  "function verify(uint[] memory input, Proof memory proof) internal returns (uint) {..."
            function fun_verify_1414(var_input_1212_mpos, var_proof_1215_mpos) -> var__1218 {
                /// @src 0:10543:10547  "uint"
                let zero_t_uint256_218 := zero_value_for_split_t_uint256()
                var__1218 := zero_t_uint256_218

                /// @src 0:10578:10592  "verifyingKey()"
                let expr_1224_mpos := fun_verifyingKey_1209()
                /// @src 0:10553:10592  "VerifyingKey memory vk = verifyingKey()"
                let var_vk_1222_mpos := expr_1224_mpos
                /// @src 0:10604:10609  "input"
                let _219_mpos := var_input_1212_mpos
                let expr_1227_mpos := _219_mpos
                /// @src 0:10604:10616  "input.length"
                let expr_1228 := array_length_t_array$_t_uint256_$dyn_memory_ptr(expr_1227_mpos)
                /// @src 0:10619:10620  "1"
                let expr_1229 := 0x01
                /// @src 0:10604:10620  "input.length + 1"
                let expr_1230 := checked_add_t_uint256(expr_1228, convert_t_rational_1_by_1_to_t_uint256(expr_1229))

                /// @src 0:10624:10626  "vk"
                let _220_mpos := var_vk_1222_mpos
                let expr_1231_mpos := _220_mpos
                /// @src 0:10624:10629  "vk.IC"
                let _221 := add(expr_1231_mpos, 224)
                let _222_mpos := mload(_221)
                let expr_1232_mpos := _222_mpos
                /// @src 0:10624:10636  "vk.IC.length"
                let expr_1233 := array_length_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1232_mpos)
                /// @src 0:10604:10636  "input.length + 1 == vk.IC.length"
                let expr_1234 := eq(cleanup_t_uint256(expr_1230), cleanup_t_uint256(expr_1233))
                /// @src 0:10596:10637  "require(input.length + 1 == vk.IC.length)"
                require_helper(expr_1234)
                /// @src 0:10712:10719  "Pairing"
                let expr_1242_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:10728:10729  "0"
                let expr_1244 := 0x00
                /// @src 0:10731:10732  "0"
                let expr_1245 := 0x00
                /// @src 0:10712:10733  "Pairing.G1Point(0, 0)"
                let expr_1246_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _223 := convert_t_rational_0_by_1_to_t_uint256(expr_1244)
                write_to_memory_t_uint256(add(expr_1246_mpos, 0), _223)
                let _224 := convert_t_rational_0_by_1_to_t_uint256(expr_1245)
                write_to_memory_t_uint256(add(expr_1246_mpos, 32), _224)
                /// @src 0:10682:10733  "Pairing.G1Point memory vk_x = Pairing.G1Point(0, 0)"
                let var_vk_x_1241_mpos := expr_1246_mpos
                /// @src 0:10737:10841  "for (uint i = 0; i < input.length; i++)..."
                for {
                    /// @src 0:10751:10752  "0"
                    let expr_1250 := 0x00
                    /// @src 0:10742:10752  "uint i = 0"
                    let var_i_1249 := convert_t_rational_0_by_1_to_t_uint256(expr_1250)
                    } 1 {
                    /// @src 0:10772:10775  "i++"
                    let _226 := var_i_1249
                    let _225 := increment_wrapping_t_uint256(_226)
                    var_i_1249 := _225
                    let expr_1257 := _226
                }
                {
                    /// @src 0:10754:10755  "i"
                    let _227 := var_i_1249
                    let expr_1252 := _227
                    /// @src 0:10758:10763  "input"
                    let _228_mpos := var_input_1212_mpos
                    let expr_1253_mpos := _228_mpos
                    /// @src 0:10758:10770  "input.length"
                    let expr_1254 := array_length_t_array$_t_uint256_$dyn_memory_ptr(expr_1253_mpos)
                    /// @src 0:10754:10770  "i < input.length"
                    let expr_1255 := lt(cleanup_t_uint256(expr_1252), cleanup_t_uint256(expr_1254))
                    if iszero(expr_1255) { break }
                    /// @src 0:10787:10794  "Pairing"
                    let expr_1260_address := linkersymbol("snark.sol:Pairing")
                    /// @src 0:10799:10803  "vk_x"
                    let _229_mpos := var_vk_x_1241_mpos
                    let expr_1262_mpos := _229_mpos
                    /// @src 0:10805:10812  "Pairing"
                    let expr_1263_address := linkersymbol("snark.sol:Pairing")
                    /// @src 0:10817:10819  "vk"
                    let _230_mpos := var_vk_1222_mpos
                    let expr_1265_mpos := _230_mpos
                    /// @src 0:10817:10822  "vk.IC"
                    let _231 := add(expr_1265_mpos, 224)
                    let _232_mpos := mload(_231)
                    let expr_1266_mpos := _232_mpos
                    /// @src 0:10823:10824  "i"
                    let _233 := var_i_1249
                    let expr_1267 := _233
                    /// @src 0:10827:10828  "1"
                    let expr_1268 := 0x01
                    /// @src 0:10823:10828  "i + 1"
                    let expr_1269 := checked_add_t_uint256(expr_1267, convert_t_rational_1_by_1_to_t_uint256(expr_1268))

                    /// @src 0:10817:10829  "vk.IC[i + 1]"
                    let _234_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1266_mpos, expr_1269))
                    let expr_1270_mpos := _234_mpos
                    /// @src 0:10831:10836  "input"
                    let _235_mpos := var_input_1212_mpos
                    let expr_1271_mpos := _235_mpos
                    /// @src 0:10837:10838  "i"
                    let _236 := var_i_1249
                    let expr_1272 := _236
                    /// @src 0:10831:10839  "input[i]"
                    let _237 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1271_mpos, expr_1272))
                    let expr_1273 := _237
                    /// @src 0:10805:10840  "Pairing.mul(vk.IC[i + 1], input[i])"
                    let expr_1274_mpos := fun_mul_191(expr_1270_mpos, expr_1273)
                    /// @src 0:10787:10841  "Pairing.add(vk_x, Pairing.mul(vk.IC[i + 1], input[i]))"
                    let expr_1275_mpos := fun_add_143(expr_1262_mpos, expr_1274_mpos)
                    /// @src 0:10780:10841  "vk_x = Pairing.add(vk_x, Pairing.mul(vk.IC[i + 1], input[i]))"
                    var_vk_x_1241_mpos := expr_1275_mpos
                    let _238_mpos := var_vk_x_1241_mpos
                    let expr_1276_mpos := _238_mpos
                }
                /// @src 0:10852:10859  "Pairing"
                let expr_1280_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:10864:10868  "vk_x"
                let _239_mpos := var_vk_x_1241_mpos
                let expr_1282_mpos := _239_mpos
                /// @src 0:10870:10872  "vk"
                let _240_mpos := var_vk_1222_mpos
                let expr_1283_mpos := _240_mpos
                /// @src 0:10870:10875  "vk.IC"
                let _241 := add(expr_1283_mpos, 224)
                let _242_mpos := mload(_241)
                let expr_1284_mpos := _242_mpos
                /// @src 0:10876:10877  "0"
                let expr_1285 := 0x00
                /// @src 0:10870:10878  "vk.IC[0]"
                let _243_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1284_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1285)))
                let expr_1286_mpos := _243_mpos
                /// @src 0:10852:10879  "Pairing.add(vk_x, vk.IC[0])"
                let expr_1287_mpos := fun_add_143(expr_1282_mpos, expr_1286_mpos)
                /// @src 0:10845:10879  "vk_x = Pairing.add(vk_x, vk.IC[0])"
                var_vk_x_1241_mpos := expr_1287_mpos
                let _244_mpos := var_vk_x_1241_mpos
                let expr_1288_mpos := _244_mpos
                /// @src 0:10888:10895  "Pairing"
                let expr_1290_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:10909:10914  "proof"
                let _245_mpos := var_proof_1215_mpos
                let expr_1292_mpos := _245_mpos
                /// @src 0:10909:10916  "proof.A"
                let _246 := add(expr_1292_mpos, 0)
                let _247_mpos := mload(_246)
                let expr_1293_mpos := _247_mpos
                /// @src 0:10918:10920  "vk"
                let _248_mpos := var_vk_1222_mpos
                let expr_1294_mpos := _248_mpos
                /// @src 0:10918:10922  "vk.A"
                let _249 := add(expr_1294_mpos, 0)
                let _250_mpos := mload(_249)
                let expr_1295_mpos := _250_mpos
                /// @src 0:10924:10931  "Pairing"
                let expr_1296_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:10939:10944  "proof"
                let _251_mpos := var_proof_1215_mpos
                let expr_1298_mpos := _251_mpos
                /// @src 0:10939:10948  "proof.A_p"
                let _252 := add(expr_1298_mpos, 32)
                let _253_mpos := mload(_252)
                let expr_1299_mpos := _253_mpos
                /// @src 0:10924:10949  "Pairing.negate(proof.A_p)"
                let expr_1300_mpos := fun_negate_86(expr_1299_mpos)
                /// @src 0:10951:10958  "Pairing"
                let expr_1301_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:10951:10963  "Pairing.P2()"
                let expr_1303_mpos := fun_P2_44()
                /// @src 0:10888:10964  "Pairing.pairingProd2(proof.A, vk.A, Pairing.negate(proof.A_p), Pairing.P2())"
                let expr_1304 := fun_pairingProd2_427(expr_1293_mpos, expr_1295_mpos, expr_1300_mpos, expr_1303_mpos)
                /// @src 0:10887:10964  "!Pairing.pairingProd2(proof.A, vk.A, Pairing.negate(proof.A_p), Pairing.P2())"
                let expr_1305 := cleanup_t_bool(iszero(expr_1304))
                /// @src 0:10883:10974  "if (!Pairing.pairingProd2(proof.A, vk.A, Pairing.negate(proof.A_p), Pairing.P2())) return 1"
                if expr_1305 {
                    /// @src 0:10973:10974  "1"
                    let expr_1306 := 0x01
                    /// @src 0:10966:10974  "return 1"
                    var__1218 := convert_t_rational_1_by_1_to_t_uint256(expr_1306)
                    leave
                    /// @src 0:10883:10974  "if (!Pairing.pairingProd2(proof.A, vk.A, Pairing.negate(proof.A_p), Pairing.P2())) return 1"
                }
                /// @src 0:10983:10990  "Pairing"
                let expr_1309_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11004:11006  "vk"
                let _254_mpos := var_vk_1222_mpos
                let expr_1311_mpos := _254_mpos
                /// @src 0:11004:11008  "vk.B"
                let _255 := add(expr_1311_mpos, 32)
                let _256_mpos := mload(_255)
                let expr_1312_mpos := _256_mpos
                /// @src 0:11010:11015  "proof"
                let _257_mpos := var_proof_1215_mpos
                let expr_1313_mpos := _257_mpos
                /// @src 0:11010:11017  "proof.B"
                let _258 := add(expr_1313_mpos, 64)
                let _259_mpos := mload(_258)
                let expr_1314_mpos := _259_mpos
                /// @src 0:11019:11026  "Pairing"
                let expr_1315_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11034:11039  "proof"
                let _260_mpos := var_proof_1215_mpos
                let expr_1317_mpos := _260_mpos
                /// @src 0:11034:11043  "proof.B_p"
                let _261 := add(expr_1317_mpos, 96)
                let _262_mpos := mload(_261)
                let expr_1318_mpos := _262_mpos
                /// @src 0:11019:11044  "Pairing.negate(proof.B_p)"
                let expr_1319_mpos := fun_negate_86(expr_1318_mpos)
                /// @src 0:11046:11053  "Pairing"
                let expr_1320_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11046:11058  "Pairing.P2()"
                let expr_1322_mpos := fun_P2_44()
                /// @src 0:10983:11059  "Pairing.pairingProd2(vk.B, proof.B, Pairing.negate(proof.B_p), Pairing.P2())"
                let expr_1323 := fun_pairingProd2_427(expr_1312_mpos, expr_1314_mpos, expr_1319_mpos, expr_1322_mpos)
                /// @src 0:10982:11059  "!Pairing.pairingProd2(vk.B, proof.B, Pairing.negate(proof.B_p), Pairing.P2())"
                let expr_1324 := cleanup_t_bool(iszero(expr_1323))
                /// @src 0:10978:11069  "if (!Pairing.pairingProd2(vk.B, proof.B, Pairing.negate(proof.B_p), Pairing.P2())) return 2"
                if expr_1324 {
                    /// @src 0:11068:11069  "2"
                    let expr_1325 := 0x02
                    /// @src 0:11061:11069  "return 2"
                    var__1218 := convert_t_rational_2_by_1_to_t_uint256(expr_1325)
                    leave
                    /// @src 0:10978:11069  "if (!Pairing.pairingProd2(vk.B, proof.B, Pairing.negate(proof.B_p), Pairing.P2())) return 2"
                }
                /// @src 0:11078:11085  "Pairing"
                let expr_1328_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11099:11104  "proof"
                let _263_mpos := var_proof_1215_mpos
                let expr_1330_mpos := _263_mpos
                /// @src 0:11099:11106  "proof.C"
                let _264 := add(expr_1330_mpos, 128)
                let _265_mpos := mload(_264)
                let expr_1331_mpos := _265_mpos
                /// @src 0:11108:11110  "vk"
                let _266_mpos := var_vk_1222_mpos
                let expr_1332_mpos := _266_mpos
                /// @src 0:11108:11112  "vk.C"
                let _267 := add(expr_1332_mpos, 64)
                let _268_mpos := mload(_267)
                let expr_1333_mpos := _268_mpos
                /// @src 0:11114:11121  "Pairing"
                let expr_1334_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11129:11134  "proof"
                let _269_mpos := var_proof_1215_mpos
                let expr_1336_mpos := _269_mpos
                /// @src 0:11129:11138  "proof.C_p"
                let _270 := add(expr_1336_mpos, 160)
                let _271_mpos := mload(_270)
                let expr_1337_mpos := _271_mpos
                /// @src 0:11114:11139  "Pairing.negate(proof.C_p)"
                let expr_1338_mpos := fun_negate_86(expr_1337_mpos)
                /// @src 0:11141:11148  "Pairing"
                let expr_1339_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11141:11153  "Pairing.P2()"
                let expr_1341_mpos := fun_P2_44()
                /// @src 0:11078:11154  "Pairing.pairingProd2(proof.C, vk.C, Pairing.negate(proof.C_p), Pairing.P2())"
                let expr_1342 := fun_pairingProd2_427(expr_1331_mpos, expr_1333_mpos, expr_1338_mpos, expr_1341_mpos)
                /// @src 0:11077:11154  "!Pairing.pairingProd2(proof.C, vk.C, Pairing.negate(proof.C_p), Pairing.P2())"
                let expr_1343 := cleanup_t_bool(iszero(expr_1342))
                /// @src 0:11073:11164  "if (!Pairing.pairingProd2(proof.C, vk.C, Pairing.negate(proof.C_p), Pairing.P2())) return 3"
                if expr_1343 {
                    /// @src 0:11163:11164  "3"
                    let expr_1344 := 0x03
                    /// @src 0:11156:11164  "return 3"
                    var__1218 := convert_t_rational_3_by_1_to_t_uint256(expr_1344)
                    leave
                    /// @src 0:11073:11164  "if (!Pairing.pairingProd2(proof.C, vk.C, Pairing.negate(proof.C_p), Pairing.P2())) return 3"
                }
                /// @src 0:11173:11180  "Pairing"
                let expr_1347_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11198:11203  "proof"
                let _272_mpos := var_proof_1215_mpos
                let expr_1349_mpos := _272_mpos
                /// @src 0:11198:11205  "proof.K"
                let _273 := add(expr_1349_mpos, 192)
                let _274_mpos := mload(_273)
                let expr_1350_mpos := _274_mpos
                /// @src 0:11207:11209  "vk"
                let _275_mpos := var_vk_1222_mpos
                let expr_1351_mpos := _275_mpos
                /// @src 0:11207:11215  "vk.gamma"
                let _276 := add(expr_1351_mpos, 96)
                let _277_mpos := mload(_276)
                let expr_1352_mpos := _277_mpos
                /// @src 0:11220:11227  "Pairing"
                let expr_1353_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11235:11242  "Pairing"
                let expr_1355_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11247:11251  "vk_x"
                let _278_mpos := var_vk_x_1241_mpos
                let expr_1357_mpos := _278_mpos
                /// @src 0:11253:11260  "Pairing"
                let expr_1358_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11265:11270  "proof"
                let _279_mpos := var_proof_1215_mpos
                let expr_1360_mpos := _279_mpos
                /// @src 0:11265:11272  "proof.A"
                let _280 := add(expr_1360_mpos, 0)
                let _281_mpos := mload(_280)
                let expr_1361_mpos := _281_mpos
                /// @src 0:11274:11279  "proof"
                let _282_mpos := var_proof_1215_mpos
                let expr_1362_mpos := _282_mpos
                /// @src 0:11274:11281  "proof.C"
                let _283 := add(expr_1362_mpos, 128)
                let _284_mpos := mload(_283)
                let expr_1363_mpos := _284_mpos
                /// @src 0:11253:11282  "Pairing.add(proof.A, proof.C)"
                let expr_1364_mpos := fun_add_143(expr_1361_mpos, expr_1363_mpos)
                /// @src 0:11235:11283  "Pairing.add(vk_x, Pairing.add(proof.A, proof.C))"
                let expr_1365_mpos := fun_add_143(expr_1357_mpos, expr_1364_mpos)
                /// @src 0:11220:11284  "Pairing.negate(Pairing.add(vk_x, Pairing.add(proof.A, proof.C)))"
                let expr_1366_mpos := fun_negate_86(expr_1365_mpos)
                /// @src 0:11286:11288  "vk"
                let _285_mpos := var_vk_1222_mpos
                let expr_1367_mpos := _285_mpos
                /// @src 0:11286:11299  "vk.gammaBeta2"
                let _286 := add(expr_1367_mpos, 160)
                let _287_mpos := mload(_286)
                let expr_1368_mpos := _287_mpos
                /// @src 0:11304:11311  "Pairing"
                let expr_1369_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11319:11321  "vk"
                let _288_mpos := var_vk_1222_mpos
                let expr_1371_mpos := _288_mpos
                /// @src 0:11319:11332  "vk.gammaBeta1"
                let _289 := add(expr_1371_mpos, 128)
                let _290_mpos := mload(_289)
                let expr_1372_mpos := _290_mpos
                /// @src 0:11304:11333  "Pairing.negate(vk.gammaBeta1)"
                let expr_1373_mpos := fun_negate_86(expr_1372_mpos)
                /// @src 0:11335:11340  "proof"
                let _291_mpos := var_proof_1215_mpos
                let expr_1374_mpos := _291_mpos
                /// @src 0:11335:11342  "proof.B"
                let _292 := add(expr_1374_mpos, 64)
                let _293_mpos := mload(_292)
                let expr_1375_mpos := _293_mpos
                /// @src 0:11173:11346  "Pairing.pairingProd3(..."
                let expr_1376 := fun_pairingProd3_516(expr_1350_mpos, expr_1352_mpos, expr_1366_mpos, expr_1368_mpos, expr_1373_mpos, expr_1375_mpos)
                /// @src 0:11172:11346  "!Pairing.pairingProd3(..."
                let expr_1377 := cleanup_t_bool(iszero(expr_1376))
                /// @src 0:11168:11356  "if (!Pairing.pairingProd3(..."
                if expr_1377 {
                    /// @src 0:11355:11356  "4"
                    let expr_1378 := 0x04
                    /// @src 0:11348:11356  "return 4"
                    var__1218 := convert_t_rational_4_by_1_to_t_uint256(expr_1378)
                    leave
                    /// @src 0:11168:11356  "if (!Pairing.pairingProd3(..."
                }
                /// @src 0:11365:11372  "Pairing"
                let expr_1381_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11390:11397  "Pairing"
                let expr_1383_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11402:11406  "vk_x"
                let _294_mpos := var_vk_x_1241_mpos
                let expr_1385_mpos := _294_mpos
                /// @src 0:11408:11413  "proof"
                let _295_mpos := var_proof_1215_mpos
                let expr_1386_mpos := _295_mpos
                /// @src 0:11408:11415  "proof.A"
                let _296 := add(expr_1386_mpos, 0)
                let _297_mpos := mload(_296)
                let expr_1387_mpos := _297_mpos
                /// @src 0:11390:11416  "Pairing.add(vk_x, proof.A)"
                let expr_1388_mpos := fun_add_143(expr_1385_mpos, expr_1387_mpos)
                /// @src 0:11418:11423  "proof"
                let _298_mpos := var_proof_1215_mpos
                let expr_1389_mpos := _298_mpos
                /// @src 0:11418:11425  "proof.B"
                let _299 := add(expr_1389_mpos, 64)
                let _300_mpos := mload(_299)
                let expr_1390_mpos := _300_mpos
                /// @src 0:11430:11437  "Pairing"
                let expr_1391_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11445:11450  "proof"
                let _301_mpos := var_proof_1215_mpos
                let expr_1393_mpos := _301_mpos
                /// @src 0:11445:11452  "proof.H"
                let _302 := add(expr_1393_mpos, 224)
                let _303_mpos := mload(_302)
                let expr_1394_mpos := _303_mpos
                /// @src 0:11430:11453  "Pairing.negate(proof.H)"
                let expr_1395_mpos := fun_negate_86(expr_1394_mpos)
                /// @src 0:11455:11457  "vk"
                let _304_mpos := var_vk_1222_mpos
                let expr_1396_mpos := _304_mpos
                /// @src 0:11455:11459  "vk.Z"
                let _305 := add(expr_1396_mpos, 192)
                let _306_mpos := mload(_305)
                let expr_1397_mpos := _306_mpos
                /// @src 0:11464:11471  "Pairing"
                let expr_1398_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11479:11484  "proof"
                let _307_mpos := var_proof_1215_mpos
                let expr_1400_mpos := _307_mpos
                /// @src 0:11479:11486  "proof.C"
                let _308 := add(expr_1400_mpos, 128)
                let _309_mpos := mload(_308)
                let expr_1401_mpos := _309_mpos
                /// @src 0:11464:11487  "Pairing.negate(proof.C)"
                let expr_1402_mpos := fun_negate_86(expr_1401_mpos)
                /// @src 0:11489:11496  "Pairing"
                let expr_1403_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:11489:11501  "Pairing.P2()"
                let expr_1405_mpos := fun_P2_44()
                /// @src 0:11365:11505  "Pairing.pairingProd3(..."
                let expr_1406 := fun_pairingProd3_516(expr_1388_mpos, expr_1390_mpos, expr_1395_mpos, expr_1397_mpos, expr_1402_mpos, expr_1405_mpos)
                /// @src 0:11364:11505  "!Pairing.pairingProd3(..."
                let expr_1407 := cleanup_t_bool(iszero(expr_1406))
                /// @src 0:11360:11515  "if (!Pairing.pairingProd3(..."
                if expr_1407 {
                    /// @src 0:11514:11515  "5"
                    let expr_1408 := 0x05
                    /// @src 0:11507:11515  "return 5"
                    var__1218 := convert_t_rational_5_by_1_to_t_uint256(expr_1408)
                    leave
                    /// @src 0:11360:11515  "if (!Pairing.pairingProd3(..."
                }
                /// @src 0:11526:11527  "0"
                let expr_1411 := 0x00
                /// @src 0:11519:11527  "return 0"
                var__1218 := convert_t_rational_0_by_1_to_t_uint256(expr_1411)
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            /// @ast-id 27
            /// @src 0:192:268  "function P1() internal returns (G1Point memory) {..."
            function fun_P1_27() -> var__19_mpos {
                /// @src 0:224:238  "G1Point memory"
                let zero_t_struct$_G1Point_$5_memory_ptr_310_mpos := zero_value_for_split_t_struct$_G1Point_$5_memory_ptr()
                var__19_mpos := zero_t_struct$_G1Point_$5_memory_ptr_310_mpos

                /// @src 0:259:260  "1"
                let expr_22 := 0x01
                /// @src 0:262:263  "2"
                let expr_23 := 0x02
                /// @src 0:251:264  "G1Point(1, 2)"
                let expr_24_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _311 := convert_t_rational_1_by_1_to_t_uint256(expr_22)
                write_to_memory_t_uint256(add(expr_24_mpos, 0), _311)
                let _312 := convert_t_rational_2_by_1_to_t_uint256(expr_23)
                write_to_memory_t_uint256(add(expr_24_mpos, 32), _312)
                /// @src 0:244:264  "return G1Point(1, 2)"
                var__19_mpos := expr_24_mpos
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            /// @ast-id 86
            /// @src 0:784:1083  "function negate(G1Point memory p) internal returns (G1Point memory) {..."
            function fun_negate_86(var_p_48_mpos) -> var__52_mpos {
                /// @src 0:836:850  "G1Point memory"
                let zero_t_struct$_G1Point_$5_memory_ptr_313_mpos := zero_value_for_split_t_struct$_G1Point_$5_memory_ptr()
                var__52_mpos := zero_t_struct$_G1Point_$5_memory_ptr_313_mpos

                /// @src 0:911:988  "21888242871839275222246405745257275088696311157297823662689037894645226208583"
                let expr_56 := 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                /// @src 0:902:988  "uint q = 21888242871839275222246405745257275088696311157297823662689037894645226208583"
                let var_q_55 := convert_t_rational_21888242871839275222246405745257275088696311157297823662689037894645226208583_by_1_to_t_uint256(expr_56)
                /// @src 0:996:997  "p"
                let _314_mpos := var_p_48_mpos
                let expr_58_mpos := _314_mpos
                /// @src 0:996:999  "p.X"
                let _315 := add(expr_58_mpos, 0)
                let _316 := read_from_memoryt_uint256(_315)
                let expr_59 := _316
                /// @src 0:1003:1004  "0"
                let expr_60 := 0x00
                /// @src 0:996:1004  "p.X == 0"
                let expr_61 := eq(cleanup_t_uint256(expr_59), convert_t_rational_0_by_1_to_t_uint256(expr_60))
                /// @src 0:996:1016  "p.X == 0 && p.Y == 0"
                let expr_66 := expr_61
                if expr_66 {
                    /// @src 0:1008:1009  "p"
                    let _317_mpos := var_p_48_mpos
                    let expr_62_mpos := _317_mpos
                    /// @src 0:1008:1011  "p.Y"
                    let _318 := add(expr_62_mpos, 32)
                    let _319 := read_from_memoryt_uint256(_318)
                    let expr_63 := _319
                    /// @src 0:1015:1016  "0"
                    let expr_64 := 0x00
                    /// @src 0:1008:1016  "p.Y == 0"
                    let expr_65 := eq(cleanup_t_uint256(expr_63), convert_t_rational_0_by_1_to_t_uint256(expr_64))
                    /// @src 0:996:1016  "p.X == 0 && p.Y == 0"
                    expr_66 := expr_65
                }
                /// @src 0:992:1041  "if (p.X == 0 && p.Y == 0)..."
                if expr_66 {
                    /// @src 0:1036:1037  "0"
                    let expr_68 := 0x00
                    /// @src 0:1039:1040  "0"
                    let expr_69 := 0x00
                    /// @src 0:1028:1041  "G1Point(0, 0)"
                    let expr_70_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                    let _320 := convert_t_rational_0_by_1_to_t_uint256(expr_68)
                    write_to_memory_t_uint256(add(expr_70_mpos, 0), _320)
                    let _321 := convert_t_rational_0_by_1_to_t_uint256(expr_69)
                    write_to_memory_t_uint256(add(expr_70_mpos, 32), _321)
                    /// @src 0:1021:1041  "return G1Point(0, 0)"
                    var__52_mpos := expr_70_mpos
                    leave
                    /// @src 0:992:1041  "if (p.X == 0 && p.Y == 0)..."
                }
                /// @src 0:1060:1061  "p"
                let _322_mpos := var_p_48_mpos
                let expr_74_mpos := _322_mpos
                /// @src 0:1060:1063  "p.X"
                let _323 := add(expr_74_mpos, 0)
                let _324 := read_from_memoryt_uint256(_323)
                let expr_75 := _324
                /// @src 0:1065:1066  "q"
                let _325 := var_q_55
                let expr_76 := _325
                /// @src 0:1070:1071  "p"
                let _326_mpos := var_p_48_mpos
                let expr_77_mpos := _326_mpos
                /// @src 0:1070:1073  "p.Y"
                let _327 := add(expr_77_mpos, 32)
                let _328 := read_from_memoryt_uint256(_327)
                let expr_78 := _328
                /// @src 0:1076:1077  "q"
                let _329 := var_q_55
                let expr_79 := _329
                /// @src 0:1070:1077  "p.Y % q"
                let expr_80 := mod_t_uint256(expr_78, expr_79)

                /// @src 0:1069:1078  "(p.Y % q)"
                let expr_81 := expr_80
                /// @src 0:1065:1078  "q - (p.Y % q)"
                let expr_82 := checked_sub_t_uint256(expr_76, expr_81)

                /// @src 0:1052:1079  "G1Point(p.X, q - (p.Y % q))"
                let expr_83_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                write_to_memory_t_uint256(add(expr_83_mpos, 0), expr_75)
                write_to_memory_t_uint256(add(expr_83_mpos, 32), expr_82)
                /// @src 0:1045:1079  "return G1Point(p.X, q - (p.Y % q))"
                var__52_mpos := expr_83_mpos
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            function zero_value_for_split_t_struct$_G2Point_$14_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_G2Point_$14_memory_ptr()
            }

            function cleanup_t_rational_11559732032986387107991004021392285783925812861821192530917403151452391805634_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_11559732032986387107991004021392285783925812861821192530917403151452391805634_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_11559732032986387107991004021392285783925812861821192530917403151452391805634_by_1(value)))
            }

            function cleanup_t_rational_10857046999023057135944570762232829481370756359578518086990519993285655852781_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10857046999023057135944570762232829481370756359578518086990519993285655852781_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10857046999023057135944570762232829481370756359578518086990519993285655852781_by_1(value)))
            }

            function cleanup_t_rational_4082367875863433681332203403145435568316851327593401208105741076214120093531_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4082367875863433681332203403145435568316851327593401208105741076214120093531_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4082367875863433681332203403145435568316851327593401208105741076214120093531_by_1(value)))
            }

            function cleanup_t_rational_8495653923123431417604973247489272438418190587263600148770280649306958101930_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8495653923123431417604973247489272438418190587263600148770280649306958101930_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8495653923123431417604973247489272438418190587263600148770280649306958101930_by_1(value)))
            }

            /// @ast-id 44
            /// @src 0:304:710  "function P2() internal returns (G2Point memory) {..."
            function fun_P2_44() -> var__32_mpos {
                /// @src 0:336:350  "G2Point memory"
                let zero_t_struct$_G2Point_$14_memory_ptr_330_mpos := zero_value_for_split_t_struct$_G2Point_$14_memory_ptr()
                var__32_mpos := zero_t_struct$_G2Point_$14_memory_ptr_330_mpos

                /// @src 0:375:537  "[11559732032986387107991004021392285783925812861821192530917403151452391805634,..."
                let expr_37_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:376:453  "11559732032986387107991004021392285783925812861821192530917403151452391805634"
                let expr_35 := 0x198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c2
                /// @src 0:375:537  "[11559732032986387107991004021392285783925812861821192530917403151452391805634,..."
                let _331 := convert_t_rational_11559732032986387107991004021392285783925812861821192530917403151452391805634_by_1_to_t_uint256(expr_35)
                write_to_memory_t_uint256(add(expr_37_mpos, 0), _331)
                /// @src 0:459:536  "10857046999023057135944570762232829481370756359578518086990519993285655852781"
                let expr_36 := 0x1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed
                /// @src 0:375:537  "[11559732032986387107991004021392285783925812861821192530917403151452391805634,..."
                let _332 := convert_t_rational_10857046999023057135944570762232829481370756359578518086990519993285655852781_by_1_to_t_uint256(expr_36)
                write_to_memory_t_uint256(add(expr_37_mpos, 32), _332)
                /// @src 0:542:702  "[4082367875863433681332203403145435568316851327593401208105741076214120093531,..."
                let expr_40_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:543:619  "4082367875863433681332203403145435568316851327593401208105741076214120093531"
                let expr_38 := 0x090689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b
                /// @src 0:542:702  "[4082367875863433681332203403145435568316851327593401208105741076214120093531,..."
                let _333 := convert_t_rational_4082367875863433681332203403145435568316851327593401208105741076214120093531_by_1_to_t_uint256(expr_38)
                write_to_memory_t_uint256(add(expr_40_mpos, 0), _333)
                /// @src 0:625:701  "8495653923123431417604973247489272438418190587263600148770280649306958101930"
                let expr_39 := 0x12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa
                /// @src 0:542:702  "[4082367875863433681332203403145435568316851327593401208105741076214120093531,..."
                let _334 := convert_t_rational_8495653923123431417604973247489272438418190587263600148770280649306958101930_by_1_to_t_uint256(expr_39)
                write_to_memory_t_uint256(add(expr_40_mpos, 32), _334)
                /// @src 0:363:706  "G2Point(..."
                let expr_41_mpos := allocate_memory_struct_t_struct$_G2Point_$14_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_41_mpos, 0), expr_37_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_41_mpos, 32), expr_40_mpos)
                /// @src 0:356:706  "return G2Point(..."
                var__32_mpos := expr_41_mpos
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            function checked_mul_t_uint256(x, y) -> product {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                let product_raw := mul(x, y)
                product := cleanup_t_uint256(product_raw)

                // overflow, if x != 0 and y != product/x
                if iszero(
                    or(
                        iszero(x),
                        eq(y, div(product, x))
                    )
                ) { panic_error_0x11() }

            }

            function array_length_t_array$_t_uint256_$2_memory_ptr(value) -> length {

                length := 0x02

            }

            function memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$2_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                addr := add(baseRef, offset)
            }

            function array_allocation_size_t_array$_t_uint256_$1_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            function allocate_memory_array_t_array$_t_uint256_$1_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_uint256_$1_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

            }

            function allocate_and_zero_memory_array_t_array$_t_uint256_$1_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_uint256_$1_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_uint256_$1_memory_ptr(length)

                zero_memory_chunk_t_uint256(dataStart, dataSize)
            }

            function zero_value_for_split_t_array$_t_uint256_$1_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_array_t_array$_t_uint256_$1_memory_ptr(1)
            }

            function array_length_t_array$_t_uint256_$1_memory_ptr(value) -> length {

                length := 0x01

            }

            function memory_array_index_access_t_array$_t_uint256_$1_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$1_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                addr := add(baseRef, offset)
            }

            /// @ast-id 356
            /// @src 0:2210:2964  "function pairing(G1Point[] memory p1, G2Point[] memory p2) internal returns (bool) {..."
            function fun_pairing_356(var_p1_196_mpos, var_p2_200_mpos) -> var__203 {
                /// @src 0:2287:2291  "bool"
                let zero_t_bool_335 := zero_value_for_split_t_bool()
                var__203 := zero_t_bool_335

                /// @src 0:2305:2307  "p1"
                let _336_mpos := var_p1_196_mpos
                let expr_206_mpos := _336_mpos
                /// @src 0:2305:2314  "p1.length"
                let expr_207 := array_length_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_206_mpos)
                /// @src 0:2318:2320  "p2"
                let _337_mpos := var_p2_200_mpos
                let expr_208_mpos := _337_mpos
                /// @src 0:2318:2327  "p2.length"
                let expr_209 := array_length_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_208_mpos)
                /// @src 0:2305:2327  "p1.length == p2.length"
                let expr_210 := eq(cleanup_t_uint256(expr_207), cleanup_t_uint256(expr_209))
                /// @src 0:2297:2328  "require(p1.length == p2.length)"
                require_helper(expr_210)
                /// @src 0:2348:2350  "p1"
                let _338_mpos := var_p1_196_mpos
                let expr_215_mpos := _338_mpos
                /// @src 0:2348:2357  "p1.length"
                let expr_216 := array_length_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_215_mpos)
                /// @src 0:2332:2357  "uint elements = p1.length"
                let var_elements_214 := expr_216
                /// @src 0:2378:2380  "p1"
                let _339_mpos := var_p1_196_mpos
                let expr_220_mpos := _339_mpos
                /// @src 0:2378:2387  "p1.length"
                let expr_221 := array_length_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_220_mpos)
                /// @src 0:2390:2391  "6"
                let expr_222 := 0x06
                /// @src 0:2378:2391  "p1.length * 6"
                let expr_223 := checked_mul_t_uint256(expr_221, convert_t_rational_6_by_1_to_t_uint256(expr_222))

                /// @src 0:2361:2391  "uint inputSize = p1.length * 6"
                let var_inputSize_219 := expr_223
                /// @src 0:2428:2437  "inputSize"
                let _340 := var_inputSize_219
                let expr_233 := _340
                /// @src 0:2417:2438  "new uint[](inputSize)"
                let expr_234_mpos := allocate_and_zero_memory_array_t_array$_t_uint256_$dyn_memory_ptr(expr_233)
                /// @src 0:2395:2438  "uint[] memory input = new uint[](inputSize)"
                let var_input_229_mpos := expr_234_mpos
                /// @src 0:2442:2683  "for (uint i = 0; i < elements; i++)..."
                for {
                    /// @src 0:2456:2457  "0"
                    let expr_238 := 0x00
                    /// @src 0:2447:2457  "uint i = 0"
                    let var_i_237 := convert_t_rational_0_by_1_to_t_uint256(expr_238)
                    } 1 {
                    /// @src 0:2473:2476  "i++"
                    let _342 := var_i_237
                    let _341 := increment_wrapping_t_uint256(_342)
                    var_i_237 := _341
                    let expr_244 := _342
                }
                {
                    /// @src 0:2459:2460  "i"
                    let _343 := var_i_237
                    let expr_240 := _343
                    /// @src 0:2463:2471  "elements"
                    let _344 := var_elements_214
                    let expr_241 := _344
                    /// @src 0:2459:2471  "i < elements"
                    let expr_242 := lt(cleanup_t_uint256(expr_240), cleanup_t_uint256(expr_241))
                    if iszero(expr_242) { break }
                    /// @src 0:2504:2506  "p1"
                    let _345_mpos := var_p1_196_mpos
                    let expr_253_mpos := _345_mpos
                    /// @src 0:2507:2508  "i"
                    let _346 := var_i_237
                    let expr_254 := _346
                    /// @src 0:2504:2509  "p1[i]"
                    let _347_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_253_mpos, expr_254))
                    let expr_255_mpos := _347_mpos
                    /// @src 0:2504:2511  "p1[i].X"
                    let _348 := add(expr_255_mpos, 0)
                    let _349 := read_from_memoryt_uint256(_348)
                    let expr_256 := _349
                    /// @src 0:2485:2490  "input"
                    let _350_mpos := var_input_229_mpos
                    let expr_246_mpos := _350_mpos
                    /// @src 0:2491:2492  "i"
                    let _351 := var_i_237
                    let expr_247 := _351
                    /// @src 0:2495:2496  "6"
                    let expr_248 := 0x06
                    /// @src 0:2491:2496  "i * 6"
                    let expr_249 := checked_mul_t_uint256(expr_247, convert_t_rational_6_by_1_to_t_uint256(expr_248))

                    /// @src 0:2499:2500  "0"
                    let expr_250 := 0x00
                    /// @src 0:2491:2500  "i * 6 + 0"
                    let expr_251 := checked_add_t_uint256(expr_249, convert_t_rational_0_by_1_to_t_uint256(expr_250))

                    /// @src 0:2485:2511  "input[i * 6 + 0] = p1[i].X"
                    let _352 := expr_256
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_246_mpos, expr_251), _352)
                    let expr_257 := expr_256
                    /// @src 0:2535:2537  "p1"
                    let _353_mpos := var_p1_196_mpos
                    let expr_266_mpos := _353_mpos
                    /// @src 0:2538:2539  "i"
                    let _354 := var_i_237
                    let expr_267 := _354
                    /// @src 0:2535:2540  "p1[i]"
                    let _355_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_266_mpos, expr_267))
                    let expr_268_mpos := _355_mpos
                    /// @src 0:2535:2542  "p1[i].Y"
                    let _356 := add(expr_268_mpos, 32)
                    let _357 := read_from_memoryt_uint256(_356)
                    let expr_269 := _357
                    /// @src 0:2516:2521  "input"
                    let _358_mpos := var_input_229_mpos
                    let expr_259_mpos := _358_mpos
                    /// @src 0:2522:2523  "i"
                    let _359 := var_i_237
                    let expr_260 := _359
                    /// @src 0:2526:2527  "6"
                    let expr_261 := 0x06
                    /// @src 0:2522:2527  "i * 6"
                    let expr_262 := checked_mul_t_uint256(expr_260, convert_t_rational_6_by_1_to_t_uint256(expr_261))

                    /// @src 0:2530:2531  "1"
                    let expr_263 := 0x01
                    /// @src 0:2522:2531  "i * 6 + 1"
                    let expr_264 := checked_add_t_uint256(expr_262, convert_t_rational_1_by_1_to_t_uint256(expr_263))

                    /// @src 0:2516:2542  "input[i * 6 + 1] = p1[i].Y"
                    let _360 := expr_269
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_259_mpos, expr_264), _360)
                    let expr_270 := expr_269
                    /// @src 0:2566:2568  "p2"
                    let _361_mpos := var_p2_200_mpos
                    let expr_279_mpos := _361_mpos
                    /// @src 0:2569:2570  "i"
                    let _362 := var_i_237
                    let expr_280 := _362
                    /// @src 0:2566:2571  "p2[i]"
                    let _363_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_279_mpos, expr_280))
                    let expr_281_mpos := _363_mpos
                    /// @src 0:2566:2573  "p2[i].X"
                    let _364 := add(expr_281_mpos, 0)
                    let _365_mpos := mload(_364)
                    let expr_282_mpos := _365_mpos
                    /// @src 0:2574:2575  "0"
                    let expr_283 := 0x00
                    /// @src 0:2566:2576  "p2[i].X[0]"
                    let _366 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_282_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_283)))
                    let expr_284 := _366
                    /// @src 0:2547:2552  "input"
                    let _367_mpos := var_input_229_mpos
                    let expr_272_mpos := _367_mpos
                    /// @src 0:2553:2554  "i"
                    let _368 := var_i_237
                    let expr_273 := _368
                    /// @src 0:2557:2558  "6"
                    let expr_274 := 0x06
                    /// @src 0:2553:2558  "i * 6"
                    let expr_275 := checked_mul_t_uint256(expr_273, convert_t_rational_6_by_1_to_t_uint256(expr_274))

                    /// @src 0:2561:2562  "2"
                    let expr_276 := 0x02
                    /// @src 0:2553:2562  "i * 6 + 2"
                    let expr_277 := checked_add_t_uint256(expr_275, convert_t_rational_2_by_1_to_t_uint256(expr_276))

                    /// @src 0:2547:2576  "input[i * 6 + 2] = p2[i].X[0]"
                    let _369 := expr_284
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_272_mpos, expr_277), _369)
                    let expr_285 := expr_284
                    /// @src 0:2600:2602  "p2"
                    let _370_mpos := var_p2_200_mpos
                    let expr_294_mpos := _370_mpos
                    /// @src 0:2603:2604  "i"
                    let _371 := var_i_237
                    let expr_295 := _371
                    /// @src 0:2600:2605  "p2[i]"
                    let _372_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_294_mpos, expr_295))
                    let expr_296_mpos := _372_mpos
                    /// @src 0:2600:2607  "p2[i].X"
                    let _373 := add(expr_296_mpos, 0)
                    let _374_mpos := mload(_373)
                    let expr_297_mpos := _374_mpos
                    /// @src 0:2608:2609  "1"
                    let expr_298 := 0x01
                    /// @src 0:2600:2610  "p2[i].X[1]"
                    let _375 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_297_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_298)))
                    let expr_299 := _375
                    /// @src 0:2581:2586  "input"
                    let _376_mpos := var_input_229_mpos
                    let expr_287_mpos := _376_mpos
                    /// @src 0:2587:2588  "i"
                    let _377 := var_i_237
                    let expr_288 := _377
                    /// @src 0:2591:2592  "6"
                    let expr_289 := 0x06
                    /// @src 0:2587:2592  "i * 6"
                    let expr_290 := checked_mul_t_uint256(expr_288, convert_t_rational_6_by_1_to_t_uint256(expr_289))

                    /// @src 0:2595:2596  "3"
                    let expr_291 := 0x03
                    /// @src 0:2587:2596  "i * 6 + 3"
                    let expr_292 := checked_add_t_uint256(expr_290, convert_t_rational_3_by_1_to_t_uint256(expr_291))

                    /// @src 0:2581:2610  "input[i * 6 + 3] = p2[i].X[1]"
                    let _378 := expr_299
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_287_mpos, expr_292), _378)
                    let expr_300 := expr_299
                    /// @src 0:2634:2636  "p2"
                    let _379_mpos := var_p2_200_mpos
                    let expr_309_mpos := _379_mpos
                    /// @src 0:2637:2638  "i"
                    let _380 := var_i_237
                    let expr_310 := _380
                    /// @src 0:2634:2639  "p2[i]"
                    let _381_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_309_mpos, expr_310))
                    let expr_311_mpos := _381_mpos
                    /// @src 0:2634:2641  "p2[i].Y"
                    let _382 := add(expr_311_mpos, 32)
                    let _383_mpos := mload(_382)
                    let expr_312_mpos := _383_mpos
                    /// @src 0:2642:2643  "0"
                    let expr_313 := 0x00
                    /// @src 0:2634:2644  "p2[i].Y[0]"
                    let _384 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_312_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_313)))
                    let expr_314 := _384
                    /// @src 0:2615:2620  "input"
                    let _385_mpos := var_input_229_mpos
                    let expr_302_mpos := _385_mpos
                    /// @src 0:2621:2622  "i"
                    let _386 := var_i_237
                    let expr_303 := _386
                    /// @src 0:2625:2626  "6"
                    let expr_304 := 0x06
                    /// @src 0:2621:2626  "i * 6"
                    let expr_305 := checked_mul_t_uint256(expr_303, convert_t_rational_6_by_1_to_t_uint256(expr_304))

                    /// @src 0:2629:2630  "4"
                    let expr_306 := 0x04
                    /// @src 0:2621:2630  "i * 6 + 4"
                    let expr_307 := checked_add_t_uint256(expr_305, convert_t_rational_4_by_1_to_t_uint256(expr_306))

                    /// @src 0:2615:2644  "input[i * 6 + 4] = p2[i].Y[0]"
                    let _387 := expr_314
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_302_mpos, expr_307), _387)
                    let expr_315 := expr_314
                    /// @src 0:2668:2670  "p2"
                    let _388_mpos := var_p2_200_mpos
                    let expr_324_mpos := _388_mpos
                    /// @src 0:2671:2672  "i"
                    let _389 := var_i_237
                    let expr_325 := _389
                    /// @src 0:2668:2673  "p2[i]"
                    let _390_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_324_mpos, expr_325))
                    let expr_326_mpos := _390_mpos
                    /// @src 0:2668:2675  "p2[i].Y"
                    let _391 := add(expr_326_mpos, 32)
                    let _392_mpos := mload(_391)
                    let expr_327_mpos := _392_mpos
                    /// @src 0:2676:2677  "1"
                    let expr_328 := 0x01
                    /// @src 0:2668:2678  "p2[i].Y[1]"
                    let _393 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_327_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_328)))
                    let expr_329 := _393
                    /// @src 0:2649:2654  "input"
                    let _394_mpos := var_input_229_mpos
                    let expr_317_mpos := _394_mpos
                    /// @src 0:2655:2656  "i"
                    let _395 := var_i_237
                    let expr_318 := _395
                    /// @src 0:2659:2660  "6"
                    let expr_319 := 0x06
                    /// @src 0:2655:2660  "i * 6"
                    let expr_320 := checked_mul_t_uint256(expr_318, convert_t_rational_6_by_1_to_t_uint256(expr_319))

                    /// @src 0:2663:2664  "5"
                    let expr_321 := 0x05
                    /// @src 0:2655:2664  "i * 6 + 5"
                    let expr_322 := checked_add_t_uint256(expr_320, convert_t_rational_5_by_1_to_t_uint256(expr_321))

                    /// @src 0:2649:2678  "input[i * 6 + 5] = p2[i].Y[1]"
                    let _396 := expr_329
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_317_mpos, expr_322), _396)
                    let expr_330 := expr_329
                }
                /// @src 0:2691:2692  "1"
                let expr_336 := 0x01
                /// @src 0:2686:2704  "uint[1] memory out"
                let var_out_339_mpos
                let zero_t_array$_t_uint256_$1_memory_ptr_397_mpos := zero_value_for_split_t_array$_t_uint256_$1_memory_ptr()
                var_out_339_mpos := zero_t_array$_t_uint256_$1_memory_ptr_397_mpos
                /// @src 0:2708:2720  "bool success"
                let var_success_342
                let zero_t_bool_398 := zero_value_for_split_t_bool()
                var_success_342 := zero_t_bool_398
                /// @src 0:2724:2919  "assembly {..."
                {
                    var_success_342 := call(sub(gas(), 2000), 8, 0, add(var_input_229_mpos, 0x20), mul(var_inputSize_219, 0x20), var_out_339_mpos, 0x20)
                    switch var_success_342
                    case 0 { invalid() }
                }
                /// @src 0:2930:2937  "success"
                let _399 := var_success_342
                let expr_346 := _399
                /// @src 0:2922:2938  "require(success)"
                require_helper(expr_346)
                /// @src 0:2949:2952  "out"
                let _400_mpos := var_out_339_mpos
                let expr_349_mpos := _400_mpos
                /// @src 0:2953:2954  "0"
                let expr_350 := 0x00
                /// @src 0:2949:2955  "out[0]"
                let _401 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$1_memory_ptr(expr_349_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_350)))
                let expr_351 := _401
                /// @src 0:2959:2960  "0"
                let expr_352 := 0x00
                /// @src 0:2949:2960  "out[0] != 0"
                let expr_353 := iszero(eq(cleanup_t_uint256(expr_351), convert_t_rational_0_by_1_to_t_uint256(expr_352)))
                /// @src 0:2942:2960  "return out[0] != 0"
                var__203 := expr_353
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            function allocate_memory_struct_t_struct$_VerifyingKey_$652_memory_ptr() -> memPtr {
                memPtr := allocate_memory(256)
            }

            function zero_value_for_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            function allocate_and_zero_memory_struct_t_struct$_VerifyingKey_$652_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_VerifyingKey_$652_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_struct$_G2Point_$14_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G2Point_$14_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G2Point_$14_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G1Point_$5_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G2Point_$14_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G2Point_$14_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_VerifyingKey_$652_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_VerifyingKey_$652_memory_ptr()
            }

            function cleanup_t_rational_14752851163271972921165116810778899752274893127848647655434033030151679466487_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_14752851163271972921165116810778899752274893127848647655434033030151679466487_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_14752851163271972921165116810778899752274893127848647655434033030151679466487_by_1(value)))
            }

            function cleanup_t_rational_2146841959437886920191033516947821737903543682424168472444605468016078231160_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2146841959437886920191033516947821737903543682424168472444605468016078231160_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2146841959437886920191033516947821737903543682424168472444605468016078231160_by_1(value)))
            }

            function cleanup_t_rational_19774899457345372253936887903062884289284519982717033379297427576421785416781_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_19774899457345372253936887903062884289284519982717033379297427576421785416781_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_19774899457345372253936887903062884289284519982717033379297427576421785416781_by_1(value)))
            }

            function cleanup_t_rational_8159591693044959083845993640644415462154314071906244874217244895511876957520_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8159591693044959083845993640644415462154314071906244874217244895511876957520_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8159591693044959083845993640644415462154314071906244874217244895511876957520_by_1(value)))
            }

            function cleanup_t_rational_21163380042281667028194921861846440787793088615342153907557220755287297358850_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21163380042281667028194921861846440787793088615342153907557220755287297358850_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21163380042281667028194921861846440787793088615342153907557220755287297358850_by_1(value)))
            }

            function cleanup_t_rational_1730005633951488561162401768080055521907218407650744548610087024095695199108_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1730005633951488561162401768080055521907218407650744548610087024095695199108_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1730005633951488561162401768080055521907218407650744548610087024095695199108_by_1(value)))
            }

            function cleanup_t_rational_21049232722760520884910305096518213957309396732908002623546433288382066807275_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21049232722760520884910305096518213957309396732908002623546433288382066807275_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21049232722760520884910305096518213957309396732908002623546433288382066807275_by_1(value)))
            }

            function cleanup_t_rational_752476689148090443252690606274719847522796924289184281944322016120845872819_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_752476689148090443252690606274719847522796924289184281944322016120845872819_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_752476689148090443252690606274719847522796924289184281944322016120845872819_by_1(value)))
            }

            function cleanup_t_rational_9346016947773545029940290874113526292203330783138316933543286726319309993747_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9346016947773545029940290874113526292203330783138316933543286726319309993747_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9346016947773545029940290874113526292203330783138316933543286726319309993747_by_1(value)))
            }

            function cleanup_t_rational_10657101118636466197534311304303971390099046792106599174009327086566056805776_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10657101118636466197534311304303971390099046792106599174009327086566056805776_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10657101118636466197534311304303971390099046792106599174009327086566056805776_by_1(value)))
            }

            function cleanup_t_rational_17174171333098854828033634539500164902488935492941049779522958919502622588081_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_17174171333098854828033634539500164902488935492941049779522958919502622588081_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_17174171333098854828033634539500164902488935492941049779522958919502622588081_by_1(value)))
            }

            function cleanup_t_rational_15684072703239714088748884492940919778409948011906556607893998678768263898205_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15684072703239714088748884492940919778409948011906556607893998678768263898205_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_15684072703239714088748884492940919778409948011906556607893998678768263898205_by_1(value)))
            }

            function cleanup_t_rational_2875949754418862832249955782188169764124161746616276218844232725526931423080_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2875949754418862832249955782188169764124161746616276218844232725526931423080_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2875949754418862832249955782188169764124161746616276218844232725526931423080_by_1(value)))
            }

            function cleanup_t_rational_3086697999584045732786424745914779370086036468911841736272013630524944011227_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3086697999584045732786424745914779370086036468911841736272013630524944011227_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3086697999584045732786424745914779370086036468911841736272013630524944011227_by_1(value)))
            }

            function cleanup_t_rational_9712873799510369170966410452086991795283841876597505062330138725142728449825_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9712873799510369170966410452086991795283841876597505062330138725142728449825_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9712873799510369170966410452086991795283841876597505062330138725142728449825_by_1(value)))
            }

            function cleanup_t_rational_9433999572643313025031367487888933220352848413609488855427374525420646960237_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9433999572643313025031367487888933220352848413609488855427374525420646960237_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9433999572643313025031367487888933220352848413609488855427374525420646960237_by_1(value)))
            }

            function cleanup_t_rational_14123988352319117906018970862315159679452117471849989000282265698764599106398_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_14123988352319117906018970862315159679452117471849989000282265698764599106398_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_14123988352319117906018970862315159679452117471849989000282265698764599106398_by_1(value)))
            }

            function cleanup_t_rational_18203970449465878141055527247672796515569702004956673464850250575302350363961_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18203970449465878141055527247672796515569702004956673464850250575302350363961_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18203970449465878141055527247672796515569702004956673464850250575302350363961_by_1(value)))
            }

            function cleanup_t_rational_9070274571799942693810232181825350369966811716654884009331987967306715939422_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9070274571799942693810232181825350369966811716654884009331987967306715939422_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9070274571799942693810232181825350369966811716654884009331987967306715939422_by_1(value)))
            }

            function cleanup_t_rational_3344169380239392314048474373026629561296701202792428464496597755254021991380_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3344169380239392314048474373026629561296701202792428464496597755254021991380_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3344169380239392314048474373026629561296701202792428464496597755254021991380_by_1(value)))
            }

            function cleanup_t_rational_15147055940817099984713168864119185960995485721468434382981947300642935581737_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15147055940817099984713168864119185960995485721468434382981947300642935581737_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_15147055940817099984713168864119185960995485721468434382981947300642935581737_by_1(value)))
            }

            function cleanup_t_rational_4631727067030503710010688256995134761045201948838871620017875546783390086460_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4631727067030503710010688256995134761045201948838871620017875546783390086460_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4631727067030503710010688256995134761045201948838871620017875546783390086460_by_1(value)))
            }

            function cleanup_t_rational_17623047202600292659611642134440671974256480551657416500487803939184025704533_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_17623047202600292659611642134440671974256480551657416500487803939184025704533_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_17623047202600292659611642134440671974256480551657416500487803939184025704533_by_1(value)))
            }

            function cleanup_t_rational_21638878652776235365545898652250152098523031965244840843903617079107891864279_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21638878652776235365545898652250152098523031965244840843903617079107891864279_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21638878652776235365545898652250152098523031965244840843903617079107891864279_by_1(value)))
            }

            function cleanup_t_rational_10_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10_by_1(value)))
            }

            function cleanup_t_rational_4944125736493822447335225095051526251764804673819722614680138374080051759962_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4944125736493822447335225095051526251764804673819722614680138374080051759962_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4944125736493822447335225095051526251764804673819722614680138374080051759962_by_1(value)))
            }

            function cleanup_t_rational_1935192491180648890600311215252271941452272522684171010354270378941282184111_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1935192491180648890600311215252271941452272522684171010354270378941282184111_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1935192491180648890600311215252271941452272522684171010354270378941282184111_by_1(value)))
            }

            function cleanup_t_rational_13671710343712145123751755431743289257188978742535474396465034058168696864220_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_13671710343712145123751755431743289257188978742535474396465034058168696864220_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_13671710343712145123751755431743289257188978742535474396465034058168696864220_by_1(value)))
            }

            function cleanup_t_rational_20826522333544227498944395534998927652160019773231902383997070883222962120651_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20826522333544227498944395534998927652160019773231902383997070883222962120651_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_20826522333544227498944395534998927652160019773231902383997070883222962120651_by_1(value)))
            }

            function cleanup_t_rational_12761764339888541584683044940570653033593327533706847447891003583652324561983_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_12761764339888541584683044940570653033593327533706847447891003583652324561983_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_12761764339888541584683044940570653033593327533706847447891003583652324561983_by_1(value)))
            }

            function cleanup_t_rational_1890169332711480046756085850376547686758361763522376714890812739379155117275_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1890169332711480046756085850376547686758361763522376714890812739379155117275_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1890169332711480046756085850376547686758361763522376714890812739379155117275_by_1(value)))
            }

            function cleanup_t_rational_10780973691118990463572234139590032304523642666772690042271497225434343505093_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10780973691118990463572234139590032304523642666772690042271497225434343505093_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10780973691118990463572234139590032304523642666772690042271497225434343505093_by_1(value)))
            }

            function cleanup_t_rational_1225111119988715799286416715484295049110336342693607646598445309214414972833_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1225111119988715799286416715484295049110336342693607646598445309214414972833_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1225111119988715799286416715484295049110336342693607646598445309214414972833_by_1(value)))
            }

            function cleanup_t_rational_6813397648435401772315777392068447297731770034820995962730599333379629935197_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6813397648435401772315777392068447297731770034820995962730599333379629935197_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6813397648435401772315777392068447297731770034820995962730599333379629935197_by_1(value)))
            }

            function cleanup_t_rational_5543296837108785826068557070639753614637117027747616223928176042346981863803_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5543296837108785826068557070639753614637117027747616223928176042346981863803_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5543296837108785826068557070639753614637117027747616223928176042346981863803_by_1(value)))
            }

            function cleanup_t_rational_15888176973130579702136584647732320447911977285971866534948545524629530339320_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15888176973130579702136584647732320447911977285971866534948545524629530339320_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_15888176973130579702136584647732320447911977285971866534948545524629530339320_by_1(value)))
            }

            function cleanup_t_rational_19353498956202835216323577418447420319043865439124272799134659660891866791335_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_19353498956202835216323577418447420319043865439124272799134659660891866791335_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_19353498956202835216323577418447420319043865439124272799134659660891866791335_by_1(value)))
            }

            function cleanup_t_rational_4391160655333174988591015543994926300076235924540378279303074871686753798142_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4391160655333174988591015543994926300076235924540378279303074871686753798142_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4391160655333174988591015543994926300076235924540378279303074871686753798142_by_1(value)))
            }

            function cleanup_t_rational_11171604800461778651579303937810014677300582907756707298692424617842305602740_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_11171604800461778651579303937810014677300582907756707298692424617842305602740_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_11171604800461778651579303937810014677300582907756707298692424617842305602740_by_1(value)))
            }

            function cleanup_t_rational_5577412546328490241391307238739013120425748898832356403880504969857771119690_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5577412546328490241391307238739013120425748898832356403880504969857771119690_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5577412546328490241391307238739013120425748898832356403880504969857771119690_by_1(value)))
            }

            function cleanup_t_rational_11257371099238762117045275690719175766562617360639429481885451902339768879934_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_11257371099238762117045275690719175766562617360639429481885451902339768879934_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_11257371099238762117045275690719175766562617360639429481885451902339768879934_by_1(value)))
            }

            function cleanup_t_rational_4717266903818752750408066803467256739157750721583295354208673132324161744458_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4717266903818752750408066803467256739157750721583295354208673132324161744458_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4717266903818752750408066803467256739157750721583295354208673132324161744458_by_1(value)))
            }

            function cleanup_t_rational_2253904876039028511475843193830314875944384935466740271927641917713621346414_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2253904876039028511475843193830314875944384935466740271927641917713621346414_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2253904876039028511475843193830314875944384935466740271927641917713621346414_by_1(value)))
            }

            function cleanup_t_rational_7742642460569273216539674856471756904887522145302233146876244281004809392495_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_7742642460569273216539674856471756904887522145302233146876244281004809392495_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_7742642460569273216539674856471756904887522145302233146876244281004809392495_by_1(value)))
            }

            function cleanup_t_rational_13338610944590869762446817049541912676528855874207736821753831893421715974960_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_13338610944590869762446817049541912676528855874207736821753831893421715974960_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_13338610944590869762446817049541912676528855874207736821753831893421715974960_by_1(value)))
            }

            /// @ast-id 1209
            /// @src 0:6843:10466  "function verifyingKey() internal returns (VerifyingKey memory vk) {..."
            function fun_verifyingKey_1209() -> var_vk_985_mpos {
                /// @src 0:6885:6907  "VerifyingKey memory vk"
                let zero_t_struct$_VerifyingKey_$652_memory_ptr_402_mpos := zero_value_for_split_t_struct$_VerifyingKey_$652_memory_ptr()
                var_vk_985_mpos := zero_t_struct$_VerifyingKey_$652_memory_ptr_402_mpos

                /// @src 0:6920:6927  "Pairing"
                let expr_990_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:6936:7072  "[0x209dd15ebff5d46c4bd888e51a93cf99a7329636c63514396b4a452003a35bf7, 0x04bf11ca01483bfa8b34b43561848d28905960114c8ac04049af4b6315a41678]"
                let expr_994_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:6937:7003  "0x209dd15ebff5d46c4bd888e51a93cf99a7329636c63514396b4a452003a35bf7"
                let expr_992 := 0x209dd15ebff5d46c4bd888e51a93cf99a7329636c63514396b4a452003a35bf7
                /// @src 0:6936:7072  "[0x209dd15ebff5d46c4bd888e51a93cf99a7329636c63514396b4a452003a35bf7, 0x04bf11ca01483bfa8b34b43561848d28905960114c8ac04049af4b6315a41678]"
                let _403 := convert_t_rational_14752851163271972921165116810778899752274893127848647655434033030151679466487_by_1_to_t_uint256(expr_992)
                write_to_memory_t_uint256(add(expr_994_mpos, 0), _403)
                /// @src 0:7005:7071  "0x04bf11ca01483bfa8b34b43561848d28905960114c8ac04049af4b6315a41678"
                let expr_993 := 0x04bf11ca01483bfa8b34b43561848d28905960114c8ac04049af4b6315a41678
                /// @src 0:6936:7072  "[0x209dd15ebff5d46c4bd888e51a93cf99a7329636c63514396b4a452003a35bf7, 0x04bf11ca01483bfa8b34b43561848d28905960114c8ac04049af4b6315a41678]"
                let _404 := convert_t_rational_2146841959437886920191033516947821737903543682424168472444605468016078231160_by_1_to_t_uint256(expr_993)
                write_to_memory_t_uint256(add(expr_994_mpos, 32), _404)
                /// @src 0:7074:7210  "[0x2bb8324af6cfc93537a2ad1a445cfd0ca2a71acd7ac41fadbf933c2a51be344d, 0x120a2a4cf30c1bf9845f20c6fe39e07ea2cce61f0c9bb048165fe5e4de877550]"
                let expr_997_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7075:7141  "0x2bb8324af6cfc93537a2ad1a445cfd0ca2a71acd7ac41fadbf933c2a51be344d"
                let expr_995 := 0x2bb8324af6cfc93537a2ad1a445cfd0ca2a71acd7ac41fadbf933c2a51be344d
                /// @src 0:7074:7210  "[0x2bb8324af6cfc93537a2ad1a445cfd0ca2a71acd7ac41fadbf933c2a51be344d, 0x120a2a4cf30c1bf9845f20c6fe39e07ea2cce61f0c9bb048165fe5e4de877550]"
                let _405 := convert_t_rational_19774899457345372253936887903062884289284519982717033379297427576421785416781_by_1_to_t_uint256(expr_995)
                write_to_memory_t_uint256(add(expr_997_mpos, 0), _405)
                /// @src 0:7143:7209  "0x120a2a4cf30c1bf9845f20c6fe39e07ea2cce61f0c9bb048165fe5e4de877550"
                let expr_996 := 0x120a2a4cf30c1bf9845f20c6fe39e07ea2cce61f0c9bb048165fe5e4de877550
                /// @src 0:7074:7210  "[0x2bb8324af6cfc93537a2ad1a445cfd0ca2a71acd7ac41fadbf933c2a51be344d, 0x120a2a4cf30c1bf9845f20c6fe39e07ea2cce61f0c9bb048165fe5e4de877550]"
                let _406 := convert_t_rational_8159591693044959083845993640644415462154314071906244874217244895511876957520_by_1_to_t_uint256(expr_996)
                write_to_memory_t_uint256(add(expr_997_mpos, 32), _406)
                /// @src 0:6920:7211  "Pairing.G2Point([0x209dd15ebff5d46c4bd888e51a93cf99a7329636c63514396b4a452003a35bf7, 0x04bf11ca01483bfa8b34b43561848d28905960114c8ac04049af4b6315a41678], [0x2bb8324af6cfc93537a2ad1a445cfd0ca2a71acd7ac41fadbf933c2a51be344d, 0x120a2a4cf30c1bf9845f20c6fe39e07ea2cce61f0c9bb048165fe5e4de877550])"
                let expr_998_mpos := allocate_memory_struct_t_struct$_G2Point_$14_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_998_mpos, 0), expr_994_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_998_mpos, 32), expr_997_mpos)
                /// @src 0:6913:6915  "vk"
                let _407_mpos := var_vk_985_mpos
                let expr_987_mpos := _407_mpos
                /// @src 0:6913:6917  "vk.A"
                let _408 := add(expr_987_mpos, 0)
                /// @src 0:6913:7211  "vk.A = Pairing.G2Point([0x209dd15ebff5d46c4bd888e51a93cf99a7329636c63514396b4a452003a35bf7, 0x04bf11ca01483bfa8b34b43561848d28905960114c8ac04049af4b6315a41678], [0x2bb8324af6cfc93537a2ad1a445cfd0ca2a71acd7ac41fadbf933c2a51be344d, 0x120a2a4cf30c1bf9845f20c6fe39e07ea2cce61f0c9bb048165fe5e4de877550])"
                mstore(_408, expr_998_mpos)
                let _409_mpos := mload(_408)
                let expr_999_mpos := _409_mpos
                /// @src 0:7222:7229  "Pairing"
                let expr_1004_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:7238:7304  "0x2eca0c7238bf16e83e7a1e6c5d49540685ff51380f309842a98561558019fc02"
                let expr_1006 := 0x2eca0c7238bf16e83e7a1e6c5d49540685ff51380f309842a98561558019fc02
                /// @src 0:7306:7372  "0x03d3260361bb8451de5ff5ecd17f010ff22f5c31cdf184e9020b06fa5997db84"
                let expr_1007 := 0x03d3260361bb8451de5ff5ecd17f010ff22f5c31cdf184e9020b06fa5997db84
                /// @src 0:7222:7373  "Pairing.G1Point(0x2eca0c7238bf16e83e7a1e6c5d49540685ff51380f309842a98561558019fc02, 0x03d3260361bb8451de5ff5ecd17f010ff22f5c31cdf184e9020b06fa5997db84)"
                let expr_1008_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _410 := convert_t_rational_21163380042281667028194921861846440787793088615342153907557220755287297358850_by_1_to_t_uint256(expr_1006)
                write_to_memory_t_uint256(add(expr_1008_mpos, 0), _410)
                let _411 := convert_t_rational_1730005633951488561162401768080055521907218407650744548610087024095695199108_by_1_to_t_uint256(expr_1007)
                write_to_memory_t_uint256(add(expr_1008_mpos, 32), _411)
                /// @src 0:7215:7217  "vk"
                let _412_mpos := var_vk_985_mpos
                let expr_1001_mpos := _412_mpos
                /// @src 0:7215:7219  "vk.B"
                let _413 := add(expr_1001_mpos, 32)
                /// @src 0:7215:7373  "vk.B = Pairing.G1Point(0x2eca0c7238bf16e83e7a1e6c5d49540685ff51380f309842a98561558019fc02, 0x03d3260361bb8451de5ff5ecd17f010ff22f5c31cdf184e9020b06fa5997db84)"
                mstore(_413, expr_1008_mpos)
                let _414_mpos := mload(_413)
                let expr_1009_mpos := _414_mpos
                /// @src 0:7384:7391  "Pairing"
                let expr_1014_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:7400:7536  "[0x2e89718ad33c8bed92e210e81d1853435399a271913a6520736a4729cf0d51eb, 0x01a9e2ffa2e92599b68e44de5bcf354fa2642bd4f26b259daa6f7ce3ed57aeb3]"
                let expr_1018_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7401:7467  "0x2e89718ad33c8bed92e210e81d1853435399a271913a6520736a4729cf0d51eb"
                let expr_1016 := 0x2e89718ad33c8bed92e210e81d1853435399a271913a6520736a4729cf0d51eb
                /// @src 0:7400:7536  "[0x2e89718ad33c8bed92e210e81d1853435399a271913a6520736a4729cf0d51eb, 0x01a9e2ffa2e92599b68e44de5bcf354fa2642bd4f26b259daa6f7ce3ed57aeb3]"
                let _415 := convert_t_rational_21049232722760520884910305096518213957309396732908002623546433288382066807275_by_1_to_t_uint256(expr_1016)
                write_to_memory_t_uint256(add(expr_1018_mpos, 0), _415)
                /// @src 0:7469:7535  "0x01a9e2ffa2e92599b68e44de5bcf354fa2642bd4f26b259daa6f7ce3ed57aeb3"
                let expr_1017 := 0x01a9e2ffa2e92599b68e44de5bcf354fa2642bd4f26b259daa6f7ce3ed57aeb3
                /// @src 0:7400:7536  "[0x2e89718ad33c8bed92e210e81d1853435399a271913a6520736a4729cf0d51eb, 0x01a9e2ffa2e92599b68e44de5bcf354fa2642bd4f26b259daa6f7ce3ed57aeb3]"
                let _416 := convert_t_rational_752476689148090443252690606274719847522796924289184281944322016120845872819_by_1_to_t_uint256(expr_1017)
                write_to_memory_t_uint256(add(expr_1018_mpos, 32), _416)
                /// @src 0:7538:7674  "[0x14a9a87b789a58af499b314e13c3d65bede56c07ea2d418d6874857b70763713, 0x178fb49a2d6cd347dc58973ff49613a20757d0fcc22079f9abd10c3baee24590]"
                let expr_1021_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7539:7605  "0x14a9a87b789a58af499b314e13c3d65bede56c07ea2d418d6874857b70763713"
                let expr_1019 := 0x14a9a87b789a58af499b314e13c3d65bede56c07ea2d418d6874857b70763713
                /// @src 0:7538:7674  "[0x14a9a87b789a58af499b314e13c3d65bede56c07ea2d418d6874857b70763713, 0x178fb49a2d6cd347dc58973ff49613a20757d0fcc22079f9abd10c3baee24590]"
                let _417 := convert_t_rational_9346016947773545029940290874113526292203330783138316933543286726319309993747_by_1_to_t_uint256(expr_1019)
                write_to_memory_t_uint256(add(expr_1021_mpos, 0), _417)
                /// @src 0:7607:7673  "0x178fb49a2d6cd347dc58973ff49613a20757d0fcc22079f9abd10c3baee24590"
                let expr_1020 := 0x178fb49a2d6cd347dc58973ff49613a20757d0fcc22079f9abd10c3baee24590
                /// @src 0:7538:7674  "[0x14a9a87b789a58af499b314e13c3d65bede56c07ea2d418d6874857b70763713, 0x178fb49a2d6cd347dc58973ff49613a20757d0fcc22079f9abd10c3baee24590]"
                let _418 := convert_t_rational_10657101118636466197534311304303971390099046792106599174009327086566056805776_by_1_to_t_uint256(expr_1020)
                write_to_memory_t_uint256(add(expr_1021_mpos, 32), _418)
                /// @src 0:7384:7675  "Pairing.G2Point([0x2e89718ad33c8bed92e210e81d1853435399a271913a6520736a4729cf0d51eb, 0x01a9e2ffa2e92599b68e44de5bcf354fa2642bd4f26b259daa6f7ce3ed57aeb3], [0x14a9a87b789a58af499b314e13c3d65bede56c07ea2d418d6874857b70763713, 0x178fb49a2d6cd347dc58973ff49613a20757d0fcc22079f9abd10c3baee24590])"
                let expr_1022_mpos := allocate_memory_struct_t_struct$_G2Point_$14_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1022_mpos, 0), expr_1018_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1022_mpos, 32), expr_1021_mpos)
                /// @src 0:7377:7379  "vk"
                let _419_mpos := var_vk_985_mpos
                let expr_1011_mpos := _419_mpos
                /// @src 0:7377:7381  "vk.C"
                let _420 := add(expr_1011_mpos, 64)
                /// @src 0:7377:7675  "vk.C = Pairing.G2Point([0x2e89718ad33c8bed92e210e81d1853435399a271913a6520736a4729cf0d51eb, 0x01a9e2ffa2e92599b68e44de5bcf354fa2642bd4f26b259daa6f7ce3ed57aeb3], [0x14a9a87b789a58af499b314e13c3d65bede56c07ea2d418d6874857b70763713, 0x178fb49a2d6cd347dc58973ff49613a20757d0fcc22079f9abd10c3baee24590])"
                mstore(_420, expr_1022_mpos)
                let _421_mpos := mload(_420)
                let expr_1023_mpos := _421_mpos
                /// @src 0:7690:7697  "Pairing"
                let expr_1028_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:7706:7842  "[0x25f83c8b6ab9de74e7da488ef02645c5a16a6652c3c71a15dc37fe3a5dcb7cb1, 0x22acdedd6308e3bb230d226d16a105295f523a8a02bfc5e8bd2da135ac4c245d]"
                let expr_1032_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7707:7773  "0x25f83c8b6ab9de74e7da488ef02645c5a16a6652c3c71a15dc37fe3a5dcb7cb1"
                let expr_1030 := 0x25f83c8b6ab9de74e7da488ef02645c5a16a6652c3c71a15dc37fe3a5dcb7cb1
                /// @src 0:7706:7842  "[0x25f83c8b6ab9de74e7da488ef02645c5a16a6652c3c71a15dc37fe3a5dcb7cb1, 0x22acdedd6308e3bb230d226d16a105295f523a8a02bfc5e8bd2da135ac4c245d]"
                let _422 := convert_t_rational_17174171333098854828033634539500164902488935492941049779522958919502622588081_by_1_to_t_uint256(expr_1030)
                write_to_memory_t_uint256(add(expr_1032_mpos, 0), _422)
                /// @src 0:7775:7841  "0x22acdedd6308e3bb230d226d16a105295f523a8a02bfc5e8bd2da135ac4c245d"
                let expr_1031 := 0x22acdedd6308e3bb230d226d16a105295f523a8a02bfc5e8bd2da135ac4c245d
                /// @src 0:7706:7842  "[0x25f83c8b6ab9de74e7da488ef02645c5a16a6652c3c71a15dc37fe3a5dcb7cb1, 0x22acdedd6308e3bb230d226d16a105295f523a8a02bfc5e8bd2da135ac4c245d]"
                let _423 := convert_t_rational_15684072703239714088748884492940919778409948011906556607893998678768263898205_by_1_to_t_uint256(expr_1031)
                write_to_memory_t_uint256(add(expr_1032_mpos, 32), _423)
                /// @src 0:7844:7980  "[0x065bbad92e7c4e31bf3757f1fe7362a63fbfee50e7dc68da116e67d600d9bf68, 0x06d302580dc0661002994e7cd3a7f224e7ddc27802777486bf80f40e4ca3cfdb]"
                let expr_1035_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7845:7911  "0x065bbad92e7c4e31bf3757f1fe7362a63fbfee50e7dc68da116e67d600d9bf68"
                let expr_1033 := 0x065bbad92e7c4e31bf3757f1fe7362a63fbfee50e7dc68da116e67d600d9bf68
                /// @src 0:7844:7980  "[0x065bbad92e7c4e31bf3757f1fe7362a63fbfee50e7dc68da116e67d600d9bf68, 0x06d302580dc0661002994e7cd3a7f224e7ddc27802777486bf80f40e4ca3cfdb]"
                let _424 := convert_t_rational_2875949754418862832249955782188169764124161746616276218844232725526931423080_by_1_to_t_uint256(expr_1033)
                write_to_memory_t_uint256(add(expr_1035_mpos, 0), _424)
                /// @src 0:7913:7979  "0x06d302580dc0661002994e7cd3a7f224e7ddc27802777486bf80f40e4ca3cfdb"
                let expr_1034 := 0x06d302580dc0661002994e7cd3a7f224e7ddc27802777486bf80f40e4ca3cfdb
                /// @src 0:7844:7980  "[0x065bbad92e7c4e31bf3757f1fe7362a63fbfee50e7dc68da116e67d600d9bf68, 0x06d302580dc0661002994e7cd3a7f224e7ddc27802777486bf80f40e4ca3cfdb]"
                let _425 := convert_t_rational_3086697999584045732786424745914779370086036468911841736272013630524944011227_by_1_to_t_uint256(expr_1034)
                write_to_memory_t_uint256(add(expr_1035_mpos, 32), _425)
                /// @src 0:7690:7981  "Pairing.G2Point([0x25f83c8b6ab9de74e7da488ef02645c5a16a6652c3c71a15dc37fe3a5dcb7cb1, 0x22acdedd6308e3bb230d226d16a105295f523a8a02bfc5e8bd2da135ac4c245d], [0x065bbad92e7c4e31bf3757f1fe7362a63fbfee50e7dc68da116e67d600d9bf68, 0x06d302580dc0661002994e7cd3a7f224e7ddc27802777486bf80f40e4ca3cfdb])"
                let expr_1036_mpos := allocate_memory_struct_t_struct$_G2Point_$14_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1036_mpos, 0), expr_1032_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1036_mpos, 32), expr_1035_mpos)
                /// @src 0:7679:7681  "vk"
                let _426_mpos := var_vk_985_mpos
                let expr_1025_mpos := _426_mpos
                /// @src 0:7679:7687  "vk.gamma"
                let _427 := add(expr_1025_mpos, 96)
                /// @src 0:7679:7981  "vk.gamma = Pairing.G2Point([0x25f83c8b6ab9de74e7da488ef02645c5a16a6652c3c71a15dc37fe3a5dcb7cb1, 0x22acdedd6308e3bb230d226d16a105295f523a8a02bfc5e8bd2da135ac4c245d], [0x065bbad92e7c4e31bf3757f1fe7362a63fbfee50e7dc68da116e67d600d9bf68, 0x06d302580dc0661002994e7cd3a7f224e7ddc27802777486bf80f40e4ca3cfdb])"
                mstore(_427, expr_1036_mpos)
                let _428_mpos := mload(_427)
                let expr_1037_mpos := _428_mpos
                /// @src 0:8001:8008  "Pairing"
                let expr_1042_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:8017:8083  "0x15794ab061441e51d01e94640b7e3084a07e02c78cf3103c542bc5b298669f21"
                let expr_1044 := 0x15794ab061441e51d01e94640b7e3084a07e02c78cf3103c542bc5b298669f21
                /// @src 0:8085:8151  "0x14db745c6780e9df549864cec19c2daf4531f6ec0c89cc1c7436cc4d8d300c6d"
                let expr_1045 := 0x14db745c6780e9df549864cec19c2daf4531f6ec0c89cc1c7436cc4d8d300c6d
                /// @src 0:8001:8152  "Pairing.G1Point(0x15794ab061441e51d01e94640b7e3084a07e02c78cf3103c542bc5b298669f21, 0x14db745c6780e9df549864cec19c2daf4531f6ec0c89cc1c7436cc4d8d300c6d)"
                let expr_1046_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _429 := convert_t_rational_9712873799510369170966410452086991795283841876597505062330138725142728449825_by_1_to_t_uint256(expr_1044)
                write_to_memory_t_uint256(add(expr_1046_mpos, 0), _429)
                let _430 := convert_t_rational_9433999572643313025031367487888933220352848413609488855427374525420646960237_by_1_to_t_uint256(expr_1045)
                write_to_memory_t_uint256(add(expr_1046_mpos, 32), _430)
                /// @src 0:7985:7987  "vk"
                let _431_mpos := var_vk_985_mpos
                let expr_1039_mpos := _431_mpos
                /// @src 0:7985:7998  "vk.gammaBeta1"
                let _432 := add(expr_1039_mpos, 128)
                /// @src 0:7985:8152  "vk.gammaBeta1 = Pairing.G1Point(0x15794ab061441e51d01e94640b7e3084a07e02c78cf3103c542bc5b298669f21, 0x14db745c6780e9df549864cec19c2daf4531f6ec0c89cc1c7436cc4d8d300c6d)"
                mstore(_432, expr_1046_mpos)
                let _433_mpos := mload(_432)
                let expr_1047_mpos := _433_mpos
                /// @src 0:8172:8179  "Pairing"
                let expr_1052_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:8188:8324  "[0x1f39e4e4afc4bc74790a4a028aff2c3d2538731fb755edefd8cb48d6ea589b5e, 0x283f150794b6736f670d6a1033f9b46c6f5204f50813eb85c8dc4b59db1c5d39]"
                let expr_1056_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:8189:8255  "0x1f39e4e4afc4bc74790a4a028aff2c3d2538731fb755edefd8cb48d6ea589b5e"
                let expr_1054 := 0x1f39e4e4afc4bc74790a4a028aff2c3d2538731fb755edefd8cb48d6ea589b5e
                /// @src 0:8188:8324  "[0x1f39e4e4afc4bc74790a4a028aff2c3d2538731fb755edefd8cb48d6ea589b5e, 0x283f150794b6736f670d6a1033f9b46c6f5204f50813eb85c8dc4b59db1c5d39]"
                let _434 := convert_t_rational_14123988352319117906018970862315159679452117471849989000282265698764599106398_by_1_to_t_uint256(expr_1054)
                write_to_memory_t_uint256(add(expr_1056_mpos, 0), _434)
                /// @src 0:8257:8323  "0x283f150794b6736f670d6a1033f9b46c6f5204f50813eb85c8dc4b59db1c5d39"
                let expr_1055 := 0x283f150794b6736f670d6a1033f9b46c6f5204f50813eb85c8dc4b59db1c5d39
                /// @src 0:8188:8324  "[0x1f39e4e4afc4bc74790a4a028aff2c3d2538731fb755edefd8cb48d6ea589b5e, 0x283f150794b6736f670d6a1033f9b46c6f5204f50813eb85c8dc4b59db1c5d39]"
                let _435 := convert_t_rational_18203970449465878141055527247672796515569702004956673464850250575302350363961_by_1_to_t_uint256(expr_1055)
                write_to_memory_t_uint256(add(expr_1056_mpos, 32), _435)
                /// @src 0:8326:8462  "[0x140d97ee4d2b36d99bc49974d18ecca3e7ad51011956051b464d9e27d46cc25e, 0x0764bb98575bd466d32db7b15f582b2d5c452b36aa394b789366e5e3ca5aabd4]"
                let expr_1059_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:8327:8393  "0x140d97ee4d2b36d99bc49974d18ecca3e7ad51011956051b464d9e27d46cc25e"
                let expr_1057 := 0x140d97ee4d2b36d99bc49974d18ecca3e7ad51011956051b464d9e27d46cc25e
                /// @src 0:8326:8462  "[0x140d97ee4d2b36d99bc49974d18ecca3e7ad51011956051b464d9e27d46cc25e, 0x0764bb98575bd466d32db7b15f582b2d5c452b36aa394b789366e5e3ca5aabd4]"
                let _436 := convert_t_rational_9070274571799942693810232181825350369966811716654884009331987967306715939422_by_1_to_t_uint256(expr_1057)
                write_to_memory_t_uint256(add(expr_1059_mpos, 0), _436)
                /// @src 0:8395:8461  "0x0764bb98575bd466d32db7b15f582b2d5c452b36aa394b789366e5e3ca5aabd4"
                let expr_1058 := 0x0764bb98575bd466d32db7b15f582b2d5c452b36aa394b789366e5e3ca5aabd4
                /// @src 0:8326:8462  "[0x140d97ee4d2b36d99bc49974d18ecca3e7ad51011956051b464d9e27d46cc25e, 0x0764bb98575bd466d32db7b15f582b2d5c452b36aa394b789366e5e3ca5aabd4]"
                let _437 := convert_t_rational_3344169380239392314048474373026629561296701202792428464496597755254021991380_by_1_to_t_uint256(expr_1058)
                write_to_memory_t_uint256(add(expr_1059_mpos, 32), _437)
                /// @src 0:8172:8463  "Pairing.G2Point([0x1f39e4e4afc4bc74790a4a028aff2c3d2538731fb755edefd8cb48d6ea589b5e, 0x283f150794b6736f670d6a1033f9b46c6f5204f50813eb85c8dc4b59db1c5d39], [0x140d97ee4d2b36d99bc49974d18ecca3e7ad51011956051b464d9e27d46cc25e, 0x0764bb98575bd466d32db7b15f582b2d5c452b36aa394b789366e5e3ca5aabd4])"
                let expr_1060_mpos := allocate_memory_struct_t_struct$_G2Point_$14_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1060_mpos, 0), expr_1056_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1060_mpos, 32), expr_1059_mpos)
                /// @src 0:8156:8158  "vk"
                let _438_mpos := var_vk_985_mpos
                let expr_1049_mpos := _438_mpos
                /// @src 0:8156:8169  "vk.gammaBeta2"
                let _439 := add(expr_1049_mpos, 160)
                /// @src 0:8156:8463  "vk.gammaBeta2 = Pairing.G2Point([0x1f39e4e4afc4bc74790a4a028aff2c3d2538731fb755edefd8cb48d6ea589b5e, 0x283f150794b6736f670d6a1033f9b46c6f5204f50813eb85c8dc4b59db1c5d39], [0x140d97ee4d2b36d99bc49974d18ecca3e7ad51011956051b464d9e27d46cc25e, 0x0764bb98575bd466d32db7b15f582b2d5c452b36aa394b789366e5e3ca5aabd4])"
                mstore(_439, expr_1060_mpos)
                let _440_mpos := mload(_439)
                let expr_1061_mpos := _440_mpos
                /// @src 0:8474:8481  "Pairing"
                let expr_1066_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:8490:8626  "[0x217cee0a9ad79a4493b5253e2e4e3a39fc2df38419f230d341f60cb064a0ac29, 0x0a3d76f140db8418ba512272381446eb73958670f00cf46f1d9e64cba057b53c]"
                let expr_1070_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:8491:8557  "0x217cee0a9ad79a4493b5253e2e4e3a39fc2df38419f230d341f60cb064a0ac29"
                let expr_1068 := 0x217cee0a9ad79a4493b5253e2e4e3a39fc2df38419f230d341f60cb064a0ac29
                /// @src 0:8490:8626  "[0x217cee0a9ad79a4493b5253e2e4e3a39fc2df38419f230d341f60cb064a0ac29, 0x0a3d76f140db8418ba512272381446eb73958670f00cf46f1d9e64cba057b53c]"
                let _441 := convert_t_rational_15147055940817099984713168864119185960995485721468434382981947300642935581737_by_1_to_t_uint256(expr_1068)
                write_to_memory_t_uint256(add(expr_1070_mpos, 0), _441)
                /// @src 0:8559:8625  "0x0a3d76f140db8418ba512272381446eb73958670f00cf46f1d9e64cba057b53c"
                let expr_1069 := 0x0a3d76f140db8418ba512272381446eb73958670f00cf46f1d9e64cba057b53c
                /// @src 0:8490:8626  "[0x217cee0a9ad79a4493b5253e2e4e3a39fc2df38419f230d341f60cb064a0ac29, 0x0a3d76f140db8418ba512272381446eb73958670f00cf46f1d9e64cba057b53c]"
                let _442 := convert_t_rational_4631727067030503710010688256995134761045201948838871620017875546783390086460_by_1_to_t_uint256(expr_1069)
                write_to_memory_t_uint256(add(expr_1070_mpos, 32), _442)
                /// @src 0:8628:8764  "[0x26f64a8ec70387a13e41430ed3ee4a7db2059cc5fc13c067194bcc0cb49a9855, 0x2fd72bd9edb657346127da132e5b82ab908f5816c826acb499e22f2412d1a2d7]"
                let expr_1073_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:8629:8695  "0x26f64a8ec70387a13e41430ed3ee4a7db2059cc5fc13c067194bcc0cb49a9855"
                let expr_1071 := 0x26f64a8ec70387a13e41430ed3ee4a7db2059cc5fc13c067194bcc0cb49a9855
                /// @src 0:8628:8764  "[0x26f64a8ec70387a13e41430ed3ee4a7db2059cc5fc13c067194bcc0cb49a9855, 0x2fd72bd9edb657346127da132e5b82ab908f5816c826acb499e22f2412d1a2d7]"
                let _443 := convert_t_rational_17623047202600292659611642134440671974256480551657416500487803939184025704533_by_1_to_t_uint256(expr_1071)
                write_to_memory_t_uint256(add(expr_1073_mpos, 0), _443)
                /// @src 0:8697:8763  "0x2fd72bd9edb657346127da132e5b82ab908f5816c826acb499e22f2412d1a2d7"
                let expr_1072 := 0x2fd72bd9edb657346127da132e5b82ab908f5816c826acb499e22f2412d1a2d7
                /// @src 0:8628:8764  "[0x26f64a8ec70387a13e41430ed3ee4a7db2059cc5fc13c067194bcc0cb49a9855, 0x2fd72bd9edb657346127da132e5b82ab908f5816c826acb499e22f2412d1a2d7]"
                let _444 := convert_t_rational_21638878652776235365545898652250152098523031965244840843903617079107891864279_by_1_to_t_uint256(expr_1072)
                write_to_memory_t_uint256(add(expr_1073_mpos, 32), _444)
                /// @src 0:8474:8765  "Pairing.G2Point([0x217cee0a9ad79a4493b5253e2e4e3a39fc2df38419f230d341f60cb064a0ac29, 0x0a3d76f140db8418ba512272381446eb73958670f00cf46f1d9e64cba057b53c], [0x26f64a8ec70387a13e41430ed3ee4a7db2059cc5fc13c067194bcc0cb49a9855, 0x2fd72bd9edb657346127da132e5b82ab908f5816c826acb499e22f2412d1a2d7])"
                let expr_1074_mpos := allocate_memory_struct_t_struct$_G2Point_$14_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1074_mpos, 0), expr_1070_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_1074_mpos, 32), expr_1073_mpos)
                /// @src 0:8467:8469  "vk"
                let _445_mpos := var_vk_985_mpos
                let expr_1063_mpos := _445_mpos
                /// @src 0:8467:8471  "vk.Z"
                let _446 := add(expr_1063_mpos, 192)
                /// @src 0:8467:8765  "vk.Z = Pairing.G2Point([0x217cee0a9ad79a4493b5253e2e4e3a39fc2df38419f230d341f60cb064a0ac29, 0x0a3d76f140db8418ba512272381446eb73958670f00cf46f1d9e64cba057b53c], [0x26f64a8ec70387a13e41430ed3ee4a7db2059cc5fc13c067194bcc0cb49a9855, 0x2fd72bd9edb657346127da132e5b82ab908f5816c826acb499e22f2412d1a2d7])"
                mstore(_446, expr_1074_mpos)
                let _447_mpos := mload(_446)
                let expr_1075_mpos := _447_mpos
                /// @src 0:8799:8801  "10"
                let expr_1084 := 0x0a
                /// @src 0:8777:8802  "new Pairing.G1Point[](10)"
                let _448 := convert_t_rational_10_by_1_to_t_uint256(expr_1084)
                let expr_1085_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(_448)
                /// @src 0:8769:8771  "vk"
                let _449_mpos := var_vk_985_mpos
                let expr_1077_mpos := _449_mpos
                /// @src 0:8769:8774  "vk.IC"
                let _450 := add(expr_1077_mpos, 224)
                /// @src 0:8769:8802  "vk.IC = new Pairing.G1Point[](10)"
                mstore(_450, expr_1085_mpos)
                let _451_mpos := mload(_450)
                let expr_1086_mpos := _451_mpos
                /// @src 0:8817:8824  "Pairing"
                let expr_1093_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:8833:8899  "0x0aee46a7ea6e80a3675026dfa84019deee2a2dedb1bbe11d7fe124cb3efb4b5a"
                let expr_1095 := 0x0aee46a7ea6e80a3675026dfa84019deee2a2dedb1bbe11d7fe124cb3efb4b5a
                /// @src 0:8901:8967  "0x044747b6e9176e13ede3a4dfd0d33ccca6321b9acd23bf3683a60adc0366ebaf"
                let expr_1096 := 0x044747b6e9176e13ede3a4dfd0d33ccca6321b9acd23bf3683a60adc0366ebaf
                /// @src 0:8817:8968  "Pairing.G1Point(0x0aee46a7ea6e80a3675026dfa84019deee2a2dedb1bbe11d7fe124cb3efb4b5a, 0x044747b6e9176e13ede3a4dfd0d33ccca6321b9acd23bf3683a60adc0366ebaf)"
                let expr_1097_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _452 := convert_t_rational_4944125736493822447335225095051526251764804673819722614680138374080051759962_by_1_to_t_uint256(expr_1095)
                write_to_memory_t_uint256(add(expr_1097_mpos, 0), _452)
                let _453 := convert_t_rational_1935192491180648890600311215252271941452272522684171010354270378941282184111_by_1_to_t_uint256(expr_1096)
                write_to_memory_t_uint256(add(expr_1097_mpos, 32), _453)
                /// @src 0:8806:8808  "vk"
                let _454_mpos := var_vk_985_mpos
                let expr_1088_mpos := _454_mpos
                /// @src 0:8806:8811  "vk.IC"
                let _455 := add(expr_1088_mpos, 224)
                let _456_mpos := mload(_455)
                let expr_1091_mpos := _456_mpos
                /// @src 0:8812:8813  "0"
                let expr_1090 := 0x00
                /// @src 0:8806:8968  "vk.IC[0] = Pairing.G1Point(0x0aee46a7ea6e80a3675026dfa84019deee2a2dedb1bbe11d7fe124cb3efb4b5a, 0x044747b6e9176e13ede3a4dfd0d33ccca6321b9acd23bf3683a60adc0366ebaf)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1091_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1090)), expr_1097_mpos)
                let _457_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1091_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1090)))
                let expr_1098_mpos := _457_mpos
                /// @src 0:8983:8990  "Pairing"
                let expr_1105_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:8999:9065  "0x1e39e9f0f91fa7ff8047ffd90de08785777fe61c0e3434e728fce4cf35047ddc"
                let expr_1107 := 0x1e39e9f0f91fa7ff8047ffd90de08785777fe61c0e3434e728fce4cf35047ddc
                /// @src 0:9067:9133  "0x2e0b64d75ebfa86d7f8f8e08abbe2e7ae6e0a1c0b34d028f19fa56e9450527cb"
                let expr_1108 := 0x2e0b64d75ebfa86d7f8f8e08abbe2e7ae6e0a1c0b34d028f19fa56e9450527cb
                /// @src 0:8983:9134  "Pairing.G1Point(0x1e39e9f0f91fa7ff8047ffd90de08785777fe61c0e3434e728fce4cf35047ddc, 0x2e0b64d75ebfa86d7f8f8e08abbe2e7ae6e0a1c0b34d028f19fa56e9450527cb)"
                let expr_1109_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _458 := convert_t_rational_13671710343712145123751755431743289257188978742535474396465034058168696864220_by_1_to_t_uint256(expr_1107)
                write_to_memory_t_uint256(add(expr_1109_mpos, 0), _458)
                let _459 := convert_t_rational_20826522333544227498944395534998927652160019773231902383997070883222962120651_by_1_to_t_uint256(expr_1108)
                write_to_memory_t_uint256(add(expr_1109_mpos, 32), _459)
                /// @src 0:8972:8974  "vk"
                let _460_mpos := var_vk_985_mpos
                let expr_1100_mpos := _460_mpos
                /// @src 0:8972:8977  "vk.IC"
                let _461 := add(expr_1100_mpos, 224)
                let _462_mpos := mload(_461)
                let expr_1103_mpos := _462_mpos
                /// @src 0:8978:8979  "1"
                let expr_1102 := 0x01
                /// @src 0:8972:9134  "vk.IC[1] = Pairing.G1Point(0x1e39e9f0f91fa7ff8047ffd90de08785777fe61c0e3434e728fce4cf35047ddc, 0x2e0b64d75ebfa86d7f8f8e08abbe2e7ae6e0a1c0b34d028f19fa56e9450527cb)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1103_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1102)), expr_1109_mpos)
                let _463_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1103_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1102)))
                let expr_1110_mpos := _463_mpos
                /// @src 0:9149:9156  "Pairing"
                let expr_1117_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:9165:9231  "0x1c36e713d4d54e3a9644dffca1fc524be4868f66572516025a61ca542539d43f"
                let expr_1119 := 0x1c36e713d4d54e3a9644dffca1fc524be4868f66572516025a61ca542539d43f
                /// @src 0:9233:9299  "0x042dcc4525b82dfb242b09cb21909d5c22643dcdbe98c4d082cc2877e96b24db"
                let expr_1120 := 0x042dcc4525b82dfb242b09cb21909d5c22643dcdbe98c4d082cc2877e96b24db
                /// @src 0:9149:9300  "Pairing.G1Point(0x1c36e713d4d54e3a9644dffca1fc524be4868f66572516025a61ca542539d43f, 0x042dcc4525b82dfb242b09cb21909d5c22643dcdbe98c4d082cc2877e96b24db)"
                let expr_1121_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _464 := convert_t_rational_12761764339888541584683044940570653033593327533706847447891003583652324561983_by_1_to_t_uint256(expr_1119)
                write_to_memory_t_uint256(add(expr_1121_mpos, 0), _464)
                let _465 := convert_t_rational_1890169332711480046756085850376547686758361763522376714890812739379155117275_by_1_to_t_uint256(expr_1120)
                write_to_memory_t_uint256(add(expr_1121_mpos, 32), _465)
                /// @src 0:9138:9140  "vk"
                let _466_mpos := var_vk_985_mpos
                let expr_1112_mpos := _466_mpos
                /// @src 0:9138:9143  "vk.IC"
                let _467 := add(expr_1112_mpos, 224)
                let _468_mpos := mload(_467)
                let expr_1115_mpos := _468_mpos
                /// @src 0:9144:9145  "2"
                let expr_1114 := 0x02
                /// @src 0:9138:9300  "vk.IC[2] = Pairing.G1Point(0x1c36e713d4d54e3a9644dffca1fc524be4868f66572516025a61ca542539d43f, 0x042dcc4525b82dfb242b09cb21909d5c22643dcdbe98c4d082cc2877e96b24db)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1115_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_1114)), expr_1121_mpos)
                let _469_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1115_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_1114)))
                let expr_1122_mpos := _469_mpos
                /// @src 0:9315:9322  "Pairing"
                let expr_1129_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:9331:9397  "0x17d5d09b4146424bff7e6fb01487c477bbfcd0cdbbc92d5d6457aae0b6717cc5"
                let expr_1131 := 0x17d5d09b4146424bff7e6fb01487c477bbfcd0cdbbc92d5d6457aae0b6717cc5
                /// @src 0:9399:9465  "0x02b5636903efbf46db9235bbe74045d21c138897fda32e079040db1a16c1a7a1"
                let expr_1132 := 0x02b5636903efbf46db9235bbe74045d21c138897fda32e079040db1a16c1a7a1
                /// @src 0:9315:9466  "Pairing.G1Point(0x17d5d09b4146424bff7e6fb01487c477bbfcd0cdbbc92d5d6457aae0b6717cc5, 0x02b5636903efbf46db9235bbe74045d21c138897fda32e079040db1a16c1a7a1)"
                let expr_1133_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _470 := convert_t_rational_10780973691118990463572234139590032304523642666772690042271497225434343505093_by_1_to_t_uint256(expr_1131)
                write_to_memory_t_uint256(add(expr_1133_mpos, 0), _470)
                let _471 := convert_t_rational_1225111119988715799286416715484295049110336342693607646598445309214414972833_by_1_to_t_uint256(expr_1132)
                write_to_memory_t_uint256(add(expr_1133_mpos, 32), _471)
                /// @src 0:9304:9306  "vk"
                let _472_mpos := var_vk_985_mpos
                let expr_1124_mpos := _472_mpos
                /// @src 0:9304:9309  "vk.IC"
                let _473 := add(expr_1124_mpos, 224)
                let _474_mpos := mload(_473)
                let expr_1127_mpos := _474_mpos
                /// @src 0:9310:9311  "3"
                let expr_1126 := 0x03
                /// @src 0:9304:9466  "vk.IC[3] = Pairing.G1Point(0x17d5d09b4146424bff7e6fb01487c477bbfcd0cdbbc92d5d6457aae0b6717cc5, 0x02b5636903efbf46db9235bbe74045d21c138897fda32e079040db1a16c1a7a1)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1127_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_1126)), expr_1133_mpos)
                let _475_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1127_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_1126)))
                let expr_1134_mpos := _475_mpos
                /// @src 0:9481:9488  "Pairing"
                let expr_1141_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:9497:9563  "0x0f103f14a584d4203c27c26155b2c955f8dfa816980b24ba824e1972d6486a5d"
                let expr_1143 := 0x0f103f14a584d4203c27c26155b2c955f8dfa816980b24ba824e1972d6486a5d
                /// @src 0:9565:9631  "0x0c4165133b9f5be17c804203af781bcf168da7386620479f9b885ecbcd27b17b"
                let expr_1144 := 0x0c4165133b9f5be17c804203af781bcf168da7386620479f9b885ecbcd27b17b
                /// @src 0:9481:9632  "Pairing.G1Point(0x0f103f14a584d4203c27c26155b2c955f8dfa816980b24ba824e1972d6486a5d, 0x0c4165133b9f5be17c804203af781bcf168da7386620479f9b885ecbcd27b17b)"
                let expr_1145_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _476 := convert_t_rational_6813397648435401772315777392068447297731770034820995962730599333379629935197_by_1_to_t_uint256(expr_1143)
                write_to_memory_t_uint256(add(expr_1145_mpos, 0), _476)
                let _477 := convert_t_rational_5543296837108785826068557070639753614637117027747616223928176042346981863803_by_1_to_t_uint256(expr_1144)
                write_to_memory_t_uint256(add(expr_1145_mpos, 32), _477)
                /// @src 0:9470:9472  "vk"
                let _478_mpos := var_vk_985_mpos
                let expr_1136_mpos := _478_mpos
                /// @src 0:9470:9475  "vk.IC"
                let _479 := add(expr_1136_mpos, 224)
                let _480_mpos := mload(_479)
                let expr_1139_mpos := _480_mpos
                /// @src 0:9476:9477  "4"
                let expr_1138 := 0x04
                /// @src 0:9470:9632  "vk.IC[4] = Pairing.G1Point(0x0f103f14a584d4203c27c26155b2c955f8dfa816980b24ba824e1972d6486a5d, 0x0c4165133b9f5be17c804203af781bcf168da7386620479f9b885ecbcd27b17b)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1139_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_1138)), expr_1145_mpos)
                let _481_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1139_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_1138)))
                let expr_1146_mpos := _481_mpos
                /// @src 0:9647:9654  "Pairing"
                let expr_1153_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:9663:9729  "0x232063b584fb76c8d07995bee3a38fa7565405f3549c6a918ddaa90ab971e7f8"
                let expr_1155 := 0x232063b584fb76c8d07995bee3a38fa7565405f3549c6a918ddaa90ab971e7f8
                /// @src 0:9731:9797  "0x2ac9b135a81d96425c92d02296322ad56ffb16299633233e4880f95aafa7fda7"
                let expr_1156 := 0x2ac9b135a81d96425c92d02296322ad56ffb16299633233e4880f95aafa7fda7
                /// @src 0:9647:9798  "Pairing.G1Point(0x232063b584fb76c8d07995bee3a38fa7565405f3549c6a918ddaa90ab971e7f8, 0x2ac9b135a81d96425c92d02296322ad56ffb16299633233e4880f95aafa7fda7)"
                let expr_1157_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _482 := convert_t_rational_15888176973130579702136584647732320447911977285971866534948545524629530339320_by_1_to_t_uint256(expr_1155)
                write_to_memory_t_uint256(add(expr_1157_mpos, 0), _482)
                let _483 := convert_t_rational_19353498956202835216323577418447420319043865439124272799134659660891866791335_by_1_to_t_uint256(expr_1156)
                write_to_memory_t_uint256(add(expr_1157_mpos, 32), _483)
                /// @src 0:9636:9638  "vk"
                let _484_mpos := var_vk_985_mpos
                let expr_1148_mpos := _484_mpos
                /// @src 0:9636:9641  "vk.IC"
                let _485 := add(expr_1148_mpos, 224)
                let _486_mpos := mload(_485)
                let expr_1151_mpos := _486_mpos
                /// @src 0:9642:9643  "5"
                let expr_1150 := 0x05
                /// @src 0:9636:9798  "vk.IC[5] = Pairing.G1Point(0x232063b584fb76c8d07995bee3a38fa7565405f3549c6a918ddaa90ab971e7f8, 0x2ac9b135a81d96425c92d02296322ad56ffb16299633233e4880f95aafa7fda7)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1151_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_1150)), expr_1157_mpos)
                let _487_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1151_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_1150)))
                let expr_1158_mpos := _487_mpos
                /// @src 0:9813:9820  "Pairing"
                let expr_1165_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:9829:9895  "0x09b54f111d3b2d1b2fe1ae9669b3db3d7bf93b70f00647e65c849275de6dc7fe"
                let expr_1167 := 0x09b54f111d3b2d1b2fe1ae9669b3db3d7bf93b70f00647e65c849275de6dc7fe
                /// @src 0:9897:9963  "0x18b2e77c63a3e400d6d1f1fbc6e1a1167bbca603d34d03edea231eb0ab7b14b4"
                let expr_1168 := 0x18b2e77c63a3e400d6d1f1fbc6e1a1167bbca603d34d03edea231eb0ab7b14b4
                /// @src 0:9813:9964  "Pairing.G1Point(0x09b54f111d3b2d1b2fe1ae9669b3db3d7bf93b70f00647e65c849275de6dc7fe, 0x18b2e77c63a3e400d6d1f1fbc6e1a1167bbca603d34d03edea231eb0ab7b14b4)"
                let expr_1169_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _488 := convert_t_rational_4391160655333174988591015543994926300076235924540378279303074871686753798142_by_1_to_t_uint256(expr_1167)
                write_to_memory_t_uint256(add(expr_1169_mpos, 0), _488)
                let _489 := convert_t_rational_11171604800461778651579303937810014677300582907756707298692424617842305602740_by_1_to_t_uint256(expr_1168)
                write_to_memory_t_uint256(add(expr_1169_mpos, 32), _489)
                /// @src 0:9802:9804  "vk"
                let _490_mpos := var_vk_985_mpos
                let expr_1160_mpos := _490_mpos
                /// @src 0:9802:9807  "vk.IC"
                let _491 := add(expr_1160_mpos, 224)
                let _492_mpos := mload(_491)
                let expr_1163_mpos := _492_mpos
                /// @src 0:9808:9809  "6"
                let expr_1162 := 0x06
                /// @src 0:9802:9964  "vk.IC[6] = Pairing.G1Point(0x09b54f111d3b2d1b2fe1ae9669b3db3d7bf93b70f00647e65c849275de6dc7fe, 0x18b2e77c63a3e400d6d1f1fbc6e1a1167bbca603d34d03edea231eb0ab7b14b4)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1163_mpos, convert_t_rational_6_by_1_to_t_uint256(expr_1162)), expr_1169_mpos)
                let _493_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1163_mpos, convert_t_rational_6_by_1_to_t_uint256(expr_1162)))
                let expr_1170_mpos := _493_mpos
                /// @src 0:9979:9986  "Pairing"
                let expr_1177_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:9995:10061  "0x0c54b42137b67cc268cbb53ac62b00ecead23984092b494a88befe58445a244a"
                let expr_1179 := 0x0c54b42137b67cc268cbb53ac62b00ecead23984092b494a88befe58445a244a
                /// @src 0:10063:10129  "0x18e3723d37fae9262d58b548a0575f59d9c3266db7afb4d5739555837f6b8b3e"
                let expr_1180 := 0x18e3723d37fae9262d58b548a0575f59d9c3266db7afb4d5739555837f6b8b3e
                /// @src 0:9979:10130  "Pairing.G1Point(0x0c54b42137b67cc268cbb53ac62b00ecead23984092b494a88befe58445a244a, 0x18e3723d37fae9262d58b548a0575f59d9c3266db7afb4d5739555837f6b8b3e)"
                let expr_1181_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _494 := convert_t_rational_5577412546328490241391307238739013120425748898832356403880504969857771119690_by_1_to_t_uint256(expr_1179)
                write_to_memory_t_uint256(add(expr_1181_mpos, 0), _494)
                let _495 := convert_t_rational_11257371099238762117045275690719175766562617360639429481885451902339768879934_by_1_to_t_uint256(expr_1180)
                write_to_memory_t_uint256(add(expr_1181_mpos, 32), _495)
                /// @src 0:9968:9970  "vk"
                let _496_mpos := var_vk_985_mpos
                let expr_1172_mpos := _496_mpos
                /// @src 0:9968:9973  "vk.IC"
                let _497 := add(expr_1172_mpos, 224)
                let _498_mpos := mload(_497)
                let expr_1175_mpos := _498_mpos
                /// @src 0:9974:9975  "7"
                let expr_1174 := 0x07
                /// @src 0:9968:10130  "vk.IC[7] = Pairing.G1Point(0x0c54b42137b67cc268cbb53ac62b00ecead23984092b494a88befe58445a244a, 0x18e3723d37fae9262d58b548a0575f59d9c3266db7afb4d5739555837f6b8b3e)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1175_mpos, convert_t_rational_7_by_1_to_t_uint256(expr_1174)), expr_1181_mpos)
                let _499_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1175_mpos, convert_t_rational_7_by_1_to_t_uint256(expr_1174)))
                let expr_1182_mpos := _499_mpos
                /// @src 0:10145:10152  "Pairing"
                let expr_1189_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:10161:10227  "0x0a6de0e2240aa253f46ce0da883b61976e3588146e01c9d8976548c145fe6e4a"
                let expr_1191 := 0x0a6de0e2240aa253f46ce0da883b61976e3588146e01c9d8976548c145fe6e4a
                /// @src 0:10229:10295  "0x04fbaa3a4aed4bb77f30ebb07a3ec1c7d77a7f2edd75636babfeff97b1ea686e"
                let expr_1192 := 0x04fbaa3a4aed4bb77f30ebb07a3ec1c7d77a7f2edd75636babfeff97b1ea686e
                /// @src 0:10145:10296  "Pairing.G1Point(0x0a6de0e2240aa253f46ce0da883b61976e3588146e01c9d8976548c145fe6e4a, 0x04fbaa3a4aed4bb77f30ebb07a3ec1c7d77a7f2edd75636babfeff97b1ea686e)"
                let expr_1193_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _500 := convert_t_rational_4717266903818752750408066803467256739157750721583295354208673132324161744458_by_1_to_t_uint256(expr_1191)
                write_to_memory_t_uint256(add(expr_1193_mpos, 0), _500)
                let _501 := convert_t_rational_2253904876039028511475843193830314875944384935466740271927641917713621346414_by_1_to_t_uint256(expr_1192)
                write_to_memory_t_uint256(add(expr_1193_mpos, 32), _501)
                /// @src 0:10134:10136  "vk"
                let _502_mpos := var_vk_985_mpos
                let expr_1184_mpos := _502_mpos
                /// @src 0:10134:10139  "vk.IC"
                let _503 := add(expr_1184_mpos, 224)
                let _504_mpos := mload(_503)
                let expr_1187_mpos := _504_mpos
                /// @src 0:10140:10141  "8"
                let expr_1186 := 0x08
                /// @src 0:10134:10296  "vk.IC[8] = Pairing.G1Point(0x0a6de0e2240aa253f46ce0da883b61976e3588146e01c9d8976548c145fe6e4a, 0x04fbaa3a4aed4bb77f30ebb07a3ec1c7d77a7f2edd75636babfeff97b1ea686e)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1187_mpos, convert_t_rational_8_by_1_to_t_uint256(expr_1186)), expr_1193_mpos)
                let _505_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1187_mpos, convert_t_rational_8_by_1_to_t_uint256(expr_1186)))
                let expr_1194_mpos := _505_mpos
                /// @src 0:10311:10318  "Pairing"
                let expr_1201_address := linkersymbol("snark.sol:Pairing")
                /// @src 0:10327:10393  "0x111e2e2a5f8828f80ddad08f9f74db56dac1cc16c1cb278036f79a84cf7a116f"
                let expr_1203 := 0x111e2e2a5f8828f80ddad08f9f74db56dac1cc16c1cb278036f79a84cf7a116f
                /// @src 0:10395:10461  "0x1d7d62e192b219b9808faa906c5ced871788f6339e8d91b83ac1343e20a16b30"
                let expr_1204 := 0x1d7d62e192b219b9808faa906c5ced871788f6339e8d91b83ac1343e20a16b30
                /// @src 0:10311:10462  "Pairing.G1Point(0x111e2e2a5f8828f80ddad08f9f74db56dac1cc16c1cb278036f79a84cf7a116f, 0x1d7d62e192b219b9808faa906c5ced871788f6339e8d91b83ac1343e20a16b30)"
                let expr_1205_mpos := allocate_memory_struct_t_struct$_G1Point_$5_storage_ptr()
                let _506 := convert_t_rational_7742642460569273216539674856471756904887522145302233146876244281004809392495_by_1_to_t_uint256(expr_1203)
                write_to_memory_t_uint256(add(expr_1205_mpos, 0), _506)
                let _507 := convert_t_rational_13338610944590869762446817049541912676528855874207736821753831893421715974960_by_1_to_t_uint256(expr_1204)
                write_to_memory_t_uint256(add(expr_1205_mpos, 32), _507)
                /// @src 0:10300:10302  "vk"
                let _508_mpos := var_vk_985_mpos
                let expr_1196_mpos := _508_mpos
                /// @src 0:10300:10305  "vk.IC"
                let _509 := add(expr_1196_mpos, 224)
                let _510_mpos := mload(_509)
                let expr_1199_mpos := _510_mpos
                /// @src 0:10306:10307  "9"
                let expr_1198 := 0x09
                /// @src 0:10300:10462  "vk.IC[9] = Pairing.G1Point(0x111e2e2a5f8828f80ddad08f9f74db56dac1cc16c1cb278036f79a84cf7a116f, 0x1d7d62e192b219b9808faa906c5ced871788f6339e8d91b83ac1343e20a16b30)"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1199_mpos, convert_t_rational_9_by_1_to_t_uint256(expr_1198)), expr_1205_mpos)
                let _511_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_1199_mpos, convert_t_rational_9_by_1_to_t_uint256(expr_1198)))
                let expr_1206_mpos := _511_mpos

            }
            /// @src 0:4069:14233  "contract Test {..."

            /// @ast-id 427
            /// @src 0:2966:3258  "function pairingProd2(G1Point memory a1, G2Point memory a2, G1Point memory b1, G2Point memory b2) internal returns (bool) {..."
            function fun_pairingProd2_427(var_a1_359_mpos, var_a2_362_mpos, var_b1_365_mpos, var_b2_368_mpos) -> var__371 {
                /// @src 0:3082:3086  "bool"
                let zero_t_bool_512 := zero_value_for_split_t_bool()
                var__371 := zero_t_bool_512

                /// @src 0:3128:3129  "2"
                let expr_382 := 0x02
                /// @src 0:3114:3130  "new G1Point[](2)"
                let _513 := convert_t_rational_2_by_1_to_t_uint256(expr_382)
                let expr_383_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(_513)
                /// @src 0:3092:3130  "G1Point[] memory p1 = new G1Point[](2)"
                let var_p1_377_mpos := expr_383_mpos
                /// @src 0:3170:3171  "2"
                let expr_394 := 0x02
                /// @src 0:3156:3172  "new G2Point[](2)"
                let _514 := convert_t_rational_2_by_1_to_t_uint256(expr_394)
                let expr_395_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(_514)
                /// @src 0:3134:3172  "G2Point[] memory p2 = new G2Point[](2)"
                let var_p2_389_mpos := expr_395_mpos
                /// @src 0:3184:3186  "a1"
                let _515_mpos := var_a1_359_mpos
                let expr_400_mpos := _515_mpos
                /// @src 0:3176:3178  "p1"
                let _516_mpos := var_p1_377_mpos
                let expr_397_mpos := _516_mpos
                /// @src 0:3179:3180  "0"
                let expr_398 := 0x00
                /// @src 0:3176:3186  "p1[0] = a1"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_397_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_398)), expr_400_mpos)
                let _517_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_397_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_398)))
                let expr_401_mpos := _517_mpos
                /// @src 0:3198:3200  "b1"
                let _518_mpos := var_b1_365_mpos
                let expr_406_mpos := _518_mpos
                /// @src 0:3190:3192  "p1"
                let _519_mpos := var_p1_377_mpos
                let expr_403_mpos := _519_mpos
                /// @src 0:3193:3194  "1"
                let expr_404 := 0x01
                /// @src 0:3190:3200  "p1[1] = b1"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_403_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_404)), expr_406_mpos)
                let _520_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_403_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_404)))
                let expr_407_mpos := _520_mpos
                /// @src 0:3212:3214  "a2"
                let _521_mpos := var_a2_362_mpos
                let expr_412_mpos := _521_mpos
                /// @src 0:3204:3206  "p2"
                let _522_mpos := var_p2_389_mpos
                let expr_409_mpos := _522_mpos
                /// @src 0:3207:3208  "0"
                let expr_410 := 0x00
                /// @src 0:3204:3214  "p2[0] = a2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_409_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_410)), expr_412_mpos)
                let _523_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_409_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_410)))
                let expr_413_mpos := _523_mpos
                /// @src 0:3226:3228  "b2"
                let _524_mpos := var_b2_368_mpos
                let expr_418_mpos := _524_mpos
                /// @src 0:3218:3220  "p2"
                let _525_mpos := var_p2_389_mpos
                let expr_415_mpos := _525_mpos
                /// @src 0:3221:3222  "1"
                let expr_416 := 0x01
                /// @src 0:3218:3228  "p2[1] = b2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_415_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_416)), expr_418_mpos)
                let _526_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_415_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_416)))
                let expr_419_mpos := _526_mpos
                /// @src 0:3247:3249  "p1"
                let _527_mpos := var_p1_377_mpos
                let expr_422_mpos := _527_mpos
                /// @src 0:3251:3253  "p2"
                let _528_mpos := var_p2_389_mpos
                let expr_423_mpos := _528_mpos
                /// @src 0:3239:3254  "pairing(p1, p2)"
                let expr_424 := fun_pairing_356(expr_422_mpos, expr_423_mpos)
                /// @src 0:3232:3254  "return pairing(p1, p2)"
                var__371 := expr_424
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

            /// @ast-id 516
            /// @src 0:3260:3627  "function pairingProd3(..."
            function fun_pairingProd3_516(var_a1_430_mpos, var_a2_433_mpos, var_b1_436_mpos, var_b2_439_mpos, var_c1_442_mpos, var_c2_445_mpos) -> var__448 {
                /// @src 0:3423:3427  "bool"
                let zero_t_bool_529 := zero_value_for_split_t_bool()
                var__448 := zero_t_bool_529

                /// @src 0:3469:3470  "3"
                let expr_459 := 0x03
                /// @src 0:3455:3471  "new G1Point[](3)"
                let _530 := convert_t_rational_3_by_1_to_t_uint256(expr_459)
                let expr_460_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(_530)
                /// @src 0:3433:3471  "G1Point[] memory p1 = new G1Point[](3)"
                let var_p1_454_mpos := expr_460_mpos
                /// @src 0:3511:3512  "3"
                let expr_471 := 0x03
                /// @src 0:3497:3513  "new G2Point[](3)"
                let _531 := convert_t_rational_3_by_1_to_t_uint256(expr_471)
                let expr_472_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(_531)
                /// @src 0:3475:3513  "G2Point[] memory p2 = new G2Point[](3)"
                let var_p2_466_mpos := expr_472_mpos
                /// @src 0:3525:3527  "a1"
                let _532_mpos := var_a1_430_mpos
                let expr_477_mpos := _532_mpos
                /// @src 0:3517:3519  "p1"
                let _533_mpos := var_p1_454_mpos
                let expr_474_mpos := _533_mpos
                /// @src 0:3520:3521  "0"
                let expr_475 := 0x00
                /// @src 0:3517:3527  "p1[0] = a1"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_474_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_475)), expr_477_mpos)
                let _534_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_474_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_475)))
                let expr_478_mpos := _534_mpos
                /// @src 0:3539:3541  "b1"
                let _535_mpos := var_b1_436_mpos
                let expr_483_mpos := _535_mpos
                /// @src 0:3531:3533  "p1"
                let _536_mpos := var_p1_454_mpos
                let expr_480_mpos := _536_mpos
                /// @src 0:3534:3535  "1"
                let expr_481 := 0x01
                /// @src 0:3531:3541  "p1[1] = b1"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_480_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_481)), expr_483_mpos)
                let _537_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_480_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_481)))
                let expr_484_mpos := _537_mpos
                /// @src 0:3553:3555  "c1"
                let _538_mpos := var_c1_442_mpos
                let expr_489_mpos := _538_mpos
                /// @src 0:3545:3547  "p1"
                let _539_mpos := var_p1_454_mpos
                let expr_486_mpos := _539_mpos
                /// @src 0:3548:3549  "2"
                let expr_487 := 0x02
                /// @src 0:3545:3555  "p1[2] = c1"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_486_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_487)), expr_489_mpos)
                let _540_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$5_memory_ptr_$dyn_memory_ptr(expr_486_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_487)))
                let expr_490_mpos := _540_mpos
                /// @src 0:3567:3569  "a2"
                let _541_mpos := var_a2_433_mpos
                let expr_495_mpos := _541_mpos
                /// @src 0:3559:3561  "p2"
                let _542_mpos := var_p2_466_mpos
                let expr_492_mpos := _542_mpos
                /// @src 0:3562:3563  "0"
                let expr_493 := 0x00
                /// @src 0:3559:3569  "p2[0] = a2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_492_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_493)), expr_495_mpos)
                let _543_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_492_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_493)))
                let expr_496_mpos := _543_mpos
                /// @src 0:3581:3583  "b2"
                let _544_mpos := var_b2_439_mpos
                let expr_501_mpos := _544_mpos
                /// @src 0:3573:3575  "p2"
                let _545_mpos := var_p2_466_mpos
                let expr_498_mpos := _545_mpos
                /// @src 0:3576:3577  "1"
                let expr_499 := 0x01
                /// @src 0:3573:3583  "p2[1] = b2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_498_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_499)), expr_501_mpos)
                let _546_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_498_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_499)))
                let expr_502_mpos := _546_mpos
                /// @src 0:3595:3597  "c2"
                let _547_mpos := var_c2_445_mpos
                let expr_507_mpos := _547_mpos
                /// @src 0:3587:3589  "p2"
                let _548_mpos := var_p2_466_mpos
                let expr_504_mpos := _548_mpos
                /// @src 0:3590:3591  "2"
                let expr_505 := 0x02
                /// @src 0:3587:3597  "p2[2] = c2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_504_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_505)), expr_507_mpos)
                let _549_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$14_memory_ptr_$dyn_memory_ptr(expr_504_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_505)))
                let expr_508_mpos := _549_mpos
                /// @src 0:3616:3618  "p1"
                let _550_mpos := var_p1_454_mpos
                let expr_511_mpos := _550_mpos
                /// @src 0:3620:3622  "p2"
                let _551_mpos := var_p2_466_mpos
                let expr_512_mpos := _551_mpos
                /// @src 0:3608:3623  "pairing(p1, p2)"
                let expr_513 := fun_pairing_356(expr_511_mpos, expr_512_mpos)
                /// @src 0:3601:3623  "return pairing(p1, p2)"
                var__448 := expr_513
                leave

            }
            /// @src 0:4069:14233  "contract Test {..."

        }

        data ".metadata" hex"a2646970667358221220f7b28ffcdb885e12e238d943a003c75dc7a5fad12c74ee9ef7f5bf95c76764fc64736f6c634300081b0033"
    }

}


