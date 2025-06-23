/// @use-src 0:"data/verifier.sol"
object "Verifier_1117" {
    code {
        /// @src 0:6234:11039  "contract Verifier {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Verifier_1117()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Verifier_1117_deployed"), datasize("Verifier_1117_deployed"))

        return(_1, datasize("Verifier_1117_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:6234:11039  "contract Verifier {..."
        function constructor_Verifier_1117() {

            /// @src 0:6234:11039  "contract Verifier {..."

        }
        /// @src 0:6234:11039  "contract Verifier {..."

    }
    /// @use-src 0:"data/verifier.sol"
    object "Verifier_1117_deployed" {
        code {
            /// @src 0:6234:11039  "contract Verifier {..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0xf1942cd1
                {
                    // verifyTx(((uint256,uint256),(uint256[2],uint256[2]),(uint256,uint256)),uint256[8])

                    external_fun_verifyTx_1116()
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

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() {
                revert(0, 0)
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

            function revert_error_5e8f644817bc4960744f35c15999b6eff64ae702f94b1c46297cfd4e1aec2421() {
                revert(0, 0)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            // struct Pairing.G1Point
            function abi_decode_t_struct$_G1Point_$6_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0x40) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0x40)

                {
                    // X

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_uint256(add(headStart, offset), end))

                }

                {
                    // Y

                    let offset := 32

                    mstore(add(value, 0x20), abi_decode_t_uint256(add(headStart, offset), end))

                }

            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function array_allocation_size_t_array$_t_uint256_$2_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // uint256[2]
            function abi_decode_available_length_t_array$_t_uint256_$2_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_uint256_$2_memory_ptr(length))
                let dst := array

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_uint256(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // uint256[2]
            function abi_decode_t_array$_t_uint256_$2_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := 0x02
                array := abi_decode_available_length_t_array$_t_uint256_$2_memory_ptr(offset, length, end)
            }

            // struct Pairing.G2Point
            function abi_decode_t_struct$_G2Point_$15_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0x80) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0x40)

                {
                    // X

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_array$_t_uint256_$2_memory_ptr(add(headStart, offset), end))

                }

                {
                    // Y

                    let offset := 64

                    mstore(add(value, 0x20), abi_decode_t_array$_t_uint256_$2_memory_ptr(add(headStart, offset), end))

                }

            }

