IR:

/// @use-src 0:"_base64/base64_inline_asm.sol"
object "InlineAsmBase64_124" {
    code {
        /// @src 0:134:3505  "library InlineAsmBase64 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("InlineAsmBase64_124_deployed"), datasize("InlineAsmBase64_124_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("InlineAsmBase64_124_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:134:3505  "library InlineAsmBase64 {..."
        function constructor_InlineAsmBase64_124() {

            /// @src 0:134:3505  "library InlineAsmBase64 {..."

        }
        /// @src 0:134:3505  "library InlineAsmBase64 {..."

    }
    /// @use-src 0:"_base64/base64_inline_asm.sol"
    object "InlineAsmBase64_124_deployed" {
        code {
            /// @src 0:134:3505  "library InlineAsmBase64 {..."
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

        data ".metadata" hex"a2646970667358221220430fd13501f6d41105cc145865d1403e534be25a845fa87eddb87aa6c85cb84164736f6c634300081b0033"
    }

}


IR:

/// @use-src 1:"_base64/base64_no_inline_asm.sol"
object "NoAsmBase64_353" {
    code {
        /// @src 1:134:1453  "library NoAsmBase64 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("NoAsmBase64_353_deployed"), datasize("NoAsmBase64_353_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("NoAsmBase64_353_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 1:134:1453  "library NoAsmBase64 {..."
        function constructor_NoAsmBase64_353() {

            /// @src 1:134:1453  "library NoAsmBase64 {..."

        }
        /// @src 1:134:1453  "library NoAsmBase64 {..."

    }
    /// @use-src 1:"_base64/base64_no_inline_asm.sol"
    object "NoAsmBase64_353_deployed" {
        code {
            /// @src 1:134:1453  "library NoAsmBase64 {..."
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

        data ".metadata" hex"a2646970667358221220214d3bb00d7c25bc983b905857611a5a9c2fd8e30953ad4aee4b4e4be5647e1764736f6c634300081b0033"
    }

}


IR:

/// @use-src 2:"base64.sol"
object "test_73" {
    code {
        /// @src 2:84:652  "contract test {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_test_73()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("test_73_deployed"), datasize("test_73_deployed"))

        return(_1, datasize("test_73_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 2:84:652  "contract test {..."
        function constructor_test_73() {

            /// @src 2:84:652  "contract test {..."

        }
        /// @src 2:84:652  "contract test {..."

    }
    /// @use-src 0:"_base64/base64_inline_asm.sol", 1:"_base64/base64_no_inline_asm.sol", 2:"base64.sol"
    object "test_73_deployed" {
        code {
            /// @src 2:84:652  "contract test {..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x30d1b5e7
                {
                    // encode_inline_asm_large()

                    external_fun_encode_inline_asm_large_50()
                }

                case 0x8dacbefb
                {
                    // encode_no_asm(bytes)

                    external_fun_encode_no_asm_28()
                }

                case 0x94f4ce3b
                {
                    // encode_no_asm_large()

                    external_fun_encode_no_asm_large_72()
                }

                case 0xf2b74b27
                {
                    // encode_inline_asm(bytes)

                    external_fun_encode_inline_asm_15()
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

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_encode_inline_asm_large_50() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_encode_inline_asm_large_50()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

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

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
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

            function abi_decode_available_length_t_bytes_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_bytes_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory_with_cleanup(src, dst, length)
            }

            // bytes
            function abi_decode_t_bytes_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_bytes_memory_ptr(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_bytes_memory_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

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

            function external_fun_encode_no_asm_28() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_encode_no_asm_28(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_encode_no_asm_large_72() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_encode_no_asm_large_72()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_encode_inline_asm_15() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_encode_inline_asm_15(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function cleanup_t_rational_1000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000_by_1(value)))
            }

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_41b1a0649752af1b28b3dc29a1556eee781e4a4c3a1f7f53f90fa834de098c4d(memPtr) {

                mstore(add(memPtr, 0), "foo")

            }

            function copy_literal_to_memory_41b1a0649752af1b28b3dc29a1556eee781e4a4c3a1f7f53f90fa834de098c4d() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(3)
                store_literal_in_memory_41b1a0649752af1b28b3dc29a1556eee781e4a4c3a1f7f53f90fa834de098c4d(add(memPtr, 32))
            }

            function convert_t_stringliteral_41b1a0649752af1b28b3dc29a1556eee781e4a4c3a1f7f53f90fa834de098c4d_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_41b1a0649752af1b28b3dc29a1556eee781e4a4c3a1f7f53f90fa834de098c4d()
            }

            /// @ast-id 50
            /// @src 2:376:514  "function encode_inline_asm_large() external {..."
            function fun_encode_inline_asm_large_50() {

                /// @src 2:428:508  "for (uint i = 0; i < 1000; i++) {..."
                for {
                    /// @src 2:442:443  "0"
                    let expr_33 := 0x00
                    /// @src 2:433:443  "uint i = 0"
                    let var_i_32 := convert_t_rational_0_by_1_to_t_uint256(expr_33)
                    } 1 {
                    /// @src 2:455:458  "i++"
                    let _2 := var_i_32
                    let _1 := increment_wrapping_t_uint256(_2)
                    var_i_32 := _1
                    let expr_39 := _2
                }
                {
                    /// @src 2:445:446  "i"
                    let _3 := var_i_32
                    let expr_35 := _3
                    /// @src 2:449:453  "1000"
                    let expr_36 := 0x03e8
                    /// @src 2:445:453  "i < 1000"
                    let expr_37 := lt(cleanup_t_uint256(expr_35), convert_t_rational_1000_by_1_to_t_uint256(expr_36))
                    if iszero(expr_37) { break }
                    /// @src 2:470:485  "InlineAsmBase64"
                    let expr_41_address := linkersymbol("_base64/base64_inline_asm.sol:InlineAsmBase64")
                    /// @src 2:470:499  "InlineAsmBase64.encode(\"foo\")"
                    let _4_mpos := convert_t_stringliteral_41b1a0649752af1b28b3dc29a1556eee781e4a4c3a1f7f53f90fa834de098c4d_to_t_bytes_memory_ptr()
                    let expr_45_mpos := fun_encode_123(_4_mpos)
                }

            }
            /// @src 2:84:652  "contract test {..."

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
            }

            /// @ast-id 28
            /// @src 2:244:370  "function encode_no_asm(bytes memory data) external pure returns (string memory) {..."
            function fun_encode_no_asm_28(var_data_17_mpos) -> var__20_mpos {
                /// @src 2:309:322  "string memory"
                let zero_t_string_memory_ptr_5_mpos := zero_value_for_split_t_string_memory_ptr()
                var__20_mpos := zero_t_string_memory_ptr_5_mpos

                /// @src 2:339:350  "NoAsmBase64"
                let expr_22_address := linkersymbol("_base64/base64_no_inline_asm.sol:NoAsmBase64")
                /// @src 2:358:362  "data"
                let _6_mpos := var_data_17_mpos
                let expr_24_mpos := _6_mpos
                /// @src 2:339:363  "NoAsmBase64.encode(data)"
                let expr_25_mpos := fun_encode_352(expr_24_mpos)
                /// @src 2:332:363  "return NoAsmBase64.encode(data)"
                var__20_mpos := expr_25_mpos
                leave

            }
            /// @src 2:84:652  "contract test {..."

            /// @ast-id 72
            /// @src 2:520:650  "function encode_no_asm_large() external {..."
            function fun_encode_no_asm_large_72() {

                /// @src 2:568:644  "for (uint i = 0; i < 1000; i++) {..."
                for {
                    /// @src 2:582:583  "0"
                    let expr_55 := 0x00
                    /// @src 2:573:583  "uint i = 0"
                    let var_i_54 := convert_t_rational_0_by_1_to_t_uint256(expr_55)
                    } 1 {
                    /// @src 2:595:598  "i++"
                    let _8 := var_i_54
                    let _7 := increment_wrapping_t_uint256(_8)
                    var_i_54 := _7
                    let expr_61 := _8
                }
                {
                    /// @src 2:585:586  "i"
                    let _9 := var_i_54
                    let expr_57 := _9
                    /// @src 2:589:593  "1000"
                    let expr_58 := 0x03e8
                    /// @src 2:585:593  "i < 1000"
                    let expr_59 := lt(cleanup_t_uint256(expr_57), convert_t_rational_1000_by_1_to_t_uint256(expr_58))
                    if iszero(expr_59) { break }
                    /// @src 2:610:621  "NoAsmBase64"
                    let expr_63_address := linkersymbol("_base64/base64_no_inline_asm.sol:NoAsmBase64")
                    /// @src 2:610:635  "NoAsmBase64.encode(\"foo\")"
                    let _10_mpos := convert_t_stringliteral_41b1a0649752af1b28b3dc29a1556eee781e4a4c3a1f7f53f90fa834de098c4d_to_t_bytes_memory_ptr()
                    let expr_67_mpos := fun_encode_352(_10_mpos)
                }

            }
            /// @src 2:84:652  "contract test {..."

            /// @ast-id 15
            /// @src 2:104:238  "function encode_inline_asm(bytes memory data) external pure returns (string memory) {..."
            function fun_encode_inline_asm_15(var_data_4_mpos) -> var__7_mpos {
                /// @src 2:173:186  "string memory"
                let zero_t_string_memory_ptr_11_mpos := zero_value_for_split_t_string_memory_ptr()
                var__7_mpos := zero_t_string_memory_ptr_11_mpos

                /// @src 2:203:218  "InlineAsmBase64"
                let expr_9_address := linkersymbol("_base64/base64_inline_asm.sol:InlineAsmBase64")
                /// @src 2:226:230  "data"
                let _12_mpos := var_data_4_mpos
                let expr_11_mpos := _12_mpos
                /// @src 2:203:231  "InlineAsmBase64.encode(data)"
                let expr_12_mpos := fun_encode_123(expr_11_mpos)
                /// @src 2:196:231  "return InlineAsmBase64.encode(data)"
                var__7_mpos := expr_12_mpos
                leave

            }
            /// @src 2:84:652  "contract test {..."

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(add(memPtr, 32))
            }

            function convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470()
            }

