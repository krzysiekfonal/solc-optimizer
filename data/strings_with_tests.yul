IR:

/// @use-src 0:"_stringutils/stringutils.sol"
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


IR:

/// @use-src 1:"strings.sol"
object "test_203" {
    code {
        /// @src 1:60:1441  "contract test {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_test_203()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("test_203_deployed"), datasize("test_203_deployed"))

        return(_1, datasize("test_203_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 1:60:1441  "contract test {..."
        function constructor_test_203() {

            /// @src 1:60:1441  "contract test {..."

        }
        /// @src 1:60:1441  "contract test {..."

    }
    /// @use-src 0:"_stringutils/stringutils.sol", 1:"strings.sol"
    object "test_203_deployed" {
        code {
            /// @src 1:60:1441  "contract test {..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0xad6ea621
                {
                    // benchmark(string,bytes32)

                    external_fun_benchmark_202()
                }

                case 0xafed762b
                {
                    // toSlice(string)

                    external_fun_toSlice_25()
                }

                case 0xb92c6310
                {
                    // roundtrip(string)

                    external_fun_roundtrip_39()
                }

                case 0xe728bdd1
                {
                    // utf8len(string)

                    external_fun_utf8len_53()
                }

                case 0xfe7f4f88
                {
                    // multiconcat(string,uint256)

                    external_fun_multiconcat_97()
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

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
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

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function copy_calldata_to_memory_with_cleanup(src, dst, length) {

                calldatacopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_decode_available_length_t_string_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory_with_cleanup(src, dst, length)
            }

            // string
            function abi_decode_t_string_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_string_memory_ptr(add(offset, 0x20), length, end)
            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_tuple_t_string_memory_ptrt_bytes32(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_benchmark_202() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_string_memory_ptrt_bytes32(4, calldatasize())
                let ret_0 :=  fun_benchmark_202(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_string_memory_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            // struct strings.slice -> struct strings.slice
            function abi_encode_t_struct$_slice_$210_memory_ptr_to_t_struct$_slice_$210_memory_ptr_fromStack(value, pos)  {
                let tail := add(pos, 0x40)

                {
                    // _len

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x00))
                }

                {
                    // _ptr

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x20))
                }

            }

            function abi_encode_tuple_t_struct$_slice_$210_memory_ptr__to_t_struct$_slice_$210_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_struct$_slice_$210_memory_ptr_to_t_struct$_slice_$210_memory_ptr_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_toSlice_25() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_toSlice_25(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_struct$_slice_$210_memory_ptr__to_t_struct$_slice_$210_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_roundtrip_39() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_roundtrip_39(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_utf8len_53() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_utf8len_53(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_string_memory_ptrt_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_multiconcat_97() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_string_memory_ptrt_uint256(4, calldatasize())
                let ret_0 :=  fun_multiconcat_97(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function cleanup_t_rational_10_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10_by_1(value)))
            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_698f551e2aa42a46289a635eb89f051b273c8603a6b7f8a0d1ba86ca91db4ed8(memPtr) {

                mstore(add(memPtr, 0), ";")

            }

            function copy_literal_to_memory_698f551e2aa42a46289a635eb89f051b273c8603a6b7f8a0d1ba86ca91db4ed8() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(1)
                store_literal_in_memory_698f551e2aa42a46289a635eb89f051b273c8603a6b7f8a0d1ba86ca91db4ed8(add(memPtr, 32))
            }

            function convert_t_stringliteral_698f551e2aa42a46289a635eb89f051b273c8603a6b7f8a0d1ba86ca91db4ed8_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_698f551e2aa42a46289a635eb89f051b273c8603a6b7f8a0d1ba86ca91db4ed8()
            }

            function store_literal_in_memory_3e7a35b97029f9e0cf6effd71c1a7958822e9a217d3a3aec886668a7dd8231cb(memPtr) {

                mstore(add(memPtr, 0), ",")

            }

            function copy_literal_to_memory_3e7a35b97029f9e0cf6effd71c1a7958822e9a217d3a3aec886668a7dd8231cb() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(1)
                store_literal_in_memory_3e7a35b97029f9e0cf6effd71c1a7958822e9a217d3a3aec886668a7dd8231cb(add(memPtr, 32))
            }

            function convert_t_stringliteral_3e7a35b97029f9e0cf6effd71c1a7958822e9a217d3a3aec886668a7dd8231cb_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_3e7a35b97029f9e0cf6effd71c1a7958822e9a217d3a3aec886668a7dd8231cb()
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function array_allocation_size_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function allocate_memory_struct_t_struct$_slice_$210_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function zero_value_for_t_uint256() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_slice_$210_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_slice_$210_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_slice_$210_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_slice_$210_memory_ptr()
            }

            function zero_complex_memory_array_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(dataStart, dataSizeInBytes) {
                for {let i := 0} lt(i, dataSizeInBytes) { i := add(i, 32) } {
                    mstore(add(dataStart, i), zero_value_for_t_struct$_slice_$210_memory_ptr())
                }
            }

            function allocate_and_zero_memory_array_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_complex_memory_array_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(dataStart, dataSize)
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function memory_array_index_access_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(baseRef))) {
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

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            /// @ast-id 202
            /// @src 1:801:1439  "function benchmark(string memory text, bytes32 seed) external pure returns (uint) {..."
            function fun_benchmark_202(var_text_99_mpos, var_seed_101) -> var__104 {
                /// @src 1:877:881  "uint"
                let zero_t_uint256_1 := zero_value_for_split_t_uint256()
                var__104 := zero_t_uint256_1

                /// @src 1:934:938  "text"
                let _2_mpos := var_text_99_mpos
                let expr_108_mpos := _2_mpos
                /// @src 1:940:942  "10"
                let expr_109 := 0x0a
                /// @src 1:922:943  "multiconcat(text, 10)"
                let _3 := convert_t_rational_10_by_1_to_t_uint256(expr_109)
                let expr_110_mpos := fun_multiconcat_97(expr_108_mpos, _3)
                /// @src 1:915:943  "text = multiconcat(text, 10)"
                var_text_99_mpos := expr_110_mpos
                let _4_mpos := var_text_99_mpos
                let expr_111_mpos := _4_mpos
                /// @src 1:979:983  "text"
                let _5_mpos := var_text_99_mpos
                let expr_118_mpos := _5_mpos
                /// @src 1:979:991  "text.toSlice"
                let expr_119_self_mpos := expr_118_mpos
                /// @src 1:979:993  "text.toSlice()"
                let expr_120_mpos := fun_toSlice_281(expr_119_self_mpos)
                /// @src 1:954:993  "strings.slice memory a = text.toSlice()"
                let var_a_117_mpos := expr_120_mpos
                /// @src 1:1028:1032  "seed"
                let _6 := var_seed_101
                let expr_127 := _6
                /// @src 1:1028:1043  "seed.toSliceB32"
                let expr_128_self := expr_127
                /// @src 1:1028:1045  "seed.toSliceB32()"
                let expr_129_mpos := fun_toSliceB32_438(expr_128_self)
                /// @src 1:1003:1045  "strings.slice memory b = seed.toSliceB32()"
                let var_b_126_mpos := expr_129_mpos
                /// @src 1:1100:1101  "b"
                let _7_mpos := var_b_126_mpos
                let expr_133_mpos := _7_mpos
                /// @src 1:1100:1108  "b.equals"
                let expr_134_self_mpos := expr_133_mpos
                /// @src 1:1109:1110  "a"
                let _8_mpos := var_a_117_mpos
                let expr_135_mpos := _8_mpos
                /// @src 1:1100:1111  "b.equals(a)"
                let expr_136 := fun_equals_747(expr_134_self_mpos, expr_135_mpos)
                /// @src 1:1100:1130  "b.equals(a) || b.startsWith(a)"
                let expr_141 := expr_136
                if iszero(expr_141) {
                    /// @src 1:1115:1116  "b"
                    let _9_mpos := var_b_126_mpos
                    let expr_137_mpos := _9_mpos
                    /// @src 1:1115:1127  "b.startsWith"
                    let expr_138_self_mpos := expr_137_mpos
                    /// @src 1:1128:1129  "a"
                    let _10_mpos := var_a_117_mpos
                    let expr_139_mpos := _10_mpos
                    /// @src 1:1115:1130  "b.startsWith(a)"
                    let expr_140 := fun_startsWith_1077(expr_138_self_mpos, expr_139_mpos)
                    /// @src 1:1100:1130  "b.equals(a) || b.startsWith(a)"
                    expr_141 := expr_140
                }
                /// @src 1:1091:1130  "bool c = b.equals(a) || b.startsWith(a)"
                let var_c_132 := expr_141
                /// @src 1:1197:1198  "c"
                let _11 := var_c_132
                let expr_148 := _11
                /// @src 1:1197:1246  "c ? string(\",\").toSlice() : string(\";\").toSlice()"
                let expr_161_mpos
                switch expr_148
                case 0 {
                    /// @src 1:1225:1236  "string(\";\")"
                    let expr_158_mpos := convert_t_stringliteral_698f551e2aa42a46289a635eb89f051b273c8603a6b7f8a0d1ba86ca91db4ed8_to_t_string_memory_ptr()
                    /// @src 1:1225:1244  "string(\";\").toSlice"
                    let expr_159_self_mpos := expr_158_mpos
                    /// @src 1:1225:1246  "string(\";\").toSlice()"
                    let expr_160_mpos := fun_toSlice_281(expr_159_self_mpos)
                    /// @src 1:1197:1246  "c ? string(\",\").toSlice() : string(\";\").toSlice()"
                    expr_161_mpos := expr_160_mpos
                }
                default {
                    /// @src 1:1201:1212  "string(\",\")"
                    let expr_152_mpos := convert_t_stringliteral_3e7a35b97029f9e0cf6effd71c1a7958822e9a217d3a3aec886668a7dd8231cb_to_t_string_memory_ptr()
                    /// @src 1:1201:1220  "string(\",\").toSlice"
                    let expr_153_self_mpos := expr_152_mpos
                    /// @src 1:1201:1222  "string(\",\").toSlice()"
                    let expr_154_mpos := fun_toSlice_281(expr_153_self_mpos)
                    /// @src 1:1197:1246  "c ? string(\",\").toSlice() : string(\";\").toSlice()"
                    expr_161_mpos := expr_154_mpos
                }
                /// @src 1:1168:1246  "strings.slice memory delim = c ? string(\",\").toSlice() : string(\";\").toSlice()"
                let var_delim_147_mpos := expr_161_mpos
                /// @src 1:1307:1308  "2"
                let expr_173 := 0x02
                /// @src 1:1287:1309  "new strings.slice[](2)"
                let _12 := convert_t_rational_2_by_1_to_t_uint256(expr_173)
                let expr_174_mpos := allocate_and_zero_memory_array_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(_12)
                /// @src 1:1256:1309  "strings.slice[] memory parts = new strings.slice[](2)"
                let var_parts_168_mpos := expr_174_mpos
                /// @src 1:1330:1331  "a"
                let _13_mpos := var_a_117_mpos
                let expr_179_mpos := _13_mpos
                /// @src 1:1319:1324  "parts"
                let _14_mpos := var_parts_168_mpos
                let expr_176_mpos := _14_mpos
                /// @src 1:1325:1326  "0"
                let expr_177 := 0x00
                /// @src 1:1319:1331  "parts[0] = a"
                mstore(memory_array_index_access_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_176_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_177)), expr_179_mpos)
                let _15_mpos := mload(memory_array_index_access_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_176_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_177)))
                let expr_180_mpos := _15_mpos
                /// @src 1:1352:1353  "b"
                let _16_mpos := var_b_126_mpos
                let expr_185_mpos := _16_mpos
                /// @src 1:1341:1346  "parts"
                let _17_mpos := var_parts_168_mpos
                let expr_182_mpos := _17_mpos
                /// @src 1:1347:1348  "1"
                let expr_183 := 0x01
                /// @src 1:1341:1353  "parts[1] = b"
                mstore(memory_array_index_access_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_182_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_183)), expr_185_mpos)
                let _18_mpos := mload(memory_array_index_access_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_182_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_183)))
                let expr_186_mpos := _18_mpos
                /// @src 1:1381:1386  "delim"
                let _19_mpos := var_delim_147_mpos
                let expr_190_mpos := _19_mpos
                /// @src 1:1381:1391  "delim.join"
                let expr_191_self_mpos := expr_190_mpos
                /// @src 1:1392:1397  "parts"
                let _20_mpos := var_parts_168_mpos
                let expr_192_mpos := _20_mpos
                /// @src 1:1381:1398  "delim.join(parts)"
                let expr_193_mpos := fun_join_1996(expr_191_self_mpos, expr_192_mpos)
                /// @src 1:1363:1398  "string memory d = delim.join(parts)"
                let var_d_189_mpos := expr_193_mpos
                /// @src 1:1415:1416  "d"
                let _21_mpos := var_d_189_mpos
                let expr_195_mpos := _21_mpos
                /// @src 1:1415:1424  "d.toSlice"
                let expr_196_self_mpos := expr_195_mpos
                /// @src 1:1415:1426  "d.toSlice()"
                let expr_197_mpos := fun_toSlice_281(expr_196_self_mpos)
                /// @src 1:1415:1430  "d.toSlice().len"
                let expr_198_self_mpos := expr_197_mpos
                /// @src 1:1415:1432  "d.toSlice().len()"
                let expr_199 := fun_len_575(expr_198_self_mpos)
                /// @src 1:1408:1432  "return d.toSlice().len()"
                var__104 := expr_199
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function zero_value_for_split_t_struct$_slice_$210_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_slice_$210_memory_ptr()
            }

            /// @ast-id 25
            /// @src 1:179:293  "function toSlice(string memory a) external pure returns (strings.slice memory) {..."
            function fun_toSlice_25(var_a_14_mpos) -> var__18_mpos {
                /// @src 1:236:256  "strings.slice memory"
                let zero_t_struct$_slice_$210_memory_ptr_22_mpos := zero_value_for_split_t_struct$_slice_$210_memory_ptr()
                var__18_mpos := zero_t_struct$_slice_$210_memory_ptr_22_mpos

                /// @src 1:275:276  "a"
                let _23_mpos := var_a_14_mpos
                let expr_20_mpos := _23_mpos
                /// @src 1:275:284  "a.toSlice"
                let expr_21_self_mpos := expr_20_mpos
                /// @src 1:275:286  "a.toSlice()"
                let expr_22_mpos := fun_toSlice_281(expr_21_self_mpos)
                /// @src 1:268:286  "return a.toSlice()"
                var__18_mpos := expr_22_mpos
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
            }

            /// @ast-id 39
            /// @src 1:299:419  "function roundtrip(string memory a) external pure returns (string memory) {..."
            function fun_roundtrip_39(var_a_27_mpos) -> var__30_mpos {
                /// @src 1:358:371  "string memory"
                let zero_t_string_memory_ptr_24_mpos := zero_value_for_split_t_string_memory_ptr()
                var__30_mpos := zero_t_string_memory_ptr_24_mpos

                /// @src 1:390:391  "a"
                let _25_mpos := var_a_27_mpos
                let expr_32_mpos := _25_mpos
                /// @src 1:390:399  "a.toSlice"
                let expr_33_self_mpos := expr_32_mpos
                /// @src 1:390:401  "a.toSlice()"
                let expr_34_mpos := fun_toSlice_281(expr_33_self_mpos)
                /// @src 1:390:410  "a.toSlice().toString"
                let expr_35_self_mpos := expr_34_mpos
                /// @src 1:390:412  "a.toSlice().toString()"
                let expr_36_mpos := fun_toString_486(expr_35_self_mpos)
                /// @src 1:383:412  "return a.toSlice().toString()"
                var__30_mpos := expr_36_mpos
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            /// @ast-id 53
            /// @src 1:425:529  "function utf8len(string memory a) external pure returns (uint) {..."
            function fun_utf8len_53(var_a_41_mpos) -> var__44 {
                /// @src 1:482:486  "uint"
                let zero_t_uint256_26 := zero_value_for_split_t_uint256()
                var__44 := zero_t_uint256_26

                /// @src 1:505:506  "a"
                let _27_mpos := var_a_41_mpos
                let expr_46_mpos := _27_mpos
                /// @src 1:505:514  "a.toSlice"
                let expr_47_self_mpos := expr_46_mpos
                /// @src 1:505:516  "a.toSlice()"
                let expr_48_mpos := fun_toSlice_281(expr_47_self_mpos)
                /// @src 1:505:520  "a.toSlice().len"
                let expr_49_self_mpos := expr_48_mpos
                /// @src 1:505:522  "a.toSlice().len()"
                let expr_50 := fun_len_575(expr_49_self_mpos)
                /// @src 1:498:522  "return a.toSlice().len()"
                var__44 := expr_50
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            /// @ast-id 97
            /// @src 1:535:795  "function multiconcat(string memory a, uint count) public pure returns (string memory) {..."
            function fun_multiconcat_97(var_a_55_mpos, var_count_57) -> var__60_mpos {
                /// @src 1:606:619  "string memory"
                let zero_t_string_memory_ptr_28_mpos := zero_value_for_split_t_string_memory_ptr()
                var__60_mpos := zero_t_string_memory_ptr_28_mpos

                /// @src 1:656:657  "a"
                let _29_mpos := var_a_55_mpos
                let expr_67_mpos := _29_mpos
                /// @src 1:656:665  "a.toSlice"
                let expr_68_self_mpos := expr_67_mpos
                /// @src 1:656:667  "a.toSlice()"
                let expr_69_mpos := fun_toSlice_281(expr_68_self_mpos)
                /// @src 1:631:667  "strings.slice memory s = a.toSlice()"
                let var_s_66_mpos := expr_69_mpos
                /// @src 1:677:760  "for (uint i = 0; i < count; i++) {..."
                for {
                    /// @src 1:691:692  "0"
                    let expr_73 := 0x00
                    /// @src 1:682:692  "uint i = 0"
                    let var_i_72 := convert_t_rational_0_by_1_to_t_uint256(expr_73)
                    } 1 {
                    /// @src 1:705:708  "i++"
                    let _31 := var_i_72
                    let _30 := increment_wrapping_t_uint256(_31)
                    var_i_72 := _30
                    let expr_79 := _31
                }
                {
                    /// @src 1:694:695  "i"
                    let _32 := var_i_72
                    let expr_75 := _32
                    /// @src 1:698:703  "count"
                    let _33 := var_count_57
                    let expr_76 := _33
                    /// @src 1:694:703  "i < count"
                    let expr_77 := lt(cleanup_t_uint256(expr_75), cleanup_t_uint256(expr_76))
                    if iszero(expr_77) { break }
                    /// @src 1:728:729  "s"
                    let _34_mpos := var_s_66_mpos
                    let expr_82_mpos := _34_mpos
                    /// @src 1:728:736  "s.concat"
                    let expr_83_self_mpos := expr_82_mpos
                    /// @src 1:737:738  "s"
                    let _35_mpos := var_s_66_mpos
                    let expr_84_mpos := _35_mpos
                    /// @src 1:728:739  "s.concat(s)"
                    let expr_85_mpos := fun_concat_1880(expr_83_self_mpos, expr_84_mpos)
                    /// @src 1:728:747  "s.concat(s).toSlice"
                    let expr_86_self_mpos := expr_85_mpos
                    /// @src 1:728:749  "s.concat(s).toSlice()"
                    let expr_87_mpos := fun_toSlice_281(expr_86_self_mpos)
                    /// @src 1:724:749  "s = s.concat(s).toSlice()"
                    var_s_66_mpos := expr_87_mpos
                    let _36_mpos := var_s_66_mpos
                    let expr_88_mpos := _36_mpos
                }
                /// @src 1:776:777  "s"
                let _37_mpos := var_s_66_mpos
                let expr_92_mpos := _37_mpos
                /// @src 1:776:786  "s.toString"
                let expr_93_self_mpos := expr_92_mpos
                /// @src 1:776:788  "s.toString()"
                let expr_94_mpos := fun_toString_486(expr_93_self_mpos)
                /// @src 1:769:788  "return s.toString()"
                var__60_mpos := expr_94_mpos
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(value) -> converted  {
                converted := value

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function allocate_memory_struct_t_struct$_slice_$210_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            /// @ast-id 281
            /// @src 0:3095:3305  "function toSlice(string memory self) internal pure returns (slice memory) {..."
            function fun_toSlice_281(var_self_261_mpos) -> var__265_mpos {
                /// @src 0:3155:3167  "slice memory"
                let zero_t_struct$_slice_$210_memory_ptr_38_mpos := zero_value_for_split_t_struct$_slice_$210_memory_ptr()
                var__265_mpos := zero_t_struct$_slice_$210_memory_ptr_38_mpos

                /// @src 0:3179:3187  "uint ptr"
                let var_ptr_268
                let zero_t_uint256_39 := zero_value_for_split_t_uint256()
                var_ptr_268 := zero_t_uint256_39
                /// @src 0:3197:3252  "assembly {..."
                {
                    var_ptr_268 := add(var_self_261_mpos, 0x20)
                }
                /// @src 0:3280:3284  "self"
                let _40_mpos := var_self_261_mpos
                let expr_274_mpos := _40_mpos
                /// @src 0:3274:3285  "bytes(self)"
                let expr_275_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_274_mpos)
                /// @src 0:3274:3292  "bytes(self).length"
                let expr_276 := array_length_t_bytes_memory_ptr(expr_275_mpos)
                /// @src 0:3294:3297  "ptr"
                let _41 := var_ptr_268
                let expr_277 := _41
                /// @src 0:3268:3298  "slice(bytes(self).length, ptr)"
                let expr_278_mpos := allocate_memory_struct_t_struct$_slice_$210_storage_ptr()
                write_to_memory_t_uint256(add(expr_278_mpos, 0), expr_276)
                write_to_memory_t_uint256(add(expr_278_mpos, 32), expr_277)
                /// @src 0:3261:3298  "return slice(bytes(self).length, ptr)"
                var__265_mpos := expr_278_mpos
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            /// @ast-id 438
            /// @src 0:4620:4990  "function toSliceB32(bytes32 self) internal pure returns (slice memory ret) {..."
            function fun_toSliceB32_438(var_self_422) -> var_ret_426_mpos {
                /// @src 0:4677:4693  "slice memory ret"
                let zero_t_struct$_slice_$210_memory_ptr_42_mpos := zero_value_for_split_t_struct$_slice_$210_memory_ptr()
                var_ret_426_mpos := zero_t_struct$_slice_$210_memory_ptr_42_mpos

                /// @src 0:4788:4954  "assembly {..."
                {
                    let usr$ptr := mload(0x40)
                    mstore(0x40, add(usr$ptr, 0x20))
                    mstore(usr$ptr, var_self_422)
                    mstore(add(var_ret_426_mpos, 0x20), usr$ptr)
                }
                /// @src 0:4978:4982  "self"
                let _43 := var_self_422
                let expr_433 := _43
                /// @src 0:4974:4983  "len(self)"
                let expr_434 := fun_len_420(expr_433)
                /// @src 0:4963:4966  "ret"
                let _44_mpos := var_ret_426_mpos
                let expr_429_mpos := _44_mpos
                /// @src 0:4963:4971  "ret._len"
                let _45 := add(expr_429_mpos, 0)
                /// @src 0:4963:4983  "ret._len = len(self)"
                let _46 := expr_434
                write_to_memory_t_uint256(_45, _46)
                let expr_435 := expr_434

            }
            /// @src 1:60:1441  "contract test {..."

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @ast-id 747
            /// @src 0:8887:9020  "function equals(slice memory self, slice memory other) internal pure returns (bool) {..."
            function fun_equals_747(var_self_731_mpos, var_other_734_mpos) -> var__737 {
                /// @src 0:8965:8969  "bool"
                let zero_t_bool_47 := zero_value_for_split_t_bool()
                var__737 := zero_t_bool_47

                /// @src 0:8996:9000  "self"
                let _48_mpos := var_self_731_mpos
                let expr_740_mpos := _48_mpos
                /// @src 0:9002:9007  "other"
                let _49_mpos := var_other_734_mpos
                let expr_741_mpos := _49_mpos
                /// @src 0:8988:9008  "compare(self, other)"
                let expr_742 := fun_compare_728(expr_740_mpos, expr_741_mpos)
                /// @src 0:9012:9013  "0"
                let expr_743 := 0x00
                /// @src 0:8988:9013  "compare(self, other) == 0"
                let expr_744 := eq(cleanup_t_int256(expr_742), convert_t_rational_0_by_1_to_t_int256(expr_743))
                /// @src 0:8981:9013  "return compare(self, other) == 0"
                var__737 := expr_744
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            /// @ast-id 1077
            /// @src 0:12390:12935  "function startsWith(slice memory self, slice memory needle) internal pure returns (bool) {..."
            function fun_startsWith_1077(var_self_1044_mpos, var_needle_1047_mpos) -> var__1050 {
                /// @src 0:12473:12477  "bool"
                let zero_t_bool_50 := zero_value_for_split_t_bool()
                var__1050 := zero_t_bool_50

                /// @src 0:12493:12497  "self"
                let _51_mpos := var_self_1044_mpos
                let expr_1052_mpos := _51_mpos
                /// @src 0:12493:12502  "self._len"
                let _52 := add(expr_1052_mpos, 0)
                let _53 := read_from_memoryt_uint256(_52)
                let expr_1053 := _53
                /// @src 0:12505:12511  "needle"
                let _54_mpos := var_needle_1047_mpos
                let expr_1054_mpos := _54_mpos
                /// @src 0:12505:12516  "needle._len"
                let _55 := add(expr_1054_mpos, 0)
                let _56 := read_from_memoryt_uint256(_55)
                let expr_1055 := _56
                /// @src 0:12493:12516  "self._len < needle._len"
                let expr_1056 := lt(cleanup_t_uint256(expr_1053), cleanup_t_uint256(expr_1055))
                /// @src 0:12489:12555  "if (self._len < needle._len) {..."
                if expr_1056 {
                    /// @src 0:12539:12544  "false"
                    let expr_1057 := 0x00
                    /// @src 0:12532:12544  "return false"
                    var__1050 := expr_1057
                    leave
                    /// @src 0:12489:12555  "if (self._len < needle._len) {..."
                }
                /// @src 0:12569:12573  "self"
                let _57_mpos := var_self_1044_mpos
                let expr_1061_mpos := _57_mpos
                /// @src 0:12569:12578  "self._ptr"
                let _58 := add(expr_1061_mpos, 32)
                let _59 := read_from_memoryt_uint256(_58)
                let expr_1062 := _59
                /// @src 0:12582:12588  "needle"
                let _60_mpos := var_needle_1047_mpos
                let expr_1063_mpos := _60_mpos
                /// @src 0:12582:12593  "needle._ptr"
                let _61 := add(expr_1063_mpos, 32)
                let _62 := read_from_memoryt_uint256(_61)
                let expr_1064 := _62
                /// @src 0:12569:12593  "self._ptr == needle._ptr"
                let expr_1065 := eq(cleanup_t_uint256(expr_1062), cleanup_t_uint256(expr_1064))
                /// @src 0:12565:12631  "if (self._ptr == needle._ptr) {..."
                if expr_1065 {
                    /// @src 0:12616:12620  "true"
                    let expr_1066 := 0x01
                    /// @src 0:12609:12620  "return true"
                    var__1050 := expr_1066
                    leave
                    /// @src 0:12565:12631  "if (self._ptr == needle._ptr) {..."
                }
                /// @src 0:12641:12651  "bool equal"
                let var_equal_1071
                let zero_t_bool_63 := zero_value_for_split_t_bool()
                var_equal_1071 := zero_t_bool_63
                /// @src 0:12661:12907  "assembly {..."
                {
                    let usr$length := mload(var_needle_1047_mpos)
                    let usr$selfptr := mload(add(var_self_1044_mpos, 0x20))
                    let usr$needleptr := mload(add(var_needle_1047_mpos, 0x20))
                    var_equal_1071 := eq(keccak256(usr$selfptr, usr$length), keccak256(usr$needleptr, usr$length))
                }
                /// @src 0:12923:12928  "equal"
                let _64 := var_equal_1071
                let expr_1074 := _64
                /// @src 0:12916:12928  "return equal"
                var__1050 := expr_1074
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(add(memPtr, 32))
            }

            function convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470()
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

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function zero_memory_chunk_t_bytes1(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_string_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_string_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            /// @ast-id 1996
            /// @src 0:25034:25762  "function join(slice memory self, slice[] memory parts) internal pure returns (string memory) {..."
            function fun_join_1996(var_self_1883_mpos, var_parts_1887_mpos) -> var__1890_mpos {
                /// @src 0:25112:25125  "string memory"
                let zero_t_string_memory_ptr_65_mpos := zero_value_for_split_t_string_memory_ptr()
                var__1890_mpos := zero_t_string_memory_ptr_65_mpos

                /// @src 0:25141:25146  "parts"
                let _66_mpos := var_parts_1887_mpos
                let expr_1892_mpos := _66_mpos
                /// @src 0:25141:25153  "parts.length"
                let expr_1893 := array_length_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_1892_mpos)
                /// @src 0:25157:25158  "0"
                let expr_1894 := 0x00
                /// @src 0:25141:25158  "parts.length == 0"
                let expr_1895 := eq(cleanup_t_uint256(expr_1893), convert_t_rational_0_by_1_to_t_uint256(expr_1894))
                /// @src 0:25137:25181  "if (parts.length == 0)..."
                if expr_1895 {
                    /// @src 0:25172:25181  "return \"\""
                    var__1890_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr()
                    leave
                    /// @src 0:25137:25181  "if (parts.length == 0)..."
                }
                /// @src 0:25206:25210  "self"
                let _67_mpos := var_self_1883_mpos
                let expr_1901_mpos := _67_mpos
                /// @src 0:25206:25215  "self._len"
                let _68 := add(expr_1901_mpos, 0)
                let _69 := read_from_memoryt_uint256(_68)
                let expr_1902 := _69
                /// @src 0:25219:25224  "parts"
                let _70_mpos := var_parts_1887_mpos
                let expr_1903_mpos := _70_mpos
                /// @src 0:25219:25231  "parts.length"
                let expr_1904 := array_length_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_1903_mpos)
                /// @src 0:25234:25235  "1"
                let expr_1905 := 0x01
                /// @src 0:25219:25235  "parts.length - 1"
                let expr_1906 := checked_sub_t_uint256(expr_1904, convert_t_rational_1_by_1_to_t_uint256(expr_1905))

                /// @src 0:25218:25236  "(parts.length - 1)"
                let expr_1907 := expr_1906
                /// @src 0:25206:25236  "self._len * (parts.length - 1)"
                let expr_1908 := checked_mul_t_uint256(expr_1902, expr_1907)

                /// @src 0:25192:25236  "uint length = self._len * (parts.length - 1)"
                let var_length_1900 := expr_1908
                /// @src 0:25246:25320  "for(uint i = 0; i < parts.length; i++)..."
                for {
                    /// @src 0:25259:25260  "0"
                    let expr_1912 := 0x00
                    /// @src 0:25250:25260  "uint i = 0"
                    let var_i_1911 := convert_t_rational_0_by_1_to_t_uint256(expr_1912)
                    } 1 {
                    /// @src 0:25280:25283  "i++"
                    let _72 := var_i_1911
                    let _71 := increment_wrapping_t_uint256(_72)
                    var_i_1911 := _71
                    let expr_1919 := _72
                }
                {
                    /// @src 0:25262:25263  "i"
                    let _73 := var_i_1911
                    let expr_1914 := _73
                    /// @src 0:25266:25271  "parts"
                    let _74_mpos := var_parts_1887_mpos
                    let expr_1915_mpos := _74_mpos
                    /// @src 0:25266:25278  "parts.length"
                    let expr_1916 := array_length_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_1915_mpos)
                    /// @src 0:25262:25278  "i < parts.length"
                    let expr_1917 := lt(cleanup_t_uint256(expr_1914), cleanup_t_uint256(expr_1916))
                    if iszero(expr_1917) { break }
                    /// @src 0:25307:25312  "parts"
                    let _75_mpos := var_parts_1887_mpos
                    let expr_1922_mpos := _75_mpos
                    /// @src 0:25313:25314  "i"
                    let _76 := var_i_1911
                    let expr_1923 := _76
                    /// @src 0:25307:25315  "parts[i]"
                    let _77_mpos := mload(memory_array_index_access_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_1922_mpos, expr_1923))
                    let expr_1924_mpos := _77_mpos
                    /// @src 0:25307:25320  "parts[i]._len"
                    let _78 := add(expr_1924_mpos, 0)
                    let _79 := read_from_memoryt_uint256(_78)
                    let expr_1925 := _79
                    /// @src 0:25297:25320  "length += parts[i]._len"
                    let _80 := var_length_1900
                    let expr_1926 := checked_add_t_uint256(_80, expr_1925)

                    var_length_1900 := expr_1926
                }
                /// @src 0:25362:25368  "length"
                let _81 := var_length_1900
                let expr_1933 := _81
                /// @src 0:25351:25369  "new string(length)"
                let expr_1934_mpos := allocate_and_zero_memory_array_t_string_memory_ptr(expr_1933)
                /// @src 0:25331:25369  "string memory ret = new string(length)"
                let var_ret_1930_mpos := expr_1934_mpos
                /// @src 0:25379:25390  "uint retptr"
                let var_retptr_1937
                let zero_t_uint256_82 := zero_value_for_split_t_uint256()
                var_retptr_1937 := zero_t_uint256_82
                /// @src 0:25400:25435  "assembly { retptr := add(ret, 32) }"
                {
                    var_retptr_1937 := add(var_ret_1930_mpos, 32)
                }
                /// @src 0:25445:25735  "for(uint i = 0; i < parts.length; i++) {..."
                for {
                    /// @src 0:25458:25459  "0"
                    let expr_1942 := 0x00
                    /// @src 0:25449:25459  "uint i = 0"
                    let var_i_1941 := convert_t_rational_0_by_1_to_t_uint256(expr_1942)
                    } 1 {
                    /// @src 0:25479:25482  "i++"
                    let _84 := var_i_1941
                    let _83 := increment_wrapping_t_uint256(_84)
                    var_i_1941 := _83
                    let expr_1949 := _84
                }
                {
                    /// @src 0:25461:25462  "i"
                    let _85 := var_i_1941
                    let expr_1944 := _85
                    /// @src 0:25465:25470  "parts"
                    let _86_mpos := var_parts_1887_mpos
                    let expr_1945_mpos := _86_mpos
                    /// @src 0:25465:25477  "parts.length"
                    let expr_1946 := array_length_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_1945_mpos)
                    /// @src 0:25461:25477  "i < parts.length"
                    let expr_1947 := lt(cleanup_t_uint256(expr_1944), cleanup_t_uint256(expr_1946))
                    if iszero(expr_1947) { break }
                    /// @src 0:25505:25511  "retptr"
                    let _87 := var_retptr_1937
                    let expr_1952 := _87
                    /// @src 0:25513:25518  "parts"
                    let _88_mpos := var_parts_1887_mpos
                    let expr_1953_mpos := _88_mpos
                    /// @src 0:25519:25520  "i"
                    let _89 := var_i_1941
                    let expr_1954 := _89
                    /// @src 0:25513:25521  "parts[i]"
                    let _90_mpos := mload(memory_array_index_access_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_1953_mpos, expr_1954))
                    let expr_1955_mpos := _90_mpos
                    /// @src 0:25513:25526  "parts[i]._ptr"
                    let _91 := add(expr_1955_mpos, 32)
                    let _92 := read_from_memoryt_uint256(_91)
                    let expr_1956 := _92
                    /// @src 0:25528:25533  "parts"
                    let _93_mpos := var_parts_1887_mpos
                    let expr_1957_mpos := _93_mpos
                    /// @src 0:25534:25535  "i"
                    let _94 := var_i_1941
                    let expr_1958 := _94
                    /// @src 0:25528:25536  "parts[i]"
                    let _95_mpos := mload(memory_array_index_access_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_1957_mpos, expr_1958))
                    let expr_1959_mpos := _95_mpos
                    /// @src 0:25528:25541  "parts[i]._len"
                    let _96 := add(expr_1959_mpos, 0)
                    let _97 := read_from_memoryt_uint256(_96)
                    let expr_1960 := _97
                    fun_memcpy_259(expr_1952, expr_1956, expr_1960)
                    /// @src 0:25566:25571  "parts"
                    let _98_mpos := var_parts_1887_mpos
                    let expr_1964_mpos := _98_mpos
                    /// @src 0:25572:25573  "i"
                    let _99 := var_i_1941
                    let expr_1965 := _99
                    /// @src 0:25566:25574  "parts[i]"
                    let _100_mpos := mload(memory_array_index_access_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_1964_mpos, expr_1965))
                    let expr_1966_mpos := _100_mpos
                    /// @src 0:25566:25579  "parts[i]._len"
                    let _101 := add(expr_1966_mpos, 0)
                    let _102 := read_from_memoryt_uint256(_101)
                    let expr_1967 := _102
                    /// @src 0:25556:25579  "retptr += parts[i]._len"
                    let _103 := var_retptr_1937
                    let expr_1968 := checked_add_t_uint256(_103, expr_1967)

                    var_retptr_1937 := expr_1968
                    /// @src 0:25597:25598  "i"
                    let _104 := var_i_1941
                    let expr_1970 := _104
                    /// @src 0:25601:25606  "parts"
                    let _105_mpos := var_parts_1887_mpos
                    let expr_1971_mpos := _105_mpos
                    /// @src 0:25601:25613  "parts.length"
                    let expr_1972 := array_length_t_array$_t_struct$_slice_$210_memory_ptr_$dyn_memory_ptr(expr_1971_mpos)
                    /// @src 0:25616:25617  "1"
                    let expr_1973 := 0x01
                    /// @src 0:25601:25617  "parts.length - 1"
                    let expr_1974 := checked_sub_t_uint256(expr_1972, convert_t_rational_1_by_1_to_t_uint256(expr_1973))

                    /// @src 0:25597:25617  "i < parts.length - 1"
                    let expr_1975 := lt(cleanup_t_uint256(expr_1970), cleanup_t_uint256(expr_1974))
                    /// @src 0:25593:25725  "if (i < parts.length - 1) {..."
                    if expr_1975 {
                        /// @src 0:25644:25650  "retptr"
                        let _106 := var_retptr_1937
                        let expr_1977 := _106
                        /// @src 0:25652:25656  "self"
                        let _107_mpos := var_self_1883_mpos
                        let expr_1978_mpos := _107_mpos
                        /// @src 0:25652:25661  "self._ptr"
                        let _108 := add(expr_1978_mpos, 32)
                        let _109 := read_from_memoryt_uint256(_108)
                        let expr_1979 := _109
                        /// @src 0:25663:25667  "self"
                        let _110_mpos := var_self_1883_mpos
                        let expr_1980_mpos := _110_mpos
                        /// @src 0:25663:25672  "self._len"
                        let _111 := add(expr_1980_mpos, 0)
                        let _112 := read_from_memoryt_uint256(_111)
                        let expr_1981 := _112
                        fun_memcpy_259(expr_1977, expr_1979, expr_1981)
                        /// @src 0:25701:25705  "self"
                        let _113_mpos := var_self_1883_mpos
                        let expr_1985_mpos := _113_mpos
                        /// @src 0:25701:25710  "self._len"
                        let _114 := add(expr_1985_mpos, 0)
                        let _115 := read_from_memoryt_uint256(_114)
                        let expr_1986 := _115
                        /// @src 0:25691:25710  "retptr += self._len"
                        let _116 := var_retptr_1937
                        let expr_1987 := checked_add_t_uint256(_116, expr_1986)

                        var_retptr_1937 := expr_1987
                        /// @src 0:25593:25725  "if (i < parts.length - 1) {..."
                    }
                }
                /// @src 0:25752:25755  "ret"
                let _117_mpos := var_ret_1930_mpos
                let expr_1993_mpos := _117_mpos
                /// @src 0:25745:25755  "return ret"
                var__1890_mpos := expr_1993_mpos
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function cleanup_t_rational_31_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_31_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_31_by_1(value)))
            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function cleanup_t_rational_128_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_128_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_128_by_1(value)))
            }

            function cleanup_t_rational_224_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_224_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_224_by_1(value)))
            }

            function cleanup_t_rational_240_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_240_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_240_by_1(value)))
            }

            function cleanup_t_rational_248_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_248_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_248_by_1(value)))
            }

            function cleanup_t_rational_252_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_252_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_252_by_1(value)))
            }

            function cleanup_t_rational_6_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6_by_1(value)))
            }

            function cleanup_t_rational_5_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5_by_1(value)))
            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            /// @ast-id 575
            /// @src 0:6140:6832  "function len(slice memory self) internal pure returns (uint l) {..."
            function fun_len_575(var_self_489_mpos) -> var_l_492 {
                /// @src 0:6195:6201  "uint l"
                let zero_t_uint256_118 := zero_value_for_split_t_uint256()
                var_l_492 := zero_t_uint256_118

                /// @src 0:6299:6303  "self"
                let _119_mpos := var_self_489_mpos
                let expr_496_mpos := _119_mpos
                /// @src 0:6299:6308  "self._ptr"
                let _120 := add(expr_496_mpos, 32)
                let _121 := read_from_memoryt_uint256(_120)
                let expr_497 := _121
                /// @src 0:6311:6313  "31"
                let expr_498 := 0x1f
                /// @src 0:6299:6313  "self._ptr - 31"
                let expr_499 := checked_sub_t_uint256(expr_497, convert_t_rational_31_by_1_to_t_uint256(expr_498))

                /// @src 0:6288:6313  "uint ptr = self._ptr - 31"
                let var_ptr_495 := expr_499
                /// @src 0:6334:6337  "ptr"
                let _122 := var_ptr_495
                let expr_503 := _122
                /// @src 0:6340:6344  "self"
                let _123_mpos := var_self_489_mpos
                let expr_504_mpos := _123_mpos
                /// @src 0:6340:6349  "self._len"
                let _124 := add(expr_504_mpos, 0)
                let _125 := read_from_memoryt_uint256(_124)
                let expr_505 := _125
                /// @src 0:6334:6349  "ptr + self._len"
                let expr_506 := checked_add_t_uint256(expr_503, expr_505)

                /// @src 0:6323:6349  "uint end = ptr + self._len"
                let var_end_502 := expr_506
                /// @src 0:6359:6826  "for (l = 0; ptr < end; l++) {..."
                for {
                    /// @src 0:6368:6369  "0"
                    let expr_509 := 0x00
                    /// @src 0:6364:6369  "l = 0"
                    let _126 := convert_t_rational_0_by_1_to_t_uint256(expr_509)
                    var_l_492 := _126
                    let expr_510 := _126
                    } 1 {
                    /// @src 0:6382:6385  "l++"
                    let _128 := var_l_492
                    let _127 := increment_t_uint256(_128)
                    var_l_492 := _127
                    let expr_516 := _128
                }
                {
                    /// @src 0:6371:6374  "ptr"
                    let _129 := var_ptr_495
                    let expr_512 := _129
                    /// @src 0:6377:6380  "end"
                    let _130 := var_end_502
                    let expr_513 := _130
                    /// @src 0:6371:6380  "ptr < end"
                    let expr_514 := lt(cleanup_t_uint256(expr_512), cleanup_t_uint256(expr_513))
                    if iszero(expr_514) { break }
                    /// @src 0:6401:6408  "uint8 b"
                    let var_b_519
                    let zero_t_uint8_131 := zero_value_for_split_t_uint8()
                    var_b_519 := zero_t_uint8_131
                    /// @src 0:6422:6461  "assembly { b := and(mload(ptr), 0xFF) }"
                    {
                        var_b_519 := and(mload(var_ptr_495), 0xFF)
                    }
                    /// @src 0:6478:6479  "b"
                    let _132 := var_b_519
                    let expr_522 := _132
                    /// @src 0:6482:6486  "0x80"
                    let expr_523 := 0x80
                    /// @src 0:6478:6486  "b < 0x80"
                    let expr_524 := lt(cleanup_t_uint8(expr_522), convert_t_rational_128_by_1_to_t_uint8(expr_523))
                    /// @src 0:6474:6816  "if (b < 0x80) {..."
                    switch expr_524
                    case 0 {
                        /// @src 0:6538:6539  "b"
                        let _133 := var_b_519
                        let expr_530 := _133
                        /// @src 0:6542:6546  "0xE0"
                        let expr_531 := 0xe0
                        /// @src 0:6538:6546  "b < 0xE0"
                        let expr_532 := lt(cleanup_t_uint8(expr_530), convert_t_rational_224_by_1_to_t_uint8(expr_531))
                        /// @src 0:6535:6816  "if(b < 0xE0) {..."
                        switch expr_532
                        case 0 {
                            /// @src 0:6598:6599  "b"
                            let _134 := var_b_519
                            let expr_538 := _134
                            /// @src 0:6602:6606  "0xF0"
                            let expr_539 := 0xf0
                            /// @src 0:6598:6606  "b < 0xF0"
                            let expr_540 := lt(cleanup_t_uint8(expr_538), convert_t_rational_240_by_1_to_t_uint8(expr_539))
                            /// @src 0:6595:6816  "if(b < 0xF0) {..."
                            switch expr_540
                            case 0 {
                                /// @src 0:6658:6659  "b"
                                let _135 := var_b_519
                                let expr_546 := _135
                                /// @src 0:6662:6666  "0xF8"
                                let expr_547 := 0xf8
                                /// @src 0:6658:6666  "b < 0xF8"
                                let expr_548 := lt(cleanup_t_uint8(expr_546), convert_t_rational_248_by_1_to_t_uint8(expr_547))
                                /// @src 0:6655:6816  "if(b < 0xF8) {..."
                                switch expr_548
                                case 0 {
                                    /// @src 0:6718:6719  "b"
                                    let _136 := var_b_519
                                    let expr_554 := _136
                                    /// @src 0:6722:6726  "0xFC"
                                    let expr_555 := 0xfc
                                    /// @src 0:6718:6726  "b < 0xFC"
                                    let expr_556 := lt(cleanup_t_uint8(expr_554), convert_t_rational_252_by_1_to_t_uint8(expr_555))
                                    /// @src 0:6715:6816  "if(b < 0xFC) {..."
                                    switch expr_556
                                    case 0 {
                                        /// @src 0:6800:6801  "6"
                                        let expr_563 := 0x06
                                        /// @src 0:6793:6801  "ptr += 6"
                                        let _137 := convert_t_rational_6_by_1_to_t_uint256(expr_563)
                                        let _138 := var_ptr_495
                                        let expr_564 := checked_add_t_uint256(_138, _137)

                                        var_ptr_495 := expr_564
                                        /// @src 0:6715:6816  "if(b < 0xFC) {..."
                                    }
                                    default {
                                        /// @src 0:6753:6754  "5"
                                        let expr_558 := 0x05
                                        /// @src 0:6746:6754  "ptr += 5"
                                        let _139 := convert_t_rational_5_by_1_to_t_uint256(expr_558)
                                        let _140 := var_ptr_495
                                        let expr_559 := checked_add_t_uint256(_140, _139)

                                        var_ptr_495 := expr_559
                                        /// @src 0:6715:6816  "if(b < 0xFC) {..."
                                    }
                                    /// @src 0:6655:6816  "if(b < 0xF8) {..."
                                }
                                default {
                                    /// @src 0:6693:6694  "4"
                                    let expr_550 := 0x04
                                    /// @src 0:6686:6694  "ptr += 4"
                                    let _141 := convert_t_rational_4_by_1_to_t_uint256(expr_550)
                                    let _142 := var_ptr_495
                                    let expr_551 := checked_add_t_uint256(_142, _141)

                                    var_ptr_495 := expr_551
                                    /// @src 0:6655:6816  "if(b < 0xF8) {..."
                                }
                                /// @src 0:6595:6816  "if(b < 0xF0) {..."
                            }
                            default {
                                /// @src 0:6633:6634  "3"
                                let expr_542 := 0x03
                                /// @src 0:6626:6634  "ptr += 3"
                                let _143 := convert_t_rational_3_by_1_to_t_uint256(expr_542)
                                let _144 := var_ptr_495
                                let expr_543 := checked_add_t_uint256(_144, _143)

                                var_ptr_495 := expr_543
                                /// @src 0:6595:6816  "if(b < 0xF0) {..."
                            }
                            /// @src 0:6535:6816  "if(b < 0xE0) {..."
                        }
                        default {
                            /// @src 0:6573:6574  "2"
                            let expr_534 := 0x02
                            /// @src 0:6566:6574  "ptr += 2"
                            let _145 := convert_t_rational_2_by_1_to_t_uint256(expr_534)
                            let _146 := var_ptr_495
                            let expr_535 := checked_add_t_uint256(_146, _145)

                            var_ptr_495 := expr_535
                            /// @src 0:6535:6816  "if(b < 0xE0) {..."
                        }
                        /// @src 0:6474:6816  "if (b < 0x80) {..."
                    }
                    default {
                        /// @src 0:6513:6514  "1"
                        let expr_526 := 0x01
                        /// @src 0:6506:6514  "ptr += 1"
                        let _147 := convert_t_rational_1_by_1_to_t_uint256(expr_526)
                        let _148 := var_ptr_495
                        let expr_527 := checked_add_t_uint256(_148, _147)

                        var_ptr_495 := expr_527
                        /// @src 0:6474:6816  "if (b < 0x80) {..."
                    }
                }

            }
            /// @src 1:60:1441  "contract test {..."

            /// @ast-id 486
            /// @src 0:5484:5749  "function toString(slice memory self) internal pure returns (string memory) {..."
            function fun_toString_486(var_self_458_mpos) -> var__461_mpos {
                /// @src 0:5544:5557  "string memory"
                let zero_t_string_memory_ptr_149_mpos := zero_value_for_split_t_string_memory_ptr()
                var__461_mpos := zero_t_string_memory_ptr_149_mpos

                /// @src 0:5600:5604  "self"
                let _150_mpos := var_self_458_mpos
                let expr_467_mpos := _150_mpos
                /// @src 0:5600:5609  "self._len"
                let _151 := add(expr_467_mpos, 0)
                let _152 := read_from_memoryt_uint256(_151)
                let expr_468 := _152
                /// @src 0:5589:5610  "new string(self._len)"
                let expr_469_mpos := allocate_and_zero_memory_array_t_string_memory_ptr(expr_468)
                /// @src 0:5569:5610  "string memory ret = new string(self._len)"
                let var_ret_464_mpos := expr_469_mpos
                /// @src 0:5620:5631  "uint retptr"
                let var_retptr_472
                let zero_t_uint256_153 := zero_value_for_split_t_uint256()
                var_retptr_472 := zero_t_uint256_153
                /// @src 0:5641:5676  "assembly { retptr := add(ret, 32) }"
                {
                    var_retptr_472 := add(var_ret_464_mpos, 32)
                }
                /// @src 0:5693:5699  "retptr"
                let _154 := var_retptr_472
                let expr_476 := _154
                /// @src 0:5701:5705  "self"
                let _155_mpos := var_self_458_mpos
                let expr_477_mpos := _155_mpos
                /// @src 0:5701:5710  "self._ptr"
                let _156 := add(expr_477_mpos, 32)
                let _157 := read_from_memoryt_uint256(_156)
                let expr_478 := _157
                /// @src 0:5712:5716  "self"
                let _158_mpos := var_self_458_mpos
                let expr_479_mpos := _158_mpos
                /// @src 0:5712:5721  "self._len"
                let _159 := add(expr_479_mpos, 0)
                let _160 := read_from_memoryt_uint256(_159)
                let expr_480 := _160
                fun_memcpy_259(expr_476, expr_478, expr_480)
                /// @src 0:5739:5742  "ret"
                let _161_mpos := var_ret_464_mpos
                let expr_483_mpos := _161_mpos
                /// @src 0:5732:5742  "return ret"
                var__461_mpos := expr_483_mpos
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            /// @ast-id 1880
            /// @src 0:24343:24698  "function concat(slice memory self, slice memory other) internal pure returns (string memory) {..."
            function fun_concat_1880(var_self_1835_mpos, var_other_1838_mpos) -> var__1841_mpos {
                /// @src 0:24421:24434  "string memory"
                let zero_t_string_memory_ptr_162_mpos := zero_value_for_split_t_string_memory_ptr()
                var__1841_mpos := zero_t_string_memory_ptr_162_mpos

                /// @src 0:24477:24481  "self"
                let _163_mpos := var_self_1835_mpos
                let expr_1847_mpos := _163_mpos
                /// @src 0:24477:24486  "self._len"
                let _164 := add(expr_1847_mpos, 0)
                let _165 := read_from_memoryt_uint256(_164)
                let expr_1848 := _165
                /// @src 0:24489:24494  "other"
                let _166_mpos := var_other_1838_mpos
                let expr_1849_mpos := _166_mpos
                /// @src 0:24489:24499  "other._len"
                let _167 := add(expr_1849_mpos, 0)
                let _168 := read_from_memoryt_uint256(_167)
                let expr_1850 := _168
                /// @src 0:24477:24499  "self._len + other._len"
                let expr_1851 := checked_add_t_uint256(expr_1848, expr_1850)

                /// @src 0:24466:24500  "new string(self._len + other._len)"
                let expr_1852_mpos := allocate_and_zero_memory_array_t_string_memory_ptr(expr_1851)
                /// @src 0:24446:24500  "string memory ret = new string(self._len + other._len)"
                let var_ret_1844_mpos := expr_1852_mpos
                /// @src 0:24510:24521  "uint retptr"
                let var_retptr_1855
                let zero_t_uint256_169 := zero_value_for_split_t_uint256()
                var_retptr_1855 := zero_t_uint256_169
                /// @src 0:24531:24566  "assembly { retptr := add(ret, 32) }"
                {
                    var_retptr_1855 := add(var_ret_1844_mpos, 32)
                }
                /// @src 0:24582:24588  "retptr"
                let _170 := var_retptr_1855
                let expr_1859 := _170
                /// @src 0:24590:24594  "self"
                let _171_mpos := var_self_1835_mpos
                let expr_1860_mpos := _171_mpos
                /// @src 0:24590:24599  "self._ptr"
                let _172 := add(expr_1860_mpos, 32)
                let _173 := read_from_memoryt_uint256(_172)
                let expr_1861 := _173
                /// @src 0:24601:24605  "self"
                let _174_mpos := var_self_1835_mpos
                let expr_1862_mpos := _174_mpos
                /// @src 0:24601:24610  "self._len"
                let _175 := add(expr_1862_mpos, 0)
                let _176 := read_from_memoryt_uint256(_175)
                let expr_1863 := _176
                fun_memcpy_259(expr_1859, expr_1861, expr_1863)
                /// @src 0:24628:24634  "retptr"
                let _177 := var_retptr_1855
                let expr_1867 := _177
                /// @src 0:24637:24641  "self"
                let _178_mpos := var_self_1835_mpos
                let expr_1868_mpos := _178_mpos
                /// @src 0:24637:24646  "self._len"
                let _179 := add(expr_1868_mpos, 0)
                let _180 := read_from_memoryt_uint256(_179)
                let expr_1869 := _180
                /// @src 0:24628:24646  "retptr + self._len"
                let expr_1870 := checked_add_t_uint256(expr_1867, expr_1869)

                /// @src 0:24648:24653  "other"
                let _181_mpos := var_other_1838_mpos
                let expr_1871_mpos := _181_mpos
                /// @src 0:24648:24658  "other._ptr"
                let _182 := add(expr_1871_mpos, 32)
                let _183 := read_from_memoryt_uint256(_182)
                let expr_1872 := _183
                /// @src 0:24660:24665  "other"
                let _184_mpos := var_other_1838_mpos
                let expr_1873_mpos := _184_mpos
                /// @src 0:24660:24670  "other._len"
                let _185 := add(expr_1873_mpos, 0)
                let _186 := read_from_memoryt_uint256(_185)
                let expr_1874 := _186
                fun_memcpy_259(expr_1870, expr_1872, expr_1874)
                /// @src 0:24688:24691  "ret"
                let _187_mpos := var_ret_1844_mpos
                let expr_1877_mpos := _187_mpos
                /// @src 0:24681:24691  "return ret"
                var__1841_mpos := expr_1877_mpos
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function convert_t_rational_0_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_0_by_1(value)))
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function convert_t_bytes32_to_t_uint256(value) -> converted {
                converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
            }

            function cleanup_t_rational_340282366920938463463374607431768211455_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463463374607431768211455_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463463374607431768211455_by_1(value)))
            }

            function cleanup_t_rational_16_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16_by_1(value)))
            }

            function cleanup_t_rational_340282366920938463463374607431768211456_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463463374607431768211456_by_1(value)))
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function convert_t_uint256_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_uint256(value)))
            }

            function cleanup_t_rational_18446744073709551615_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18446744073709551615_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18446744073709551615_by_1(value)))
            }

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8_by_1(value)))
            }

            function cleanup_t_rational_18446744073709551616_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18446744073709551616_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18446744073709551616_by_1(value)))
            }

            function cleanup_t_rational_4294967295_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4294967295_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4294967295_by_1(value)))
            }

            function cleanup_t_rational_4294967296_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4294967296_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4294967296_by_1(value)))
            }

            function cleanup_t_rational_65535_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_65535_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_65535_by_1(value)))
            }

            function cleanup_t_rational_65536_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_65536_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_65536_by_1(value)))
            }

            function cleanup_t_rational_255_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_255_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_255_by_1(value)))
            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            /// @ast-id 420
            /// @src 0:3501:4314  "function len(bytes32 self) internal pure returns (uint) {..."
            function fun_len_420(var_self_283) -> var__286 {
                /// @src 0:3551:3555  "uint"
                let zero_t_uint256_188 := zero_value_for_split_t_uint256()
                var__286 := zero_t_uint256_188

                /// @src 0:3567:3575  "uint ret"
                let var_ret_289
                let zero_t_uint256_189 := zero_value_for_split_t_uint256()
                var_ret_289 := zero_t_uint256_189
                /// @src 0:3589:3593  "self"
                let _190 := var_self_283
                let expr_291 := _190
                /// @src 0:3597:3598  "0"
                let expr_292 := 0x00
                /// @src 0:3589:3598  "self == 0"
                let expr_293 := eq(cleanup_t_bytes32(expr_291), convert_t_rational_0_by_1_to_t_bytes32(expr_292))
                /// @src 0:3585:3620  "if (self == 0)..."
                if expr_293 {
                    /// @src 0:3619:3620  "0"
                    let expr_294 := 0x00
                    /// @src 0:3612:3620  "return 0"
                    var__286 := convert_t_rational_0_by_1_to_t_uint256(expr_294)
                    leave
                    /// @src 0:3585:3620  "if (self == 0)..."
                }
                /// @src 0:3642:3646  "self"
                let _191 := var_self_283
                let expr_299 := _191
                /// @src 0:3634:3647  "uint256(self)"
                let expr_300 := convert_t_bytes32_to_t_uint256(expr_299)
                /// @src 0:3650:3684  "0xffffffffffffffffffffffffffffffff"
                let expr_301 := 0xffffffffffffffffffffffffffffffff
                /// @src 0:3634:3684  "uint256(self) & 0xffffffffffffffffffffffffffffffff"
                let expr_302 := and(expr_300, convert_t_rational_340282366920938463463374607431768211455_by_1_to_t_uint256(expr_301))

                /// @src 0:3688:3689  "0"
                let expr_303 := 0x00
                /// @src 0:3634:3689  "uint256(self) & 0xffffffffffffffffffffffffffffffff == 0"
                let expr_304 := eq(cleanup_t_uint256(expr_302), convert_t_rational_0_by_1_to_t_uint256(expr_303))
                /// @src 0:3630:3803  "if (uint256(self) & 0xffffffffffffffffffffffffffffffff == 0) {..."
                if expr_304 {
                    /// @src 0:3712:3714  "16"
                    let expr_306 := 0x10
                    /// @src 0:3705:3714  "ret += 16"
                    let _192 := convert_t_rational_16_by_1_to_t_uint256(expr_306)
                    let _193 := var_ret_289
                    let expr_307 := checked_add_t_uint256(_193, _192)

                    var_ret_289 := expr_307
                    /// @src 0:3748:3752  "self"
                    let _194 := var_self_283
                    let expr_314 := _194
                    /// @src 0:3743:3753  "uint(self)"
                    let expr_315 := convert_t_bytes32_to_t_uint256(expr_314)
                    /// @src 0:3756:3791  "0x100000000000000000000000000000000"
                    let expr_316 := 0x0100000000000000000000000000000000
                    /// @src 0:3743:3791  "uint(self) / 0x100000000000000000000000000000000"
                    let expr_317 := checked_div_t_uint256(expr_315, convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_316))

                    /// @src 0:3735:3792  "bytes32(uint(self) / 0x100000000000000000000000000000000)"
                    let expr_318 := convert_t_uint256_to_t_bytes32(expr_317)
                    /// @src 0:3728:3792  "self = bytes32(uint(self) / 0x100000000000000000000000000000000)"
                    var_self_283 := expr_318
                    let expr_319 := expr_318
                    /// @src 0:3630:3803  "if (uint256(self) & 0xffffffffffffffffffffffffffffffff == 0) {..."
                }
                /// @src 0:3824:3828  "self"
                let _195 := var_self_283
                let expr_325 := _195
                /// @src 0:3816:3829  "uint256(self)"
                let expr_326 := convert_t_bytes32_to_t_uint256(expr_325)
                /// @src 0:3832:3850  "0xffffffffffffffff"
                let expr_327 := 0xffffffffffffffff
                /// @src 0:3816:3850  "uint256(self) & 0xffffffffffffffff"
                let expr_328 := and(expr_326, convert_t_rational_18446744073709551615_by_1_to_t_uint256(expr_327))

                /// @src 0:3854:3855  "0"
                let expr_329 := 0x00
                /// @src 0:3816:3855  "uint256(self) & 0xffffffffffffffff == 0"
                let expr_330 := eq(cleanup_t_uint256(expr_328), convert_t_rational_0_by_1_to_t_uint256(expr_329))
                /// @src 0:3812:3952  "if (uint256(self) & 0xffffffffffffffff == 0) {..."
                if expr_330 {
                    /// @src 0:3878:3879  "8"
                    let expr_332 := 0x08
                    /// @src 0:3871:3879  "ret += 8"
                    let _196 := convert_t_rational_8_by_1_to_t_uint256(expr_332)
                    let _197 := var_ret_289
                    let expr_333 := checked_add_t_uint256(_197, _196)

                    var_ret_289 := expr_333
                    /// @src 0:3913:3917  "self"
                    let _198 := var_self_283
                    let expr_340 := _198
                    /// @src 0:3908:3918  "uint(self)"
                    let expr_341 := convert_t_bytes32_to_t_uint256(expr_340)
                    /// @src 0:3921:3940  "0x10000000000000000"
                    let expr_342 := 0x010000000000000000
                    /// @src 0:3908:3940  "uint(self) / 0x10000000000000000"
                    let expr_343 := checked_div_t_uint256(expr_341, convert_t_rational_18446744073709551616_by_1_to_t_uint256(expr_342))

                    /// @src 0:3900:3941  "bytes32(uint(self) / 0x10000000000000000)"
                    let expr_344 := convert_t_uint256_to_t_bytes32(expr_343)
                    /// @src 0:3893:3941  "self = bytes32(uint(self) / 0x10000000000000000)"
                    var_self_283 := expr_344
                    let expr_345 := expr_344
                    /// @src 0:3812:3952  "if (uint256(self) & 0xffffffffffffffff == 0) {..."
                }
                /// @src 0:3973:3977  "self"
                let _199 := var_self_283
                let expr_351 := _199
                /// @src 0:3965:3978  "uint256(self)"
                let expr_352 := convert_t_bytes32_to_t_uint256(expr_351)
                /// @src 0:3981:3991  "0xffffffff"
                let expr_353 := 0xffffffff
                /// @src 0:3965:3991  "uint256(self) & 0xffffffff"
                let expr_354 := and(expr_352, convert_t_rational_4294967295_by_1_to_t_uint256(expr_353))

                /// @src 0:3995:3996  "0"
                let expr_355 := 0x00
                /// @src 0:3965:3996  "uint256(self) & 0xffffffff == 0"
                let expr_356 := eq(cleanup_t_uint256(expr_354), convert_t_rational_0_by_1_to_t_uint256(expr_355))
                /// @src 0:3961:4085  "if (uint256(self) & 0xffffffff == 0) {..."
                if expr_356 {
                    /// @src 0:4019:4020  "4"
                    let expr_358 := 0x04
                    /// @src 0:4012:4020  "ret += 4"
                    let _200 := convert_t_rational_4_by_1_to_t_uint256(expr_358)
                    let _201 := var_ret_289
                    let expr_359 := checked_add_t_uint256(_201, _200)

                    var_ret_289 := expr_359
                    /// @src 0:4054:4058  "self"
                    let _202 := var_self_283
                    let expr_366 := _202
                    /// @src 0:4049:4059  "uint(self)"
                    let expr_367 := convert_t_bytes32_to_t_uint256(expr_366)
                    /// @src 0:4062:4073  "0x100000000"
                    let expr_368 := 0x0100000000
                    /// @src 0:4049:4073  "uint(self) / 0x100000000"
                    let expr_369 := checked_div_t_uint256(expr_367, convert_t_rational_4294967296_by_1_to_t_uint256(expr_368))

                    /// @src 0:4041:4074  "bytes32(uint(self) / 0x100000000)"
                    let expr_370 := convert_t_uint256_to_t_bytes32(expr_369)
                    /// @src 0:4034:4074  "self = bytes32(uint(self) / 0x100000000)"
                    var_self_283 := expr_370
                    let expr_371 := expr_370
                    /// @src 0:3961:4085  "if (uint256(self) & 0xffffffff == 0) {..."
                }
                /// @src 0:4106:4110  "self"
                let _203 := var_self_283
                let expr_377 := _203
                /// @src 0:4098:4111  "uint256(self)"
                let expr_378 := convert_t_bytes32_to_t_uint256(expr_377)
                /// @src 0:4114:4120  "0xffff"
                let expr_379 := 0xffff
                /// @src 0:4098:4120  "uint256(self) & 0xffff"
                let expr_380 := and(expr_378, convert_t_rational_65535_by_1_to_t_uint256(expr_379))

                /// @src 0:4124:4125  "0"
                let expr_381 := 0x00
                /// @src 0:4098:4125  "uint256(self) & 0xffff == 0"
                let expr_382 := eq(cleanup_t_uint256(expr_380), convert_t_rational_0_by_1_to_t_uint256(expr_381))
                /// @src 0:4094:4210  "if (uint256(self) & 0xffff == 0) {..."
                if expr_382 {
                    /// @src 0:4148:4149  "2"
                    let expr_384 := 0x02
                    /// @src 0:4141:4149  "ret += 2"
                    let _204 := convert_t_rational_2_by_1_to_t_uint256(expr_384)
                    let _205 := var_ret_289
                    let expr_385 := checked_add_t_uint256(_205, _204)

                    var_ret_289 := expr_385
                    /// @src 0:4183:4187  "self"
                    let _206 := var_self_283
                    let expr_392 := _206
                    /// @src 0:4178:4188  "uint(self)"
                    let expr_393 := convert_t_bytes32_to_t_uint256(expr_392)
                    /// @src 0:4191:4198  "0x10000"
                    let expr_394 := 0x010000
                    /// @src 0:4178:4198  "uint(self) / 0x10000"
                    let expr_395 := checked_div_t_uint256(expr_393, convert_t_rational_65536_by_1_to_t_uint256(expr_394))

                    /// @src 0:4170:4199  "bytes32(uint(self) / 0x10000)"
                    let expr_396 := convert_t_uint256_to_t_bytes32(expr_395)
                    /// @src 0:4163:4199  "self = bytes32(uint(self) / 0x10000)"
                    var_self_283 := expr_396
                    let expr_397 := expr_396
                    /// @src 0:4094:4210  "if (uint256(self) & 0xffff == 0) {..."
                }
                /// @src 0:4231:4235  "self"
                let _207 := var_self_283
                let expr_403 := _207
                /// @src 0:4223:4236  "uint256(self)"
                let expr_404 := convert_t_bytes32_to_t_uint256(expr_403)
                /// @src 0:4239:4243  "0xff"
                let expr_405 := 0xff
                /// @src 0:4223:4243  "uint256(self) & 0xff"
                let expr_406 := and(expr_404, convert_t_rational_255_by_1_to_t_uint256(expr_405))

                /// @src 0:4247:4248  "0"
                let expr_407 := 0x00
                /// @src 0:4223:4248  "uint256(self) & 0xff == 0"
                let expr_408 := eq(cleanup_t_uint256(expr_406), convert_t_rational_0_by_1_to_t_uint256(expr_407))
                /// @src 0:4219:4283  "if (uint256(self) & 0xff == 0) {..."
                if expr_408 {
                    /// @src 0:4271:4272  "1"
                    let expr_410 := 0x01
                    /// @src 0:4264:4272  "ret += 1"
                    let _208 := convert_t_rational_1_by_1_to_t_uint256(expr_410)
                    let _209 := var_ret_289
                    let expr_411 := checked_add_t_uint256(_209, _208)

                    var_ret_289 := expr_411
                    /// @src 0:4219:4283  "if (uint256(self) & 0xff == 0) {..."
                }
                /// @src 0:4299:4301  "32"
                let expr_415 := 0x20
                /// @src 0:4304:4307  "ret"
                let _210 := var_ret_289
                let expr_416 := _210
                /// @src 0:4299:4307  "32 - ret"
                let expr_417 := checked_sub_t_uint256(convert_t_rational_32_by_1_to_t_uint256(expr_415), expr_416)

                /// @src 0:4292:4307  "return 32 - ret"
                var__286 := expr_417
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function zero_value_for_split_t_int256() -> ret {
                ret := 0
            }

            function checked_exp_t_rational_2_by_1_t_uint256(exponent) -> power {
                exponent := cleanup_t_uint256(exponent)

                if gt(exponent, 255) { panic_error_0x11() }

                power := exp(2, exponent)
            }

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            function convert_t_uint256_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_uint256(value)))
            }

            function checked_sub_t_int256(x, y) -> diff {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                diff := sub(x, y)

                // underflow, if y >= 0 and diff > x
                // overflow, if y < 0 and diff < x
                if or(
                    and(iszero(slt(y, 0)), sgt(diff, x)),
                    and(slt(y, 0), slt(diff, x))
                ) { panic_error_0x11() }

            }

            /// @ast-id 728
            /// @src 0:7554:8643  "function compare(slice memory self, slice memory other) internal pure returns (int) {..."
            function fun_compare_728(var_self_592_mpos, var_other_595_mpos) -> var__598 {
                /// @src 0:7633:7636  "int"
                let zero_t_int256_211 := zero_value_for_split_t_int256()
                var__598 := zero_t_int256_211

                /// @src 0:7664:7668  "self"
                let _212_mpos := var_self_592_mpos
                let expr_602_mpos := _212_mpos
                /// @src 0:7664:7673  "self._len"
                let _213 := add(expr_602_mpos, 0)
                let _214 := read_from_memoryt_uint256(_213)
                let expr_603 := _214
                /// @src 0:7648:7673  "uint shortest = self._len"
                let var_shortest_601 := expr_603
                /// @src 0:7687:7692  "other"
                let _215_mpos := var_other_595_mpos
                let expr_605_mpos := _215_mpos
                /// @src 0:7687:7697  "other._len"
                let _216 := add(expr_605_mpos, 0)
                let _217 := read_from_memoryt_uint256(_216)
                let expr_606 := _217
                /// @src 0:7700:7704  "self"
                let _218_mpos := var_self_592_mpos
                let expr_607_mpos := _218_mpos
                /// @src 0:7700:7709  "self._len"
                let _219 := add(expr_607_mpos, 0)
                let _220 := read_from_memoryt_uint256(_219)
                let expr_608 := _220
                /// @src 0:7687:7709  "other._len < self._len"
                let expr_609 := lt(cleanup_t_uint256(expr_606), cleanup_t_uint256(expr_608))
                /// @src 0:7683:7744  "if (other._len < self._len)..."
                if expr_609 {
                    /// @src 0:7734:7739  "other"
                    let _221_mpos := var_other_595_mpos
                    let expr_611_mpos := _221_mpos
                    /// @src 0:7734:7744  "other._len"
                    let _222 := add(expr_611_mpos, 0)
                    let _223 := read_from_memoryt_uint256(_222)
                    let expr_612 := _223
                    /// @src 0:7723:7744  "shortest = other._len"
                    var_shortest_601 := expr_612
                    let expr_613 := expr_612
                    /// @src 0:7683:7744  "if (other._len < self._len)..."
                }
                /// @src 0:7770:7774  "self"
                let _224_mpos := var_self_592_mpos
                let expr_618_mpos := _224_mpos
                /// @src 0:7770:7779  "self._ptr"
                let _225 := add(expr_618_mpos, 32)
                let _226 := read_from_memoryt_uint256(_225)
                let expr_619 := _226
                /// @src 0:7755:7779  "uint selfptr = self._ptr"
                let var_selfptr_617 := expr_619
                /// @src 0:7805:7810  "other"
                let _227_mpos := var_other_595_mpos
                let expr_623_mpos := _227_mpos
                /// @src 0:7805:7815  "other._ptr"
                let _228 := add(expr_623_mpos, 32)
                let _229 := read_from_memoryt_uint256(_228)
                let expr_624 := _229
                /// @src 0:7789:7815  "uint otherptr = other._ptr"
                let var_otherptr_622 := expr_624
                /// @src 0:7825:8588  "for (uint idx = 0; idx < shortest; idx += 32) {..."
                for {
                    /// @src 0:7841:7842  "0"
                    let expr_628 := 0x00
                    /// @src 0:7830:7842  "uint idx = 0"
                    let var_idx_627 := convert_t_rational_0_by_1_to_t_uint256(expr_628)
                    } 1 {
                    /// @src 0:7867:7869  "32"
                    let expr_634 := 0x20
                    /// @src 0:7860:7869  "idx += 32"
                    let _230 := convert_t_rational_32_by_1_to_t_uint256(expr_634)
                    let _231 := var_idx_627
                    let expr_635 := checked_add_t_uint256(_231, _230)

                    var_idx_627 := expr_635
                }
                {
                    /// @src 0:7844:7847  "idx"
                    let _232 := var_idx_627
                    let expr_630 := _232
                    /// @src 0:7850:7858  "shortest"
                    let _233 := var_shortest_601
                    let expr_631 := _233
                    /// @src 0:7844:7858  "idx < shortest"
                    let expr_632 := lt(cleanup_t_uint256(expr_630), cleanup_t_uint256(expr_631))
                    if iszero(expr_632) { break }
                    /// @src 0:7885:7891  "uint a"
                    let var_a_638
                    let zero_t_uint256_234 := zero_value_for_split_t_uint256()
                    var_a_638 := zero_t_uint256_234
                    /// @src 0:7905:7911  "uint b"
                    let var_b_641
                    let zero_t_uint256_235 := zero_value_for_split_t_uint256()
                    var_b_641 := zero_t_uint256_235
                    /// @src 0:7925:8022  "assembly {..."
                    {
                        var_a_638 := mload(var_selfptr_617)
                        var_b_641 := mload(var_otherptr_622)
                    }
                    /// @src 0:8039:8040  "a"
                    let _236 := var_a_638
                    let expr_644 := _236
                    /// @src 0:8044:8045  "b"
                    let _237 := var_b_641
                    let expr_645 := _237
                    /// @src 0:8039:8045  "a != b"
                    let expr_646 := iszero(eq(cleanup_t_uint256(expr_644), cleanup_t_uint256(expr_645)))
                    /// @src 0:8035:8523  "if (a != b) {..."
                    if expr_646 {
                        /// @src 0:8141:8158  "type(uint256).max"
                        let expr_653 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        /// @src 0:8126:8158  "uint256 mask = type(uint256).max"
                        let var_mask_648 := expr_653
                        /// @src 0:8192:8200  "shortest"
                        let _238 := var_shortest_601
                        let expr_655 := _238
                        /// @src 0:8203:8205  "32"
                        let expr_656 := 0x20
                        /// @src 0:8192:8205  "shortest < 32"
                        let expr_657 := lt(cleanup_t_uint256(expr_655), convert_t_rational_32_by_1_to_t_uint256(expr_656))
                        /// @src 0:8189:8292  "if(shortest < 32) {..."
                        if expr_657 {
                            /// @src 0:8236:8237  "2"
                            let expr_659 := 0x02
                            /// @src 0:8242:8243  "8"
                            let expr_660 := 0x08
                            /// @src 0:8247:8249  "32"
                            let expr_661 := 0x20
                            /// @src 0:8252:8260  "shortest"
                            let _239 := var_shortest_601
                            let expr_662 := _239
                            /// @src 0:8247:8260  "32 - shortest"
                            let expr_663 := checked_sub_t_uint256(convert_t_rational_32_by_1_to_t_uint256(expr_661), expr_662)

                            /// @src 0:8263:8266  "idx"
                            let _240 := var_idx_627
                            let expr_664 := _240
                            /// @src 0:8247:8266  "32 - shortest + idx"
                            let expr_665 := checked_add_t_uint256(expr_663, expr_664)

                            /// @src 0:8246:8267  "(32 - shortest + idx)"
                            let expr_666 := expr_665
                            /// @src 0:8242:8267  "8 * (32 - shortest + idx)"
                            let expr_667 := checked_mul_t_uint256(convert_t_rational_8_by_1_to_t_uint256(expr_660), expr_666)

                            /// @src 0:8241:8268  "(8 * (32 - shortest + idx))"
                            let expr_668 := expr_667
                            /// @src 0:8236:8268  "2 ** (8 * (32 - shortest + idx))"
                            let _241 := convert_t_rational_2_by_1_to_t_uint256(expr_659)
                            let expr_669 := checked_exp_t_rational_2_by_1_t_uint256(expr_668)
                            /// @src 0:8271:8272  "1"
                            let expr_670 := 0x01
                            /// @src 0:8236:8272  "2 ** (8 * (32 - shortest + idx)) - 1"
                            let expr_671 := checked_sub_t_uint256(expr_669, convert_t_rational_1_by_1_to_t_uint256(expr_670))

                            /// @src 0:8235:8273  "(2 ** (8 * (32 - shortest + idx)) - 1)"
                            let expr_672 := expr_671
                            /// @src 0:8234:8273  "~(2 ** (8 * (32 - shortest + idx)) - 1)"
                            let expr_673 := cleanup_t_uint256(not(expr_672))
                            /// @src 0:8227:8273  "mask = ~(2 ** (8 * (32 - shortest + idx)) - 1)"
                            var_mask_648 := expr_673
                            let expr_674 := expr_673
                            /// @src 0:8189:8292  "if(shortest < 32) {..."
                        }
                        /// @src 0:8309:8321  "uint256 diff"
                        let var_diff_679
                        let zero_t_uint256_242 := zero_value_for_split_t_uint256()
                        var_diff_679 := zero_t_uint256_242
                        /// @src 0:8415:8416  "a"
                        let _243 := var_a_638
                        let expr_682 := _243
                        /// @src 0:8419:8423  "mask"
                        let _244 := var_mask_648
                        let expr_683 := _244
                        /// @src 0:8415:8423  "a & mask"
                        let expr_684 := and(expr_682, expr_683)

                        /// @src 0:8414:8424  "(a & mask)"
                        let expr_685 := expr_684
                        /// @src 0:8428:8429  "b"
                        let _245 := var_b_641
                        let expr_686 := _245
                        /// @src 0:8432:8436  "mask"
                        let _246 := var_mask_648
                        let expr_687 := _246
                        /// @src 0:8428:8436  "b & mask"
                        let expr_688 := and(expr_686, expr_687)

                        /// @src 0:8427:8437  "(b & mask)"
                        let expr_689 := expr_688
                        /// @src 0:8414:8437  "(a & mask) - (b & mask)"
                        let expr_690 := wrapping_sub_t_uint256(expr_685, expr_689)

                        /// @src 0:8407:8437  "diff = (a & mask) - (b & mask)"
                        var_diff_679 := expr_690
                        let expr_691 := expr_690
                        /// @src 0:8461:8465  "diff"
                        let _247 := var_diff_679
                        let expr_694 := _247
                        /// @src 0:8469:8470  "0"
                        let expr_695 := 0x00
                        /// @src 0:8461:8470  "diff != 0"
                        let expr_696 := iszero(eq(cleanup_t_uint256(expr_694), convert_t_rational_0_by_1_to_t_uint256(expr_695)))
                        /// @src 0:8457:8508  "if (diff != 0)..."
                        if expr_696 {
                            /// @src 0:8503:8507  "diff"
                            let _248 := var_diff_679
                            let expr_699 := _248
                            /// @src 0:8499:8508  "int(diff)"
                            let expr_700 := convert_t_uint256_to_t_int256(expr_699)
                            /// @src 0:8492:8508  "return int(diff)"
                            var__598 := expr_700
                            leave
                            /// @src 0:8457:8508  "if (diff != 0)..."
                        }
                        /// @src 0:8035:8523  "if (a != b) {..."
                    }
                    /// @src 0:8547:8549  "32"
                    let expr_706 := 0x20
                    /// @src 0:8536:8549  "selfptr += 32"
                    let _249 := convert_t_rational_32_by_1_to_t_uint256(expr_706)
                    let _250 := var_selfptr_617
                    let expr_707 := checked_add_t_uint256(_250, _249)

                    var_selfptr_617 := expr_707
                    /// @src 0:8575:8577  "32"
                    let expr_710 := 0x20
                    /// @src 0:8563:8577  "otherptr += 32"
                    let _251 := convert_t_rational_32_by_1_to_t_uint256(expr_710)
                    let _252 := var_otherptr_622
                    let expr_711 := checked_add_t_uint256(_252, _251)

                    var_otherptr_622 := expr_711
                }
                /// @src 0:8608:8612  "self"
                let _253_mpos := var_self_592_mpos
                let expr_717_mpos := _253_mpos
                /// @src 0:8608:8617  "self._len"
                let _254 := add(expr_717_mpos, 0)
                let _255 := read_from_memoryt_uint256(_254)
                let expr_718 := _255
                /// @src 0:8604:8618  "int(self._len)"
                let expr_719 := convert_t_uint256_to_t_int256(expr_718)
                /// @src 0:8625:8630  "other"
                let _256_mpos := var_other_595_mpos
                let expr_722_mpos := _256_mpos
                /// @src 0:8625:8635  "other._len"
                let _257 := add(expr_722_mpos, 0)
                let _258 := read_from_memoryt_uint256(_257)
                let expr_723 := _258
                /// @src 0:8621:8636  "int(other._len)"
                let expr_724 := convert_t_uint256_to_t_int256(expr_723)
                /// @src 0:8604:8636  "int(self._len) - int(other._len)"
                let expr_725 := checked_sub_t_int256(expr_719, expr_724)

                /// @src 0:8597:8636  "return int(self._len) - int(other._len)"
                var__598 := expr_725
                leave

            }
            /// @src 1:60:1441  "contract test {..."

            function cleanup_t_rational_256_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_256_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_256_by_1(value)))
            }

            function wrapping_exp_t_uint256_t_uint256(base, exponent) -> power {
                base := cleanup_t_uint256(base)
                exponent := cleanup_t_uint256(exponent)
                power := cleanup_t_uint256(exp(base, exponent))
            }

            /// @ast-id 259
            /// @src 0:2087:2895  "function memcpy(uint dest, uint src, uint len) private pure {..."
            function fun_memcpy_259(var_dest_212, var_src_214, var_len_216) {

                /// @src 0:2207:2371  "for(; len >= 32; len -= 32) {..."
                for {
                    } 1 {
                    /// @src 0:2231:2233  "32"
                    let expr_223 := 0x20
                    /// @src 0:2224:2233  "len -= 32"
                    let _259 := convert_t_rational_32_by_1_to_t_uint256(expr_223)
                    let _260 := var_len_216
                    let expr_224 := checked_sub_t_uint256(_260, _259)

                    var_len_216 := expr_224
                }
                {
                    /// @src 0:2213:2216  "len"
                    let _261 := var_len_216
                    let expr_219 := _261
                    /// @src 0:2220:2222  "32"
                    let expr_220 := 0x20
                    /// @src 0:2213:2222  "len >= 32"
                    let expr_221 := iszero(lt(cleanup_t_uint256(expr_219), convert_t_rational_32_by_1_to_t_uint256(expr_220)))
                    if iszero(expr_221) { break }
                    /// @src 0:2249:2314  "assembly {..."
                    {
                        mstore(var_dest_212, mload(var_src_214))
                    }
                    /// @src 0:2335:2337  "32"
                    let expr_228 := 0x20
                    /// @src 0:2327:2337  "dest += 32"
                    let _262 := convert_t_rational_32_by_1_to_t_uint256(expr_228)
                    let _263 := var_dest_212
                    let expr_229 := checked_add_t_uint256(_263, _262)

                    var_dest_212 := expr_229
                    /// @src 0:2358:2360  "32"
                    let expr_232 := 0x20
                    /// @src 0:2351:2360  "src += 32"
                    let _264 := convert_t_rational_32_by_1_to_t_uint256(expr_232)
                    let _265 := var_src_214
                    let expr_233 := checked_add_t_uint256(_265, _264)

                    var_src_214 := expr_233
                }
                /// @src 0:2574:2577  "len"
                let _266 := var_len_216
                let expr_237 := _266
                /// @src 0:2581:2582  "0"
                let expr_238 := 0x00
                /// @src 0:2574:2582  "len == 0"
                let expr_239 := eq(cleanup_t_uint256(expr_237), convert_t_rational_0_by_1_to_t_uint256(expr_238))
                /// @src 0:2570:2603  "if (len == 0)..."
                if expr_239 {
                    /// @src 0:2596:2603  "return;"
                    leave
                    /// @src 0:2570:2603  "if (len == 0)..."
                }
                /// @src 0:2645:2654  "uint mask"
                let var_mask_243
                let zero_t_uint256_267 := zero_value_for_split_t_uint256()
                var_mask_243 := zero_t_uint256_267
                /// @src 0:2683:2686  "256"
                let expr_246 := 0x0100
                /// @src 0:2691:2693  "32"
                let expr_247 := 0x20
                /// @src 0:2696:2699  "len"
                let _268 := var_len_216
                let expr_248 := _268
                /// @src 0:2691:2699  "32 - len"
                let expr_249 := wrapping_sub_t_uint256(convert_t_rational_32_by_1_to_t_uint256(expr_247), expr_248)

                /// @src 0:2690:2700  "(32 - len)"
                let expr_250 := expr_249
                /// @src 0:2683:2700  "256 ** (32 - len)"
                let _269 := convert_t_rational_256_by_1_to_t_uint256(expr_246)
                let expr_251 := wrapping_exp_t_uint256_t_uint256(_269, expr_250)
                /// @src 0:2703:2704  "1"
                let expr_252 := 0x01
                /// @src 0:2683:2704  "256 ** (32 - len) - 1"
                let expr_253 := wrapping_sub_t_uint256(expr_251, convert_t_rational_1_by_1_to_t_uint256(expr_252))

                /// @src 0:2676:2704  "mask = 256 ** (32 - len) - 1"
                var_mask_243 := expr_253
                let expr_254 := expr_253
                /// @src 0:2716:2889  "assembly {..."
                {
                    let usr$srcpart := and(mload(var_src_214), not(var_mask_243))
                    let usr$destpart := and(mload(var_dest_212), var_mask_243)
                    mstore(var_dest_212, or(usr$destpart, usr$srcpart))
                }

            }
            /// @src 1:60:1441  "contract test {..."

        }

        data ".metadata" hex"a264697066735822122075eff2afdda667cc6527e23358c18d2909b4783330d1faf9bc2aee23526a8ae064736f6c634300081b0033"
    }

}


