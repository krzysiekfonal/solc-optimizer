

/// @use-src 0:"EtherFlame.sol"
object "EtherFlame_1088" {
    code {
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."
        mstore(64, memoryguard(128))

        let _1, _2, _3, _4, _5 := copy_arguments_for_constructor_608_object_EtherFlame_1088()
        constructor_EtherFlame_1088(_1, _2, _3, _4, _5)

        let _6 := allocate_unbounded()
        codecopy(_6, dataoffset("EtherFlame_1088_deployed"), datasize("EtherFlame_1088_deployed"))

        return(_6, datasize("EtherFlame_1088_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
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

        function array_allocation_size_t_string_memory_ptr(length) -> size {
            // Make sure we can allocate memory without overflow
            if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

            size := round_up_to_mul_of_32(length)

            // add length slot
            size := add(size, 0x20)

        }

        function copy_memory_to_memory_with_cleanup(src, dst, length) {
            let i := 0
            for { } lt(i, length) { i := add(i, 32) }
            {
                mstore(add(dst, i), mload(add(src, i)))
            }
            mstore(add(dst, length), 0)
        }

        function abi_decode_available_length_t_string_memory_ptr_fromMemory(src, length, end) -> array {
            array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
            mstore(array, length)
            let dst := add(array, 0x20)
            if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
            copy_memory_to_memory_with_cleanup(src, dst, length)
        }

        // string
        function abi_decode_t_string_memory_ptr_fromMemory(offset, end) -> array {
            if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
            let length := mload(offset)
            array := abi_decode_available_length_t_string_memory_ptr_fromMemory(add(offset, 0x20), length, end)
        }

        function cleanup_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function validator_revert_t_uint8(value) {
            if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
        }

        function abi_decode_t_uint8_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_uint8(value)
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function cleanup_t_address(value) -> cleaned {
            cleaned := cleanup_t_uint160(value)
        }

        function validator_revert_t_address(value) {
            if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
        }

        function abi_decode_t_address_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_address(value)
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function validator_revert_t_uint256(value) {
            if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
        }

        function abi_decode_t_uint256_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_uint256(value)
        }

        function abi_decode_tuple_t_string_memory_ptrt_string_memory_ptrt_uint8t_addresst_uint256_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
            if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := mload(add(headStart, 0))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value0 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := mload(add(headStart, 32))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value1 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 64

                value2 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 96

                value3 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 128

                value4 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_608_object_EtherFlame_1088() -> ret_param_0, ret_param_1, ret_param_2, ret_param_3, ret_param_4 {
            let programSize := datasize("EtherFlame_1088")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1, ret_param_2, ret_param_3, ret_param_4 := abi_decode_tuple_t_string_memory_ptrt_string_memory_ptrt_uint8t_addresst_uint256_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        function panic_error_0x00() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x00)
            revert(0, 0x24)
        }

        function array_length_t_string_memory_ptr(value) -> length {

            length := mload(value)

        }

        function panic_error_0x22() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x22)
            revert(0, 0x24)
        }

        function extract_byte_array_length(data) -> length {
            length := div(data, 2)
            let outOfPlaceEncoding := and(data, 1)
            if iszero(outOfPlaceEncoding) {
                length := and(length, 0x7f)
            }

            if eq(outOfPlaceEncoding, lt(length, 32)) {
                panic_error_0x22()
            }
        }

        function array_dataslot_t_string_storage(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        function divide_by_32_ceil(value) -> result {
            result := div(add(value, 31), 32)
        }

        function shift_left_dynamic(bits, value) -> newValue {
            newValue :=

            shl(bits, value)

        }

        function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
            let shiftBits := mul(shiftBytes, 8)
            let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
            toInsert := shift_left_dynamic(shiftBits, toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
        }

        function zero_value_for_split_t_uint256() -> ret {
            ret := 0
        }

        function storage_set_to_zero_t_uint256(slot, offset) {
            let zero_0 := zero_value_for_split_t_uint256()
            update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
        }

        function clear_storage_range_t_bytes1(start, end) {
            for {} lt(start, end) { start := add(start, 1) }
            {
                storage_set_to_zero_t_uint256(start, 0)
            }
        }

        function clean_up_bytearray_end_slots_t_string_storage(array, len, startIndex) {

            if gt(len, 31) {
                let dataArea := array_dataslot_t_string_storage(array)
                let deleteStart := add(dataArea, divide_by_32_ceil(startIndex))
                // If we are clearing array to be short byte array, we want to clear only data starting from array data area.
                if lt(startIndex, 32) { deleteStart := dataArea }
                clear_storage_range_t_bytes1(deleteStart, add(dataArea, divide_by_32_ceil(len)))
            }

        }

        function shift_right_unsigned_dynamic(bits, value) -> newValue {
            newValue :=

            shr(bits, value)

        }

        function mask_bytes_dynamic(data, bytes) -> result {
            let mask := not(shift_right_unsigned_dynamic(mul(8, bytes), not(0)))
            result := and(data, mask)
        }
        function extract_used_part_and_set_length_of_short_byte_array(data, len) -> used {
            // we want to save only elements that are part of the array after resizing
            // others should be set to zero
            data := mask_bytes_dynamic(data, len)
            used := or(data, mul(2, len))
        }
        function copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, src) {

            let newLen := array_length_t_string_memory_ptr(src)
            // Make sure array length is sane
            if gt(newLen, 0xffffffffffffffff) { panic_error_0x41() }

            let oldLen := extract_byte_array_length(sload(slot))

            // potentially truncate data
            clean_up_bytearray_end_slots_t_string_storage(slot, oldLen, newLen)

            let srcOffset := 0

            srcOffset := 0x20

            switch gt(newLen, 31)
            case 1 {
                let loopEnd := and(newLen, not(0x1f))

                let dstPtr := array_dataslot_t_string_storage(slot)
                let i := 0
                for { } lt(i, loopEnd) { i := add(i, 0x20) } {
                    sstore(dstPtr, mload(add(src, srcOffset)))
                    dstPtr := add(dstPtr, 1)
                    srcOffset := add(srcOffset, 32)
                }
                if lt(loopEnd, newLen) {
                    let lastValue := mload(add(src, srcOffset))
                    sstore(dstPtr, mask_bytes_dynamic(lastValue, and(newLen, 0x1f)))
                }
                sstore(slot, add(mul(newLen, 2), 1))
            }
            default {
                let value := 0
                if newLen {
                    value := mload(add(src, srcOffset))
                }
                sstore(slot, extract_used_part_and_set_length_of_short_byte_array(value, newLen))
            }
        }

        function update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(slot, value_0) {

            copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, value_0)
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_1_shift_0(value, toInsert) -> result {
            let mask := 255
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function convert_t_uint8_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
        }

        function prepare_store_t_uint8(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0t_uint8_to_t_uint8(slot, value_0) {
            let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(convertedValue_0)))
        }

        function update_byte_slice_20_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_address_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function prepare_store_t_address(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0t_address_to_t_address(slot, value_0) {
            let convertedValue_0 := convert_t_address_to_t_address(value_0)
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
        }

        function convert_t_contract$_EtherFlame_$1088_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function cleanup_t_rational_1_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
        }

        /// @src 0:13770:13806  "uint256 private constant VERSION = 1"
        function constant_VERSION_534() -> ret {
            /// @src 0:13805:13806  "1"
            let expr_533 := 0x01
            let _14 := convert_t_rational_1_by_1_to_t_uint256(expr_533)

            ret := _14
        }

        function panic_error_0x21() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x21)
            revert(0, 0x24)
        }

        function validator_assert_t_enum$_TokenType_$509(value) {
            if iszero(lt(value, 1)) { panic_error_0x21() }
        }

        function cleanup_t_enum$_TokenType_$509(value) -> cleaned {
            cleaned := value validator_assert_t_enum$_TokenType_$509(value)
        }

        function convert_t_enum$_TokenType_$509_to_t_uint8(value) -> converted {
            converted := cleanup_t_enum$_TokenType_$509(value)
        }

        function abi_encode_t_enum$_TokenType_$509_to_t_uint8_fromStack(value, pos) {
            mstore(pos, convert_t_enum$_TokenType_$509_to_t_uint8(value))
        }

        function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
            mstore(pos, cleanup_t_uint256(value))
        }

        function abi_encode_tuple_t_enum$_TokenType_$509_t_uint256__to_t_uint8_t_uint256__fromStack(headStart , value0, value1) -> tail {
            tail := add(headStart, 64)

            abi_encode_t_enum$_TokenType_$509_to_t_uint8_fromStack(value0,  add(headStart, 0))

            abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

        }

        /// @ast-id 608
        /// @src 0:14259:14689  "constructor(..."
        function constructor_EtherFlame_1088(var_name__562_mpos, var_symbol__564_mpos, var_decimals__566, var_whiteshipAddr_568, var_totalSupply__570) {

            /// @src 0:14259:14689  "constructor(..."
            constructor_Ownable_197()

            /// @src 0:14456:14461  "name_"
            let _7_mpos := var_name__562_mpos
            let expr_574_mpos := _7_mpos
            /// @src 0:14448:14461  "_name = name_"
            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(0x07, expr_574_mpos)
            let _8_slot := 0x07
            let expr_575_slot := _8_slot
            /// @src 0:14482:14489  "symbol_"
            let _9_mpos := var_symbol__564_mpos
            let expr_578_mpos := _9_mpos
            /// @src 0:14472:14489  "_symbol = symbol_"
            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(0x08, expr_578_mpos)
            let _10_slot := 0x08
            let expr_579_slot := _10_slot
            /// @src 0:14512:14521  "decimals_"
            let _11 := var_decimals__566
            let expr_582 := _11
            /// @src 0:14500:14521  "_decimals = decimals_"
            update_storage_value_offset_0t_uint8_to_t_uint8(0x09, expr_582)
            let expr_583 := expr_582
            /// @src 0:14546:14559  "whiteshipAddr"
            let _12 := var_whiteshipAddr_568
            let expr_586 := _12
            /// @src 0:14532:14559  "whiteListV3 = whiteshipAddr"
            update_storage_value_offset_0t_address_to_t_address(0x06, expr_586)
            let expr_587 := expr_586
            /// @src 0:14576:14583  "owner()"
            let expr_591 := fun_owner_126()
            /// @src 0:14585:14597  "totalSupply_"
            let _13 := var_totalSupply__570
            let expr_592 := _13
            fun__mint_968(expr_591, expr_592)
            /// @src 0:14629:14636  "owner()"
            let expr_597 := fun_owner_126()
            /// @src 0:14646:14650  "this"
            let expr_600_address := address()
            /// @src 0:14638:14651  "address(this)"
            let expr_601 := convert_t_contract$_EtherFlame_$1088_to_t_address(expr_600_address)
            /// @src 0:14653:14671  "TokenType.standard"
            let expr_603 := 0
            /// @src 0:14673:14680  "VERSION"
            let expr_604 := constant_VERSION_534()
            /// @src 0:14616:14681  "TokenCreated(owner(), address(this), TokenType.standard, VERSION)"
            let _15 := 0x56358b41df5fa59f5639228f0930994cbdde383c8a8fd74e06c04e1deebe3562
            let _16 := convert_t_address_to_t_address(expr_597)
            let _17 := convert_t_address_to_t_address(expr_601)
            {
                let _18 := allocate_unbounded()
                let _19 := abi_encode_tuple_t_enum$_TokenType_$509_t_uint256__to_t_uint8_t_uint256__fromStack(_18 , expr_603, expr_604)
                log3(_18, sub(_19, _18) , _15, _16, _17)
            }
        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        /// @ast-id 117
        /// @src 0:4679:4735  "constructor() {..."
        function constructor_Ownable_197() {

            /// @src 0:4679:4735  "constructor() {..."
            constructor_Context_96()

            /// @src 0:4714:4726  "_msgSender()"
            let expr_113 := fun__msgSender_86()
            fun__setOwner_196(expr_113)

        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        /// @src 0:3501:3744  "abstract contract Context {..."
        function constructor_Context_96() {

            /// @src 0:3501:3744  "abstract contract Context {..."
            constructor_baseToken_521()

        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        /// @src 0:13183:13367  "abstract contract baseToken {..."
        function constructor_baseToken_521() {

            /// @src 0:13183:13367  "abstract contract baseToken {..."
            constructor_IERC20_76()

        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        /// @src 0:222:2891  "interface IERC20 {..."
        function constructor_IERC20_76() {

            /// @src 0:222:2891  "interface IERC20 {..."

        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        function zero_value_for_split_t_address() -> ret {
            ret := 0
        }

        /// @ast-id 86
        /// @src 0:3534:3632  "function _msgSender() internal view virtual returns (address) {..."
        function fun__msgSender_86() -> var__80 {
            /// @src 0:3587:3594  "address"
            let zero_t_address_20 := zero_value_for_split_t_address()
            var__80 := zero_t_address_20

            /// @src 0:3614:3624  "msg.sender"
            let expr_83 := caller()
            /// @src 0:3607:3624  "return msg.sender"
            var__80 := expr_83
            leave

        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function cleanup_from_storage_t_address(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function extract_from_storage_value_offset_0t_address(slot_value) -> value {
            value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
        }

        function read_from_storage_split_offset_0_t_address(slot) -> value {
            value := extract_from_storage_value_offset_0t_address(sload(slot))

        }

        /// @ast-id 126
        /// @src 0:4816:4903  "function owner() public view virtual returns (address) {..."
        function fun_owner_126() -> var__121 {
            /// @src 0:4862:4869  "address"
            let zero_t_address_21 := zero_value_for_split_t_address()
            var__121 := zero_t_address_21

            /// @src 0:4889:4895  "_owner"
            let _22 := read_from_storage_split_offset_0_t_address(0x00)
            let expr_123 := _22
            /// @src 0:4882:4895  "return _owner"
            var__121 := expr_123
            leave

        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        function abi_encode_tuple__to__fromStack(headStart ) -> tail {
            tail := add(headStart, 0)

        }

        /// @ast-id 196
        /// @src 0:5916:6089  "function _setOwner(address newOwner) private {..."
        function fun__setOwner_196(var_newOwner_179) {

            /// @src 0:5991:5997  "_owner"
            let _23 := read_from_storage_split_offset_0_t_address(0x00)
            let expr_184 := _23
            /// @src 0:5972:5997  "address oldOwner = _owner"
            let var_oldOwner_183 := expr_184
            /// @src 0:6017:6025  "newOwner"
            let _24 := var_newOwner_179
            let expr_187 := _24
            /// @src 0:6008:6025  "_owner = newOwner"
            update_storage_value_offset_0t_address_to_t_address(0x00, expr_187)
            let expr_188 := expr_187
            /// @src 0:6062:6070  "oldOwner"
            let _25 := var_oldOwner_183
            let expr_191 := _25
            /// @src 0:6072:6080  "newOwner"
            let _26 := var_newOwner_179
            let expr_192 := _26
            /// @src 0:6041:6081  "OwnershipTransferred(oldOwner, newOwner)"
            let _27 := 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0
            let _28 := convert_t_address_to_t_address(expr_191)
            let _29 := convert_t_address_to_t_address(expr_192)
            {
                let _30 := allocate_unbounded()
                let _31 := abi_encode_tuple__to__fromStack(_30 )
                log3(_30, sub(_31, _30) , _27, _28, _29)
            }
        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        function cleanup_t_rational_0_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
        }

        function convert_t_rational_0_by_1_to_t_address(value) -> converted {
            converted := convert_t_rational_0_by_1_to_t_uint160(value)
        }

        function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
            mstore(pos, length)
            updated_pos := add(pos, 0x20)
        }

        function store_literal_in_memory_de258b4aad062fdaac0faffa0cb36cee218d4a651e9d3f9dcb1bcfab5ddd7032(memPtr) {

            mstore(add(memPtr, 0), "IERC20: mint to the zero address")

        }

        function abi_encode_t_stringliteral_de258b4aad062fdaac0faffa0cb36cee218d4a651e9d3f9dcb1bcfab5ddd7032_to_t_string_memory_ptr_fromStack(pos) -> end {
            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 32)
            store_literal_in_memory_de258b4aad062fdaac0faffa0cb36cee218d4a651e9d3f9dcb1bcfab5ddd7032(pos)
            end := add(pos, 32)
        }

        function abi_encode_tuple_t_stringliteral_de258b4aad062fdaac0faffa0cb36cee218d4a651e9d3f9dcb1bcfab5ddd7032__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
            tail := add(headStart, 32)

            mstore(add(headStart, 0), sub(tail, headStart))
            tail := abi_encode_t_stringliteral_de258b4aad062fdaac0faffa0cb36cee218d4a651e9d3f9dcb1bcfab5ddd7032_to_t_string_memory_ptr_fromStack( tail)

        }

        function require_helper_t_stringliteral_de258b4aad062fdaac0faffa0cb36cee218d4a651e9d3f9dcb1bcfab5ddd7032(condition ) {
            if iszero(condition) {
                let memPtr := allocate_unbounded()
                mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                let end := abi_encode_tuple_t_stringliteral_de258b4aad062fdaac0faffa0cb36cee218d4a651e9d3f9dcb1bcfab5ddd7032__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                revert(memPtr, sub(end, memPtr))
            }
        }

        function cleanup_from_storage_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
            value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
        }

        function read_from_storage_split_offset_0_t_uint256(slot) -> value {
            value := extract_from_storage_value_offset_0t_uint256(sload(slot))

        }

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

        function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
            mstore(0, convert_t_address_to_t_address(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
            tail := add(headStart, 32)

            abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

        }

        /// @ast-id 968
        /// @src 0:18291:18670  "function _mint(address account, uint256 amount) internal virtual {..."
        function fun__mint_968(var_account_916, var_amount_918) {

            /// @src 0:18375:18382  "account"
            let _32 := var_account_916
            let expr_922 := _32
            /// @src 0:18394:18395  "0"
            let expr_925 := 0x00
            /// @src 0:18386:18396  "address(0)"
            let expr_926 := convert_t_rational_0_by_1_to_t_address(expr_925)
            /// @src 0:18375:18396  "account != address(0)"
            let expr_927 := iszero(eq(cleanup_t_address(expr_922), cleanup_t_address(expr_926)))
            /// @src 0:18367:18433  "require(account != address(0), \"IERC20: mint to the zero address\")"
            require_helper_t_stringliteral_de258b4aad062fdaac0faffa0cb36cee218d4a651e9d3f9dcb1bcfab5ddd7032(expr_927)
            /// @src 0:18475:18476  "0"
            let expr_934 := 0x00
            /// @src 0:18467:18477  "address(0)"
            let expr_935 := convert_t_rational_0_by_1_to_t_address(expr_934)
            /// @src 0:18479:18486  "account"
            let _33 := var_account_916
            let expr_936 := _33
            /// @src 0:18488:18494  "amount"
            let _34 := var_amount_918
            let expr_937 := _34
            fun__beforeTokenTransfer_1087(expr_935, expr_936, expr_937)
            /// @src 0:18523:18535  "_totalSupply"
            let _35 := read_from_storage_split_offset_0_t_uint256(0x0a)
            let expr_941 := _35
            /// @src 0:18523:18539  "_totalSupply.add"
            let expr_942_self := expr_941
            /// @src 0:18540:18546  "amount"
            let _36 := var_amount_918
            let expr_943 := _36
            /// @src 0:18523:18547  "_totalSupply.add(amount)"
            let expr_944 := fun_add_371(expr_942_self, expr_943)
            /// @src 0:18508:18547  "_totalSupply = _totalSupply.add(amount)"
            update_storage_value_offset_0t_uint256_to_t_uint256(0x0a, expr_944)
            let expr_945 := expr_944
            /// @src 0:18579:18588  "_balances"
            let _37_slot := 0x01
            let expr_950_slot := _37_slot
            /// @src 0:18589:18596  "account"
            let _38 := var_account_916
            let expr_951 := _38
            /// @src 0:18579:18597  "_balances[account]"
            let _39 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_950_slot,expr_951)
            let _40 := read_from_storage_split_offset_0_t_uint256(_39)
            let expr_952 := _40
            /// @src 0:18579:18601  "_balances[account].add"
            let expr_953_self := expr_952
            /// @src 0:18602:18608  "amount"
            let _41 := var_amount_918
            let expr_954 := _41
            /// @src 0:18579:18609  "_balances[account].add(amount)"
            let expr_955 := fun_add_371(expr_953_self, expr_954)
            /// @src 0:18558:18567  "_balances"
            let _42_slot := 0x01
            let expr_947_slot := _42_slot
            /// @src 0:18568:18575  "account"
            let _43 := var_account_916
            let expr_948 := _43
            /// @src 0:18558:18576  "_balances[account]"
            let _44 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_947_slot,expr_948)
            /// @src 0:18558:18609  "_balances[account] = _balances[account].add(amount)"
            update_storage_value_offset_0t_uint256_to_t_uint256(_44, expr_955)
            let expr_956 := expr_955
            /// @src 0:18642:18643  "0"
            let expr_961 := 0x00
            /// @src 0:18634:18644  "address(0)"
            let expr_962 := convert_t_rational_0_by_1_to_t_address(expr_961)
            /// @src 0:18646:18653  "account"
            let _45 := var_account_916
            let expr_963 := _45
            /// @src 0:18655:18661  "amount"
            let _46 := var_amount_918
            let expr_964 := _46
            /// @src 0:18625:18662  "Transfer(address(0), account, amount)"
            let _47 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
            let _48 := convert_t_address_to_t_address(expr_962)
            let _49 := convert_t_address_to_t_address(expr_963)
            {
                let _50 := allocate_unbounded()
                let _51 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_50 , expr_964)
                log3(_50, sub(_51, _50) , _47, _48, _49)
            }
        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

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

        /// @ast-id 371
        /// @src 0:8902:9000  "function add(uint256 a, uint256 b) internal pure returns (uint256) {..."
        function fun_add_371(var_a_359, var_b_361) -> var__364 {
            /// @src 0:8960:8967  "uint256"
            let zero_t_uint256_52 := zero_value_for_split_t_uint256()
            var__364 := zero_t_uint256_52

            /// @src 0:8987:8988  "a"
            let _53 := var_a_359
            let expr_366 := _53
            /// @src 0:8991:8992  "b"
            let _54 := var_b_361
            let expr_367 := _54
            /// @src 0:8987:8992  "a + b"
            let expr_368 := checked_add_t_uint256(expr_366, expr_367)

            /// @src 0:8980:8992  "return a + b"
            var__364 := expr_368
            leave

        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        /// @ast-id 1087
        /// @src 0:19639:19764  "function _beforeTokenTransfer(..."
        function fun__beforeTokenTransfer_1087(var_from_1079, var_to_1081, var_amount_1083) {

        }
        /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

    }
    /// @use-src 0:"EtherFlame.sol"
    object "EtherFlame_1088_deployed" {
        code {
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()

                    external_fun_name_616()
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    external_fun_approve_711()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_641()
                }

                case 0x1ab99e12
                {
                    // minHoldingAmount()

                    external_fun_minHoldingAmount_548()
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    external_fun_transferFrom_748()
                }

                case 0x313ce567
                {
                    // decimals()

                    external_fun_decimals_632()
                }

                case 0x39509351
                {
                    // increaseAllowance(address,uint256)

                    external_fun_increaseAllowance_775()
                }

                case 0x49bd5a5e
                {
                    // uniswapV2Pair()

                    external_fun_uniswapV2Pair_550()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_654()
                }

                case 0x715018a6
                {
                    // renounceOwnership()

                    external_fun_renounceOwnership_154()
                }

                case 0x89f9a1d3
                {
                    // maxHoldingAmount()

                    external_fun_maxHoldingAmount_546()
                }

                case 0x8da5cb5b
                {
                    // owner()

                    external_fun_owner_126()
                }

                case 0x95d89b41
                {
                    // symbol()

                    external_fun_symbol_624()
                }

                case 0x9e4aa36a
                {
                    // Approved(bool,address,uint256,uint256)

                    external_fun_Approved_914()
                }

                case 0xa457c2d7
                {
                    // decreaseAllowance(address,uint256)

                    external_fun_decreaseAllowance_803()
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    external_fun_transfer_674()
                }

                case 0xdd62ed3e
                {
                    // allowance(address,address)

                    external_fun_allowance_691()
                }

                case 0xf2fde38b
                {
                    // transferOwnership(address)

                    external_fun_transferOwnership_177()
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

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                mstore(add(dst, length), 0)
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
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

            function external_fun_name_616() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_name_616()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
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

            function abi_decode_tuple_t_addresst_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
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

            function external_fun_approve_711() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_approve_711(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalSupply_641() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_totalSupply_641()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            /// @ast-id 548
            /// @src 0:13995:14026  "uint256 public minHoldingAmount"
            function getter_fun_minHoldingAmount_548() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function external_fun_minHoldingAmount_548() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_minHoldingAmount_548()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_addresst_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_transferFrom_748() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transferFrom_748(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_decimals_632() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_decimals_632()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_increaseAllowance_775() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_increaseAllowance_775(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_dynamict_address(slot_value, offset) -> value {
                value := cleanup_from_storage_t_address(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_address(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_address(sload(slot), offset)

            }

            /// @ast-id 550
            /// @src 0:14037:14065  "address public uniswapV2Pair"
            function getter_fun_uniswapV2Pair_550() -> ret {

                let slot := 5
                let offset := 0

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_uniswapV2Pair_550() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_uniswapV2Pair_550()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_balanceOf_654() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_balanceOf_654(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_renounceOwnership_154() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_renounceOwnership_154()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 546
            /// @src 0:13953:13984  "uint256 public maxHoldingAmount"
            function getter_fun_maxHoldingAmount_546() -> ret {

                let slot := 3
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function external_fun_maxHoldingAmount_546() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_maxHoldingAmount_546()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_owner_126() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_owner_126()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_symbol_624() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_symbol_624()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_boolt_addresst_uint256t_uint256(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_Approved_914() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_boolt_addresst_uint256t_uint256(4, calldatasize())
                fun_Approved_914(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_decreaseAllowance_803() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_decreaseAllowance_803(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transfer_674() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transfer_674(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_allowance_691() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  fun_allowance_691(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transferOwnership_177() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_transferOwnership_177(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function extract_from_storage_value_offset_0t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))

            }

            /// @ast-id 126
            /// @src 0:4816:4903  "function owner() public view virtual returns (address) {..."
            function fun_owner_126() -> var__121 {
                /// @src 0:4862:4869  "address"
                let zero_t_address_1 := zero_value_for_split_t_address()
                var__121 := zero_t_address_1

                /// @src 0:4889:4895  "_owner"
                let _2 := read_from_storage_split_offset_0_t_address(0x00)
                let expr_123 := _2
                /// @src 0:4882:4895  "return _owner"
                var__121 := expr_123
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function store_literal_in_memory_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe(memPtr) {

                mstore(add(memPtr, 0), "Ownable: caller is not the owner")

            }

            function abi_encode_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 32)
                store_literal_in_memory_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 140
            /// @src 0:4996:5116  "modifier onlyOwner() {..."
            function modifier_onlyOwner_144() {

                /// @src 0:5036:5043  "owner()"
                let expr_131 := fun_owner_126()
                /// @src 0:5047:5059  "_msgSender()"
                let expr_133 := fun__msgSender_86()
                /// @src 0:5036:5059  "owner() == _msgSender()"
                let expr_134 := eq(cleanup_t_address(expr_131), cleanup_t_address(expr_133))
                /// @src 0:5028:5096  "require(owner() == _msgSender(), \"Ownable: caller is not the owner\")"
                require_helper_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe(expr_134)
                /// @src 0:5107:5108  "_"
                fun_renounceOwnership_154_inner()

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            /// @src 0:5467:5561  "function renounceOwnership() public virtual onlyOwner {..."
            function fun_renounceOwnership_154_inner() {

                /// @src 0:5550:5551  "0"
                let expr_149 := 0x00
                /// @src 0:5542:5552  "address(0)"
                let expr_150 := convert_t_rational_0_by_1_to_t_address(expr_149)
                fun__setOwner_196(expr_150)

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            /// @ast-id 154
            /// @src 0:5467:5561  "function renounceOwnership() public virtual onlyOwner {..."
            function fun_renounceOwnership_154() {

                modifier_onlyOwner_144()
            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            /// @ast-id 86
            /// @src 0:3534:3632  "function _msgSender() internal view virtual returns (address) {..."
            function fun__msgSender_86() -> var__80 {
                /// @src 0:3587:3594  "address"
                let zero_t_address_3 := zero_value_for_split_t_address()
                var__80 := zero_t_address_3

                /// @src 0:3614:3624  "msg.sender"
                let expr_83 := caller()
                /// @src 0:3607:3624  "return msg.sender"
                var__80 := expr_83
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            /// @ast-id 140
            /// @src 0:4996:5116  "modifier onlyOwner() {..."
            function modifier_onlyOwner_160(var_newOwner_157) {

                /// @src 0:5036:5043  "owner()"
                let expr_131 := fun_owner_126()
                /// @src 0:5047:5059  "_msgSender()"
                let expr_133 := fun__msgSender_86()
                /// @src 0:5036:5059  "owner() == _msgSender()"
                let expr_134 := eq(cleanup_t_address(expr_131), cleanup_t_address(expr_133))
                /// @src 0:5028:5096  "require(owner() == _msgSender(), \"Ownable: caller is not the owner\")"
                require_helper_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe(expr_134)
                /// @src 0:5107:5108  "_"
                fun_transferOwnership_177_inner(var_newOwner_157)

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function store_literal_in_memory_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe(memPtr) {

                mstore(add(memPtr, 0), "Ownable: new owner is the zero a")

                mstore(add(memPtr, 32), "ddress")

            }

            function abi_encode_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 38)
                store_literal_in_memory_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @src 0:5716:5908  "function transferOwnership(address newOwner) public virtual onlyOwner {..."
            function fun_transferOwnership_177_inner(var_newOwner_157) {

                /// @src 0:5805:5813  "newOwner"
                let _4 := var_newOwner_157
                let expr_163 := _4
                /// @src 0:5825:5826  "0"
                let expr_166 := 0x00
                /// @src 0:5817:5827  "address(0)"
                let expr_167 := convert_t_rational_0_by_1_to_t_address(expr_166)
                /// @src 0:5805:5827  "newOwner != address(0)"
                let expr_168 := iszero(eq(cleanup_t_address(expr_163), cleanup_t_address(expr_167)))
                /// @src 0:5797:5870  "require(newOwner != address(0), \"Ownable: new owner is the zero address\")"
                require_helper_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe(expr_168)
                /// @src 0:5891:5899  "newOwner"
                let _5 := var_newOwner_157
                let expr_173 := _5
                fun__setOwner_196(expr_173)

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            /// @ast-id 177
            /// @src 0:5716:5908  "function transferOwnership(address newOwner) public virtual onlyOwner {..."
            function fun_transferOwnership_177(var_newOwner_157) {

                modifier_onlyOwner_160(var_newOwner_157)
            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            /// @ast-id 196
            /// @src 0:5916:6089  "function _setOwner(address newOwner) private {..."
            function fun__setOwner_196(var_newOwner_179) {

                /// @src 0:5991:5997  "_owner"
                let _6 := read_from_storage_split_offset_0_t_address(0x00)
                let expr_184 := _6
                /// @src 0:5972:5997  "address oldOwner = _owner"
                let var_oldOwner_183 := expr_184
                /// @src 0:6017:6025  "newOwner"
                let _7 := var_newOwner_179
                let expr_187 := _7
                /// @src 0:6008:6025  "_owner = newOwner"
                update_storage_value_offset_0t_address_to_t_address(0x00, expr_187)
                let expr_188 := expr_187
                /// @src 0:6062:6070  "oldOwner"
                let _8 := var_oldOwner_183
                let expr_191 := _8
                /// @src 0:6072:6080  "newOwner"
                let _9 := var_newOwner_179
                let expr_192 := _9
                /// @src 0:6041:6081  "OwnershipTransferred(oldOwner, newOwner)"
                let _10 := 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0
                let _11 := convert_t_address_to_t_address(expr_191)
                let _12 := convert_t_address_to_t_address(expr_192)
                {
                    let _13 := allocate_unbounded()
                    let _14 := abi_encode_tuple__to__fromStack(_13 )
                    log3(_13, sub(_14, _13) , _10, _11, _12)
                }
            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
            }

            function panic_error_0x22() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x22)
                revert(0, 0x24)
            }

            function extract_byte_array_length(data) -> length {
                length := div(data, 2)
                let outOfPlaceEncoding := and(data, 1)
                if iszero(outOfPlaceEncoding) {
                    length := and(length, 0x7f)
                }

                if eq(outOfPlaceEncoding, lt(length, 32)) {
                    panic_error_0x22()
                }
            }

            function array_storeLengthForEncoding_t_string_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_string_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            // string -> string
            function abi_encode_t_string_storage_to_t_string_memory_ptr(value, pos) -> ret {
                let slotValue := sload(value)
                let length := extract_byte_array_length(slotValue)
                pos := array_storeLengthForEncoding_t_string_memory_ptr(pos, length)
                switch and(slotValue, 1)
                case 0 {
                    // short byte array
                    mstore(pos, and(slotValue, not(0xff)))
                    ret := add(pos, mul(0x20, iszero(iszero(length))))
                }
                case 1 {
                    // long byte array
                    let dataPos := array_dataslot_t_string_storage(value)
                    let i := 0
                    for { } lt(i, length) { i := add(i, 0x20) } {
                        mstore(add(pos, i), sload(dataPos))
                        dataPos := add(dataPos, 1)
                    }
                    ret := add(pos, i)
                }
            }

            function abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_string_storage_to_t_string_memory_ptr(value0, pos)
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

            function copy_array_from_storage_to_memory_t_string_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function convert_array_t_string_storage_to_t_string_memory_ptr(value) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                copy_array_from_storage_to_memory_t_string_storage(value)

            }

            /// @ast-id 616
            /// @src 0:14697:14788  "function name() public view virtual returns (string memory) {..."
            function fun_name_616() -> var__611_mpos {
                /// @src 0:14742:14755  "string memory"
                let zero_t_string_memory_ptr_15_mpos := zero_value_for_split_t_string_memory_ptr()
                var__611_mpos := zero_t_string_memory_ptr_15_mpos

                /// @src 0:14775:14780  "_name"
                let _16_slot := 0x07
                let expr_613_slot := _16_slot
                /// @src 0:14768:14780  "return _name"
                var__611_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_613_slot)
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            /// @ast-id 624
            /// @src 0:14796:14891  "function symbol() public view virtual returns (string memory) {..."
            function fun_symbol_624() -> var__619_mpos {
                /// @src 0:14843:14856  "string memory"
                let zero_t_string_memory_ptr_17_mpos := zero_value_for_split_t_string_memory_ptr()
                var__619_mpos := zero_t_string_memory_ptr_17_mpos

                /// @src 0:14876:14883  "_symbol"
                let _18_slot := 0x08
                let expr_621_slot := _18_slot
                /// @src 0:14869:14883  "return _symbol"
                var__619_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_621_slot)
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

            function cleanup_from_storage_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_0t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint8(sload(slot))

            }

            /// @ast-id 632
            /// @src 0:14899:14990  "function decimals() public view virtual returns (uint8) {..."
            function fun_decimals_632() -> var__627 {
                /// @src 0:14948:14953  "uint8"
                let zero_t_uint8_19 := zero_value_for_split_t_uint8()
                var__627 := zero_t_uint8_19

                /// @src 0:14973:14982  "_decimals"
                let _20 := read_from_storage_split_offset_0_t_uint8(0x09)
                let expr_629 := _20
                /// @src 0:14966:14982  "return _decimals"
                var__627 := expr_629
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

            }

            /// @ast-id 641
            /// @src 0:14998:15106  "function totalSupply() public view virtual override returns (uint256) {..."
            function fun_totalSupply_641() -> var__636 {
                /// @src 0:15059:15066  "uint256"
                let zero_t_uint256_21 := zero_value_for_split_t_uint256()
                var__636 := zero_t_uint256_21

                /// @src 0:15086:15098  "_totalSupply"
                let _22 := read_from_storage_split_offset_0_t_uint256(0x0a)
                let expr_638 := _22
                /// @src 0:15079:15098  "return _totalSupply"
                var__636 := expr_638
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 654
            /// @src 0:15114:15291  "function balanceOf(address account)..."
            function fun_balanceOf_654(var_account_643) -> var__647 {
                /// @src 0:15233:15240  "uint256"
                let zero_t_uint256_23 := zero_value_for_split_t_uint256()
                var__647 := zero_t_uint256_23

                /// @src 0:15265:15274  "_balances"
                let _24_slot := 0x01
                let expr_649_slot := _24_slot
                /// @src 0:15275:15282  "account"
                let _25 := var_account_643
                let expr_650 := _25
                /// @src 0:15265:15283  "_balances[account]"
                let _26 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_649_slot,expr_650)
                let _27 := read_from_storage_split_offset_0_t_uint256(_26)
                let expr_651 := _27
                /// @src 0:15258:15283  "return _balances[account]"
                var__647 := expr_651
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            /// @ast-id 674
            /// @src 0:15299:15515  "function transfer(address recipient, uint256 amount)..."
            function fun_transfer_674(var_recipient_656, var_amount_658) -> var__662 {
                /// @src 0:15421:15425  "bool"
                let zero_t_bool_28 := zero_value_for_split_t_bool()
                var__662 := zero_t_bool_28

                /// @src 0:15453:15465  "_msgSender()"
                let expr_666 := fun__msgSender_86()
                /// @src 0:15467:15476  "recipient"
                let _29 := var_recipient_656
                let expr_667 := _29
                /// @src 0:15478:15484  "amount"
                let _30 := var_amount_658
                let expr_668 := _30
                fun__transfer_880(expr_666, expr_667, expr_668)
                /// @src 0:15503:15507  "true"
                let expr_671 := 0x01
                /// @src 0:15496:15507  "return true"
                var__662 := expr_671
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 691
            /// @src 0:15523:15724  "function allowance(address owner, address spender)..."
            function fun_allowance_691(var_owner_676, var_spender_678) -> var__682 {
                /// @src 0:15657:15664  "uint256"
                let zero_t_uint256_31 := zero_value_for_split_t_uint256()
                var__682 := zero_t_uint256_31

                /// @src 0:15689:15700  "_allowances"
                let _32_slot := 0x02
                let expr_684_slot := _32_slot
                /// @src 0:15701:15706  "owner"
                let _33 := var_owner_676
                let expr_685 := _33
                /// @src 0:15689:15707  "_allowances[owner]"
                let _34 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_684_slot,expr_685)
                let _35_slot := _34
                let expr_686_slot := _35_slot
                /// @src 0:15708:15715  "spender"
                let _36 := var_spender_678
                let expr_687 := _36
                /// @src 0:15689:15716  "_allowances[owner][spender]"
                let _37 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_686_slot,expr_687)
                let _38 := read_from_storage_split_offset_0_t_uint256(_37)
                let expr_688 := _38
                /// @src 0:15682:15716  "return _allowances[owner][spender]"
                var__682 := expr_688
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            /// @ast-id 711
            /// @src 0:15732:15942  "function approve(address spender, uint256 amount)..."
            function fun_approve_711(var_spender_693, var_amount_695) -> var__699 {
                /// @src 0:15851:15855  "bool"
                let zero_t_bool_39 := zero_value_for_split_t_bool()
                var__699 := zero_t_bool_39

                /// @src 0:15882:15894  "_msgSender()"
                let expr_703 := fun__msgSender_86()
                /// @src 0:15896:15903  "spender"
                let _40 := var_spender_693
                let expr_704 := _40
                /// @src 0:15905:15911  "amount"
                let _41 := var_amount_695
                let expr_705 := _41
                fun__approve_1067(expr_703, expr_704, expr_705)
                /// @src 0:15930:15934  "true"
                let expr_708 := 0x01
                /// @src 0:15923:15934  "return true"
                var__699 := expr_708
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

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

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_857c590040916b296ea164ac87722d4b972bc79263586b84b69bb7dd68e504ce(memPtr) {

                mstore(add(memPtr, 0), "IERC20: transfer amount exceeds ")

                mstore(add(memPtr, 32), "allowance")

            }

            function copy_literal_to_memory_857c590040916b296ea164ac87722d4b972bc79263586b84b69bb7dd68e504ce() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(41)
                store_literal_in_memory_857c590040916b296ea164ac87722d4b972bc79263586b84b69bb7dd68e504ce(add(memPtr, 32))
            }

            function convert_t_stringliteral_857c590040916b296ea164ac87722d4b972bc79263586b84b69bb7dd68e504ce_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_857c590040916b296ea164ac87722d4b972bc79263586b84b69bb7dd68e504ce()
            }

            /// @ast-id 748
            /// @src 0:15950:16405  "function transferFrom(..."
            function fun_transferFrom_748(var_sender_713, var_recipient_715, var_amount_717) -> var__721 {
                /// @src 0:16090:16094  "bool"
                let zero_t_bool_42 := zero_value_for_split_t_bool()
                var__721 := zero_t_bool_42

                /// @src 0:16117:16123  "sender"
                let _43 := var_sender_713
                let expr_724 := _43
                /// @src 0:16125:16134  "recipient"
                let _44 := var_recipient_715
                let expr_725 := _44
                /// @src 0:16136:16142  "amount"
                let _45 := var_amount_717
                let expr_726 := _45
                fun__transfer_880(expr_724, expr_725, expr_726)
                /// @src 0:16177:16183  "sender"
                let _46 := var_sender_713
                let expr_730 := _46
                /// @src 0:16198:16210  "_msgSender()"
                let expr_732 := fun__msgSender_86()
                /// @src 0:16225:16236  "_allowances"
                let _47_slot := 0x02
                let expr_733_slot := _47_slot
                /// @src 0:16237:16243  "sender"
                let _48 := var_sender_713
                let expr_734 := _48
                /// @src 0:16225:16244  "_allowances[sender]"
                let _49 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_733_slot,expr_734)
                let _50_slot := _49
                let expr_735_slot := _50_slot
                /// @src 0:16245:16257  "_msgSender()"
                let expr_737 := fun__msgSender_86()
                /// @src 0:16225:16258  "_allowances[sender][_msgSender()]"
                let _51 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_735_slot,expr_737)
                let _52 := read_from_storage_split_offset_0_t_uint256(_51)
                let expr_738 := _52
                /// @src 0:16225:16262  "_allowances[sender][_msgSender()].sub"
                let expr_739_self := expr_738
                /// @src 0:16281:16287  "amount"
                let _53 := var_amount_717
                let expr_740 := _53
                /// @src 0:16225:16364  "_allowances[sender][_msgSender()].sub(..."
                let _54_mpos := convert_t_stringliteral_857c590040916b296ea164ac87722d4b972bc79263586b84b69bb7dd68e504ce_to_t_string_memory_ptr()
                let expr_742 := fun_sub_456(expr_739_self, expr_740, _54_mpos)
                fun__approve_1067(expr_730, expr_732, expr_742)
                /// @src 0:16393:16397  "true"
                let expr_745 := 0x01
                /// @src 0:16386:16397  "return true"
                var__721 := expr_745
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function require_helper_t_string_memory_ptr(condition , message_1) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(add(memPtr, 4) , message_1)
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            /// @ast-id 456
            /// @src 0:11181:11421  "function sub(..."
            function fun_sub_456(var_a_434, var_b_436, var_errorMessage_438_mpos) -> var__441 {
                /// @src 0:11301:11308  "uint256"
                let zero_t_uint256_55 := zero_value_for_split_t_uint256()
                var__441 := zero_t_uint256_55

                /// @src 0:11354:11355  "b"
                let _56 := var_b_436
                let expr_444 := _56
                /// @src 0:11359:11360  "a"
                let _57 := var_a_434
                let expr_445 := _57
                /// @src 0:11354:11360  "b <= a"
                let expr_446 := iszero(gt(cleanup_t_uint256(expr_444), cleanup_t_uint256(expr_445)))
                /// @src 0:11362:11374  "errorMessage"
                let _58_mpos := var_errorMessage_438_mpos
                let expr_447_mpos := _58_mpos
                /// @src 0:11346:11375  "require(b <= a, errorMessage)"
                require_helper_t_string_memory_ptr(expr_446, expr_447_mpos)
                /// @src 0:11397:11398  "a"
                let _59 := var_a_434
                let expr_450 := _59
                /// @src 0:11401:11402  "b"
                let _60 := var_b_436
                let expr_451 := _60
                /// @src 0:11397:11402  "a - b"
                let expr_452 := wrapping_sub_t_uint256(expr_450, expr_451)

                /// @src 0:11390:11402  "return a - b"
                var__441 := expr_452
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            /// @ast-id 775
            /// @src 0:16413:16713  "function increaseAllowance(address spender, uint256 addedValue)..."
            function fun_increaseAllowance_775(var_spender_750, var_addedValue_752) -> var__755 {
                /// @src 0:16528:16532  "bool"
                let zero_t_bool_61 := zero_value_for_split_t_bool()
                var__755 := zero_t_bool_61

                /// @src 0:16573:16585  "_msgSender()"
                let expr_759 := fun__msgSender_86()
                /// @src 0:16600:16607  "spender"
                let _62 := var_spender_750
                let expr_760 := _62
                /// @src 0:16622:16633  "_allowances"
                let _63_slot := 0x02
                let expr_761_slot := _63_slot
                /// @src 0:16634:16646  "_msgSender()"
                let expr_763 := fun__msgSender_86()
                /// @src 0:16622:16647  "_allowances[_msgSender()]"
                let _64 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_761_slot,expr_763)
                let _65_slot := _64
                let expr_764_slot := _65_slot
                /// @src 0:16648:16655  "spender"
                let _66 := var_spender_750
                let expr_765 := _66
                /// @src 0:16622:16656  "_allowances[_msgSender()][spender]"
                let _67 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_764_slot,expr_765)
                let _68 := read_from_storage_split_offset_0_t_uint256(_67)
                let expr_766 := _68
                /// @src 0:16622:16660  "_allowances[_msgSender()][spender].add"
                let expr_767_self := expr_766
                /// @src 0:16661:16671  "addedValue"
                let _69 := var_addedValue_752
                let expr_768 := _69
                /// @src 0:16622:16672  "_allowances[_msgSender()][spender].add(addedValue)"
                let expr_769 := fun_add_371(expr_767_self, expr_768)
                fun__approve_1067(expr_759, expr_760, expr_769)
                /// @src 0:16701:16705  "true"
                let expr_772 := 0x01
                /// @src 0:16694:16705  "return true"
                var__755 := expr_772
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

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

            /// @ast-id 371
            /// @src 0:8902:9000  "function add(uint256 a, uint256 b) internal pure returns (uint256) {..."
            function fun_add_371(var_a_359, var_b_361) -> var__364 {
                /// @src 0:8960:8967  "uint256"
                let zero_t_uint256_70 := zero_value_for_split_t_uint256()
                var__364 := zero_t_uint256_70

                /// @src 0:8987:8988  "a"
                let _71 := var_a_359
                let expr_366 := _71
                /// @src 0:8991:8992  "b"
                let _72 := var_b_361
                let expr_367 := _72
                /// @src 0:8987:8992  "a + b"
                let expr_368 := checked_add_t_uint256(expr_366, expr_367)

                /// @src 0:8980:8992  "return a + b"
                var__364 := expr_368
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function store_literal_in_memory_04348cf35590d7e6419aa537533771b8790e24014b560b5f07abc768d98ffca9(memPtr) {

                mstore(add(memPtr, 0), "IERC20: decreased allowance belo")

                mstore(add(memPtr, 32), "w zero")

            }

            function copy_literal_to_memory_04348cf35590d7e6419aa537533771b8790e24014b560b5f07abc768d98ffca9() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(38)
                store_literal_in_memory_04348cf35590d7e6419aa537533771b8790e24014b560b5f07abc768d98ffca9(add(memPtr, 32))
            }

            function convert_t_stringliteral_04348cf35590d7e6419aa537533771b8790e24014b560b5f07abc768d98ffca9_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_04348cf35590d7e6419aa537533771b8790e24014b560b5f07abc768d98ffca9()
            }

            /// @ast-id 803
            /// @src 0:16721:17122  "function decreaseAllowance(address spender, uint256 subtractedValue)..."
            function fun_decreaseAllowance_803(var_spender_777, var_subtractedValue_779) -> var__782 {
                /// @src 0:16841:16845  "bool"
                let zero_t_bool_73 := zero_value_for_split_t_bool()
                var__782 := zero_t_bool_73

                /// @src 0:16886:16898  "_msgSender()"
                let expr_786 := fun__msgSender_86()
                /// @src 0:16913:16920  "spender"
                let _74 := var_spender_777
                let expr_787 := _74
                /// @src 0:16935:16946  "_allowances"
                let _75_slot := 0x02
                let expr_788_slot := _75_slot
                /// @src 0:16947:16959  "_msgSender()"
                let expr_790 := fun__msgSender_86()
                /// @src 0:16935:16960  "_allowances[_msgSender()]"
                let _76 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_788_slot,expr_790)
                let _77_slot := _76
                let expr_791_slot := _77_slot
                /// @src 0:16961:16968  "spender"
                let _78 := var_spender_777
                let expr_792 := _78
                /// @src 0:16935:16969  "_allowances[_msgSender()][spender]"
                let _79 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_791_slot,expr_792)
                let _80 := read_from_storage_split_offset_0_t_uint256(_79)
                let expr_793 := _80
                /// @src 0:16935:16973  "_allowances[_msgSender()][spender].sub"
                let expr_794_self := expr_793
                /// @src 0:16992:17007  "subtractedValue"
                let _81 := var_subtractedValue_779
                let expr_795 := _81
                /// @src 0:16935:17081  "_allowances[_msgSender()][spender].sub(..."
                let _82_mpos := convert_t_stringliteral_04348cf35590d7e6419aa537533771b8790e24014b560b5f07abc768d98ffca9_to_t_string_memory_ptr()
                let expr_797 := fun_sub_456(expr_794_self, expr_795, _82_mpos)
                fun__approve_1067(expr_786, expr_787, expr_797)
                /// @src 0:17110:17114  "true"
                let expr_800 := 0x01
                /// @src 0:17103:17114  "return true"
                var__782 := expr_800
                leave

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function store_literal_in_memory_0db2b9c5a806c4ea5a7d3fc964e60b781331fb776eff230e355ecadbff763ac5(memPtr) {

                mstore(add(memPtr, 0), "IERC20: transfer from the zero a")

                mstore(add(memPtr, 32), "ddress")

            }

            function abi_encode_t_stringliteral_0db2b9c5a806c4ea5a7d3fc964e60b781331fb776eff230e355ecadbff763ac5_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 38)
                store_literal_in_memory_0db2b9c5a806c4ea5a7d3fc964e60b781331fb776eff230e355ecadbff763ac5(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_0db2b9c5a806c4ea5a7d3fc964e60b781331fb776eff230e355ecadbff763ac5__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_0db2b9c5a806c4ea5a7d3fc964e60b781331fb776eff230e355ecadbff763ac5_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_0db2b9c5a806c4ea5a7d3fc964e60b781331fb776eff230e355ecadbff763ac5(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_0db2b9c5a806c4ea5a7d3fc964e60b781331fb776eff230e355ecadbff763ac5__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_b3bf70238df77e122316c81f3cd98a905b4932782034497e4c394ee06b643dc0(memPtr) {

                mstore(add(memPtr, 0), "IERC20: transfer to the zero add")

                mstore(add(memPtr, 32), "ress")

            }

            function abi_encode_t_stringliteral_b3bf70238df77e122316c81f3cd98a905b4932782034497e4c394ee06b643dc0_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 36)
                store_literal_in_memory_b3bf70238df77e122316c81f3cd98a905b4932782034497e4c394ee06b643dc0(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_b3bf70238df77e122316c81f3cd98a905b4932782034497e4c394ee06b643dc0__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b3bf70238df77e122316c81f3cd98a905b4932782034497e4c394ee06b643dc0_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b3bf70238df77e122316c81f3cd98a905b4932782034497e4c394ee06b643dc0(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b3bf70238df77e122316c81f3cd98a905b4932782034497e4c394ee06b643dc0__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_84ab41eac583505896771a118bb6605726b7b10d7d8af74ed18ea4d582ebe25f(memPtr) {

                mstore(add(memPtr, 0), "IERC20: transfer amount exceeds ")

                mstore(add(memPtr, 32), "balance")

            }

            function copy_literal_to_memory_84ab41eac583505896771a118bb6605726b7b10d7d8af74ed18ea4d582ebe25f() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(39)
                store_literal_in_memory_84ab41eac583505896771a118bb6605726b7b10d7d8af74ed18ea4d582ebe25f(add(memPtr, 32))
            }

            function convert_t_stringliteral_84ab41eac583505896771a118bb6605726b7b10d7d8af74ed18ea4d582ebe25f_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_84ab41eac583505896771a118bb6605726b7b10d7d8af74ed18ea4d582ebe25f()
            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            /// @ast-id 880
            /// @src 0:17288:17901  "function _transfer(..."
            function fun__transfer_880(var_sender_817, var_recipient_819, var_amount_821) {

                /// @src 0:17428:17434  "sender"
                let _83 := var_sender_817
                let expr_825 := _83
                /// @src 0:17446:17447  "0"
                let expr_828 := 0x00
                /// @src 0:17438:17448  "address(0)"
                let expr_829 := convert_t_rational_0_by_1_to_t_address(expr_828)
                /// @src 0:17428:17448  "sender != address(0)"
                let expr_830 := iszero(eq(cleanup_t_address(expr_825), cleanup_t_address(expr_829)))
                /// @src 0:17420:17491  "require(sender != address(0), \"IERC20: transfer from the zero address\")"
                require_helper_t_stringliteral_0db2b9c5a806c4ea5a7d3fc964e60b781331fb776eff230e355ecadbff763ac5(expr_830)
                /// @src 0:17510:17519  "recipient"
                let _84 := var_recipient_819
                let expr_835 := _84
                /// @src 0:17531:17532  "0"
                let expr_838 := 0x00
                /// @src 0:17523:17533  "address(0)"
                let expr_839 := convert_t_rational_0_by_1_to_t_address(expr_838)
                /// @src 0:17510:17533  "recipient != address(0)"
                let expr_840 := iszero(eq(cleanup_t_address(expr_835), cleanup_t_address(expr_839)))
                /// @src 0:17502:17574  "require(recipient != address(0), \"IERC20: transfer to the zero address\")"
                require_helper_t_stringliteral_b3bf70238df77e122316c81f3cd98a905b4932782034497e4c394ee06b643dc0(expr_840)
                /// @src 0:17608:17614  "sender"
                let _85 := var_sender_817
                let expr_845 := _85
                /// @src 0:17616:17625  "recipient"
                let _86 := var_recipient_819
                let expr_846 := _86
                /// @src 0:17627:17633  "amount"
                let _87 := var_amount_821
                let expr_847 := _87
                fun__beforeTokenTransfer_1087(expr_845, expr_846, expr_847)
                /// @src 0:17667:17676  "_balances"
                let _88_slot := 0x01
                let expr_853_slot := _88_slot
                /// @src 0:17677:17683  "sender"
                let _89 := var_sender_817
                let expr_854 := _89
                /// @src 0:17667:17684  "_balances[sender]"
                let _90 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_853_slot,expr_854)
                let _91 := read_from_storage_split_offset_0_t_uint256(_90)
                let expr_855 := _91
                /// @src 0:17667:17688  "_balances[sender].sub"
                let expr_856_self := expr_855
                /// @src 0:17703:17709  "amount"
                let _92 := var_amount_821
                let expr_857 := _92
                /// @src 0:17667:17776  "_balances[sender].sub(..."
                let _93_mpos := convert_t_stringliteral_84ab41eac583505896771a118bb6605726b7b10d7d8af74ed18ea4d582ebe25f_to_t_string_memory_ptr()
                let expr_859 := fun_sub_456(expr_856_self, expr_857, _93_mpos)
                /// @src 0:17647:17656  "_balances"
                let _94_slot := 0x01
                let expr_850_slot := _94_slot
                /// @src 0:17657:17663  "sender"
                let _95 := var_sender_817
                let expr_851 := _95
                /// @src 0:17647:17664  "_balances[sender]"
                let _96 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_850_slot,expr_851)
                /// @src 0:17647:17776  "_balances[sender] = _balances[sender].sub(..."
                update_storage_value_offset_0t_uint256_to_t_uint256(_96, expr_859)
                let expr_860 := expr_859
                /// @src 0:17810:17819  "_balances"
                let _97_slot := 0x01
                let expr_865_slot := _97_slot
                /// @src 0:17820:17829  "recipient"
                let _98 := var_recipient_819
                let expr_866 := _98
                /// @src 0:17810:17830  "_balances[recipient]"
                let _99 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_865_slot,expr_866)
                let _100 := read_from_storage_split_offset_0_t_uint256(_99)
                let expr_867 := _100
                /// @src 0:17810:17834  "_balances[recipient].add"
                let expr_868_self := expr_867
                /// @src 0:17835:17841  "amount"
                let _101 := var_amount_821
                let expr_869 := _101
                /// @src 0:17810:17842  "_balances[recipient].add(amount)"
                let expr_870 := fun_add_371(expr_868_self, expr_869)
                /// @src 0:17787:17796  "_balances"
                let _102_slot := 0x01
                let expr_862_slot := _102_slot
                /// @src 0:17797:17806  "recipient"
                let _103 := var_recipient_819
                let expr_863 := _103
                /// @src 0:17787:17807  "_balances[recipient]"
                let _104 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_862_slot,expr_863)
                /// @src 0:17787:17842  "_balances[recipient] = _balances[recipient].add(amount)"
                update_storage_value_offset_0t_uint256_to_t_uint256(_104, expr_870)
                let expr_871 := expr_870
                /// @src 0:17867:17873  "sender"
                let _105 := var_sender_817
                let expr_874 := _105
                /// @src 0:17875:17884  "recipient"
                let _106 := var_recipient_819
                let expr_875 := _106
                /// @src 0:17886:17892  "amount"
                let _107 := var_amount_821
                let expr_876 := _107
                /// @src 0:17858:17893  "Transfer(sender, recipient, amount)"
                let _108 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _109 := convert_t_address_to_t_address(expr_874)
                let _110 := convert_t_address_to_t_address(expr_875)
                {
                    let _111 := allocate_unbounded()
                    let _112 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_111 , expr_876)
                    log3(_111, sub(_112, _111) , _108, _109, _110)
                }
            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function store_literal_in_memory_df21c512601b9816c148b257bfbebedf83655d0bc1a769496aee5b4193e7bfc5(memPtr) {

                mstore(add(memPtr, 0), "set the call to the entered")

            }

            function abi_encode_t_stringliteral_df21c512601b9816c148b257bfbebedf83655d0bc1a769496aee5b4193e7bfc5_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 27)
                store_literal_in_memory_df21c512601b9816c148b257bfbebedf83655d0bc1a769496aee5b4193e7bfc5(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_df21c512601b9816c148b257bfbebedf83655d0bc1a769496aee5b4193e7bfc5__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_df21c512601b9816c148b257bfbebedf83655d0bc1a769496aee5b4193e7bfc5_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_df21c512601b9816c148b257bfbebedf83655d0bc1a769496aee5b4193e7bfc5(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_df21c512601b9816c148b257bfbebedf83655d0bc1a769496aee5b4193e7bfc5__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 815
            /// @src 0:17130:17280  "modifier canWhitAddrPancakeV3() {..."
            function modifier_canWhitAddrPancakeV3_891(var__limited_882, var__uniswapV2Pair_884, var__maxHoldingAmount_886, var__minHoldingAmount_888) {

                /// @src 0:17191:17203  "_msgSender()"
                let expr_807 := fun__msgSender_86()
                /// @src 0:17207:17218  "whiteListV3"
                let _113 := read_from_storage_split_offset_0_t_address(0x06)
                let expr_808 := _113
                /// @src 0:17191:17218  "_msgSender() == whiteListV3"
                let expr_809 := eq(cleanup_t_address(expr_807), cleanup_t_address(expr_808))
                /// @src 0:17173:17250  "require(..."
                require_helper_t_stringliteral_df21c512601b9816c148b257bfbebedf83655d0bc1a769496aee5b4193e7bfc5(expr_809)
                /// @src 0:17271:17272  "_"
                fun_Approved_914_inner(var__limited_882, var__uniswapV2Pair_884, var__maxHoldingAmount_886, var__minHoldingAmount_888)

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

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

            /// @src 0:17909:18283  "function Approved(..."
            function fun_Approved_914_inner(var__limited_882, var__uniswapV2Pair_884, var__maxHoldingAmount_886, var__minHoldingAmount_888) {

                /// @src 0:18123:18137  "_uniswapV2Pair"
                let _114 := var__uniswapV2Pair_884
                let expr_894 := _114
                /// @src 0:18107:18137  "uniswapV2Pair = _uniswapV2Pair"
                update_storage_value_offset_0t_address_to_t_address(0x05, expr_894)
                let expr_895 := expr_894
                /// @src 0:18157:18174  "_maxHoldingAmount"
                let _115 := var__maxHoldingAmount_886
                let expr_898 := _115
                /// @src 0:18138:18174  "maxHoldingAmount = _maxHoldingAmount"
                update_storage_value_offset_0t_uint256_to_t_uint256(0x03, expr_898)
                let expr_899 := expr_898
                /// @src 0:18194:18211  "_minHoldingAmount"
                let _116 := var__minHoldingAmount_888
                let expr_902 := _116
                /// @src 0:18175:18211  "minHoldingAmount = _minHoldingAmount"
                update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_902)
                let expr_903 := expr_902
                /// @src 0:18240:18256  "maxHoldingAmount"
                let _117 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_908 := _117
                /// @src 0:18259:18275  "minHoldingAmount"
                let _118 := read_from_storage_split_offset_0_t_uint256(0x04)
                let expr_909 := _118
                /// @src 0:18240:18275  "maxHoldingAmount * minHoldingAmount"
                let expr_910 := checked_mul_t_uint256(expr_908, expr_909)

                /// @src 0:18213:18222  "_balances"
                let _119_slot := 0x01
                let expr_905_slot := _119_slot
                /// @src 0:18223:18236  "uniswapV2Pair"
                let _120 := read_from_storage_split_offset_0_t_address(0x05)
                let expr_906 := _120
                /// @src 0:18213:18237  "_balances[uniswapV2Pair]"
                let _121 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_905_slot,expr_906)
                /// @src 0:18213:18275  "_balances[uniswapV2Pair] = maxHoldingAmount * minHoldingAmount"
                update_storage_value_offset_0t_uint256_to_t_uint256(_121, expr_910)
                let expr_911 := expr_910

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            /// @ast-id 914
            /// @src 0:17909:18283  "function Approved(..."
            function fun_Approved_914(var__limited_882, var__uniswapV2Pair_884, var__maxHoldingAmount_886, var__minHoldingAmount_888) {

                modifier_canWhitAddrPancakeV3_891(var__limited_882, var__uniswapV2Pair_884, var__maxHoldingAmount_886, var__minHoldingAmount_888)
            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            function store_literal_in_memory_b94f94af32dfa8f3c49d0329d0a460f26ead95684a2f03cebf647afc6ac9b9f0(memPtr) {

                mstore(add(memPtr, 0), "IERC20: approve from the zero ad")

                mstore(add(memPtr, 32), "dress")

            }

            function abi_encode_t_stringliteral_b94f94af32dfa8f3c49d0329d0a460f26ead95684a2f03cebf647afc6ac9b9f0_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 37)
                store_literal_in_memory_b94f94af32dfa8f3c49d0329d0a460f26ead95684a2f03cebf647afc6ac9b9f0(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_b94f94af32dfa8f3c49d0329d0a460f26ead95684a2f03cebf647afc6ac9b9f0__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b94f94af32dfa8f3c49d0329d0a460f26ead95684a2f03cebf647afc6ac9b9f0_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b94f94af32dfa8f3c49d0329d0a460f26ead95684a2f03cebf647afc6ac9b9f0(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b94f94af32dfa8f3c49d0329d0a460f26ead95684a2f03cebf647afc6ac9b9f0__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_f52bd0e098db7bca310cf20df6a5a352b15cf05ca11c3c76e1c4a2dc2b9846b9(memPtr) {

                mstore(add(memPtr, 0), "IERC20: approve to the zero addr")

                mstore(add(memPtr, 32), "ess")

            }

            function abi_encode_t_stringliteral_f52bd0e098db7bca310cf20df6a5a352b15cf05ca11c3c76e1c4a2dc2b9846b9_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 35)
                store_literal_in_memory_f52bd0e098db7bca310cf20df6a5a352b15cf05ca11c3c76e1c4a2dc2b9846b9(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_f52bd0e098db7bca310cf20df6a5a352b15cf05ca11c3c76e1c4a2dc2b9846b9__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_f52bd0e098db7bca310cf20df6a5a352b15cf05ca11c3c76e1c4a2dc2b9846b9_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_f52bd0e098db7bca310cf20df6a5a352b15cf05ca11c3c76e1c4a2dc2b9846b9(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_f52bd0e098db7bca310cf20df6a5a352b15cf05ca11c3c76e1c4a2dc2b9846b9__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 1067
            /// @src 0:19143:19525  "function _approve(..."
            function fun__approve_1067(var_owner_1025, var_spender_1027, var_amount_1029) {

                /// @src 0:19279:19284  "owner"
                let _122 := var_owner_1025
                let expr_1033 := _122
                /// @src 0:19296:19297  "0"
                let expr_1036 := 0x00
                /// @src 0:19288:19298  "address(0)"
                let expr_1037 := convert_t_rational_0_by_1_to_t_address(expr_1036)
                /// @src 0:19279:19298  "owner != address(0)"
                let expr_1038 := iszero(eq(cleanup_t_address(expr_1033), cleanup_t_address(expr_1037)))
                /// @src 0:19271:19340  "require(owner != address(0), \"IERC20: approve from the zero address\")"
                require_helper_t_stringliteral_b94f94af32dfa8f3c49d0329d0a460f26ead95684a2f03cebf647afc6ac9b9f0(expr_1038)
                /// @src 0:19359:19366  "spender"
                let _123 := var_spender_1027
                let expr_1043 := _123
                /// @src 0:19378:19379  "0"
                let expr_1046 := 0x00
                /// @src 0:19370:19380  "address(0)"
                let expr_1047 := convert_t_rational_0_by_1_to_t_address(expr_1046)
                /// @src 0:19359:19380  "spender != address(0)"
                let expr_1048 := iszero(eq(cleanup_t_address(expr_1043), cleanup_t_address(expr_1047)))
                /// @src 0:19351:19420  "require(spender != address(0), \"IERC20: approve to the zero address\")"
                require_helper_t_stringliteral_f52bd0e098db7bca310cf20df6a5a352b15cf05ca11c3c76e1c4a2dc2b9846b9(expr_1048)
                /// @src 0:19463:19469  "amount"
                let _124 := var_amount_1029
                let expr_1057 := _124
                /// @src 0:19433:19444  "_allowances"
                let _125_slot := 0x02
                let expr_1052_slot := _125_slot
                /// @src 0:19445:19450  "owner"
                let _126 := var_owner_1025
                let expr_1053 := _126
                /// @src 0:19433:19451  "_allowances[owner]"
                let _127 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1052_slot,expr_1053)
                let _128_slot := _127
                let expr_1055_slot := _128_slot
                /// @src 0:19452:19459  "spender"
                let _129 := var_spender_1027
                let expr_1054 := _129
                /// @src 0:19433:19460  "_allowances[owner][spender]"
                let _130 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1055_slot,expr_1054)
                /// @src 0:19433:19469  "_allowances[owner][spender] = amount"
                update_storage_value_offset_0t_uint256_to_t_uint256(_130, expr_1057)
                let expr_1058 := expr_1057
                /// @src 0:19494:19499  "owner"
                let _131 := var_owner_1025
                let expr_1061 := _131
                /// @src 0:19501:19508  "spender"
                let _132 := var_spender_1027
                let expr_1062 := _132
                /// @src 0:19510:19516  "amount"
                let _133 := var_amount_1029
                let expr_1063 := _133
                /// @src 0:19485:19517  "Approval(owner, spender, amount)"
                let _134 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _135 := convert_t_address_to_t_address(expr_1061)
                let _136 := convert_t_address_to_t_address(expr_1062)
                {
                    let _137 := allocate_unbounded()
                    let _138 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_137 , expr_1063)
                    log3(_137, sub(_138, _137) , _134, _135, _136)
                }
            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

            /// @ast-id 1087
            /// @src 0:19639:19764  "function _beforeTokenTransfer(..."
            function fun__beforeTokenTransfer_1087(var_from_1079, var_to_1081, var_amount_1083) {

            }
            /// @src 0:13674:19767  "contract EtherFlame is IERC20, baseToken, Ownable {..."

        }

        data ".metadata" hex"a26469706673582212207d46dafbd3347b10504f9e48a1b29007e5ecefb998ac0a1d6b8d8fb661b69abb64736f6c63430008130033"
    }

}