            function store_literal_in_memory_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce(memPtr) {

                mstore(add(memPtr, 0), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef")

                mstore(add(memPtr, 32), "ghijklmnopqrstuvwxyz0123456789+/")

            }

            function copy_literal_to_memory_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(64)
                store_literal_in_memory_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce(add(memPtr, 32))
            }

            function convert_t_stringliteral_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce()
            }

            /// @src 0:223:323  "string internal constant _TABLE = \"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\""
            function constant__TABLE_80() -> ret_mpos {
                /// @src 0:257:323  "\"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\""
                let _15_mpos := convert_t_stringliteral_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce_to_t_string_memory_ptr()

                ret_mpos := _15_mpos
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
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

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
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

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
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

            /// @ast-id 123
            /// @src 0:417:3503  "function encode(bytes memory data) internal pure returns (string memory) {..."
            function fun_encode_123(var_data_83_mpos) -> var__86_mpos {
                /// @src 0:475:488  "string memory"
                let zero_t_string_memory_ptr_13_mpos := zero_value_for_split_t_string_memory_ptr()
                var__86_mpos := zero_t_string_memory_ptr_13_mpos

                /// @src 0:710:714  "data"
                let _14_mpos := var_data_83_mpos
                let expr_88_mpos := _14_mpos
                /// @src 0:710:721  "data.length"
                let expr_89 := array_length_t_bytes_memory_ptr(expr_88_mpos)
                /// @src 0:725:726  "0"
                let expr_90 := 0x00
                /// @src 0:710:726  "data.length == 0"
                let expr_91 := eq(cleanup_t_uint256(expr_89), convert_t_rational_0_by_1_to_t_uint256(expr_90))
                /// @src 0:706:737  "if (data.length == 0) return \"\""
                if expr_91 {
                    /// @src 0:728:737  "return \"\""
                    var__86_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr()
                    leave
                    /// @src 0:706:737  "if (data.length == 0) return \"\""
                }
                /// @src 0:809:815  "_TABLE"
                let expr_97_mpos := constant__TABLE_80()
                /// @src 0:787:815  "string memory table = _TABLE"
                let var_table_96_mpos := expr_97_mpos
                /// @src 0:1239:1240  "4"
                let expr_101 := 0x04
                /// @src 0:1245:1249  "data"
                let _16_mpos := var_data_83_mpos
                let expr_102_mpos := _16_mpos
                /// @src 0:1245:1256  "data.length"
                let expr_103 := array_length_t_bytes_memory_ptr(expr_102_mpos)
                /// @src 0:1259:1260  "2"
                let expr_104 := 0x02
                /// @src 0:1245:1260  "data.length + 2"
                let expr_105 := checked_add_t_uint256(expr_103, convert_t_rational_2_by_1_to_t_uint256(expr_104))

                /// @src 0:1244:1261  "(data.length + 2)"
                let expr_106 := expr_105
                /// @src 0:1264:1265  "3"
                let expr_107 := 0x03
                /// @src 0:1244:1265  "(data.length + 2) / 3"
                let expr_108 := checked_div_t_uint256(expr_106, convert_t_rational_3_by_1_to_t_uint256(expr_107))

                /// @src 0:1243:1266  "((data.length + 2) / 3)"
                let expr_109 := expr_108
                /// @src 0:1239:1266  "4 * ((data.length + 2) / 3)"
                let expr_110 := checked_mul_t_uint256(convert_t_rational_4_by_1_to_t_uint256(expr_101), expr_109)

                /// @src 0:1218:1266  "uint256 encodedLen = 4 * ((data.length + 2) / 3)"
                let var_encodedLen_100 := expr_110
                /// @src 0:1380:1390  "encodedLen"
                let _17 := var_encodedLen_100
                let expr_116 := _17
                /// @src 0:1369:1391  "new string(encodedLen)"
                let expr_117_mpos := allocate_and_zero_memory_array_t_string_memory_ptr(expr_116)
                /// @src 0:1346:1391  "string memory result = new string(encodedLen)"
                let var_result_113_mpos := expr_117_mpos
                /// @src 0:1402:3473  "assembly {..."
                {
                    mstore(var_result_113_mpos, var_encodedLen_100)
                    let usr$tablePtr := add(var_table_96_mpos, 1)
                    let usr$dataPtr := var_data_83_mpos
                    let usr$endPtr := add(usr$dataPtr, mload(var_data_83_mpos))
                    let usr$resultPtr := add(var_result_113_mpos, 32)
                    for { } lt(usr$dataPtr, usr$endPtr) { }
                    {
                        usr$dataPtr := add(usr$dataPtr, 3)
                        let usr$input := mload(usr$dataPtr)
                        mstore8(usr$resultPtr, mload(add(usr$tablePtr, and(shr(18, usr$input), 0x3F))))
                        usr$resultPtr := add(usr$resultPtr, 1)
                        mstore8(usr$resultPtr, mload(add(usr$tablePtr, and(shr(12, usr$input), 0x3F))))
                        usr$resultPtr := add(usr$resultPtr, 1)
                        mstore8(usr$resultPtr, mload(add(usr$tablePtr, and(shr(6, usr$input), 0x3F))))
                        usr$resultPtr := add(usr$resultPtr, 1)
                        mstore8(usr$resultPtr, mload(add(usr$tablePtr, and(usr$input, 0x3F))))
                        usr$resultPtr := add(usr$resultPtr, 1)
                    }
                    switch mod(mload(var_data_83_mpos), 3)
                    case 1 {
                        mstore8(sub(usr$resultPtr, 1), 0x3d)
                        mstore8(sub(usr$resultPtr, 2), 0x3d)
                    }
                    case 2 {
                        mstore8(sub(usr$resultPtr, 1), 0x3d)
                    }
                }
                /// @src 0:3490:3496  "result"
                let _18_mpos := var_result_113_mpos
                let expr_120_mpos := _18_mpos
                /// @src 0:3483:3496  "return result"
                var__86_mpos := expr_120_mpos
                leave

            }
            /// @src 2:84:652  "contract test {..."

            function convert_t_stringliteral_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce()
            }