            // struct Verifier.Proof
            function abi_decode_t_struct$_Proof_$656_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0x0100) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0x60)

                {
                    // a

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_struct$_G1Point_$6_memory_ptr(add(headStart, offset), end))

                }

                {
                    // b

                    let offset := 64

                    mstore(add(value, 0x20), abi_decode_t_struct$_G2Point_$15_memory_ptr(add(headStart, offset), end))

                }

                {
                    // c

                    let offset := 192

                    mstore(add(value, 0x40), abi_decode_t_struct$_G1Point_$6_memory_ptr(add(headStart, offset), end))

                }

            }

            function array_allocation_size_t_array$_t_uint256_$8_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            // uint256[8]
            function abi_decode_available_length_t_array$_t_uint256_$8_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_uint256_$8_memory_ptr(length))
                let dst := array

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_uint256(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // uint256[8]
            function abi_decode_t_array$_t_uint256_$8_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := 0x08
                array := abi_decode_available_length_t_array$_t_uint256_$8_memory_ptr(offset, length, end)
            }

            function abi_decode_tuple_t_struct$_Proof_$656_memory_ptrt_array$_t_uint256_$8_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 512) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_Proof_$656_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 256

                    value1 := abi_decode_t_array$_t_uint256_$8_memory_ptr(add(headStart, offset), dataEnd)
                }

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

            function external_fun_verifyTx_1116() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_struct$_Proof_$656_memory_ptrt_array$_t_uint256_$8_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_verifyTx_1116(param_0, param_1)
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

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8_by_1(value)))
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

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function array_length_t_array$_t_uint256_$8_memory_ptr(value) -> length {

                length := 0x08

            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function memory_array_index_access_t_array$_t_uint256_$8_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$8_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                addr := add(baseRef, offset)
            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

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

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            /// @ast-id 1116
            /// @src 0:10645:11037  "function verifyTx(..."
            function fun_verifyTx_1116(var_proof_1061_mpos, var_input_1065_mpos) -> var_r_1068 {
                /// @src 0:10748:10754  "bool r"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var_r_1068 := zero_t_bool_1

                /// @src 0:10805:10806  "8"
                let expr_1078 := 0x08
                /// @src 0:10794:10807  "new uint[](8)"
                let _2 := convert_t_rational_8_by_1_to_t_uint256(expr_1078)
                let expr_1079_mpos := allocate_and_zero_memory_array_t_array$_t_uint256_$dyn_memory_ptr(_2)
                /// @src 0:10766:10807  "uint[] memory inputValues = new uint[](8)"
                let var_inputValues_1074_mpos := expr_1079_mpos
                /// @src 0:10818:10906  "for(uint i = 0; i < input.length; i++){..."
                for {
                    /// @src 0:10831:10832  "0"
                    let expr_1083 := 0x00
                    /// @src 0:10822:10832  "uint i = 0"
                    let var_i_1082 := convert_t_rational_0_by_1_to_t_uint256(expr_1083)
                    } 1 {
                    /// @src 0:10852:10855  "i++"
                    let _4 := var_i_1082
                    let _3 := increment_wrapping_t_uint256(_4)
                    var_i_1082 := _3
                    let expr_1090 := _4
                }
                {
                    /// @src 0:10834:10835  "i"
                    let _5 := var_i_1082
                    let expr_1085 := _5
                    /// @src 0:10838:10843  "input"
                    let _6_mpos := var_input_1065_mpos
                    let expr_1086_mpos := _6_mpos
                    /// @src 0:10838:10850  "input.length"
                    let expr_1087 := array_length_t_array$_t_uint256_$8_memory_ptr(expr_1086_mpos)
                    /// @src 0:10834:10850  "i < input.length"
                    let expr_1088 := lt(cleanup_t_uint256(expr_1085), cleanup_t_uint256(expr_1087))
                    if iszero(expr_1088) { break }
                    /// @src 0:10887:10892  "input"
                    let _7_mpos := var_input_1065_mpos
                    let expr_1095_mpos := _7_mpos
                    /// @src 0:10893:10894  "i"
                    let _8 := var_i_1082
                    let expr_1096 := _8
                    /// @src 0:10887:10895  "input[i]"
                    let _9 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$8_memory_ptr(expr_1095_mpos, expr_1096))
                    let expr_1097 := _9
                    /// @src 0:10870:10881  "inputValues"
                    let _10_mpos := var_inputValues_1074_mpos
                    let expr_1092_mpos := _10_mpos
                    /// @src 0:10882:10883  "i"
                    let _11 := var_i_1082
                    let expr_1093 := _11
                    /// @src 0:10870:10895  "inputValues[i] = input[i]"
                    let _12 := expr_1097
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1092_mpos, expr_1093), _12)
                    let expr_1098 := expr_1097
                }
                /// @src 0:10926:10937  "inputValues"
                let _13_mpos := var_inputValues_1074_mpos
                let expr_1103_mpos := _13_mpos
                /// @src 0:10939:10944  "proof"
                let _14_mpos := var_proof_1061_mpos
                let expr_1104_mpos := _14_mpos
                /// @src 0:10919:10945  "verify(inputValues, proof)"
                let expr_1105 := fun_verify_1058(expr_1103_mpos, expr_1104_mpos)
                /// @src 0:10949:10950  "0"
                let expr_1106 := 0x00
                /// @src 0:10919:10950  "verify(inputValues, proof) == 0"
                let expr_1107 := eq(cleanup_t_uint256(expr_1105), convert_t_rational_0_by_1_to_t_uint256(expr_1106))
                /// @src 0:10915:11031  "if (verify(inputValues, proof) == 0) {..."
                switch expr_1107
                case 0 {
                    /// @src 0:11015:11020  "false"
                    let expr_1111 := 0x00
                    /// @src 0:11008:11020  "return false"
                    var_r_1068 := expr_1111
                    leave
                    /// @src 0:10915:11031  "if (verify(inputValues, proof) == 0) {..."
                }
                default {
                    /// @src 0:10973:10977  "true"
                    let expr_1108 := 0x01
                    /// @src 0:10966:10977  "return true"
                    var_r_1068 := expr_1108
                    leave
                    /// @src 0:10915:11031  "if (verify(inputValues, proof) == 0) {..."
                }

            }
            /// @src 0:6234:11039  "contract Verifier {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function cleanup_t_rational_21888242871839275222246405745257275088548364400416034343698204186575808495617_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21888242871839275222246405745257275088548364400416034343698204186575808495617_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21888242871839275222246405745257275088548364400416034343698204186575808495617_by_1(value)))
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function array_length_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            /// @ast-id 1058
            /// @src 0:9719:10640  "function verify(uint[] memory input, Proof memory proof) internal view returns (uint) {..."
            function fun_verify_1058(var_input_933_mpos, var_proof_936_mpos) -> var__939 {
                /// @src 0:9799:9803  "uint"
                let zero_t_uint256_15 := zero_value_for_split_t_uint256()
                var__939 := zero_t_uint256_15

                /// @src 0:9844:9921  "21888242871839275222246405745257275088548364400416034343698204186575808495617"
                let expr_943 := 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
                /// @src 0:9815:9921  "uint256 snark_scalar_field = 21888242871839275222246405745257275088548364400416034343698204186575808495617"
                let var_snark_scalar_field_942 := convert_t_rational_21888242871839275222246405745257275088548364400416034343698204186575808495617_by_1_to_t_uint256(expr_943)
                /// @src 0:9956:9970  "verifyingKey()"
                let expr_949_mpos := fun_verifyingKey_930()
                /// @src 0:9931:9970  "VerifyingKey memory vk = verifyingKey()"
                let var_vk_947_mpos := expr_949_mpos
                /// @src 0:9988:9993  "input"
                let _16_mpos := var_input_933_mpos
                let expr_952_mpos := _16_mpos
                /// @src 0:9988:10000  "input.length"
                let expr_953 := array_length_t_array$_t_uint256_$dyn_memory_ptr(expr_952_mpos)
                /// @src 0:10003:10004  "1"
                let expr_954 := 0x01
                /// @src 0:9988:10004  "input.length + 1"
                let expr_955 := checked_add_t_uint256(expr_953, convert_t_rational_1_by_1_to_t_uint256(expr_954))

                /// @src 0:10008:10010  "vk"
                let _17_mpos := var_vk_947_mpos
                let expr_956_mpos := _17_mpos
                /// @src 0:10008:10020  "vk.gamma_abc"
                let _18 := add(expr_956_mpos, 128)
                let _19_mpos := mload(_18)
                let expr_957_mpos := _19_mpos
                /// @src 0:10008:10027  "vk.gamma_abc.length"
                let expr_958 := array_length_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_957_mpos)
                /// @src 0:9988:10027  "input.length + 1 == vk.gamma_abc.length"
                let expr_959 := eq(cleanup_t_uint256(expr_955), cleanup_t_uint256(expr_958))
                /// @src 0:9980:10028  "require(input.length + 1 == vk.gamma_abc.length)"
                require_helper(expr_959)
                /// @src 0:10115:10122  "Pairing"
                let expr_967_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:10131:10132  "0"
                let expr_969 := 0x00
                /// @src 0:10134:10135  "0"
                let expr_970 := 0x00
                /// @src 0:10115:10136  "Pairing.G1Point(0, 0)"
                let expr_971_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                let _20 := convert_t_rational_0_by_1_to_t_uint256(expr_969)
                write_to_memory_t_uint256(add(expr_971_mpos, 0), _20)
                let _21 := convert_t_rational_0_by_1_to_t_uint256(expr_970)
                write_to_memory_t_uint256(add(expr_971_mpos, 32), _21)
                /// @src 0:10085:10136  "Pairing.G1Point memory vk_x = Pairing.G1Point(0, 0)"
                let var_vk_x_966_mpos := expr_971_mpos
                /// @src 0:10146:10343  "for (uint i = 0; i < input.length; i++) {..."
                for {
                    /// @src 0:10160:10161  "0"
                    let expr_975 := 0x00
                    /// @src 0:10151:10161  "uint i = 0"
                    let var_i_974 := convert_t_rational_0_by_1_to_t_uint256(expr_975)
                    } 1 {
                    /// @src 0:10181:10184  "i++"
                    let _23 := var_i_974
                    let _22 := increment_wrapping_t_uint256(_23)
                    var_i_974 := _22
                    let expr_982 := _23
                }
                {
                    /// @src 0:10163:10164  "i"
                    let _24 := var_i_974
                    let expr_977 := _24
                    /// @src 0:10167:10172  "input"
                    let _25_mpos := var_input_933_mpos
                    let expr_978_mpos := _25_mpos
                    /// @src 0:10167:10179  "input.length"
                    let expr_979 := array_length_t_array$_t_uint256_$dyn_memory_ptr(expr_978_mpos)
                    /// @src 0:10163:10179  "i < input.length"
                    let expr_980 := lt(cleanup_t_uint256(expr_977), cleanup_t_uint256(expr_979))
                    if iszero(expr_980) { break }
                    /// @src 0:10208:10213  "input"
                    let _26_mpos := var_input_933_mpos
                    let expr_985_mpos := _26_mpos
                    /// @src 0:10214:10215  "i"
                    let _27 := var_i_974
                    let expr_986 := _27
                    /// @src 0:10208:10216  "input[i]"
                    let _28 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_985_mpos, expr_986))
                    let expr_987 := _28
                    /// @src 0:10219:10237  "snark_scalar_field"
                    let _29 := var_snark_scalar_field_942
                    let expr_988 := _29
                    /// @src 0:10208:10237  "input[i] < snark_scalar_field"
                    let expr_989 := lt(cleanup_t_uint256(expr_987), cleanup_t_uint256(expr_988))
                    /// @src 0:10200:10238  "require(input[i] < snark_scalar_field)"
                    require_helper(expr_989)
                    /// @src 0:10259:10266  "Pairing"
                    let expr_993_address := linkersymbol("data/verifier.sol:Pairing")
                    /// @src 0:10276:10280  "vk_x"
                    let _30_mpos := var_vk_x_966_mpos
                    let expr_995_mpos := _30_mpos
                    /// @src 0:10282:10289  "Pairing"
                    let expr_996_address := linkersymbol("data/verifier.sol:Pairing")
                    /// @src 0:10301:10303  "vk"
                    let _31_mpos := var_vk_947_mpos
                    let expr_998_mpos := _31_mpos
                    /// @src 0:10301:10313  "vk.gamma_abc"
                    let _32 := add(expr_998_mpos, 128)
                    let _33_mpos := mload(_32)
                    let expr_999_mpos := _33_mpos
                    /// @src 0:10314:10315  "i"
                    let _34 := var_i_974
                    let expr_1000 := _34
                    /// @src 0:10318:10319  "1"
                    let expr_1001 := 0x01
                    /// @src 0:10314:10319  "i + 1"
                    let expr_1002 := checked_add_t_uint256(expr_1000, convert_t_rational_1_by_1_to_t_uint256(expr_1001))

                    /// @src 0:10301:10320  "vk.gamma_abc[i + 1]"
                    let _35_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_999_mpos, expr_1002))
                    let expr_1003_mpos := _35_mpos
                    /// @src 0:10322:10327  "input"
                    let _36_mpos := var_input_933_mpos
                    let expr_1004_mpos := _36_mpos
                    /// @src 0:10328:10329  "i"
                    let _37 := var_i_974
                    let expr_1005 := _37
                    /// @src 0:10322:10330  "input[i]"
                    let _38 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1004_mpos, expr_1005))
                    let expr_1006 := _38
                    /// @src 0:10282:10331  "Pairing.scalar_mul(vk.gamma_abc[i + 1], input[i])"
                    let expr_1007_mpos := fun_scalar_mul_192(expr_1003_mpos, expr_1006)
                    /// @src 0:10259:10332  "Pairing.addition(vk_x, Pairing.scalar_mul(vk.gamma_abc[i + 1], input[i]))"
                    let expr_1008_mpos := fun_addition_144(expr_995_mpos, expr_1007_mpos)
                    /// @src 0:10252:10332  "vk_x = Pairing.addition(vk_x, Pairing.scalar_mul(vk.gamma_abc[i + 1], input[i]))"
                    var_vk_x_966_mpos := expr_1008_mpos
                    let _39_mpos := var_vk_x_966_mpos
                    let expr_1009_mpos := _39_mpos
                }
                /// @src 0:10359:10366  "Pairing"
                let expr_1014_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:10376:10380  "vk_x"
                let _40_mpos := var_vk_x_966_mpos
                let expr_1016_mpos := _40_mpos
                /// @src 0:10382:10384  "vk"
                let _41_mpos := var_vk_947_mpos
                let expr_1017_mpos := _41_mpos
                /// @src 0:10382:10394  "vk.gamma_abc"
                let _42 := add(expr_1017_mpos, 128)
                let _43_mpos := mload(_42)
                let expr_1018_mpos := _43_mpos
                /// @src 0:10395:10396  "0"
                let expr_1019 := 0x00
                /// @src 0:10382:10397  "vk.gamma_abc[0]"
                let _44_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_1018_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1019)))
                let expr_1020_mpos := _44_mpos
                /// @src 0:10359:10398  "Pairing.addition(vk_x, vk.gamma_abc[0])"
                let expr_1021_mpos := fun_addition_144(expr_1016_mpos, expr_1020_mpos)
                /// @src 0:10352:10398  "vk_x = Pairing.addition(vk_x, vk.gamma_abc[0])"
                var_vk_x_966_mpos := expr_1021_mpos
                let _45_mpos := var_vk_x_966_mpos
                let expr_1022_mpos := _45_mpos
                /// @src 0:10412:10419  "Pairing"
                let expr_1024_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:10447:10452  "proof"
                let _46_mpos := var_proof_936_mpos
                let expr_1026_mpos := _46_mpos
                /// @src 0:10447:10454  "proof.a"
                let _47 := add(expr_1026_mpos, 0)
                let _48_mpos := mload(_47)
                let expr_1027_mpos := _48_mpos
                /// @src 0:10456:10461  "proof"
                let _49_mpos := var_proof_936_mpos
                let expr_1028_mpos := _49_mpos
                /// @src 0:10456:10463  "proof.b"
                let _50 := add(expr_1028_mpos, 32)
                let _51_mpos := mload(_50)
                let expr_1029_mpos := _51_mpos
                /// @src 0:10478:10485  "Pairing"
                let expr_1030_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:10493:10497  "vk_x"
                let _52_mpos := var_vk_x_966_mpos
                let expr_1032_mpos := _52_mpos
                /// @src 0:10478:10498  "Pairing.negate(vk_x)"
                let expr_1033_mpos := fun_negate_87(expr_1032_mpos)
                /// @src 0:10500:10502  "vk"
                let _53_mpos := var_vk_947_mpos
                let expr_1034_mpos := _53_mpos
                /// @src 0:10500:10508  "vk.gamma"
                let _54 := add(expr_1034_mpos, 64)
                let _55_mpos := mload(_54)
                let expr_1035_mpos := _55_mpos
                /// @src 0:10523:10530  "Pairing"
                let expr_1036_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:10538:10543  "proof"
                let _56_mpos := var_proof_936_mpos
                let expr_1038_mpos := _56_mpos
                /// @src 0:10538:10545  "proof.c"
                let _57 := add(expr_1038_mpos, 64)
                let _58_mpos := mload(_57)
                let expr_1039_mpos := _58_mpos
                /// @src 0:10523:10546  "Pairing.negate(proof.c)"
                let expr_1040_mpos := fun_negate_87(expr_1039_mpos)
                /// @src 0:10548:10550  "vk"
                let _59_mpos := var_vk_947_mpos
                let expr_1041_mpos := _59_mpos
                /// @src 0:10548:10556  "vk.delta"
                let _60 := add(expr_1041_mpos, 96)
                let _61_mpos := mload(_60)
                let expr_1042_mpos := _61_mpos
                /// @src 0:10571:10578  "Pairing"
                let expr_1043_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:10586:10588  "vk"
                let _62_mpos := var_vk_947_mpos
                let expr_1045_mpos := _62_mpos
                /// @src 0:10586:10594  "vk.alpha"
                let _63 := add(expr_1045_mpos, 0)
                let _64_mpos := mload(_63)
                let expr_1046_mpos := _64_mpos
                /// @src 0:10571:10595  "Pairing.negate(vk.alpha)"
                let expr_1047_mpos := fun_negate_87(expr_1046_mpos)
                /// @src 0:10597:10599  "vk"
                let _65_mpos := var_vk_947_mpos
                let expr_1048_mpos := _65_mpos
                /// @src 0:10597:10604  "vk.beta"
                let _66 := add(expr_1048_mpos, 32)
                let _67_mpos := mload(_66)
                let expr_1049_mpos := _67_mpos
                /// @src 0:10412:10605  "Pairing.pairingProd4(..."
                let expr_1050 := fun_pairingProd4_626(expr_1027_mpos, expr_1029_mpos, expr_1033_mpos, expr_1035_mpos, expr_1040_mpos, expr_1042_mpos, expr_1047_mpos, expr_1049_mpos)
                /// @src 0:10411:10605  "!Pairing.pairingProd4(..."
                let expr_1051 := cleanup_t_bool(iszero(expr_1050))
                /// @src 0:10408:10615  "if(!Pairing.pairingProd4(..."
                if expr_1051 {
                    /// @src 0:10614:10615  "1"
                    let expr_1052 := 0x01
                    /// @src 0:10607:10615  "return 1"
                    var__939 := convert_t_rational_1_by_1_to_t_uint256(expr_1052)
                    leave
                    /// @src 0:10408:10615  "if(!Pairing.pairingProd4(..."
                }
                /// @src 0:10632:10633  "0"
                let expr_1055 := 0x00
                /// @src 0:10625:10633  "return 0"
                var__939 := convert_t_rational_0_by_1_to_t_uint256(expr_1055)
                leave

            }
            /// @src 0:6234:11039  "contract Verifier {..."

            function allocate_memory_struct_t_struct$_VerifyingKey_$646_memory_ptr() -> memPtr {
                memPtr := allocate_memory(160)
            }

            function allocate_memory_struct_t_struct$_G1Point_$6_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function zero_value_for_t_uint256() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_G1Point_$6_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_G1Point_$6_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_G1Point_$6_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_G1Point_$6_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_G2Point_$15_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
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

            function allocate_and_zero_memory_struct_t_struct$_G2Point_$15_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_G2Point_$15_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_array$_t_uint256_$2_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_array$_t_uint256_$2_memory_ptr())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_G2Point_$15_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_G2Point_$15_memory_ptr()
            }

            function zero_value_for_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            function allocate_and_zero_memory_struct_t_struct$_VerifyingKey_$646_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_VerifyingKey_$646_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_struct$_G1Point_$6_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G2Point_$15_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G2Point_$15_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_G2Point_$15_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_VerifyingKey_$646_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_VerifyingKey_$646_memory_ptr()
            }

            function cleanup_t_rational_13614720590515686579764502351657994974547226139227970174242117071351277182626_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_13614720590515686579764502351657994974547226139227970174242117071351277182626_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_13614720590515686579764502351657994974547226139227970174242117071351277182626_by_1(value)))
            }

            function cleanup_t_rational_20987780319306992246334806367534804087715327380582819115505815933753647720246_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20987780319306992246334806367534804087715327380582819115505815933753647720246_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_20987780319306992246334806367534804087715327380582819115505815933753647720246_by_1(value)))
            }

            function cleanup_t_rational_12954338654677597450105832180215258278948793950156831640955204103682549072153_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_12954338654677597450105832180215258278948793950156831640955204103682549072153_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_12954338654677597450105832180215258278948793950156831640955204103682549072153_by_1(value)))
            }

            function cleanup_t_rational_19781809559462069081766385117315486170335190154358561243000819999236843782651_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_19781809559462069081766385117315486170335190154358561243000819999236843782651_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_19781809559462069081766385117315486170335190154358561243000819999236843782651_by_1(value)))
            }

            function cleanup_t_rational_3584791877892816554264621761399848493704660910505450970849027458125542133552_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3584791877892816554264621761399848493704660910505450970849027458125542133552_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3584791877892816554264621761399848493704660910505450970849027458125542133552_by_1(value)))
            }

            function cleanup_t_rational_12774355533701673505882088049014898872963292220808397616595789102372567760297_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_12774355533701673505882088049014898872963292220808397616595789102372567760297_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_12774355533701673505882088049014898872963292220808397616595789102372567760297_by_1(value)))
            }

            function allocate_memory_struct_t_struct$_G2Point_$15_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function write_to_memory_t_array$_t_uint256_$2_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function cleanup_t_rational_15456378805327610767040680342562171892900147889945833833633290411572178439490_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15456378805327610767040680342562171892900147889945833833633290411572178439490_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_15456378805327610767040680342562171892900147889945833833633290411572178439490_by_1(value)))
            }

            function cleanup_t_rational_7280926385020079393756646672364259276322979369569674503044044298532469108879_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_7280926385020079393756646672364259276322979369569674503044044298532469108879_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_7280926385020079393756646672364259276322979369569674503044044298532469108879_by_1(value)))
            }

            function cleanup_t_rational_11193340991555789143637934501766620955035691333477856369671425361299216462470_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_11193340991555789143637934501766620955035691333477856369671425361299216462470_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_11193340991555789143637934501766620955035691333477856369671425361299216462470_by_1(value)))
            }

            function cleanup_t_rational_8375830670531486305455833644239918555183917701703589619051661554039721736364_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8375830670531486305455833644239918555183917701703589619051661554039721736364_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8375830670531486305455833644239918555183917701703589619051661554039721736364_by_1(value)))
            }

            function cleanup_t_rational_8920599794412088420877972912449339507044571489844799300814114543924633321931_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8920599794412088420877972912449339507044571489844799300814114543924633321931_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8920599794412088420877972912449339507044571489844799300814114543924633321931_by_1(value)))
            }

            function cleanup_t_rational_17057681880342368816444733732581179346494043329109363519618006210465235155465_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_17057681880342368816444733732581179346494043329109363519618006210465235155465_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_17057681880342368816444733732581179346494043329109363519618006210465235155465_by_1(value)))
            }

            function cleanup_t_rational_10560297635847051872724804017111659308547177858380514622055503960992017316260_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10560297635847051872724804017111659308547177858380514622055503960992017316260_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10560297635847051872724804017111659308547177858380514622055503960992017316260_by_1(value)))
            }

            function cleanup_t_rational_9415004396629116217579113311546673857415037710822267844001229771581924053394_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9415004396629116217579113311546673857415037710822267844001229771581924053394_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9415004396629116217579113311546673857415037710822267844001229771581924053394_by_1(value)))
            }

            function cleanup_t_rational_9_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9_by_1(value)))
            }

            function array_allocation_size_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_complex_memory_array_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(dataStart, dataSizeInBytes) {
                for {let i := 0} lt(i, dataSizeInBytes) { i := add(i, 32) } {
                    mstore(add(dataStart, i), zero_value_for_t_struct$_G1Point_$6_memory_ptr())
                }
            }

            function allocate_and_zero_memory_array_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_complex_memory_array_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(dataStart, dataSize)
            }

            function cleanup_t_rational_4137710815108725201692837106414522297539130974277944347644646056773849609766_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4137710815108725201692837106414522297539130974277944347644646056773849609766_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4137710815108725201692837106414522297539130974277944347644646056773849609766_by_1(value)))
            }

            function cleanup_t_rational_14246908398451772023598352212510471015501650368949902882637253741262304402613_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_14246908398451772023598352212510471015501650368949902882637253741262304402613_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_14246908398451772023598352212510471015501650368949902882637253741262304402613_by_1(value)))
            }

            function cleanup_t_rational_6515896448712465247002907620641661864707469838204208715685503900171254041560_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6515896448712465247002907620641661864707469838204208715685503900171254041560_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6515896448712465247002907620641661864707469838204208715685503900171254041560_by_1(value)))
            }

            function cleanup_t_rational_5243469736940107547067213495516408157532280821083995922302225121649729620170_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5243469736940107547067213495516408157532280821083995922302225121649729620170_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5243469736940107547067213495516408157532280821083995922302225121649729620170_by_1(value)))
            }

            function cleanup_t_rational_9086365295100314412497236785964476028087689894102140994139513575128414358463_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9086365295100314412497236785964476028087689894102140994139513575128414358463_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9086365295100314412497236785964476028087689894102140994139513575128414358463_by_1(value)))
            }

            function cleanup_t_rational_11831345067083678245257719590230784703340916949555365756083401885870974083697_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_11831345067083678245257719590230784703340916949555365756083401885870974083697_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_11831345067083678245257719590230784703340916949555365756083401885870974083697_by_1(value)))
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function cleanup_t_rational_16803634771839015396192505393986618124851704780968488117575462127808954490855_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16803634771839015396192505393986618124851704780968488117575462127808954490855_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16803634771839015396192505393986618124851704780968488117575462127808954490855_by_1(value)))
            }

            function cleanup_t_rational_18399883106232871566756720823159589364601453933544194731456659509765400695234_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18399883106232871566756720823159589364601453933544194731456659509765400695234_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18399883106232871566756720823159589364601453933544194731456659509765400695234_by_1(value)))
            }

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            function cleanup_t_rational_15828618907159650424847957245498544897056264850269496449548643065281052267536_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15828618907159650424847957245498544897056264850269496449548643065281052267536_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_15828618907159650424847957245498544897056264850269496449548643065281052267536_by_1(value)))
            }

            function cleanup_t_rational_7484789513463319095215726495463686665311900167194167124245317793297547400008_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_7484789513463319095215726495463686665311900167194167124245317793297547400008_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_7484789513463319095215726495463686665311900167194167124245317793297547400008_by_1(value)))
            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function cleanup_t_rational_3654665506934128061245974440974870664689962968279887640926174809060303731341_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3654665506934128061245974440974870664689962968279887640926174809060303731341_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3654665506934128061245974440974870664689962968279887640926174809060303731341_by_1(value)))
            }

            function cleanup_t_rational_6852084616519687258883543528420101334536982110116855914965005094916912350279_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6852084616519687258883543528420101334536982110116855914965005094916912350279_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6852084616519687258883543528420101334536982110116855914965005094916912350279_by_1(value)))
            }

            function cleanup_t_rational_5_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5_by_1(value)))
            }

            function cleanup_t_rational_2720773694854954715110186897035487795593569151175993151086315372016689379769_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2720773694854954715110186897035487795593569151175993151086315372016689379769_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2720773694854954715110186897035487795593569151175993151086315372016689379769_by_1(value)))
            }

            function cleanup_t_rational_5828516935324281979442574432592493399137121454422649795148139362507158058741_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5828516935324281979442574432592493399137121454422649795148139362507158058741_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5828516935324281979442574432592493399137121454422649795148139362507158058741_by_1(value)))
            }

            function cleanup_t_rational_6_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6_by_1(value)))
            }

            function cleanup_t_rational_2593556939185312751863307964708924173441770140659481692717068693341547138249_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2593556939185312751863307964708924173441770140659481692717068693341547138249_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2593556939185312751863307964708924173441770140659481692717068693341547138249_by_1(value)))
            }

            function cleanup_t_rational_20640002062867791339843104232936745930595347523208926084478416425973018127131_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20640002062867791339843104232936745930595347523208926084478416425973018127131_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_20640002062867791339843104232936745930595347523208926084478416425973018127131_by_1(value)))
            }

            function cleanup_t_rational_7_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_7_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_7_by_1(value)))
            }

            function cleanup_t_rational_20103313177545401017872997021325450544534490847141531247353624717880377584269_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20103313177545401017872997021325450544534490847141531247353624717880377584269_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_20103313177545401017872997021325450544534490847141531247353624717880377584269_by_1(value)))
            }

            function cleanup_t_rational_6280776129799211134492840135238215809588321258655246632323919596115246925583_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6280776129799211134492840135238215809588321258655246632323919596115246925583_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6280776129799211134492840135238215809588321258655246632323919596115246925583_by_1(value)))
            }

            /// @ast-id 930
            /// @src 0:6581:9714  "function verifyingKey() pure internal returns (VerifyingKey memory vk) {..."
            function fun_verifyingKey_930() -> var_vk_660_mpos {
                /// @src 0:6628:6650  "VerifyingKey memory vk"
                let zero_t_struct$_VerifyingKey_$646_memory_ptr_68_mpos := zero_value_for_split_t_struct$_VerifyingKey_$646_memory_ptr()
                var_vk_660_mpos := zero_t_struct$_VerifyingKey_$646_memory_ptr_68_mpos

                /// @src 0:6673:6680  "Pairing"
                let expr_665_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:6697:6763  "0x1e19a8a58ad52243374aeded373b7e89656ea339b9fa8ace98dd5fb221885ea2"
                let expr_669 := 0x1e19a8a58ad52243374aeded373b7e89656ea339b9fa8ace98dd5fb221885ea2
                /// @src 0:6689:6764  "uint256(0x1e19a8a58ad52243374aeded373b7e89656ea339b9fa8ace98dd5fb221885ea2)"
                let expr_670 := convert_t_rational_13614720590515686579764502351657994974547226139227970174242117071351277182626_by_1_to_t_uint256(expr_669)
                /// @src 0:6774:6840  "0x2e66a9a67f1a9060a51da039c91c3402d1f46b71bbf10c7348ac4f13c3906736"
                let expr_673 := 0x2e66a9a67f1a9060a51da039c91c3402d1f46b71bbf10c7348ac4f13c3906736
                /// @src 0:6766:6841  "uint256(0x2e66a9a67f1a9060a51da039c91c3402d1f46b71bbf10c7348ac4f13c3906736)"
                let expr_674 := convert_t_rational_20987780319306992246334806367534804087715327380582819115505815933753647720246_by_1_to_t_uint256(expr_673)
                /// @src 0:6673:6842  "Pairing.G1Point(uint256(0x1e19a8a58ad52243374aeded373b7e89656ea339b9fa8ace98dd5fb221885ea2), uint256(0x2e66a9a67f1a9060a51da039c91c3402d1f46b71bbf10c7348ac4f13c3906736))"
                let expr_675_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_675_mpos, 0), expr_670)
                write_to_memory_t_uint256(add(expr_675_mpos, 32), expr_674)
                /// @src 0:6662:6664  "vk"
                let _69_mpos := var_vk_660_mpos
                let expr_662_mpos := _69_mpos
                /// @src 0:6662:6670  "vk.alpha"
                let _70 := add(expr_662_mpos, 0)
                /// @src 0:6662:6842  "vk.alpha = Pairing.G1Point(uint256(0x1e19a8a58ad52243374aeded373b7e89656ea339b9fa8ace98dd5fb221885ea2), uint256(0x2e66a9a67f1a9060a51da039c91c3402d1f46b71bbf10c7348ac4f13c3906736))"
                mstore(_70, expr_675_mpos)
                let _71_mpos := mload(_70)
                let expr_676_mpos := _71_mpos
                /// @src 0:6862:6869  "Pairing"
                let expr_681_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:6878:7032  "[uint256(0x1ca3e556290187c64a1057061f419a078dc71353f6af1066c03d7e1448bbc119), uint256(0x2bbc1b80e59743b489ec811b4ebf30a1ff540c2c37ced63d360b94f92f0a41fb)]"
                let expr_691_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:6887:6953  "0x1ca3e556290187c64a1057061f419a078dc71353f6af1066c03d7e1448bbc119"
                let expr_685 := 0x1ca3e556290187c64a1057061f419a078dc71353f6af1066c03d7e1448bbc119
                /// @src 0:6879:6954  "uint256(0x1ca3e556290187c64a1057061f419a078dc71353f6af1066c03d7e1448bbc119)"
                let expr_686 := convert_t_rational_12954338654677597450105832180215258278948793950156831640955204103682549072153_by_1_to_t_uint256(expr_685)
                /// @src 0:6878:7032  "[uint256(0x1ca3e556290187c64a1057061f419a078dc71353f6af1066c03d7e1448bbc119), uint256(0x2bbc1b80e59743b489ec811b4ebf30a1ff540c2c37ced63d360b94f92f0a41fb)]"
                write_to_memory_t_uint256(add(expr_691_mpos, 0), expr_686)
                /// @src 0:6964:7030  "0x2bbc1b80e59743b489ec811b4ebf30a1ff540c2c37ced63d360b94f92f0a41fb"
                let expr_689 := 0x2bbc1b80e59743b489ec811b4ebf30a1ff540c2c37ced63d360b94f92f0a41fb
                /// @src 0:6956:7031  "uint256(0x2bbc1b80e59743b489ec811b4ebf30a1ff540c2c37ced63d360b94f92f0a41fb)"
                let expr_690 := convert_t_rational_19781809559462069081766385117315486170335190154358561243000819999236843782651_by_1_to_t_uint256(expr_689)
                /// @src 0:6878:7032  "[uint256(0x1ca3e556290187c64a1057061f419a078dc71353f6af1066c03d7e1448bbc119), uint256(0x2bbc1b80e59743b489ec811b4ebf30a1ff540c2c37ced63d360b94f92f0a41fb)]"
                write_to_memory_t_uint256(add(expr_691_mpos, 32), expr_690)
                /// @src 0:7034:7188  "[uint256(0x07eceb98d2fb10fa7363b45f51aa3d3ef3d511b482790645039a2562e2070f30), uint256(0x1c3e076d2aaf914abd6a49b72c4205669d3d1cbe4a4bf97b9ee49ac0fbbdbda9)]"
                let expr_700_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7043:7109  "0x07eceb98d2fb10fa7363b45f51aa3d3ef3d511b482790645039a2562e2070f30"
                let expr_694 := 0x07eceb98d2fb10fa7363b45f51aa3d3ef3d511b482790645039a2562e2070f30
                /// @src 0:7035:7110  "uint256(0x07eceb98d2fb10fa7363b45f51aa3d3ef3d511b482790645039a2562e2070f30)"
                let expr_695 := convert_t_rational_3584791877892816554264621761399848493704660910505450970849027458125542133552_by_1_to_t_uint256(expr_694)
                /// @src 0:7034:7188  "[uint256(0x07eceb98d2fb10fa7363b45f51aa3d3ef3d511b482790645039a2562e2070f30), uint256(0x1c3e076d2aaf914abd6a49b72c4205669d3d1cbe4a4bf97b9ee49ac0fbbdbda9)]"
                write_to_memory_t_uint256(add(expr_700_mpos, 0), expr_695)
                /// @src 0:7120:7186  "0x1c3e076d2aaf914abd6a49b72c4205669d3d1cbe4a4bf97b9ee49ac0fbbdbda9"
                let expr_698 := 0x1c3e076d2aaf914abd6a49b72c4205669d3d1cbe4a4bf97b9ee49ac0fbbdbda9
                /// @src 0:7112:7187  "uint256(0x1c3e076d2aaf914abd6a49b72c4205669d3d1cbe4a4bf97b9ee49ac0fbbdbda9)"
                let expr_699 := convert_t_rational_12774355533701673505882088049014898872963292220808397616595789102372567760297_by_1_to_t_uint256(expr_698)
                /// @src 0:7034:7188  "[uint256(0x07eceb98d2fb10fa7363b45f51aa3d3ef3d511b482790645039a2562e2070f30), uint256(0x1c3e076d2aaf914abd6a49b72c4205669d3d1cbe4a4bf97b9ee49ac0fbbdbda9)]"
                write_to_memory_t_uint256(add(expr_700_mpos, 32), expr_699)
                /// @src 0:6862:7189  "Pairing.G2Point([uint256(0x1ca3e556290187c64a1057061f419a078dc71353f6af1066c03d7e1448bbc119), uint256(0x2bbc1b80e59743b489ec811b4ebf30a1ff540c2c37ced63d360b94f92f0a41fb)], [uint256(0x07eceb98d2fb10fa7363b45f51aa3d3ef3d511b482790645039a2562e2070f30), uint256(0x1c3e076d2aaf914abd6a49b72c4205669d3d1cbe4a4bf97b9ee49ac0fbbdbda9)])"
                let expr_701_mpos := allocate_memory_struct_t_struct$_G2Point_$15_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_701_mpos, 0), expr_691_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_701_mpos, 32), expr_700_mpos)
                /// @src 0:6852:6854  "vk"
                let _72_mpos := var_vk_660_mpos
                let expr_678_mpos := _72_mpos
                /// @src 0:6852:6859  "vk.beta"
                let _73 := add(expr_678_mpos, 32)
                /// @src 0:6852:7189  "vk.beta = Pairing.G2Point([uint256(0x1ca3e556290187c64a1057061f419a078dc71353f6af1066c03d7e1448bbc119), uint256(0x2bbc1b80e59743b489ec811b4ebf30a1ff540c2c37ced63d360b94f92f0a41fb)], [uint256(0x07eceb98d2fb10fa7363b45f51aa3d3ef3d511b482790645039a2562e2070f30), uint256(0x1c3e076d2aaf914abd6a49b72c4205669d3d1cbe4a4bf97b9ee49ac0fbbdbda9)])"
                mstore(_73, expr_701_mpos)
                let _74_mpos := mload(_73)
                let expr_702_mpos := _74_mpos
                /// @src 0:7210:7217  "Pairing"
                let expr_707_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:7226:7380  "[uint256(0x222c0019521d3e52881431be17cacaf8a7379398dd0833f60a2ac45f1c3fcd42), uint256(0x1018dbb94cd920bd55af4e2b12a9f740c6b38748a163b5dbd37c5ef6cf74708f)]"
                let expr_717_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7235:7301  "0x222c0019521d3e52881431be17cacaf8a7379398dd0833f60a2ac45f1c3fcd42"
                let expr_711 := 0x222c0019521d3e52881431be17cacaf8a7379398dd0833f60a2ac45f1c3fcd42
                /// @src 0:7227:7302  "uint256(0x222c0019521d3e52881431be17cacaf8a7379398dd0833f60a2ac45f1c3fcd42)"
                let expr_712 := convert_t_rational_15456378805327610767040680342562171892900147889945833833633290411572178439490_by_1_to_t_uint256(expr_711)
                /// @src 0:7226:7380  "[uint256(0x222c0019521d3e52881431be17cacaf8a7379398dd0833f60a2ac45f1c3fcd42), uint256(0x1018dbb94cd920bd55af4e2b12a9f740c6b38748a163b5dbd37c5ef6cf74708f)]"
                write_to_memory_t_uint256(add(expr_717_mpos, 0), expr_712)
                /// @src 0:7312:7378  "0x1018dbb94cd920bd55af4e2b12a9f740c6b38748a163b5dbd37c5ef6cf74708f"
                let expr_715 := 0x1018dbb94cd920bd55af4e2b12a9f740c6b38748a163b5dbd37c5ef6cf74708f
                /// @src 0:7304:7379  "uint256(0x1018dbb94cd920bd55af4e2b12a9f740c6b38748a163b5dbd37c5ef6cf74708f)"
                let expr_716 := convert_t_rational_7280926385020079393756646672364259276322979369569674503044044298532469108879_by_1_to_t_uint256(expr_715)
                /// @src 0:7226:7380  "[uint256(0x222c0019521d3e52881431be17cacaf8a7379398dd0833f60a2ac45f1c3fcd42), uint256(0x1018dbb94cd920bd55af4e2b12a9f740c6b38748a163b5dbd37c5ef6cf74708f)]"
                write_to_memory_t_uint256(add(expr_717_mpos, 32), expr_716)
                /// @src 0:7382:7536  "[uint256(0x18bf34dc86b549a92f316f7a32070a3ce45a0f38fa45dda1162c4b6498baf286), uint256(0x12848d5a670b6102d5bd45d2b8250d50361001ea335ff6a1405a52504c22b8ac)]"
                let expr_726_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7391:7457  "0x18bf34dc86b549a92f316f7a32070a3ce45a0f38fa45dda1162c4b6498baf286"
                let expr_720 := 0x18bf34dc86b549a92f316f7a32070a3ce45a0f38fa45dda1162c4b6498baf286
                /// @src 0:7383:7458  "uint256(0x18bf34dc86b549a92f316f7a32070a3ce45a0f38fa45dda1162c4b6498baf286)"
                let expr_721 := convert_t_rational_11193340991555789143637934501766620955035691333477856369671425361299216462470_by_1_to_t_uint256(expr_720)
                /// @src 0:7382:7536  "[uint256(0x18bf34dc86b549a92f316f7a32070a3ce45a0f38fa45dda1162c4b6498baf286), uint256(0x12848d5a670b6102d5bd45d2b8250d50361001ea335ff6a1405a52504c22b8ac)]"
                write_to_memory_t_uint256(add(expr_726_mpos, 0), expr_721)
                /// @src 0:7468:7534  "0x12848d5a670b6102d5bd45d2b8250d50361001ea335ff6a1405a52504c22b8ac"
                let expr_724 := 0x12848d5a670b6102d5bd45d2b8250d50361001ea335ff6a1405a52504c22b8ac
                /// @src 0:7460:7535  "uint256(0x12848d5a670b6102d5bd45d2b8250d50361001ea335ff6a1405a52504c22b8ac)"
                let expr_725 := convert_t_rational_8375830670531486305455833644239918555183917701703589619051661554039721736364_by_1_to_t_uint256(expr_724)
                /// @src 0:7382:7536  "[uint256(0x18bf34dc86b549a92f316f7a32070a3ce45a0f38fa45dda1162c4b6498baf286), uint256(0x12848d5a670b6102d5bd45d2b8250d50361001ea335ff6a1405a52504c22b8ac)]"
                write_to_memory_t_uint256(add(expr_726_mpos, 32), expr_725)
                /// @src 0:7210:7537  "Pairing.G2Point([uint256(0x222c0019521d3e52881431be17cacaf8a7379398dd0833f60a2ac45f1c3fcd42), uint256(0x1018dbb94cd920bd55af4e2b12a9f740c6b38748a163b5dbd37c5ef6cf74708f)], [uint256(0x18bf34dc86b549a92f316f7a32070a3ce45a0f38fa45dda1162c4b6498baf286), uint256(0x12848d5a670b6102d5bd45d2b8250d50361001ea335ff6a1405a52504c22b8ac)])"
                let expr_727_mpos := allocate_memory_struct_t_struct$_G2Point_$15_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_727_mpos, 0), expr_717_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_727_mpos, 32), expr_726_mpos)
                /// @src 0:7199:7201  "vk"
                let _75_mpos := var_vk_660_mpos
                let expr_704_mpos := _75_mpos
                /// @src 0:7199:7207  "vk.gamma"
                let _76 := add(expr_704_mpos, 64)
                /// @src 0:7199:7537  "vk.gamma = Pairing.G2Point([uint256(0x222c0019521d3e52881431be17cacaf8a7379398dd0833f60a2ac45f1c3fcd42), uint256(0x1018dbb94cd920bd55af4e2b12a9f740c6b38748a163b5dbd37c5ef6cf74708f)], [uint256(0x18bf34dc86b549a92f316f7a32070a3ce45a0f38fa45dda1162c4b6498baf286), uint256(0x12848d5a670b6102d5bd45d2b8250d50361001ea335ff6a1405a52504c22b8ac)])"
                mstore(_76, expr_727_mpos)
                let _77_mpos := mload(_76)
                let expr_728_mpos := _77_mpos
                /// @src 0:7558:7565  "Pairing"
                let expr_733_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:7574:7728  "[uint256(0x13b8e16c40a6a299ea42107a97f881f9fa89986dcd5234ecb6919caf756ac1cb), uint256(0x25b64e4978690cd7cb531dbab0119148c96f5fc0c984c0cafb290bb75f033a09)]"
                let expr_743_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7583:7649  "0x13b8e16c40a6a299ea42107a97f881f9fa89986dcd5234ecb6919caf756ac1cb"
                let expr_737 := 0x13b8e16c40a6a299ea42107a97f881f9fa89986dcd5234ecb6919caf756ac1cb
                /// @src 0:7575:7650  "uint256(0x13b8e16c40a6a299ea42107a97f881f9fa89986dcd5234ecb6919caf756ac1cb)"
                let expr_738 := convert_t_rational_8920599794412088420877972912449339507044571489844799300814114543924633321931_by_1_to_t_uint256(expr_737)
                /// @src 0:7574:7728  "[uint256(0x13b8e16c40a6a299ea42107a97f881f9fa89986dcd5234ecb6919caf756ac1cb), uint256(0x25b64e4978690cd7cb531dbab0119148c96f5fc0c984c0cafb290bb75f033a09)]"
                write_to_memory_t_uint256(add(expr_743_mpos, 0), expr_738)
                /// @src 0:7660:7726  "0x25b64e4978690cd7cb531dbab0119148c96f5fc0c984c0cafb290bb75f033a09"
                let expr_741 := 0x25b64e4978690cd7cb531dbab0119148c96f5fc0c984c0cafb290bb75f033a09
                /// @src 0:7652:7727  "uint256(0x25b64e4978690cd7cb531dbab0119148c96f5fc0c984c0cafb290bb75f033a09)"
                let expr_742 := convert_t_rational_17057681880342368816444733732581179346494043329109363519618006210465235155465_by_1_to_t_uint256(expr_741)
                /// @src 0:7574:7728  "[uint256(0x13b8e16c40a6a299ea42107a97f881f9fa89986dcd5234ecb6919caf756ac1cb), uint256(0x25b64e4978690cd7cb531dbab0119148c96f5fc0c984c0cafb290bb75f033a09)]"
                write_to_memory_t_uint256(add(expr_743_mpos, 32), expr_742)
                /// @src 0:7730:7884  "[uint256(0x1758eaa970929deff5e96e5852d21790c32591dbb13bc63e3df046f0271479a4), uint256(0x14d0b4222ad1710c6330e4bd8ad8f0d7b8f4cff0a37793d53001800e49f41192)]"
                let expr_752_mpos := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
                /// @src 0:7739:7805  "0x1758eaa970929deff5e96e5852d21790c32591dbb13bc63e3df046f0271479a4"
                let expr_746 := 0x1758eaa970929deff5e96e5852d21790c32591dbb13bc63e3df046f0271479a4
                /// @src 0:7731:7806  "uint256(0x1758eaa970929deff5e96e5852d21790c32591dbb13bc63e3df046f0271479a4)"
                let expr_747 := convert_t_rational_10560297635847051872724804017111659308547177858380514622055503960992017316260_by_1_to_t_uint256(expr_746)
                /// @src 0:7730:7884  "[uint256(0x1758eaa970929deff5e96e5852d21790c32591dbb13bc63e3df046f0271479a4), uint256(0x14d0b4222ad1710c6330e4bd8ad8f0d7b8f4cff0a37793d53001800e49f41192)]"
                write_to_memory_t_uint256(add(expr_752_mpos, 0), expr_747)
                /// @src 0:7816:7882  "0x14d0b4222ad1710c6330e4bd8ad8f0d7b8f4cff0a37793d53001800e49f41192"
                let expr_750 := 0x14d0b4222ad1710c6330e4bd8ad8f0d7b8f4cff0a37793d53001800e49f41192
                /// @src 0:7808:7883  "uint256(0x14d0b4222ad1710c6330e4bd8ad8f0d7b8f4cff0a37793d53001800e49f41192)"
                let expr_751 := convert_t_rational_9415004396629116217579113311546673857415037710822267844001229771581924053394_by_1_to_t_uint256(expr_750)
                /// @src 0:7730:7884  "[uint256(0x1758eaa970929deff5e96e5852d21790c32591dbb13bc63e3df046f0271479a4), uint256(0x14d0b4222ad1710c6330e4bd8ad8f0d7b8f4cff0a37793d53001800e49f41192)]"
                write_to_memory_t_uint256(add(expr_752_mpos, 32), expr_751)
                /// @src 0:7558:7885  "Pairing.G2Point([uint256(0x13b8e16c40a6a299ea42107a97f881f9fa89986dcd5234ecb6919caf756ac1cb), uint256(0x25b64e4978690cd7cb531dbab0119148c96f5fc0c984c0cafb290bb75f033a09)], [uint256(0x1758eaa970929deff5e96e5852d21790c32591dbb13bc63e3df046f0271479a4), uint256(0x14d0b4222ad1710c6330e4bd8ad8f0d7b8f4cff0a37793d53001800e49f41192)])"
                let expr_753_mpos := allocate_memory_struct_t_struct$_G2Point_$15_storage_ptr()
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_753_mpos, 0), expr_743_mpos)
                write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(expr_753_mpos, 32), expr_752_mpos)
                /// @src 0:7547:7549  "vk"
                let _78_mpos := var_vk_660_mpos
                let expr_730_mpos := _78_mpos
                /// @src 0:7547:7555  "vk.delta"
                let _79 := add(expr_730_mpos, 96)
                /// @src 0:7547:7885  "vk.delta = Pairing.G2Point([uint256(0x13b8e16c40a6a299ea42107a97f881f9fa89986dcd5234ecb6919caf756ac1cb), uint256(0x25b64e4978690cd7cb531dbab0119148c96f5fc0c984c0cafb290bb75f033a09)], [uint256(0x1758eaa970929deff5e96e5852d21790c32591dbb13bc63e3df046f0271479a4), uint256(0x14d0b4222ad1710c6330e4bd8ad8f0d7b8f4cff0a37793d53001800e49f41192)])"
                mstore(_79, expr_753_mpos)
                let _80_mpos := mload(_79)
                let expr_754_mpos := _80_mpos
                /// @src 0:7932:7933  "9"
                let expr_763 := 0x09
                /// @src 0:7910:7934  "new Pairing.G1Point[](9)"
                let _81 := convert_t_rational_9_by_1_to_t_uint256(expr_763)
                let expr_764_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(_81)
                /// @src 0:7895:7897  "vk"
                let _82_mpos := var_vk_660_mpos
                let expr_756_mpos := _82_mpos
                /// @src 0:7895:7907  "vk.gamma_abc"
                let _83 := add(expr_756_mpos, 128)
                /// @src 0:7895:7934  "vk.gamma_abc = new Pairing.G1Point[](9)"
                mstore(_83, expr_764_mpos)
                let _84_mpos := mload(_83)
                let expr_765_mpos := _84_mpos
                /// @src 0:7962:7969  "Pairing"
                let expr_772_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:7986:8052  "0x0925dc800d3a577859439a049f8ed0ae7a37dcd36652de478d662c08907a7626"
                let expr_776 := 0x0925dc800d3a577859439a049f8ed0ae7a37dcd36652de478d662c08907a7626
                /// @src 0:7978:8053  "uint256(0x0925dc800d3a577859439a049f8ed0ae7a37dcd36652de478d662c08907a7626)"
                let expr_777 := convert_t_rational_4137710815108725201692837106414522297539130974277944347644646056773849609766_by_1_to_t_uint256(expr_776)
                /// @src 0:8063:8129  "0x1f7f76e299220ebf3da17bb415d25e6574e142391972dbd1513cf81341975cb5"
                let expr_780 := 0x1f7f76e299220ebf3da17bb415d25e6574e142391972dbd1513cf81341975cb5
                /// @src 0:8055:8130  "uint256(0x1f7f76e299220ebf3da17bb415d25e6574e142391972dbd1513cf81341975cb5)"
                let expr_781 := convert_t_rational_14246908398451772023598352212510471015501650368949902882637253741262304402613_by_1_to_t_uint256(expr_780)
                /// @src 0:7962:8131  "Pairing.G1Point(uint256(0x0925dc800d3a577859439a049f8ed0ae7a37dcd36652de478d662c08907a7626), uint256(0x1f7f76e299220ebf3da17bb415d25e6574e142391972dbd1513cf81341975cb5))"
                let expr_782_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_782_mpos, 0), expr_777)
                write_to_memory_t_uint256(add(expr_782_mpos, 32), expr_781)
                /// @src 0:7944:7946  "vk"
                let _85_mpos := var_vk_660_mpos
                let expr_767_mpos := _85_mpos
                /// @src 0:7944:7956  "vk.gamma_abc"
                let _86 := add(expr_767_mpos, 128)
                let _87_mpos := mload(_86)
                let expr_770_mpos := _87_mpos
                /// @src 0:7957:7958  "0"
                let expr_769 := 0x00
                /// @src 0:7944:8131  "vk.gamma_abc[0] = Pairing.G1Point(uint256(0x0925dc800d3a577859439a049f8ed0ae7a37dcd36652de478d662c08907a7626), uint256(0x1f7f76e299220ebf3da17bb415d25e6574e142391972dbd1513cf81341975cb5))"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_770_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_769)), expr_782_mpos)
                let _88_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_770_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_769)))
                let expr_783_mpos := _88_mpos
                /// @src 0:8159:8166  "Pairing"
                let expr_790_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:8183:8249  "0x0e67dddfd91adad72376c56cbd98d5cfa4df5217d6115ff26ec741d0154f0bd8"
                let expr_794 := 0x0e67dddfd91adad72376c56cbd98d5cfa4df5217d6115ff26ec741d0154f0bd8
                /// @src 0:8175:8250  "uint256(0x0e67dddfd91adad72376c56cbd98d5cfa4df5217d6115ff26ec741d0154f0bd8)"
                let expr_795 := convert_t_rational_6515896448712465247002907620641661864707469838204208715685503900171254041560_by_1_to_t_uint256(expr_794)
                /// @src 0:8260:8326  "0x0b97b2ddfdf4c31916d98e384bee3b24bfa0fc59a21ab489153f4dcd1a9a48ca"
                let expr_798 := 0x0b97b2ddfdf4c31916d98e384bee3b24bfa0fc59a21ab489153f4dcd1a9a48ca
                /// @src 0:8252:8327  "uint256(0x0b97b2ddfdf4c31916d98e384bee3b24bfa0fc59a21ab489153f4dcd1a9a48ca)"
                let expr_799 := convert_t_rational_5243469736940107547067213495516408157532280821083995922302225121649729620170_by_1_to_t_uint256(expr_798)
                /// @src 0:8159:8328  "Pairing.G1Point(uint256(0x0e67dddfd91adad72376c56cbd98d5cfa4df5217d6115ff26ec741d0154f0bd8), uint256(0x0b97b2ddfdf4c31916d98e384bee3b24bfa0fc59a21ab489153f4dcd1a9a48ca))"
                let expr_800_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_800_mpos, 0), expr_795)
                write_to_memory_t_uint256(add(expr_800_mpos, 32), expr_799)
                /// @src 0:8141:8143  "vk"
                let _89_mpos := var_vk_660_mpos
                let expr_785_mpos := _89_mpos
                /// @src 0:8141:8153  "vk.gamma_abc"
                let _90 := add(expr_785_mpos, 128)
                let _91_mpos := mload(_90)
                let expr_788_mpos := _91_mpos
                /// @src 0:8154:8155  "1"
                let expr_787 := 0x01
                /// @src 0:8141:8328  "vk.gamma_abc[1] = Pairing.G1Point(uint256(0x0e67dddfd91adad72376c56cbd98d5cfa4df5217d6115ff26ec741d0154f0bd8), uint256(0x0b97b2ddfdf4c31916d98e384bee3b24bfa0fc59a21ab489153f4dcd1a9a48ca))"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_788_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_787)), expr_800_mpos)
                let _92_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_788_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_787)))
                let expr_801_mpos := _92_mpos
                /// @src 0:8356:8363  "Pairing"
                let expr_808_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:8380:8446  "0x1416b354665883cbbc5f5541012d1f8dd87ebb4415b3ee431be0804fff290bbf"
                let expr_812 := 0x1416b354665883cbbc5f5541012d1f8dd87ebb4415b3ee431be0804fff290bbf
                /// @src 0:8372:8447  "uint256(0x1416b354665883cbbc5f5541012d1f8dd87ebb4415b3ee431be0804fff290bbf)"
                let expr_813 := convert_t_rational_9086365295100314412497236785964476028087689894102140994139513575128414358463_by_1_to_t_uint256(expr_812)
                /// @src 0:8457:8523  "0x1a284dd2eff43e6cb5aaea43dd9bee022ef0c91d90d0803cf5f7e4677e94a271"
                let expr_816 := 0x1a284dd2eff43e6cb5aaea43dd9bee022ef0c91d90d0803cf5f7e4677e94a271
                /// @src 0:8449:8524  "uint256(0x1a284dd2eff43e6cb5aaea43dd9bee022ef0c91d90d0803cf5f7e4677e94a271)"
                let expr_817 := convert_t_rational_11831345067083678245257719590230784703340916949555365756083401885870974083697_by_1_to_t_uint256(expr_816)
                /// @src 0:8356:8525  "Pairing.G1Point(uint256(0x1416b354665883cbbc5f5541012d1f8dd87ebb4415b3ee431be0804fff290bbf), uint256(0x1a284dd2eff43e6cb5aaea43dd9bee022ef0c91d90d0803cf5f7e4677e94a271))"
                let expr_818_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_818_mpos, 0), expr_813)
                write_to_memory_t_uint256(add(expr_818_mpos, 32), expr_817)
                /// @src 0:8338:8340  "vk"
                let _93_mpos := var_vk_660_mpos
                let expr_803_mpos := _93_mpos
                /// @src 0:8338:8350  "vk.gamma_abc"
                let _94 := add(expr_803_mpos, 128)
                let _95_mpos := mload(_94)
                let expr_806_mpos := _95_mpos
                /// @src 0:8351:8352  "2"
                let expr_805 := 0x02
                /// @src 0:8338:8525  "vk.gamma_abc[2] = Pairing.G1Point(uint256(0x1416b354665883cbbc5f5541012d1f8dd87ebb4415b3ee431be0804fff290bbf), uint256(0x1a284dd2eff43e6cb5aaea43dd9bee022ef0c91d90d0803cf5f7e4677e94a271))"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_806_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_805)), expr_818_mpos)
                let _96_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_806_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_805)))
                let expr_819_mpos := _96_mpos
                /// @src 0:8553:8560  "Pairing"
                let expr_826_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:8577:8643  "0x2526852e7f009b4afa1fe0e1d30334c6e516fac223866b81a830b472164bdfe7"
                let expr_830 := 0x2526852e7f009b4afa1fe0e1d30334c6e516fac223866b81a830b472164bdfe7
                /// @src 0:8569:8644  "uint256(0x2526852e7f009b4afa1fe0e1d30334c6e516fac223866b81a830b472164bdfe7)"
                let expr_831 := convert_t_rational_16803634771839015396192505393986618124851704780968488117575462127808954490855_by_1_to_t_uint256(expr_830)
                /// @src 0:8654:8720  "0x28adf6fbe54ba40afa91555c18477ad3a2f0a460f68d55a15b4e0c264b9c11c2"
                let expr_834 := 0x28adf6fbe54ba40afa91555c18477ad3a2f0a460f68d55a15b4e0c264b9c11c2
                /// @src 0:8646:8721  "uint256(0x28adf6fbe54ba40afa91555c18477ad3a2f0a460f68d55a15b4e0c264b9c11c2)"
                let expr_835 := convert_t_rational_18399883106232871566756720823159589364601453933544194731456659509765400695234_by_1_to_t_uint256(expr_834)
                /// @src 0:8553:8722  "Pairing.G1Point(uint256(0x2526852e7f009b4afa1fe0e1d30334c6e516fac223866b81a830b472164bdfe7), uint256(0x28adf6fbe54ba40afa91555c18477ad3a2f0a460f68d55a15b4e0c264b9c11c2))"
                let expr_836_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_836_mpos, 0), expr_831)
                write_to_memory_t_uint256(add(expr_836_mpos, 32), expr_835)
                /// @src 0:8535:8537  "vk"
                let _97_mpos := var_vk_660_mpos
                let expr_821_mpos := _97_mpos
                /// @src 0:8535:8547  "vk.gamma_abc"
                let _98 := add(expr_821_mpos, 128)
                let _99_mpos := mload(_98)
                let expr_824_mpos := _99_mpos
                /// @src 0:8548:8549  "3"
                let expr_823 := 0x03
                /// @src 0:8535:8722  "vk.gamma_abc[3] = Pairing.G1Point(uint256(0x2526852e7f009b4afa1fe0e1d30334c6e516fac223866b81a830b472164bdfe7), uint256(0x28adf6fbe54ba40afa91555c18477ad3a2f0a460f68d55a15b4e0c264b9c11c2))"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_824_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_823)), expr_836_mpos)
                let _100_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_824_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_823)))
                let expr_837_mpos := _100_mpos
                /// @src 0:8750:8757  "Pairing"
                let expr_844_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:8774:8840  "0x22feae4a12bfb751638cd76b2373e84884ba4adef575ea14ed50c5954d31d410"
                let expr_848 := 0x22feae4a12bfb751638cd76b2373e84884ba4adef575ea14ed50c5954d31d410
                /// @src 0:8766:8841  "uint256(0x22feae4a12bfb751638cd76b2373e84884ba4adef575ea14ed50c5954d31d410)"
                let expr_849 := convert_t_rational_15828618907159650424847957245498544897056264850269496449548643065281052267536_by_1_to_t_uint256(expr_848)
                /// @src 0:8851:8917  "0x108c3da0ffd7eda1fe7789e41693146beb979bd1644b19bbd517742ca3841348"
                let expr_852 := 0x108c3da0ffd7eda1fe7789e41693146beb979bd1644b19bbd517742ca3841348
                /// @src 0:8843:8918  "uint256(0x108c3da0ffd7eda1fe7789e41693146beb979bd1644b19bbd517742ca3841348)"
                let expr_853 := convert_t_rational_7484789513463319095215726495463686665311900167194167124245317793297547400008_by_1_to_t_uint256(expr_852)
                /// @src 0:8750:8919  "Pairing.G1Point(uint256(0x22feae4a12bfb751638cd76b2373e84884ba4adef575ea14ed50c5954d31d410), uint256(0x108c3da0ffd7eda1fe7789e41693146beb979bd1644b19bbd517742ca3841348))"
                let expr_854_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_854_mpos, 0), expr_849)
                write_to_memory_t_uint256(add(expr_854_mpos, 32), expr_853)
                /// @src 0:8732:8734  "vk"
                let _101_mpos := var_vk_660_mpos
                let expr_839_mpos := _101_mpos
                /// @src 0:8732:8744  "vk.gamma_abc"
                let _102 := add(expr_839_mpos, 128)
                let _103_mpos := mload(_102)
                let expr_842_mpos := _103_mpos
                /// @src 0:8745:8746  "4"
                let expr_841 := 0x04
                /// @src 0:8732:8919  "vk.gamma_abc[4] = Pairing.G1Point(uint256(0x22feae4a12bfb751638cd76b2373e84884ba4adef575ea14ed50c5954d31d410), uint256(0x108c3da0ffd7eda1fe7789e41693146beb979bd1644b19bbd517742ca3841348))"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_842_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_841)), expr_854_mpos)
                let _104_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_842_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_841)))
                let expr_855_mpos := _104_mpos
                /// @src 0:8947:8954  "Pairing"
                let expr_862_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:8971:9037  "0x081477a5c52f41533cf6ca4f778ab922d59ba44b5a5e3fbdbf34ed8dc1a47a8d"
                let expr_866 := 0x081477a5c52f41533cf6ca4f778ab922d59ba44b5a5e3fbdbf34ed8dc1a47a8d
                /// @src 0:8963:9038  "uint256(0x081477a5c52f41533cf6ca4f778ab922d59ba44b5a5e3fbdbf34ed8dc1a47a8d)"
                let expr_867 := convert_t_rational_3654665506934128061245974440974870664689962968279887640926174809060303731341_by_1_to_t_uint256(expr_866)
                /// @src 0:9048:9114  "0x0f2624780bd75b9f6c47f7bee582d02f1f983529b8aa9493ca848e38f2ec8447"
                let expr_870 := 0x0f2624780bd75b9f6c47f7bee582d02f1f983529b8aa9493ca848e38f2ec8447
                /// @src 0:9040:9115  "uint256(0x0f2624780bd75b9f6c47f7bee582d02f1f983529b8aa9493ca848e38f2ec8447)"
                let expr_871 := convert_t_rational_6852084616519687258883543528420101334536982110116855914965005094916912350279_by_1_to_t_uint256(expr_870)
                /// @src 0:8947:9116  "Pairing.G1Point(uint256(0x081477a5c52f41533cf6ca4f778ab922d59ba44b5a5e3fbdbf34ed8dc1a47a8d), uint256(0x0f2624780bd75b9f6c47f7bee582d02f1f983529b8aa9493ca848e38f2ec8447))"
                let expr_872_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_872_mpos, 0), expr_867)
                write_to_memory_t_uint256(add(expr_872_mpos, 32), expr_871)
                /// @src 0:8929:8931  "vk"
                let _105_mpos := var_vk_660_mpos
                let expr_857_mpos := _105_mpos
                /// @src 0:8929:8941  "vk.gamma_abc"
                let _106 := add(expr_857_mpos, 128)
                let _107_mpos := mload(_106)
                let expr_860_mpos := _107_mpos
                /// @src 0:8942:8943  "5"
                let expr_859 := 0x05
                /// @src 0:8929:9116  "vk.gamma_abc[5] = Pairing.G1Point(uint256(0x081477a5c52f41533cf6ca4f778ab922d59ba44b5a5e3fbdbf34ed8dc1a47a8d), uint256(0x0f2624780bd75b9f6c47f7bee582d02f1f983529b8aa9493ca848e38f2ec8447))"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_860_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_859)), expr_872_mpos)
                let _108_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_860_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_859)))
                let expr_873_mpos := _108_mpos
                /// @src 0:9144:9151  "Pairing"
                let expr_880_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:9168:9234  "0x0603e7413c605d1e9b9352a62f0208e2bbd247d3cf3b3721f72c3a9407d679b9"
                let expr_884 := 0x0603e7413c605d1e9b9352a62f0208e2bbd247d3cf3b3721f72c3a9407d679b9
                /// @src 0:9160:9235  "uint256(0x0603e7413c605d1e9b9352a62f0208e2bbd247d3cf3b3721f72c3a9407d679b9)"
                let expr_885 := convert_t_rational_2720773694854954715110186897035487795593569151175993151086315372016689379769_by_1_to_t_uint256(expr_884)
                /// @src 0:9245:9311  "0x0ce2d2dca8ae14ac4fd2f3fd89e602cdb45de815cf3ba183a25a47d877d9f6f5"
                let expr_888 := 0x0ce2d2dca8ae14ac4fd2f3fd89e602cdb45de815cf3ba183a25a47d877d9f6f5
                /// @src 0:9237:9312  "uint256(0x0ce2d2dca8ae14ac4fd2f3fd89e602cdb45de815cf3ba183a25a47d877d9f6f5)"
                let expr_889 := convert_t_rational_5828516935324281979442574432592493399137121454422649795148139362507158058741_by_1_to_t_uint256(expr_888)
                /// @src 0:9144:9313  "Pairing.G1Point(uint256(0x0603e7413c605d1e9b9352a62f0208e2bbd247d3cf3b3721f72c3a9407d679b9), uint256(0x0ce2d2dca8ae14ac4fd2f3fd89e602cdb45de815cf3ba183a25a47d877d9f6f5))"
                let expr_890_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_890_mpos, 0), expr_885)
                write_to_memory_t_uint256(add(expr_890_mpos, 32), expr_889)
                /// @src 0:9126:9128  "vk"
                let _109_mpos := var_vk_660_mpos
                let expr_875_mpos := _109_mpos
                /// @src 0:9126:9138  "vk.gamma_abc"
                let _110 := add(expr_875_mpos, 128)
                let _111_mpos := mload(_110)
                let expr_878_mpos := _111_mpos
                /// @src 0:9139:9140  "6"
                let expr_877 := 0x06
                /// @src 0:9126:9313  "vk.gamma_abc[6] = Pairing.G1Point(uint256(0x0603e7413c605d1e9b9352a62f0208e2bbd247d3cf3b3721f72c3a9407d679b9), uint256(0x0ce2d2dca8ae14ac4fd2f3fd89e602cdb45de815cf3ba183a25a47d877d9f6f5))"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_878_mpos, convert_t_rational_6_by_1_to_t_uint256(expr_877)), expr_890_mpos)
                let _112_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_878_mpos, convert_t_rational_6_by_1_to_t_uint256(expr_877)))
                let expr_891_mpos := _112_mpos
                /// @src 0:9341:9348  "Pairing"
                let expr_898_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:9365:9431  "0x05bbe6b58285021fb843123971f8e2cfdd207b02c0aef5923ffe7ac841ee0cc9"
                let expr_902 := 0x05bbe6b58285021fb843123971f8e2cfdd207b02c0aef5923ffe7ac841ee0cc9
                /// @src 0:9357:9432  "uint256(0x05bbe6b58285021fb843123971f8e2cfdd207b02c0aef5923ffe7ac841ee0cc9)"
                let expr_903 := convert_t_rational_2593556939185312751863307964708924173441770140659481692717068693341547138249_by_1_to_t_uint256(expr_902)
                /// @src 0:9442:9508  "0x2da1d3c2049546a7b46aaf89a8a7de493470087ce9af8ba37673f5ee8c35eb1b"
                let expr_906 := 0x2da1d3c2049546a7b46aaf89a8a7de493470087ce9af8ba37673f5ee8c35eb1b
                /// @src 0:9434:9509  "uint256(0x2da1d3c2049546a7b46aaf89a8a7de493470087ce9af8ba37673f5ee8c35eb1b)"
                let expr_907 := convert_t_rational_20640002062867791339843104232936745930595347523208926084478416425973018127131_by_1_to_t_uint256(expr_906)
                /// @src 0:9341:9510  "Pairing.G1Point(uint256(0x05bbe6b58285021fb843123971f8e2cfdd207b02c0aef5923ffe7ac841ee0cc9), uint256(0x2da1d3c2049546a7b46aaf89a8a7de493470087ce9af8ba37673f5ee8c35eb1b))"
                let expr_908_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_908_mpos, 0), expr_903)
                write_to_memory_t_uint256(add(expr_908_mpos, 32), expr_907)
                /// @src 0:9323:9325  "vk"
                let _113_mpos := var_vk_660_mpos
                let expr_893_mpos := _113_mpos
                /// @src 0:9323:9335  "vk.gamma_abc"
                let _114 := add(expr_893_mpos, 128)
                let _115_mpos := mload(_114)
                let expr_896_mpos := _115_mpos
                /// @src 0:9336:9337  "7"
                let expr_895 := 0x07
                /// @src 0:9323:9510  "vk.gamma_abc[7] = Pairing.G1Point(uint256(0x05bbe6b58285021fb843123971f8e2cfdd207b02c0aef5923ffe7ac841ee0cc9), uint256(0x2da1d3c2049546a7b46aaf89a8a7de493470087ce9af8ba37673f5ee8c35eb1b))"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_896_mpos, convert_t_rational_7_by_1_to_t_uint256(expr_895)), expr_908_mpos)
                let _116_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_896_mpos, convert_t_rational_7_by_1_to_t_uint256(expr_895)))
                let expr_909_mpos := _116_mpos
                /// @src 0:9538:9545  "Pairing"
                let expr_916_address := linkersymbol("data/verifier.sol:Pairing")
                /// @src 0:9562:9628  "0x2c721270df9ba8884d309140f3a4b150a8e53a6c9d09bd8fc7c9aa3c4901aa8d"
                let expr_920 := 0x2c721270df9ba8884d309140f3a4b150a8e53a6c9d09bd8fc7c9aa3c4901aa8d
                /// @src 0:9554:9629  "uint256(0x2c721270df9ba8884d309140f3a4b150a8e53a6c9d09bd8fc7c9aa3c4901aa8d)"
                let expr_921 := convert_t_rational_20103313177545401017872997021325450544534490847141531247353624717880377584269_by_1_to_t_uint256(expr_920)
                /// @src 0:9639:9705  "0x0de2cb1684759e693e855711fa1c381ae737e463447c3817df507a02064b470f"
                let expr_924 := 0x0de2cb1684759e693e855711fa1c381ae737e463447c3817df507a02064b470f
                /// @src 0:9631:9706  "uint256(0x0de2cb1684759e693e855711fa1c381ae737e463447c3817df507a02064b470f)"
                let expr_925 := convert_t_rational_6280776129799211134492840135238215809588321258655246632323919596115246925583_by_1_to_t_uint256(expr_924)
                /// @src 0:9538:9707  "Pairing.G1Point(uint256(0x2c721270df9ba8884d309140f3a4b150a8e53a6c9d09bd8fc7c9aa3c4901aa8d), uint256(0x0de2cb1684759e693e855711fa1c381ae737e463447c3817df507a02064b470f))"
                let expr_926_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_926_mpos, 0), expr_921)
                write_to_memory_t_uint256(add(expr_926_mpos, 32), expr_925)
                /// @src 0:9520:9522  "vk"
                let _117_mpos := var_vk_660_mpos
                let expr_911_mpos := _117_mpos
                /// @src 0:9520:9532  "vk.gamma_abc"
                let _118 := add(expr_911_mpos, 128)
                let _119_mpos := mload(_118)
                let expr_914_mpos := _119_mpos
                /// @src 0:9533:9534  "8"
                let expr_913 := 0x08
                /// @src 0:9520:9707  "vk.gamma_abc[8] = Pairing.G1Point(uint256(0x2c721270df9ba8884d309140f3a4b150a8e53a6c9d09bd8fc7c9aa3c4901aa8d), uint256(0x0de2cb1684759e693e855711fa1c381ae737e463447c3817df507a02064b470f))"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_914_mpos, convert_t_rational_8_by_1_to_t_uint256(expr_913)), expr_926_mpos)
                let _120_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_914_mpos, convert_t_rational_8_by_1_to_t_uint256(expr_913)))
                let expr_927_mpos := _120_mpos

            }
            /// @src 0:6234:11039  "contract Verifier {..."

            function zero_value_for_split_t_struct$_G1Point_$6_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_G1Point_$6_memory_ptr()
            }

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

            /// @ast-id 192
            /// @src 0:3082:3536  "function scalar_mul(G1Point memory p, uint s) internal view returns (G1Point memory r) {..."
            function fun_scalar_mul_192(var_p_148_mpos, var_s_150) -> var_r_154_mpos {
                /// @src 0:3151:3167  "G1Point memory r"
                let zero_t_struct$_G1Point_$6_memory_ptr_121_mpos := zero_value_for_split_t_struct$_G1Point_$6_memory_ptr()
                var_r_154_mpos := zero_t_struct$_G1Point_$6_memory_ptr_121_mpos

                /// @src 0:3184:3185  "3"
                let expr_158 := 0x03
                /// @src 0:3179:3199  "uint[3] memory input"
                let var_input_161_mpos
                let zero_t_array$_t_uint256_$3_memory_ptr_122_mpos := zero_value_for_split_t_array$_t_uint256_$3_memory_ptr()
                var_input_161_mpos := zero_t_array$_t_uint256_$3_memory_ptr_122_mpos
                /// @src 0:3220:3221  "p"
                let _123_mpos := var_p_148_mpos
                let expr_166_mpos := _123_mpos
                /// @src 0:3220:3223  "p.X"
                let _124 := add(expr_166_mpos, 0)
                let _125 := read_from_memoryt_uint256(_124)
                let expr_167 := _125
                /// @src 0:3209:3214  "input"
                let _126_mpos := var_input_161_mpos
                let expr_163_mpos := _126_mpos
                /// @src 0:3215:3216  "0"
                let expr_164 := 0x00
                /// @src 0:3209:3223  "input[0] = p.X"
                let _127 := expr_167
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$3_memory_ptr(expr_163_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_164)), _127)
                let expr_168 := expr_167
                /// @src 0:3244:3245  "p"
                let _128_mpos := var_p_148_mpos
                let expr_173_mpos := _128_mpos
                /// @src 0:3244:3247  "p.Y"
                let _129 := add(expr_173_mpos, 32)
                let _130 := read_from_memoryt_uint256(_129)
                let expr_174 := _130
                /// @src 0:3233:3238  "input"
                let _131_mpos := var_input_161_mpos
                let expr_170_mpos := _131_mpos
                /// @src 0:3239:3240  "1"
                let expr_171 := 0x01
                /// @src 0:3233:3247  "input[1] = p.Y"
                let _132 := expr_174
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$3_memory_ptr(expr_170_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_171)), _132)
                let expr_175 := expr_174
                /// @src 0:3268:3269  "s"
                let _133 := var_s_150
                let expr_180 := _133
                /// @src 0:3257:3262  "input"
                let _134_mpos := var_input_161_mpos
                let expr_177_mpos := _134_mpos
                /// @src 0:3263:3264  "2"
                let expr_178 := 0x02
                /// @src 0:3257:3269  "input[2] = s"
                let _135 := expr_180
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$3_memory_ptr(expr_177_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_178)), _135)
                let expr_181 := expr_180
                /// @src 0:3279:3291  "bool success"
                let var_success_184
                let zero_t_bool_136 := zero_value_for_split_t_bool()
                var_success_184 := zero_t_bool_136
                /// @src 0:3301:3503  "assembly {..."
                {
                    var_success_184 := staticcall(sub(gas(), 2000), 7, var_input_161_mpos, 0x80, var_r_154_mpos, 0x60)
                    switch var_success_184
                    case 0 { invalid() }
                }
                /// @src 0:3521:3528  "success"
                let _137 := var_success_184
                let expr_188 := _137
                /// @src 0:3512:3529  "require (success)"
                require_helper(expr_188)

            }
            /// @src 0:6234:11039  "contract Verifier {..."

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

            /// @ast-id 144
            /// @src 0:2432:2925  "function addition(G1Point memory p1, G1Point memory p2) internal view returns (G1Point memory r) {..."
            function fun_addition_144(var_p1_91_mpos, var_p2_94_mpos) -> var_r_98_mpos {
                /// @src 0:2511:2527  "G1Point memory r"
                let zero_t_struct$_G1Point_$6_memory_ptr_138_mpos := zero_value_for_split_t_struct$_G1Point_$6_memory_ptr()
                var_r_98_mpos := zero_t_struct$_G1Point_$6_memory_ptr_138_mpos

                /// @src 0:2544:2545  "4"
                let expr_102 := 0x04
                /// @src 0:2539:2559  "uint[4] memory input"
                let var_input_105_mpos
                let zero_t_array$_t_uint256_$4_memory_ptr_139_mpos := zero_value_for_split_t_array$_t_uint256_$4_memory_ptr()
                var_input_105_mpos := zero_t_array$_t_uint256_$4_memory_ptr_139_mpos
                /// @src 0:2580:2582  "p1"
                let _140_mpos := var_p1_91_mpos
                let expr_110_mpos := _140_mpos
                /// @src 0:2580:2584  "p1.X"
                let _141 := add(expr_110_mpos, 0)
                let _142 := read_from_memoryt_uint256(_141)
                let expr_111 := _142
                /// @src 0:2569:2574  "input"
                let _143_mpos := var_input_105_mpos
                let expr_107_mpos := _143_mpos
                /// @src 0:2575:2576  "0"
                let expr_108 := 0x00
                /// @src 0:2569:2584  "input[0] = p1.X"
                let _144 := expr_111
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_107_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_108)), _144)
                let expr_112 := expr_111
                /// @src 0:2605:2607  "p1"
                let _145_mpos := var_p1_91_mpos
                let expr_117_mpos := _145_mpos
                /// @src 0:2605:2609  "p1.Y"
                let _146 := add(expr_117_mpos, 32)
                let _147 := read_from_memoryt_uint256(_146)
                let expr_118 := _147
                /// @src 0:2594:2599  "input"
                let _148_mpos := var_input_105_mpos
                let expr_114_mpos := _148_mpos
                /// @src 0:2600:2601  "1"
                let expr_115 := 0x01
                /// @src 0:2594:2609  "input[1] = p1.Y"
                let _149 := expr_118
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_114_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_115)), _149)
                let expr_119 := expr_118
                /// @src 0:2630:2632  "p2"
                let _150_mpos := var_p2_94_mpos
                let expr_124_mpos := _150_mpos
                /// @src 0:2630:2634  "p2.X"
                let _151 := add(expr_124_mpos, 0)
                let _152 := read_from_memoryt_uint256(_151)
                let expr_125 := _152
                /// @src 0:2619:2624  "input"
                let _153_mpos := var_input_105_mpos
                let expr_121_mpos := _153_mpos
                /// @src 0:2625:2626  "2"
                let expr_122 := 0x02
                /// @src 0:2619:2634  "input[2] = p2.X"
                let _154 := expr_125
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_121_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_122)), _154)
                let expr_126 := expr_125
                /// @src 0:2655:2657  "p2"
                let _155_mpos := var_p2_94_mpos
                let expr_131_mpos := _155_mpos
                /// @src 0:2655:2659  "p2.Y"
                let _156 := add(expr_131_mpos, 32)
                let _157 := read_from_memoryt_uint256(_156)
                let expr_132 := _157
                /// @src 0:2644:2649  "input"
                let _158_mpos := var_input_105_mpos
                let expr_128_mpos := _158_mpos
                /// @src 0:2650:2651  "3"
                let expr_129 := 0x03
                /// @src 0:2644:2659  "input[3] = p2.Y"
                let _159 := expr_132
                write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_128_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_129)), _159)
                let expr_133 := expr_132
                /// @src 0:2669:2681  "bool success"
                let var_success_136
                let zero_t_bool_160 := zero_value_for_split_t_bool()
                var_success_136 := zero_t_bool_160
                /// @src 0:2691:2893  "assembly {..."
                {
                    var_success_136 := staticcall(sub(gas(), 2000), 6, var_input_105_mpos, 0xc0, var_r_98_mpos, 0x60)
                    switch var_success_136
                    case 0 { invalid() }
                }
                /// @src 0:2910:2917  "success"
                let _161 := var_success_136
                let expr_140 := _161
                /// @src 0:2902:2918  "require(success)"
                require_helper(expr_140)

            }
            /// @src 0:6234:11039  "contract Verifier {..."

            function cleanup_t_rational_21888242871839275222246405745257275088696311157297823662689037894645226208583_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21888242871839275222246405745257275088696311157297823662689037894645226208583_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21888242871839275222246405745257275088696311157297823662689037894645226208583_by_1(value)))
            }

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

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            /// @ast-id 87
            /// @src 0:2041:2381  "function negate(G1Point memory p) pure internal returns (G1Point memory) {..."
            function fun_negate_87(var_p_49_mpos) -> var__53_mpos {
                /// @src 0:2098:2112  "G1Point memory"
                let zero_t_struct$_G1Point_$6_memory_ptr_162_mpos := zero_value_for_split_t_struct$_G1Point_$6_memory_ptr()
                var__53_mpos := zero_t_struct$_G1Point_$6_memory_ptr_162_mpos

                /// @src 0:2185:2262  "21888242871839275222246405745257275088696311157297823662689037894645226208583"
                let expr_57 := 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                /// @src 0:2176:2262  "uint q = 21888242871839275222246405745257275088696311157297823662689037894645226208583"
                let var_q_56 := convert_t_rational_21888242871839275222246405745257275088696311157297823662689037894645226208583_by_1_to_t_uint256(expr_57)
                /// @src 0:2276:2277  "p"
                let _163_mpos := var_p_49_mpos
                let expr_59_mpos := _163_mpos
                /// @src 0:2276:2279  "p.X"
                let _164 := add(expr_59_mpos, 0)
                let _165 := read_from_memoryt_uint256(_164)
                let expr_60 := _165
                /// @src 0:2283:2284  "0"
                let expr_61 := 0x00
                /// @src 0:2276:2284  "p.X == 0"
                let expr_62 := eq(cleanup_t_uint256(expr_60), convert_t_rational_0_by_1_to_t_uint256(expr_61))
                /// @src 0:2276:2296  "p.X == 0 && p.Y == 0"
                let expr_67 := expr_62
                if expr_67 {
                    /// @src 0:2288:2289  "p"
                    let _166_mpos := var_p_49_mpos
                    let expr_63_mpos := _166_mpos
                    /// @src 0:2288:2291  "p.Y"
                    let _167 := add(expr_63_mpos, 32)
                    let _168 := read_from_memoryt_uint256(_167)
                    let expr_64 := _168
                    /// @src 0:2295:2296  "0"
                    let expr_65 := 0x00
                    /// @src 0:2288:2296  "p.Y == 0"
                    let expr_66 := eq(cleanup_t_uint256(expr_64), convert_t_rational_0_by_1_to_t_uint256(expr_65))
                    /// @src 0:2276:2296  "p.X == 0 && p.Y == 0"
                    expr_67 := expr_66
                }
                /// @src 0:2272:2330  "if (p.X == 0 && p.Y == 0)..."
                if expr_67 {
                    /// @src 0:2325:2326  "0"
                    let expr_69 := 0x00
                    /// @src 0:2328:2329  "0"
                    let expr_70 := 0x00
                    /// @src 0:2317:2330  "G1Point(0, 0)"
                    let expr_71_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                    let _169 := convert_t_rational_0_by_1_to_t_uint256(expr_69)
                    write_to_memory_t_uint256(add(expr_71_mpos, 0), _169)
                    let _170 := convert_t_rational_0_by_1_to_t_uint256(expr_70)
                    write_to_memory_t_uint256(add(expr_71_mpos, 32), _170)
                    /// @src 0:2310:2330  "return G1Point(0, 0)"
                    var__53_mpos := expr_71_mpos
                    leave
                    /// @src 0:2272:2330  "if (p.X == 0 && p.Y == 0)..."
                }
                /// @src 0:2355:2356  "p"
                let _171_mpos := var_p_49_mpos
                let expr_75_mpos := _171_mpos
                /// @src 0:2355:2358  "p.X"
                let _172 := add(expr_75_mpos, 0)
                let _173 := read_from_memoryt_uint256(_172)
                let expr_76 := _173
                /// @src 0:2360:2361  "q"
                let _174 := var_q_56
                let expr_77 := _174
                /// @src 0:2365:2366  "p"
                let _175_mpos := var_p_49_mpos
                let expr_78_mpos := _175_mpos
                /// @src 0:2365:2368  "p.Y"
                let _176 := add(expr_78_mpos, 32)
                let _177 := read_from_memoryt_uint256(_176)
                let expr_79 := _177
                /// @src 0:2371:2372  "q"
                let _178 := var_q_56
                let expr_80 := _178
                /// @src 0:2365:2372  "p.Y % q"
                let expr_81 := mod_t_uint256(expr_79, expr_80)

                /// @src 0:2364:2373  "(p.Y % q)"
                let expr_82 := expr_81
                /// @src 0:2360:2373  "q - (p.Y % q)"
                let expr_83 := checked_sub_t_uint256(expr_77, expr_82)

                /// @src 0:2347:2374  "G1Point(p.X, q - (p.Y % q))"
                let expr_84_mpos := allocate_memory_struct_t_struct$_G1Point_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_84_mpos, 0), expr_76)
                write_to_memory_t_uint256(add(expr_84_mpos, 32), expr_83)
                /// @src 0:2340:2374  "return G1Point(p.X, q - (p.Y % q))"
                var__53_mpos := expr_84_mpos
                leave

            }
            /// @src 0:6234:11039  "contract Verifier {..."

            function array_allocation_size_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_complex_memory_array_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(dataStart, dataSizeInBytes) {
                for {let i := 0} lt(i, dataSizeInBytes) { i := add(i, 32) } {
                    mstore(add(dataStart, i), zero_value_for_t_struct$_G2Point_$15_memory_ptr())
                }
            }

            function allocate_and_zero_memory_array_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_complex_memory_array_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(dataStart, dataSize)
            }

            function array_length_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            /// @ast-id 626
            /// @src 0:5678:6230  "function pairingProd4(..."
            function fun_pairingProd4_626(var_a1_522_mpos, var_a2_525_mpos, var_b1_528_mpos, var_b2_531_mpos, var_c1_534_mpos, var_c2_537_mpos, var_d1_540_mpos, var_d2_543_mpos) -> var__546 {
                /// @src 0:5929:5933  "bool"
                let zero_t_bool_179 := zero_value_for_split_t_bool()
                var__546 := zero_t_bool_179

                /// @src 0:5981:5982  "4"
                let expr_557 := 0x04
                /// @src 0:5967:5983  "new G1Point[](4)"
                let _180 := convert_t_rational_4_by_1_to_t_uint256(expr_557)
                let expr_558_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(_180)
                /// @src 0:5945:5983  "G1Point[] memory p1 = new G1Point[](4)"
                let var_p1_552_mpos := expr_558_mpos
                /// @src 0:6029:6030  "4"
                let expr_569 := 0x04
                /// @src 0:6015:6031  "new G2Point[](4)"
                let _181 := convert_t_rational_4_by_1_to_t_uint256(expr_569)
                let expr_570_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(_181)
                /// @src 0:5993:6031  "G2Point[] memory p2 = new G2Point[](4)"
                let var_p2_564_mpos := expr_570_mpos
                /// @src 0:6049:6051  "a1"
                let _182_mpos := var_a1_522_mpos
                let expr_575_mpos := _182_mpos
                /// @src 0:6041:6043  "p1"
                let _183_mpos := var_p1_552_mpos
                let expr_572_mpos := _183_mpos
                /// @src 0:6044:6045  "0"
                let expr_573 := 0x00
                /// @src 0:6041:6051  "p1[0] = a1"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_572_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_573)), expr_575_mpos)
                let _184_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_572_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_573)))
                let expr_576_mpos := _184_mpos
                /// @src 0:6069:6071  "b1"
                let _185_mpos := var_b1_528_mpos
                let expr_581_mpos := _185_mpos
                /// @src 0:6061:6063  "p1"
                let _186_mpos := var_p1_552_mpos
                let expr_578_mpos := _186_mpos
                /// @src 0:6064:6065  "1"
                let expr_579 := 0x01
                /// @src 0:6061:6071  "p1[1] = b1"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_578_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_579)), expr_581_mpos)
                let _187_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_578_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_579)))
                let expr_582_mpos := _187_mpos
                /// @src 0:6089:6091  "c1"
                let _188_mpos := var_c1_534_mpos
                let expr_587_mpos := _188_mpos
                /// @src 0:6081:6083  "p1"
                let _189_mpos := var_p1_552_mpos
                let expr_584_mpos := _189_mpos
                /// @src 0:6084:6085  "2"
                let expr_585 := 0x02
                /// @src 0:6081:6091  "p1[2] = c1"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_584_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_585)), expr_587_mpos)
                let _190_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_584_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_585)))
                let expr_588_mpos := _190_mpos
                /// @src 0:6109:6111  "d1"
                let _191_mpos := var_d1_540_mpos
                let expr_593_mpos := _191_mpos
                /// @src 0:6101:6103  "p1"
                let _192_mpos := var_p1_552_mpos
                let expr_590_mpos := _192_mpos
                /// @src 0:6104:6105  "3"
                let expr_591 := 0x03
                /// @src 0:6101:6111  "p1[3] = d1"
                mstore(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_590_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_591)), expr_593_mpos)
                let _193_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_590_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_591)))
                let expr_594_mpos := _193_mpos
                /// @src 0:6129:6131  "a2"
                let _194_mpos := var_a2_525_mpos
                let expr_599_mpos := _194_mpos
                /// @src 0:6121:6123  "p2"
                let _195_mpos := var_p2_564_mpos
                let expr_596_mpos := _195_mpos
                /// @src 0:6124:6125  "0"
                let expr_597 := 0x00
                /// @src 0:6121:6131  "p2[0] = a2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_596_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_597)), expr_599_mpos)
                let _196_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_596_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_597)))
                let expr_600_mpos := _196_mpos
                /// @src 0:6149:6151  "b2"
                let _197_mpos := var_b2_531_mpos
                let expr_605_mpos := _197_mpos
                /// @src 0:6141:6143  "p2"
                let _198_mpos := var_p2_564_mpos
                let expr_602_mpos := _198_mpos
                /// @src 0:6144:6145  "1"
                let expr_603 := 0x01
                /// @src 0:6141:6151  "p2[1] = b2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_602_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_603)), expr_605_mpos)
                let _199_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_602_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_603)))
                let expr_606_mpos := _199_mpos
                /// @src 0:6169:6171  "c2"
                let _200_mpos := var_c2_537_mpos
                let expr_611_mpos := _200_mpos
                /// @src 0:6161:6163  "p2"
                let _201_mpos := var_p2_564_mpos
                let expr_608_mpos := _201_mpos
                /// @src 0:6164:6165  "2"
                let expr_609 := 0x02
                /// @src 0:6161:6171  "p2[2] = c2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_608_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_609)), expr_611_mpos)
                let _202_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_608_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_609)))
                let expr_612_mpos := _202_mpos
                /// @src 0:6189:6191  "d2"
                let _203_mpos := var_d2_543_mpos
                let expr_617_mpos := _203_mpos
                /// @src 0:6181:6183  "p2"
                let _204_mpos := var_p2_564_mpos
                let expr_614_mpos := _204_mpos
                /// @src 0:6184:6185  "3"
                let expr_615 := 0x03
                /// @src 0:6181:6191  "p2[3] = d2"
                mstore(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_614_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_615)), expr_617_mpos)
                let _205_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_614_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_615)))
                let expr_618_mpos := _205_mpos
                /// @src 0:6216:6218  "p1"
                let _206_mpos := var_p1_552_mpos
                let expr_621_mpos := _206_mpos
                /// @src 0:6220:6222  "p2"
                let _207_mpos := var_p2_564_mpos
                let expr_622_mpos := _207_mpos
                /// @src 0:6208:6223  "pairing(p1, p2)"
                let expr_623 := fun_pairing_356(expr_621_mpos, expr_622_mpos)
                /// @src 0:6201:6223  "return pairing(p1, p2)"
                var__546 := expr_623
                leave

            }
            /// @src 0:6234:11039  "contract Verifier {..."

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
            /// @src 0:3747:4670  "function pairing(G1Point[] memory p1, G2Point[] memory p2) internal view returns (bool) {..."
            function fun_pairing_356(var_p1_197_mpos, var_p2_201_mpos) -> var__204 {
                /// @src 0:3829:3833  "bool"
                let zero_t_bool_208 := zero_value_for_split_t_bool()
                var__204 := zero_t_bool_208

                /// @src 0:3853:3855  "p1"
                let _209_mpos := var_p1_197_mpos
                let expr_207_mpos := _209_mpos
                /// @src 0:3853:3862  "p1.length"
                let expr_208 := array_length_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_207_mpos)
                /// @src 0:3866:3868  "p2"
                let _210_mpos := var_p2_201_mpos
                let expr_209_mpos := _210_mpos
                /// @src 0:3866:3875  "p2.length"
                let expr_210 := array_length_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_209_mpos)
                /// @src 0:3853:3875  "p1.length == p2.length"
                let expr_211 := eq(cleanup_t_uint256(expr_208), cleanup_t_uint256(expr_210))
                /// @src 0:3845:3876  "require(p1.length == p2.length)"
                require_helper(expr_211)
                /// @src 0:3902:3904  "p1"
                let _211_mpos := var_p1_197_mpos
                let expr_216_mpos := _211_mpos
                /// @src 0:3902:3911  "p1.length"
                let expr_217 := array_length_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_216_mpos)
                /// @src 0:3886:3911  "uint elements = p1.length"
                let var_elements_215 := expr_217
                /// @src 0:3938:3946  "elements"
                let _212 := var_elements_215
                let expr_221 := _212
                /// @src 0:3949:3950  "6"
                let expr_222 := 0x06
                /// @src 0:3938:3950  "elements * 6"
                let expr_223 := checked_mul_t_uint256(expr_221, convert_t_rational_6_by_1_to_t_uint256(expr_222))

                /// @src 0:3921:3950  "uint inputSize = elements * 6"
                let var_inputSize_220 := expr_223
                /// @src 0:3993:4002  "inputSize"
                let _213 := var_inputSize_220
                let expr_233 := _213
                /// @src 0:3982:4003  "new uint[](inputSize)"
                let expr_234_mpos := allocate_and_zero_memory_array_t_array$_t_uint256_$dyn_memory_ptr(expr_233)
                /// @src 0:3960:4003  "uint[] memory input = new uint[](inputSize)"
                let var_input_229_mpos := expr_234_mpos
                /// @src 0:4013:4320  "for (uint i = 0; i < elements; i++)..."
                for {
                    /// @src 0:4027:4028  "0"
                    let expr_238 := 0x00
                    /// @src 0:4018:4028  "uint i = 0"
                    let var_i_237 := convert_t_rational_0_by_1_to_t_uint256(expr_238)
                    } 1 {
                    /// @src 0:4044:4047  "i++"
                    let _215 := var_i_237
                    let _214 := increment_wrapping_t_uint256(_215)
                    var_i_237 := _214
                    let expr_244 := _215
                }
                {
                    /// @src 0:4030:4031  "i"
                    let _216 := var_i_237
                    let expr_240 := _216
                    /// @src 0:4034:4042  "elements"
                    let _217 := var_elements_215
                    let expr_241 := _217
                    /// @src 0:4030:4042  "i < elements"
                    let expr_242 := lt(cleanup_t_uint256(expr_240), cleanup_t_uint256(expr_241))
                    if iszero(expr_242) { break }
                    /// @src 0:4090:4092  "p1"
                    let _218_mpos := var_p1_197_mpos
                    let expr_253_mpos := _218_mpos
                    /// @src 0:4093:4094  "i"
                    let _219 := var_i_237
                    let expr_254 := _219
                    /// @src 0:4090:4095  "p1[i]"
                    let _220_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_253_mpos, expr_254))
                    let expr_255_mpos := _220_mpos
                    /// @src 0:4090:4097  "p1[i].X"
                    let _221 := add(expr_255_mpos, 0)
                    let _222 := read_from_memoryt_uint256(_221)
                    let expr_256 := _222
                    /// @src 0:4071:4076  "input"
                    let _223_mpos := var_input_229_mpos
                    let expr_246_mpos := _223_mpos
                    /// @src 0:4077:4078  "i"
                    let _224 := var_i_237
                    let expr_247 := _224
                    /// @src 0:4081:4082  "6"
                    let expr_248 := 0x06
                    /// @src 0:4077:4082  "i * 6"
                    let expr_249 := checked_mul_t_uint256(expr_247, convert_t_rational_6_by_1_to_t_uint256(expr_248))

                    /// @src 0:4085:4086  "0"
                    let expr_250 := 0x00
                    /// @src 0:4077:4086  "i * 6 + 0"
                    let expr_251 := checked_add_t_uint256(expr_249, convert_t_rational_0_by_1_to_t_uint256(expr_250))

                    /// @src 0:4071:4097  "input[i * 6 + 0] = p1[i].X"
                    let _225 := expr_256
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_246_mpos, expr_251), _225)
                    let expr_257 := expr_256
                    /// @src 0:4130:4132  "p1"
                    let _226_mpos := var_p1_197_mpos
                    let expr_266_mpos := _226_mpos
                    /// @src 0:4133:4134  "i"
                    let _227 := var_i_237
                    let expr_267 := _227
                    /// @src 0:4130:4135  "p1[i]"
                    let _228_mpos := mload(memory_array_index_access_t_array$_t_struct$_G1Point_$6_memory_ptr_$dyn_memory_ptr(expr_266_mpos, expr_267))
                    let expr_268_mpos := _228_mpos
                    /// @src 0:4130:4137  "p1[i].Y"
                    let _229 := add(expr_268_mpos, 32)
                    let _230 := read_from_memoryt_uint256(_229)
                    let expr_269 := _230
                    /// @src 0:4111:4116  "input"
                    let _231_mpos := var_input_229_mpos
                    let expr_259_mpos := _231_mpos
                    /// @src 0:4117:4118  "i"
                    let _232 := var_i_237
                    let expr_260 := _232
                    /// @src 0:4121:4122  "6"
                    let expr_261 := 0x06
                    /// @src 0:4117:4122  "i * 6"
                    let expr_262 := checked_mul_t_uint256(expr_260, convert_t_rational_6_by_1_to_t_uint256(expr_261))

                    /// @src 0:4125:4126  "1"
                    let expr_263 := 0x01
                    /// @src 0:4117:4126  "i * 6 + 1"
                    let expr_264 := checked_add_t_uint256(expr_262, convert_t_rational_1_by_1_to_t_uint256(expr_263))

                    /// @src 0:4111:4137  "input[i * 6 + 1] = p1[i].Y"
                    let _233 := expr_269
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_259_mpos, expr_264), _233)
                    let expr_270 := expr_269
                    /// @src 0:4170:4172  "p2"
                    let _234_mpos := var_p2_201_mpos
                    let expr_279_mpos := _234_mpos
                    /// @src 0:4173:4174  "i"
                    let _235 := var_i_237
                    let expr_280 := _235
                    /// @src 0:4170:4175  "p2[i]"
                    let _236_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_279_mpos, expr_280))
                    let expr_281_mpos := _236_mpos
                    /// @src 0:4170:4177  "p2[i].X"
                    let _237 := add(expr_281_mpos, 0)
                    let _238_mpos := mload(_237)
                    let expr_282_mpos := _238_mpos
                    /// @src 0:4178:4179  "1"
                    let expr_283 := 0x01
                    /// @src 0:4170:4180  "p2[i].X[1]"
                    let _239 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_282_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_283)))
                    let expr_284 := _239
                    /// @src 0:4151:4156  "input"
                    let _240_mpos := var_input_229_mpos
                    let expr_272_mpos := _240_mpos
                    /// @src 0:4157:4158  "i"
                    let _241 := var_i_237
                    let expr_273 := _241
                    /// @src 0:4161:4162  "6"
                    let expr_274 := 0x06
                    /// @src 0:4157:4162  "i * 6"
                    let expr_275 := checked_mul_t_uint256(expr_273, convert_t_rational_6_by_1_to_t_uint256(expr_274))

                    /// @src 0:4165:4166  "2"
                    let expr_276 := 0x02
                    /// @src 0:4157:4166  "i * 6 + 2"
                    let expr_277 := checked_add_t_uint256(expr_275, convert_t_rational_2_by_1_to_t_uint256(expr_276))

                    /// @src 0:4151:4180  "input[i * 6 + 2] = p2[i].X[1]"
                    let _242 := expr_284
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_272_mpos, expr_277), _242)
                    let expr_285 := expr_284
                    /// @src 0:4213:4215  "p2"
                    let _243_mpos := var_p2_201_mpos
                    let expr_294_mpos := _243_mpos
                    /// @src 0:4216:4217  "i"
                    let _244 := var_i_237
                    let expr_295 := _244
                    /// @src 0:4213:4218  "p2[i]"
                    let _245_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_294_mpos, expr_295))
                    let expr_296_mpos := _245_mpos
                    /// @src 0:4213:4220  "p2[i].X"
                    let _246 := add(expr_296_mpos, 0)
                    let _247_mpos := mload(_246)
                    let expr_297_mpos := _247_mpos
                    /// @src 0:4221:4222  "0"
                    let expr_298 := 0x00
                    /// @src 0:4213:4223  "p2[i].X[0]"
                    let _248 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_297_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_298)))
                    let expr_299 := _248
                    /// @src 0:4194:4199  "input"
                    let _249_mpos := var_input_229_mpos
                    let expr_287_mpos := _249_mpos
                    /// @src 0:4200:4201  "i"
                    let _250 := var_i_237
                    let expr_288 := _250
                    /// @src 0:4204:4205  "6"
                    let expr_289 := 0x06
                    /// @src 0:4200:4205  "i * 6"
                    let expr_290 := checked_mul_t_uint256(expr_288, convert_t_rational_6_by_1_to_t_uint256(expr_289))

                    /// @src 0:4208:4209  "3"
                    let expr_291 := 0x03
                    /// @src 0:4200:4209  "i * 6 + 3"
                    let expr_292 := checked_add_t_uint256(expr_290, convert_t_rational_3_by_1_to_t_uint256(expr_291))

                    /// @src 0:4194:4223  "input[i * 6 + 3] = p2[i].X[0]"
                    let _251 := expr_299
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_287_mpos, expr_292), _251)
                    let expr_300 := expr_299
                    /// @src 0:4256:4258  "p2"
                    let _252_mpos := var_p2_201_mpos
                    let expr_309_mpos := _252_mpos
                    /// @src 0:4259:4260  "i"
                    let _253 := var_i_237
                    let expr_310 := _253
                    /// @src 0:4256:4261  "p2[i]"
                    let _254_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_309_mpos, expr_310))
                    let expr_311_mpos := _254_mpos
                    /// @src 0:4256:4263  "p2[i].Y"
                    let _255 := add(expr_311_mpos, 32)
                    let _256_mpos := mload(_255)
                    let expr_312_mpos := _256_mpos
                    /// @src 0:4264:4265  "1"
                    let expr_313 := 0x01
                    /// @src 0:4256:4266  "p2[i].Y[1]"
                    let _257 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_312_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_313)))
                    let expr_314 := _257
                    /// @src 0:4237:4242  "input"
                    let _258_mpos := var_input_229_mpos
                    let expr_302_mpos := _258_mpos
                    /// @src 0:4243:4244  "i"
                    let _259 := var_i_237
                    let expr_303 := _259
                    /// @src 0:4247:4248  "6"
                    let expr_304 := 0x06
                    /// @src 0:4243:4248  "i * 6"
                    let expr_305 := checked_mul_t_uint256(expr_303, convert_t_rational_6_by_1_to_t_uint256(expr_304))

                    /// @src 0:4251:4252  "4"
                    let expr_306 := 0x04
                    /// @src 0:4243:4252  "i * 6 + 4"
                    let expr_307 := checked_add_t_uint256(expr_305, convert_t_rational_4_by_1_to_t_uint256(expr_306))

                    /// @src 0:4237:4266  "input[i * 6 + 4] = p2[i].Y[1]"
                    let _260 := expr_314
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_302_mpos, expr_307), _260)
                    let expr_315 := expr_314
                    /// @src 0:4299:4301  "p2"
                    let _261_mpos := var_p2_201_mpos
                    let expr_324_mpos := _261_mpos
                    /// @src 0:4302:4303  "i"
                    let _262 := var_i_237
                    let expr_325 := _262
                    /// @src 0:4299:4304  "p2[i]"
                    let _263_mpos := mload(memory_array_index_access_t_array$_t_struct$_G2Point_$15_memory_ptr_$dyn_memory_ptr(expr_324_mpos, expr_325))
                    let expr_326_mpos := _263_mpos
                    /// @src 0:4299:4306  "p2[i].Y"
                    let _264 := add(expr_326_mpos, 32)
                    let _265_mpos := mload(_264)
                    let expr_327_mpos := _265_mpos
                    /// @src 0:4307:4308  "0"
                    let expr_328 := 0x00
                    /// @src 0:4299:4309  "p2[i].Y[0]"
                    let _266 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_327_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_328)))
                    let expr_329 := _266
                    /// @src 0:4280:4285  "input"
                    let _267_mpos := var_input_229_mpos
                    let expr_317_mpos := _267_mpos
                    /// @src 0:4286:4287  "i"
                    let _268 := var_i_237
                    let expr_318 := _268
                    /// @src 0:4290:4291  "6"
                    let expr_319 := 0x06
                    /// @src 0:4286:4291  "i * 6"
                    let expr_320 := checked_mul_t_uint256(expr_318, convert_t_rational_6_by_1_to_t_uint256(expr_319))

                    /// @src 0:4294:4295  "5"
                    let expr_321 := 0x05
                    /// @src 0:4286:4295  "i * 6 + 5"
                    let expr_322 := checked_add_t_uint256(expr_320, convert_t_rational_5_by_1_to_t_uint256(expr_321))

                    /// @src 0:4280:4309  "input[i * 6 + 5] = p2[i].Y[0]"
                    let _269 := expr_329
                    write_to_memory_t_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_317_mpos, expr_322), _269)
                    let expr_330 := expr_329
                }
                /// @src 0:4334:4335  "1"
                let expr_336 := 0x01
                /// @src 0:4329:4347  "uint[1] memory out"
                let var_out_339_mpos
                let zero_t_array$_t_uint256_$1_memory_ptr_270_mpos := zero_value_for_split_t_array$_t_uint256_$1_memory_ptr()
                var_out_339_mpos := zero_t_array$_t_uint256_$1_memory_ptr_270_mpos
                /// @src 0:4357:4369  "bool success"
                let var_success_342
                let zero_t_bool_271 := zero_value_for_split_t_bool()
                var_success_342 := zero_t_bool_271
                /// @src 0:4379:4610  "assembly {..."
                {
                    var_success_342 := staticcall(sub(gas(), 2000), 8, add(var_input_229_mpos, 0x20), mul(var_inputSize_220, 0x20), var_out_339_mpos, 0x20)
                    switch var_success_342
                    case 0 { invalid() }
                }
                /// @src 0:4627:4634  "success"
                let _272 := var_success_342
                let expr_346 := _272
                /// @src 0:4619:4635  "require(success)"
                require_helper(expr_346)
                /// @src 0:4652:4655  "out"
                let _273_mpos := var_out_339_mpos
                let expr_349_mpos := _273_mpos
                /// @src 0:4656:4657  "0"
                let expr_350 := 0x00
                /// @src 0:4652:4658  "out[0]"
                let _274 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$1_memory_ptr(expr_349_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_350)))
                let expr_351 := _274
                /// @src 0:4662:4663  "0"
                let expr_352 := 0x00
                /// @src 0:4652:4663  "out[0] != 0"
                let expr_353 := iszero(eq(cleanup_t_uint256(expr_351), convert_t_rational_0_by_1_to_t_uint256(expr_352)))
                /// @src 0:4645:4663  "return out[0] != 0"
                var__204 := expr_353
                leave

            }
            /// @src 0:6234:11039  "contract Verifier {..."

        }

        data ".metadata" hex"a26469706673582212208b8b7edf85912301d8d1f58a651a72b536d664906e74a6d76f93dfcb5664a81964736f6c637828302e382e32362d646576656c6f702e323032342e332e32302b636f6d6d69742e61666461363938340059"
    }

}