            /// @src 1:160:257  "bytes private constant TABLE = \"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\""
            function constant_TABLE_130() -> ret_mpos {
                /// @src 1:191:257  "\"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\""
                let _21_mpos := convert_t_stringliteral_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce_to_t_bytes_memory_ptr()

                ret_mpos := _21_mpos
            }

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function allocate_and_zero_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_bytes_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_bytes_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function memory_array_index_access_t_bytes_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_bytes_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 1)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function cleanup_t_bytes1(value) -> cleaned {
                cleaned := and(value, 0xff00000000000000000000000000000000000000000000000000000000000000)
            }

            function read_from_memoryt_bytes1(ptr) -> returnValue {

                let value := cleanup_t_bytes1(mload(ptr))

                returnValue :=

                value

            }

            function shift_right_248_unsigned(value) -> newValue {
                newValue :=

                shr(248, value)

            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function convert_t_uint8_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
            }

            function convert_t_bytes1_to_t_uint8(value) -> converted {
                converted := convert_t_uint8_to_t_uint8(shift_right_248_unsigned(value))
            }

            function cleanup_t_uint24(value) -> cleaned {
                cleaned := and(value, 0xffffff)
            }

            function convert_t_uint8_to_t_uint24(value) -> converted {
                converted := cleanup_t_uint24(identity(cleanup_t_uint8(value)))
            }

            function cleanup_t_rational_16_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_16_by_1(value)))
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_left_t_uint24_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint24(shift_left_dynamic(bits, cleanup_t_uint24(value)))
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_uint24(value) -> converted {
                converted := cleanup_t_uint24(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_8_by_1(value)))
            }

            function checked_add_t_uint24(x, y) -> sum {
                x := cleanup_t_uint24(x)
                y := cleanup_t_uint24(y)
                sum := add(x, y)

                if gt(sum, 0xffffff) { panic_error_0x11() }

            }

            function cleanup_t_rational_18_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_18_by_1(value)))
            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function shift_right_t_uint24_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint24(shift_right_unsigned_dynamic(bits, cleanup_t_uint24(value)))
            }

            function convert_t_uint24_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint24(value)))
            }

            function cleanup_t_rational_63_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_63_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_63_by_1(value)))
            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint8(value)))
            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function cleanup_t_rational_12_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_12_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_12_by_1(value)))
            }

            function cleanup_t_rational_6_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_6_by_1(value)))
            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function cleanup_t_rational_61_by_1(value) -> cleaned {
                cleaned := value
            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function convert_t_rational_61_by_1_to_t_bytes1(value) -> converted {
                converted := cleanup_t_bytes1(shift_left_248(cleanup_t_rational_61_by_1(value)))
            }

            function decrement_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0x00) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            function convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(value) -> converted  {
                converted := value

            }

            /// @ast-id 352
            /// @src 1:268:1451  "function encode(bytes memory data) internal pure returns (string memory) {..."
            function fun_encode_352(var_data_132_mpos) -> var__135_mpos {
                /// @src 1:326:339  "string memory"
                let zero_t_string_memory_ptr_19_mpos := zero_value_for_split_t_string_memory_ptr()
                var__135_mpos := zero_t_string_memory_ptr_19_mpos

                /// @src 1:355:359  "data"
                let _20_mpos := var_data_132_mpos
                let expr_137_mpos := _20_mpos
                /// @src 1:355:366  "data.length"
                let expr_138 := array_length_t_bytes_memory_ptr(expr_137_mpos)
                /// @src 1:370:371  "0"
                let expr_139 := 0x00
                /// @src 1:355:371  "data.length == 0"
                let expr_140 := eq(cleanup_t_uint256(expr_138), convert_t_rational_0_by_1_to_t_uint256(expr_139))
                /// @src 1:351:382  "if (data.length == 0) return \"\""
                if expr_140 {
                    /// @src 1:373:382  "return \"\""
                    var__135_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr()
                    leave
                    /// @src 1:351:382  "if (data.length == 0) return \"\""
                }
                /// @src 1:418:423  "TABLE"
                let expr_146_mpos := constant_TABLE_130()
                /// @src 1:393:423  "bytes memory table     = TABLE"
                let var_table_145_mpos := expr_146_mpos
                /// @src 1:468:469  "4"
                let expr_152 := 0x04
                /// @src 1:474:478  "data"
                let _22_mpos := var_data_132_mpos
                let expr_153_mpos := _22_mpos
                /// @src 1:474:485  "data.length"
                let expr_154 := array_length_t_bytes_memory_ptr(expr_153_mpos)
                /// @src 1:488:489  "2"
                let expr_155 := 0x02
                /// @src 1:474:489  "data.length + 2"
                let expr_156 := checked_add_t_uint256(expr_154, convert_t_rational_2_by_1_to_t_uint256(expr_155))

                /// @src 1:473:490  "(data.length + 2)"
                let expr_157 := expr_156
                /// @src 1:493:494  "3"
                let expr_158 := 0x03
                /// @src 1:473:494  "(data.length + 2) / 3"
                let expr_159 := checked_div_t_uint256(expr_157, convert_t_rational_3_by_1_to_t_uint256(expr_158))

                /// @src 1:472:495  "((data.length + 2) / 3)"
                let expr_160 := expr_159
                /// @src 1:468:495  "4 * ((data.length + 2) / 3)"
                let expr_161 := checked_mul_t_uint256(convert_t_rational_4_by_1_to_t_uint256(expr_152), expr_160)

                /// @src 1:458:496  "new bytes(4 * ((data.length + 2) / 3))"
                let expr_162_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_161)
                /// @src 1:433:496  "bytes memory result    = new bytes(4 * ((data.length + 2) / 3))"
                let var_result_149_mpos := expr_162_mpos
                /// @src 1:531:532  "0"
                let expr_166 := 0x00
                /// @src 1:506:532  "uint256      resultPtr = 0"
                let var_resultPtr_165 := convert_t_rational_0_by_1_to_t_uint256(expr_166)
                /// @src 1:543:1193  "for (uint256 dataPtr = 0; dataPtr < data.length; dataPtr += 3) {..."
                for {
                    /// @src 1:566:567  "0"
                    let expr_170 := 0x00
                    /// @src 1:548:567  "uint256 dataPtr = 0"
                    let var_dataPtr_169 := convert_t_rational_0_by_1_to_t_uint256(expr_170)
                    } 1 {
                    /// @src 1:603:604  "3"
                    let expr_177 := 0x03
                    /// @src 1:592:604  "dataPtr += 3"
                    let _23 := convert_t_rational_3_by_1_to_t_uint256(expr_177)
                    let _24 := var_dataPtr_169
                    let expr_178 := checked_add_t_uint256(_24, _23)

                    var_dataPtr_169 := expr_178
                }
                {
                    /// @src 1:569:576  "dataPtr"
                    let _25 := var_dataPtr_169
                    let expr_172 := _25
                    /// @src 1:579:583  "data"
                    let _26_mpos := var_data_132_mpos
                    let expr_173_mpos := _26_mpos
                    /// @src 1:579:590  "data.length"
                    let expr_174 := array_length_t_bytes_memory_ptr(expr_173_mpos)
                    /// @src 1:569:590  "dataPtr < data.length"
                    let expr_175 := lt(cleanup_t_uint256(expr_172), cleanup_t_uint256(expr_174))
                    if iszero(expr_175) { break }
                    /// @src 1:678:682  "data"
                    let _27_mpos := var_data_132_mpos
                    let expr_186_mpos := _27_mpos
                    /// @src 1:683:690  "dataPtr"
                    let _28 := var_dataPtr_169
                    let expr_187 := _28
                    /// @src 1:693:694  "0"
                    let expr_188 := 0x00
                    /// @src 1:683:694  "dataPtr + 0"
                    let expr_189 := checked_add_t_uint256(expr_187, convert_t_rational_0_by_1_to_t_uint256(expr_188))

                    /// @src 1:678:695  "data[dataPtr + 0]"
                    let _29 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_186_mpos, expr_189))
                    let expr_190 := _29
                    /// @src 1:672:696  "uint8(data[dataPtr + 0])"
                    let expr_191 := convert_t_bytes1_to_t_uint8(expr_190)
                    /// @src 1:665:697  "uint24(uint8(data[dataPtr + 0]))"
                    let expr_192 := convert_t_uint8_to_t_uint24(expr_191)
                    /// @src 1:701:703  "16"
                    let expr_193 := 0x10
                    /// @src 1:665:703  "uint24(uint8(data[dataPtr + 0])) << 16"
                    let _30 := convert_t_rational_16_by_1_to_t_uint8(expr_193)
                    let expr_194 :=
                    shift_left_t_uint24_t_uint8(expr_192, _30)

                    /// @src 1:664:704  "(uint24(uint8(data[dataPtr + 0])) << 16)"
                    let expr_195 := expr_194
                    /// @src 1:635:705  "(                            (uint24(uint8(data[dataPtr + 0])) << 16))"
                    let expr_196 := expr_195
                    /// @src 1:734:741  "dataPtr"
                    let _31 := var_dataPtr_169
                    let expr_197 := _31
                    /// @src 1:744:745  "1"
                    let expr_198 := 0x01
                    /// @src 1:734:745  "dataPtr + 1"
                    let expr_199 := checked_add_t_uint256(expr_197, convert_t_rational_1_by_1_to_t_uint256(expr_198))

                    /// @src 1:748:752  "data"
                    let _32_mpos := var_data_132_mpos
                    let expr_200_mpos := _32_mpos
                    /// @src 1:748:759  "data.length"
                    let expr_201 := array_length_t_bytes_memory_ptr(expr_200_mpos)
                    /// @src 1:734:759  "dataPtr + 1 < data.length"
                    let expr_202 := lt(cleanup_t_uint256(expr_199), cleanup_t_uint256(expr_201))
                    /// @src 1:734:806  "dataPtr + 1 < data.length ? (uint24(uint8(data[dataPtr + 1])) <<  8) : 0"
                    let expr_218
                    switch expr_202
                    case 0 {
                        /// @src 1:805:806  "0"
                        let expr_217 := 0x00
                        /// @src 1:734:806  "dataPtr + 1 < data.length ? (uint24(uint8(data[dataPtr + 1])) <<  8) : 0"
                        expr_218 := convert_t_rational_0_by_1_to_t_uint24(expr_217)
                    }
                    default {
                        /// @src 1:776:780  "data"
                        let _33_mpos := var_data_132_mpos
                        let expr_207_mpos := _33_mpos
                        /// @src 1:781:788  "dataPtr"
                        let _34 := var_dataPtr_169
                        let expr_208 := _34
                        /// @src 1:791:792  "1"
                        let expr_209 := 0x01
                        /// @src 1:781:792  "dataPtr + 1"
                        let expr_210 := checked_add_t_uint256(expr_208, convert_t_rational_1_by_1_to_t_uint256(expr_209))

                        /// @src 1:776:793  "data[dataPtr + 1]"
                        let _35 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_207_mpos, expr_210))
                        let expr_211 := _35
                        /// @src 1:770:794  "uint8(data[dataPtr + 1])"
                        let expr_212 := convert_t_bytes1_to_t_uint8(expr_211)
                        /// @src 1:763:795  "uint24(uint8(data[dataPtr + 1]))"
                        let expr_213 := convert_t_uint8_to_t_uint24(expr_212)
                        /// @src 1:800:801  "8"
                        let expr_214 := 0x08
                        /// @src 1:763:801  "uint24(uint8(data[dataPtr + 1])) <<  8"
                        let _36 := convert_t_rational_8_by_1_to_t_uint8(expr_214)
                        let expr_215 :=
                        shift_left_t_uint24_t_uint8(expr_213, _36)

                        /// @src 1:762:802  "(uint24(uint8(data[dataPtr + 1])) <<  8)"
                        let expr_216 := expr_215
                        /// @src 1:734:806  "dataPtr + 1 < data.length ? (uint24(uint8(data[dataPtr + 1])) <<  8) : 0"
                        expr_218 := expr_216
                    }
                    /// @src 1:733:807  "(dataPtr + 1 < data.length ? (uint24(uint8(data[dataPtr + 1])) <<  8) : 0)"
                    let expr_219 := expr_218
                    /// @src 1:635:807  "(                            (uint24(uint8(data[dataPtr + 0])) << 16))..."
                    let expr_220 := checked_add_t_uint24(expr_196, expr_219)

                    /// @src 1:836:843  "dataPtr"
                    let _37 := var_dataPtr_169
                    let expr_221 := _37
                    /// @src 1:846:847  "2"
                    let expr_222 := 0x02
                    /// @src 1:836:847  "dataPtr + 2"
                    let expr_223 := checked_add_t_uint256(expr_221, convert_t_rational_2_by_1_to_t_uint256(expr_222))

                    /// @src 1:850:854  "data"
                    let _38_mpos := var_data_132_mpos
                    let expr_224_mpos := _38_mpos
                    /// @src 1:850:861  "data.length"
                    let expr_225 := array_length_t_bytes_memory_ptr(expr_224_mpos)
                    /// @src 1:836:861  "dataPtr + 2 < data.length"
                    let expr_226 := lt(cleanup_t_uint256(expr_223), cleanup_t_uint256(expr_225))
                    /// @src 1:836:908  "dataPtr + 2 < data.length ? (uint24(uint8(data[dataPtr + 2]))      ) : 0"
                    let expr_240
                    switch expr_226
                    case 0 {
                        /// @src 1:907:908  "0"
                        let expr_239 := 0x00
                        /// @src 1:836:908  "dataPtr + 2 < data.length ? (uint24(uint8(data[dataPtr + 2]))      ) : 0"
                        expr_240 := convert_t_rational_0_by_1_to_t_uint24(expr_239)
                    }
                    default {
                        /// @src 1:878:882  "data"
                        let _39_mpos := var_data_132_mpos
                        let expr_231_mpos := _39_mpos
                        /// @src 1:883:890  "dataPtr"
                        let _40 := var_dataPtr_169
                        let expr_232 := _40
                        /// @src 1:893:894  "2"
                        let expr_233 := 0x02
                        /// @src 1:883:894  "dataPtr + 2"
                        let expr_234 := checked_add_t_uint256(expr_232, convert_t_rational_2_by_1_to_t_uint256(expr_233))

                        /// @src 1:878:895  "data[dataPtr + 2]"
                        let _41 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_231_mpos, expr_234))
                        let expr_235 := _41
                        /// @src 1:872:896  "uint8(data[dataPtr + 2])"
                        let expr_236 := convert_t_bytes1_to_t_uint8(expr_235)
                        /// @src 1:865:897  "uint24(uint8(data[dataPtr + 2]))"
                        let expr_237 := convert_t_uint8_to_t_uint24(expr_236)
                        /// @src 1:864:904  "(uint24(uint8(data[dataPtr + 2]))      )"
                        let expr_238 := expr_237
                        /// @src 1:836:908  "dataPtr + 2 < data.length ? (uint24(uint8(data[dataPtr + 2]))      ) : 0"
                        expr_240 := expr_238
                    }
                    /// @src 1:835:909  "(dataPtr + 2 < data.length ? (uint24(uint8(data[dataPtr + 2]))      ) : 0)"
                    let expr_241 := expr_240
                    /// @src 1:635:909  "(                            (uint24(uint8(data[dataPtr + 0])) << 16))..."
                    let expr_242 := checked_add_t_uint24(expr_220, expr_241)

                    /// @src 1:620:909  "uint24 chunk = (                            (uint24(uint8(data[dataPtr + 0])) << 16))..."
                    let var_chunk_181 := expr_242
                    /// @src 1:946:951  "table"
                    let _42_mpos := var_table_145_mpos
                    let expr_248_mpos := _42_mpos
                    /// @src 1:958:963  "chunk"
                    let _43 := var_chunk_181
                    let expr_251 := _43
                    /// @src 1:967:969  "18"
                    let expr_252 := 0x12
                    /// @src 1:958:969  "chunk >> 18"
                    let _44 := convert_t_rational_18_by_1_to_t_uint8(expr_252)
                    let expr_253 :=
                    shift_right_t_uint24_t_uint8(expr_251, _44)

                    /// @src 1:952:970  "uint8(chunk >> 18)"
                    let expr_254 := convert_t_uint24_to_t_uint8(expr_253)
                    /// @src 1:973:977  "0x3f"
                    let expr_255 := 0x3f
                    /// @src 1:952:977  "uint8(chunk >> 18) & 0x3f"
                    let expr_256 := and(expr_254, convert_t_rational_63_by_1_to_t_uint8(expr_255))

                    /// @src 1:946:978  "table[uint8(chunk >> 18) & 0x3f]"
                    let _45 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_248_mpos, convert_t_uint8_to_t_uint256(expr_256)))
                    let expr_257 := _45
                    /// @src 1:924:930  "result"
                    let _46_mpos := var_result_149_mpos
                    let expr_244_mpos := _46_mpos
                    /// @src 1:931:942  "resultPtr++"
                    let _48 := var_resultPtr_165
                    let _47 := increment_t_uint256(_48)
                    var_resultPtr_165 := _47
                    let expr_246 := _48
                    /// @src 1:924:978  "result[resultPtr++] = table[uint8(chunk >> 18) & 0x3f]"
                    let _49 := expr_257
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_244_mpos, expr_246), byte(0, _49))
                    let expr_258 := expr_257
                    /// @src 1:1014:1019  "table"
                    let _50_mpos := var_table_145_mpos
                    let expr_264_mpos := _50_mpos
                    /// @src 1:1026:1031  "chunk"
                    let _51 := var_chunk_181
                    let expr_267 := _51
                    /// @src 1:1035:1037  "12"
                    let expr_268 := 0x0c
                    /// @src 1:1026:1037  "chunk >> 12"
                    let _52 := convert_t_rational_12_by_1_to_t_uint8(expr_268)
                    let expr_269 :=
                    shift_right_t_uint24_t_uint8(expr_267, _52)

                    /// @src 1:1020:1038  "uint8(chunk >> 12)"
                    let expr_270 := convert_t_uint24_to_t_uint8(expr_269)
                    /// @src 1:1041:1045  "0x3f"
                    let expr_271 := 0x3f
                    /// @src 1:1020:1045  "uint8(chunk >> 12) & 0x3f"
                    let expr_272 := and(expr_270, convert_t_rational_63_by_1_to_t_uint8(expr_271))

                    /// @src 1:1014:1046  "table[uint8(chunk >> 12) & 0x3f]"
                    let _53 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_264_mpos, convert_t_uint8_to_t_uint256(expr_272)))
                    let expr_273 := _53
                    /// @src 1:992:998  "result"
                    let _54_mpos := var_result_149_mpos
                    let expr_260_mpos := _54_mpos
                    /// @src 1:999:1010  "resultPtr++"
                    let _56 := var_resultPtr_165
                    let _55 := increment_t_uint256(_56)
                    var_resultPtr_165 := _55
                    let expr_262 := _56
                    /// @src 1:992:1046  "result[resultPtr++] = table[uint8(chunk >> 12) & 0x3f]"
                    let _57 := expr_273
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_260_mpos, expr_262), byte(0, _57))
                    let expr_274 := expr_273
                    /// @src 1:1082:1087  "table"
                    let _58_mpos := var_table_145_mpos
                    let expr_280_mpos := _58_mpos
                    /// @src 1:1094:1099  "chunk"
                    let _59 := var_chunk_181
                    let expr_283 := _59
                    /// @src 1:1104:1105  "6"
                    let expr_284 := 0x06
                    /// @src 1:1094:1105  "chunk >>  6"
                    let _60 := convert_t_rational_6_by_1_to_t_uint8(expr_284)
                    let expr_285 :=
                    shift_right_t_uint24_t_uint8(expr_283, _60)

                    /// @src 1:1088:1106  "uint8(chunk >>  6)"
                    let expr_286 := convert_t_uint24_to_t_uint8(expr_285)
                    /// @src 1:1109:1113  "0x3f"
                    let expr_287 := 0x3f
                    /// @src 1:1088:1113  "uint8(chunk >>  6) & 0x3f"
                    let expr_288 := and(expr_286, convert_t_rational_63_by_1_to_t_uint8(expr_287))

                    /// @src 1:1082:1114  "table[uint8(chunk >>  6) & 0x3f]"
                    let _61 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_280_mpos, convert_t_uint8_to_t_uint256(expr_288)))
                    let expr_289 := _61
                    /// @src 1:1060:1066  "result"
                    let _62_mpos := var_result_149_mpos
                    let expr_276_mpos := _62_mpos
                    /// @src 1:1067:1078  "resultPtr++"
                    let _64 := var_resultPtr_165
                    let _63 := increment_t_uint256(_64)
                    var_resultPtr_165 := _63
                    let expr_278 := _64
                    /// @src 1:1060:1114  "result[resultPtr++] = table[uint8(chunk >>  6) & 0x3f]"
                    let _65 := expr_289
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_276_mpos, expr_278), byte(0, _65))
                    let expr_290 := expr_289
                    /// @src 1:1150:1155  "table"
                    let _66_mpos := var_table_145_mpos
                    let expr_296_mpos := _66_mpos
                    /// @src 1:1162:1167  "chunk"
                    let _67 := var_chunk_181
                    let expr_299 := _67
                    /// @src 1:1156:1174  "uint8(chunk      )"
                    let expr_300 := convert_t_uint24_to_t_uint8(expr_299)
                    /// @src 1:1177:1181  "0x3f"
                    let expr_301 := 0x3f
                    /// @src 1:1156:1181  "uint8(chunk      ) & 0x3f"
                    let expr_302 := and(expr_300, convert_t_rational_63_by_1_to_t_uint8(expr_301))

                    /// @src 1:1150:1182  "table[uint8(chunk      ) & 0x3f]"
                    let _68 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_296_mpos, convert_t_uint8_to_t_uint256(expr_302)))
                    let expr_303 := _68
                    /// @src 1:1128:1134  "result"
                    let _69_mpos := var_result_149_mpos
                    let expr_292_mpos := _69_mpos
                    /// @src 1:1135:1146  "resultPtr++"
                    let _71 := var_resultPtr_165
                    let _70 := increment_t_uint256(_71)
                    var_resultPtr_165 := _70
                    let expr_294 := _71
                    /// @src 1:1128:1182  "result[resultPtr++] = table[uint8(chunk      ) & 0x3f]"
                    let _72 := expr_303
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_292_mpos, expr_294), byte(0, _72))
                    let expr_304 := expr_303
                }
                /// @src 1:1207:1211  "data"
                let _73_mpos := var_data_132_mpos
                let expr_308_mpos := _73_mpos
                /// @src 1:1207:1218  "data.length"
                let expr_309 := array_length_t_bytes_memory_ptr(expr_308_mpos)
                /// @src 1:1221:1222  "3"
                let expr_310 := 0x03
                /// @src 1:1207:1222  "data.length % 3"
                let expr_311 := mod_t_uint256(expr_309, convert_t_rational_3_by_1_to_t_uint256(expr_310))

                /// @src 1:1226:1227  "1"
                let expr_312 := 0x01
                /// @src 1:1207:1227  "data.length % 3 == 1"
                let expr_313 := eq(cleanup_t_uint256(expr_311), convert_t_rational_1_by_1_to_t_uint256(expr_312))
                /// @src 1:1203:1411  "if (data.length % 3 == 1) {..."
                switch expr_313
                case 0 {
                    /// @src 1:1338:1342  "data"
                    let _74_mpos := var_data_132_mpos
                    let expr_329_mpos := _74_mpos
                    /// @src 1:1338:1349  "data.length"
                    let expr_330 := array_length_t_bytes_memory_ptr(expr_329_mpos)
                    /// @src 1:1352:1353  "3"
                    let expr_331 := 0x03
                    /// @src 1:1338:1353  "data.length % 3"
                    let expr_332 := mod_t_uint256(expr_330, convert_t_rational_3_by_1_to_t_uint256(expr_331))

                    /// @src 1:1357:1358  "2"
                    let expr_333 := 0x02
                    /// @src 1:1338:1358  "data.length % 3 == 2"
                    let expr_334 := eq(cleanup_t_uint256(expr_332), convert_t_rational_2_by_1_to_t_uint256(expr_333))
                    /// @src 1:1334:1411  "if (data.length % 3 == 2) {..."
                    if expr_334 {
                        /// @src 1:1396:1400  "0x3d"
                        let expr_339 := 0x3d
                        /// @src 1:1374:1400  "result[--resultPtr] = 0x3d"
                        let _75 := convert_t_rational_61_by_1_to_t_bytes1(expr_339)
                        /// @src 1:1374:1380  "result"
                        let _76_mpos := var_result_149_mpos
                        let expr_335_mpos := _76_mpos
                        /// @src 1:1381:1392  "--resultPtr"
                        let _78 := var_resultPtr_165
                        let _77 := decrement_t_uint256(_78)
                        var_resultPtr_165 := _77
                        let expr_337 := _77
                        /// @src 1:1374:1400  "result[--resultPtr] = 0x3d"
                        let _79 := _75
                        mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_335_mpos, expr_337), byte(0, _79))
                        let expr_340 := _75
                        /// @src 1:1334:1411  "if (data.length % 3 == 2) {..."
                    }
                    /// @src 1:1203:1411  "if (data.length % 3 == 1) {..."
                }
                default {
                    /// @src 1:1265:1269  "0x3d"
                    let expr_318 := 0x3d
                    /// @src 1:1243:1269  "result[--resultPtr] = 0x3d"
                    let _80 := convert_t_rational_61_by_1_to_t_bytes1(expr_318)
                    /// @src 1:1243:1249  "result"
                    let _81_mpos := var_result_149_mpos
                    let expr_314_mpos := _81_mpos
                    /// @src 1:1250:1261  "--resultPtr"
                    let _83 := var_resultPtr_165
                    let _82 := decrement_t_uint256(_83)
                    var_resultPtr_165 := _82
                    let expr_316 := _82
                    /// @src 1:1243:1269  "result[--resultPtr] = 0x3d"
                    let _84 := _80
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_314_mpos, expr_316), byte(0, _84))
                    let expr_319 := _80
                    /// @src 1:1305:1309  "0x3d"
                    let expr_325 := 0x3d
                    /// @src 1:1283:1309  "result[--resultPtr] = 0x3d"
                    let _85 := convert_t_rational_61_by_1_to_t_bytes1(expr_325)
                    /// @src 1:1283:1289  "result"
                    let _86_mpos := var_result_149_mpos
                    let expr_321_mpos := _86_mpos
                    /// @src 1:1290:1301  "--resultPtr"
                    let _88 := var_resultPtr_165
                    let _87 := decrement_t_uint256(_88)
                    var_resultPtr_165 := _87
                    let expr_323 := _87
                    /// @src 1:1283:1309  "result[--resultPtr] = 0x3d"
                    let _89 := _85
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_321_mpos, expr_323), byte(0, _89))
                    let expr_326 := _85
                    /// @src 1:1203:1411  "if (data.length % 3 == 1) {..."
                }
                /// @src 1:1436:1442  "result"
                let _90_mpos := var_result_149_mpos
                let expr_347_mpos := _90_mpos
                /// @src 1:1429:1443  "string(result)"
                let expr_348_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_347_mpos)
                /// @src 1:1428:1444  "(string(result))"
                let expr_349_mpos := expr_348_mpos
                /// @src 1:1421:1444  "return (string(result))"
                var__135_mpos := expr_349_mpos
                leave

            }
            /// @src 2:84:652  "contract test {..."

        }

        data ".metadata" hex"a2646970667358221220f4213eaef1c5ced27667f45b1b7b09e64eb4f474274726a823126867cb37b04664736f6c634300081b0033"
    }

}


