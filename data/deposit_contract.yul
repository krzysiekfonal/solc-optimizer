object "DepositContract_541" {
    code {
        /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_DepositContract_541()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("DepositContract_541_deployed"), datasize("DepositContract_541_deployed"))

        return(_1, datasize("DepositContract_541_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
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

        function cleanup_t_rational_32_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
        }

        /// @src 0:4618:4664  "uint constant DEPOSIT_CONTRACT_TREE_DEPTH = 32"
        function constant_DEPOSIT_CONTRACT_TREE_DEPTH_56() -> ret {
            /// @src 0:4662:4664  "32"
            let expr_55 := 0x20
            let _5 := convert_t_rational_32_by_1_to_t_uint256(expr_55)

            ret := _5
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

        function checked_sub_t_uint256(x, y) -> diff {
            x := cleanup_t_uint256(x)
            y := cleanup_t_uint256(y)
            diff := sub(x, y)

            if gt(diff, x) { panic_error_0x11() }

        }

        function panic_error_0x32() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x32)
            revert(0, 0x24)
        }

        function array_length_t_array$_t_bytes32_$32_storage(value) -> length {

            length := 0x20

        }

        function array_dataslot_t_array$_t_bytes32_$32_storage(ptr) -> data {
            data := ptr

        }

        function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        function long_byte_array_index_access_no_checks(array, index) -> slot, offset {

            offset := sub(31, mod(index, 0x20))
            let dataArea := array_dataslot_t_bytes_storage_ptr(array)
            slot := add(dataArea, div(index, 0x20))

        }

        function storage_array_index_access_t_array$_t_bytes32_$32_storage(array, index) -> slot, offset {
            let arrayLength := array_length_t_array$_t_bytes32_$32_storage(array)
            if iszero(lt(index, arrayLength)) { panic_error_0x32() }

            let dataArea := array_dataslot_t_array$_t_bytes32_$32_storage(array)
            slot := add(dataArea, mul(index, 1))
            offset := 0

        }

        function shift_right_unsigned_dynamic(bits, value) -> newValue {
            newValue :=

            shr(bits, value)

        }

        function cleanup_from_storage_t_bytes32(value) -> cleaned {
            cleaned := value
        }

        function extract_from_storage_value_dynamict_bytes32(slot_value, offset) -> value {
            value := cleanup_from_storage_t_bytes32(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
        }

        function read_from_storage_split_dynamic_t_bytes32(slot, offset) -> value {
            value := extract_from_storage_value_dynamict_bytes32(sload(slot), offset)

        }

        function cleanup_t_bytes32(value) -> cleaned {
            cleaned := value
        }

        function leftAlign_t_bytes32(value) -> aligned {
            aligned := value
        }

        function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
            mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
        }

        function abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

            abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
            pos := add(pos, 32)

            abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
            pos := add(pos, 32)

            end := pos
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

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function array_length_t_bytes_memory_ptr(value) -> length {

            length := mload(value)

        }

        function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
            updated_pos := pos
        }

        function copy_memory_to_memory_with_cleanup(src, dst, length) {

            mcopy(dst, src, length)
            mstore(add(dst, length), 0)

        }

        function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value, pos) -> end {
            let length := array_length_t_bytes_memory_ptr(value)
            pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length)
            copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
            end := add(pos, length)
        }

        function abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos , value0) -> end {

            pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

            end := pos
        }

        function revert_forward_1() {
            let pos := allocate_unbounded()
            returndatacopy(pos, 0, returndatasize())
            revert(pos, returndatasize())
        }

        function checked_add_t_uint256(x, y) -> sum {
            x := cleanup_t_uint256(x)
            y := cleanup_t_uint256(y)
            sum := add(x, y)

            if gt(x, sum) { panic_error_0x11() }

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

        function convert_t_bytes32_to_t_bytes32(value) -> converted {
            converted := cleanup_t_bytes32(value)
        }

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function prepare_store_t_bytes32(value) -> ret {
            ret := shift_right_0_unsigned(value)
        }

        function update_storage_value_t_bytes32_to_t_bytes32(slot, offset, value_0) {
            let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
            sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_bytes32(convertedValue_0)))
        }

        /// @ast-id 108
        /// @src 0:4946:5216  "constructor() public {..."
        function constructor_DepositContract_541() {

            /// @src 0:4946:5216  "constructor() public {..."
            constructor_ERC165_48()

            /// @src 0:5031:5209  "for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH - 1; height++)..."
            for {
                /// @src 0:5050:5051  "0"
                let expr_78 := 0x00
                /// @src 0:5036:5051  "uint height = 0"
                let var_height_77 := convert_t_rational_0_by_1_to_t_uint256(expr_78)
                } 1 {
                /// @src 0:5095:5103  "height++"
                let _3 := var_height_77
                let _2 := increment_wrapping_t_uint256(_3)
                var_height_77 := _2
                let expr_86 := _3
            }
            {
                /// @src 0:5053:5059  "height"
                let _4 := var_height_77
                let expr_80 := _4
                /// @src 0:5062:5089  "DEPOSIT_CONTRACT_TREE_DEPTH"
                let expr_81 := constant_DEPOSIT_CONTRACT_TREE_DEPTH_56()
                /// @src 0:5092:5093  "1"
                let expr_82 := 0x01
                /// @src 0:5062:5093  "DEPOSIT_CONTRACT_TREE_DEPTH - 1"
                let expr_83 := checked_sub_t_uint256(expr_81, convert_t_rational_1_by_1_to_t_uint256(expr_82))

                /// @src 0:5053:5093  "height < DEPOSIT_CONTRACT_TREE_DEPTH - 1"
                let expr_84 := lt(cleanup_t_uint256(expr_80), cleanup_t_uint256(expr_83))
                if iszero(expr_84) { break }
                /// @src 0:5167:5178  "zero_hashes"
                let _6_slot := 0x21
                let expr_96_slot := _6_slot
                /// @src 0:5179:5185  "height"
                let _7 := var_height_77
                let expr_97 := _7
                /// @src 0:5167:5186  "zero_hashes[height]"

                let _8, _9 := storage_array_index_access_t_array$_t_bytes32_$32_storage(expr_96_slot, expr_97)
                let _10 := read_from_storage_split_dynamic_t_bytes32(_8, _9)
                let expr_98 := _10
                /// @src 0:5188:5199  "zero_hashes"
                let _11_slot := 0x21
                let expr_99_slot := _11_slot
                /// @src 0:5200:5206  "height"
                let _12 := var_height_77
                let expr_100 := _12
                /// @src 0:5188:5207  "zero_hashes[height]"

                let _13, _14 := storage_array_index_access_t_array$_t_bytes32_$32_storage(expr_99_slot, expr_100)
                let _15 := read_from_storage_split_dynamic_t_bytes32(_13, _14)
                let expr_101 := _15
                /// @src 0:5150:5208  "abi.encodePacked(zero_hashes[height], zero_hashes[height])"

                let expr_102_mpos := allocate_unbounded()
                let _16 := add(expr_102_mpos, 0x20)

                let _17 := abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_16, expr_98, expr_101)
                mstore(expr_102_mpos, sub(_17, add(expr_102_mpos, 0x20)))
                finalize_allocation(expr_102_mpos, sub(_17, expr_102_mpos))
                /// @src 0:5143:5209  "sha256(abi.encodePacked(zero_hashes[height], zero_hashes[height]))"

                let _18 := allocate_unbounded()
                let _19 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_18 , expr_102_mpos)

                let _20 := staticcall(gas(), 2 , _18, sub(_19, _18), 0, 32)
                if iszero(_20) { revert_forward_1() }
                let expr_103 := shift_left_0(mload(0))
                /// @src 0:5117:5128  "zero_hashes"
                let _21_slot := 0x21
                let expr_88_slot := _21_slot
                /// @src 0:5129:5135  "height"
                let _22 := var_height_77
                let expr_89 := _22
                /// @src 0:5138:5139  "1"
                let expr_90 := 0x01
                /// @src 0:5129:5139  "height + 1"
                let expr_91 := checked_add_t_uint256(expr_89, convert_t_rational_1_by_1_to_t_uint256(expr_90))

                /// @src 0:5117:5140  "zero_hashes[height + 1]"

                let _23, _24 := storage_array_index_access_t_array$_t_bytes32_$32_storage(expr_88_slot, expr_91)
                /// @src 0:5117:5209  "zero_hashes[height + 1] = sha256(abi.encodePacked(zero_hashes[height], zero_hashes[height]))"
                update_storage_value_t_bytes32_to_t_bytes32(_23, _24, expr_103)
                let expr_104 := expr_103
            }

        }
        /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."

        /// @src 0:3770:4249  "interface ERC165 {..."
        function constructor_ERC165_48() {

            /// @src 0:3770:4249  "interface ERC165 {..."
            constructor_IDepositContract_39()

        }
        /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."

        /// @src 0:2540:3691  "interface IDepositContract {..."
        function constructor_IDepositContract_39() {

            /// @src 0:2540:3691  "interface IDepositContract {..."

        }
        /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."

    }
    /// @use-src 0:"data/deposit_contract.sol"
    object "DepositContract_541_deployed" {
        code {
            /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x01ffc9a7
                {
                    // supportsInterface(bytes4)

                    external_fun_supportsInterface_454()
                }

                case 0x22895118
                {
                    // deposit(bytes,bytes,bytes,bytes32)

                    external_fun_deposit_431()
                }

                case 0x621fd130
                {
                    // get_deposit_count()

                    external_fun_get_deposit_count_200()
                }

                case 0xc5f2892f
                {
                    // get_deposit_root()

                    external_fun_get_deposit_root_186()
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

            function cleanup_t_bytes4(value) -> cleaned {
                cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            }

            function validator_revert_t_bytes4(value) {
                if iszero(eq(value, cleanup_t_bytes4(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes4(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes4(value)
            }

            function abi_decode_tuple_t_bytes4(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes4(add(headStart, offset), dataEnd)
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

            function external_fun_supportsInterface_454() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes4(4, calldatasize())
                let ret_0 :=  fun_supportsInterface_454(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
                revert(0, 0)
            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // bytes
            function abi_decode_t_bytes_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x01)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
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

            function abi_decode_tuple_t_bytes_calldata_ptrt_bytes_calldata_ptrt_bytes_calldata_ptrt_bytes32(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2, value3 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value4, value5 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value6 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_deposit_431() {

                let param_0, param_1, param_2, param_3, param_4, param_5, param_6 :=  abi_decode_tuple_t_bytes_calldata_ptrt_bytes_calldata_ptrt_bytes_calldata_ptrt_bytes32(4, calldatasize())
                fun_deposit_431(param_0, param_1, param_2, param_3, param_4, param_5, param_6)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_get_deposit_count_200() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_get_deposit_count_200()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_get_deposit_root_186() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_get_deposit_root_186()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            /// @ast-id 454
            /// @src 0:8723:8924  "function supportsInterface(bytes4 interfaceId) override external pure returns (bool) {..."
            function fun_supportsInterface_454(var_interfaceId_433) -> var__437 {
                /// @src 0:8802:8806  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__437 := zero_t_bool_1

                /// @src 0:8825:8836  "interfaceId"
                let _2 := var_interfaceId_433
                let expr_439 := _2
                /// @src 0:8840:8864  "type(ERC165).interfaceId"
                let expr_443 := 0x01ffc9a700000000000000000000000000000000000000000000000000000000
                /// @src 0:8825:8864  "interfaceId == type(ERC165).interfaceId"
                let expr_444 := eq(cleanup_t_bytes4(expr_439), cleanup_t_bytes4(expr_443))
                /// @src 0:8825:8917  "interfaceId == type(ERC165).interfaceId || interfaceId == type(IDepositContract).interfaceId"
                let expr_451 := expr_444
                if iszero(expr_451) {
                    /// @src 0:8868:8879  "interfaceId"
                    let _3 := var_interfaceId_433
                    let expr_445 := _3
                    /// @src 0:8883:8917  "type(IDepositContract).interfaceId"
                    let expr_449 := 0x8564090700000000000000000000000000000000000000000000000000000000
                    /// @src 0:8868:8917  "interfaceId == type(IDepositContract).interfaceId"
                    let expr_450 := eq(cleanup_t_bytes4(expr_445), cleanup_t_bytes4(expr_449))
                    /// @src 0:8825:8917  "interfaceId == type(ERC165).interfaceId || interfaceId == type(IDepositContract).interfaceId"
                    expr_451 := expr_450
                }
                /// @src 0:8818:8917  "return interfaceId == type(ERC165).interfaceId || interfaceId == type(IDepositContract).interfaceId"
                var__437 := expr_451
                leave

            }
            /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."

            function array_length_t_bytes_calldata_ptr(value, len) -> length {

                length := len

            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_rational_48_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_48_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_48_by_1(value)))
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_c3b50b094eada99b5a9dfa8cfadfa82355edd40e0591c544071d0112172c4c5e(memPtr) {

                mstore(add(memPtr, 0), "DepositContract: invalid pubkey ")

                mstore(add(memPtr, 32), "length")

            }

            function abi_encode_t_stringliteral_c3b50b094eada99b5a9dfa8cfadfa82355edd40e0591c544071d0112172c4c5e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 38)
                store_literal_in_memory_c3b50b094eada99b5a9dfa8cfadfa82355edd40e0591c544071d0112172c4c5e(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_c3b50b094eada99b5a9dfa8cfadfa82355edd40e0591c544071d0112172c4c5e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c3b50b094eada99b5a9dfa8cfadfa82355edd40e0591c544071d0112172c4c5e_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_c3b50b094eada99b5a9dfa8cfadfa82355edd40e0591c544071d0112172c4c5e(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c3b50b094eada99b5a9dfa8cfadfa82355edd40e0591c544071d0112172c4c5e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            function store_literal_in_memory_747182c86d19950fc1e3554e7b3e3a1972fcfdcf01419aa5598a57f4869840e0(memPtr) {

                mstore(add(memPtr, 0), "DepositContract: invalid withdra")

                mstore(add(memPtr, 32), "wal_credentials length")

            }

            function abi_encode_t_stringliteral_747182c86d19950fc1e3554e7b3e3a1972fcfdcf01419aa5598a57f4869840e0_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 54)
                store_literal_in_memory_747182c86d19950fc1e3554e7b3e3a1972fcfdcf01419aa5598a57f4869840e0(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_747182c86d19950fc1e3554e7b3e3a1972fcfdcf01419aa5598a57f4869840e0__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_747182c86d19950fc1e3554e7b3e3a1972fcfdcf01419aa5598a57f4869840e0_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_747182c86d19950fc1e3554e7b3e3a1972fcfdcf01419aa5598a57f4869840e0(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_747182c86d19950fc1e3554e7b3e3a1972fcfdcf01419aa5598a57f4869840e0__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function cleanup_t_rational_96_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_96_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_96_by_1(value)))
            }

            function store_literal_in_memory_e15de1a983e2181dc403952307f19cbe1ac366f85accb46ba7ec34e71736287b(memPtr) {

                mstore(add(memPtr, 0), "DepositContract: invalid signatu")

                mstore(add(memPtr, 32), "re length")

            }

            function abi_encode_t_stringliteral_e15de1a983e2181dc403952307f19cbe1ac366f85accb46ba7ec34e71736287b_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 41)
                store_literal_in_memory_e15de1a983e2181dc403952307f19cbe1ac366f85accb46ba7ec34e71736287b(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_e15de1a983e2181dc403952307f19cbe1ac366f85accb46ba7ec34e71736287b__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_e15de1a983e2181dc403952307f19cbe1ac366f85accb46ba7ec34e71736287b_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_e15de1a983e2181dc403952307f19cbe1ac366f85accb46ba7ec34e71736287b(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_e15de1a983e2181dc403952307f19cbe1ac366f85accb46ba7ec34e71736287b__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            function store_literal_in_memory_d4d9a14975cc31a7dc18afc82ee6e59efa15377b990098eeaab4cc403f9d1217(memPtr) {

                mstore(add(memPtr, 0), "DepositContract: deposit value t")

                mstore(add(memPtr, 32), "oo low")

            }

            function abi_encode_t_stringliteral_d4d9a14975cc31a7dc18afc82ee6e59efa15377b990098eeaab4cc403f9d1217_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 38)
                store_literal_in_memory_d4d9a14975cc31a7dc18afc82ee6e59efa15377b990098eeaab4cc403f9d1217(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_d4d9a14975cc31a7dc18afc82ee6e59efa15377b990098eeaab4cc403f9d1217__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d4d9a14975cc31a7dc18afc82ee6e59efa15377b990098eeaab4cc403f9d1217_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_d4d9a14975cc31a7dc18afc82ee6e59efa15377b990098eeaab4cc403f9d1217(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_d4d9a14975cc31a7dc18afc82ee6e59efa15377b990098eeaab4cc403f9d1217__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function cleanup_t_rational_1000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000_by_1(value)))
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

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function store_literal_in_memory_7db03c60fbfd1382397614fc537e65f67f687dbb18307bed297bda7f864590e0(memPtr) {

                mstore(add(memPtr, 0), "DepositContract: deposit value n")

                mstore(add(memPtr, 32), "ot multiple of gwei")

            }

            function abi_encode_t_stringliteral_7db03c60fbfd1382397614fc537e65f67f687dbb18307bed297bda7f864590e0_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 51)
                store_literal_in_memory_7db03c60fbfd1382397614fc537e65f67f687dbb18307bed297bda7f864590e0(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_7db03c60fbfd1382397614fc537e65f67f687dbb18307bed297bda7f864590e0__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_7db03c60fbfd1382397614fc537e65f67f687dbb18307bed297bda7f864590e0_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_7db03c60fbfd1382397614fc537e65f67f687dbb18307bed297bda7f864590e0(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_7db03c60fbfd1382397614fc537e65f67f687dbb18307bed297bda7f864590e0__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function cleanup_t_uint64(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffff)
            }

            function convert_t_uint64_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint64(value)))
            }

            function store_literal_in_memory_c445cee017c8884423c583c4e1697a8e774197f1748cc887aa73775ef891882f(memPtr) {

                mstore(add(memPtr, 0), "DepositContract: deposit value t")

                mstore(add(memPtr, 32), "oo high")

            }

            function abi_encode_t_stringliteral_c445cee017c8884423c583c4e1697a8e774197f1748cc887aa73775ef891882f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 39)
                store_literal_in_memory_c445cee017c8884423c583c4e1697a8e774197f1748cc887aa73775ef891882f(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_c445cee017c8884423c583c4e1697a8e774197f1748cc887aa73775ef891882f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c445cee017c8884423c583c4e1697a8e774197f1748cc887aa73775ef891882f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_c445cee017c8884423c583c4e1697a8e774197f1748cc887aa73775ef891882f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c445cee017c8884423c583c4e1697a8e774197f1748cc887aa73775ef891882f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_uint256_to_t_uint64(value) -> converted {
                converted := cleanup_t_uint64(identity(cleanup_t_uint256(value)))
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

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

            function copy_calldata_to_memory_with_cleanup(src, dst, length) {

                calldatacopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            // bytes -> bytes
            function abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(start, length, pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)

                copy_calldata_to_memory_with_cleanup(start, pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_bytes_calldata_ptr_t_bytes_calldata_ptr_t_bytes_memory_ptr_t_bytes_calldata_ptr_t_bytes_memory_ptr__to_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7) -> tail {
                tail := add(headStart, 160)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value0, value1,  tail)

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value2, value3,  tail)

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value4,  tail)

                mstore(add(headStart, 96), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value5, value6,  tail)

                mstore(add(headStart, 128), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value7,  tail)

            }

            function cleanup_t_bytes16(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000)
            }

            function shift_left_128(value) -> newValue {
                newValue :=

                shl(128, value)

            }

            function convert_t_rational_0_by_1_to_t_bytes16(value) -> converted {
                converted := cleanup_t_bytes16(shift_left_128(cleanup_t_rational_0_by_1(value)))
            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            // bytes -> bytes
            function abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(start, length, pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length)

                copy_calldata_to_memory_with_cleanup(start, pos, length)
                end := add(pos, length)
            }

            function leftAlign_t_bytes16(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes16_to_t_bytes16_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes16(cleanup_t_bytes16(value)))
            }

            function abi_encode_tuple_packed_t_bytes_calldata_ptr_t_bytes16__to_t_bytes_memory_ptr_t_bytes16__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                pos := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0, value1,  pos)

                abi_encode_t_bytes16_to_t_bytes16_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 16)

                end := pos
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

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, length)
            }

            function abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos , value0) -> end {

                pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                end := pos
            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function cleanup_t_rational_64_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_64_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_64_by_1(value)))
            }

            function revert_error_7678404c0552a58cf14944d1a786cf4c81aab3563e2735cb332aee47bbb57c4a() {
                revert(0, 0)
            }

            function revert_error_46e3e63c93837e9efa638abb3b4e76ced8c11259a873f1381a0abdf6ae6a823c() {
                revert(0, 0)
            }

            function calldata_array_index_range_access_t_bytes_calldata_ptr(offset, length, startIndex, endIndex) -> offsetOut, lengthOut {
                if gt(startIndex, endIndex) { revert_error_7678404c0552a58cf14944d1a786cf4c81aab3563e2735cb332aee47bbb57c4a() }
                if gt(endIndex, length) { revert_error_46e3e63c93837e9efa638abb3b4e76ced8c11259a873f1381a0abdf6ae6a823c() }
                offsetOut := add(offset, mul(startIndex, 1))
                lengthOut := sub(endIndex, startIndex)
            }

            function abi_encode_tuple_packed_t_bytes_calldata_ptr_slice__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                pos := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0, value1,  pos)

                end := pos
            }

            function convert_t_rational_0_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_0_by_1(value)))
            }

            function leftAlign_t_bytes32(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
            }

            function abi_encode_tuple_packed_t_bytes_calldata_ptr_slice_t_bytes32__to_t_bytes_memory_ptr_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                pos := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0, value1,  pos)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function abi_encode_tuple_packed_t_bytes32_t_bytes_calldata_ptr__to_t_bytes32_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                pos := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value1, value2,  pos)

                end := pos
            }

            function cleanup_t_bytes24(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000)
            }

            function shift_left_64(value) -> newValue {
                newValue :=

                shl(64, value)

            }

            function convert_t_rational_0_by_1_to_t_bytes24(value) -> converted {
                converted := cleanup_t_bytes24(shift_left_64(cleanup_t_rational_0_by_1(value)))
            }

            function leftAlign_t_bytes24(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes24_to_t_bytes24_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes24(cleanup_t_bytes24(value)))
            }

            function abi_encode_tuple_packed_t_bytes_memory_ptr_t_bytes24_t_bytes32__to_t_bytes_memory_ptr_t_bytes24_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                abi_encode_t_bytes24_to_t_bytes24_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 24)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function store_literal_in_memory_18a67971568b2dbad4353dfdc385098cc004c2a5070a439e010bb919d851babb(memPtr) {

                mstore(add(memPtr, 0), "DepositContract: reconstructed D")

                mstore(add(memPtr, 32), "epositData does not match suppli")

                mstore(add(memPtr, 64), "ed deposit_data_root")

            }

            function abi_encode_t_stringliteral_18a67971568b2dbad4353dfdc385098cc004c2a5070a439e010bb919d851babb_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 84)
                store_literal_in_memory_18a67971568b2dbad4353dfdc385098cc004c2a5070a439e010bb919d851babb(pos)
                end := add(pos, 96)
            }

            function abi_encode_tuple_t_stringliteral_18a67971568b2dbad4353dfdc385098cc004c2a5070a439e010bb919d851babb__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_18a67971568b2dbad4353dfdc385098cc004c2a5070a439e010bb919d851babb_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_18a67971568b2dbad4353dfdc385098cc004c2a5070a439e010bb919d851babb(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_18a67971568b2dbad4353dfdc385098cc004c2a5070a439e010bb919d851babb__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @src 0:4618:4664  "uint constant DEPOSIT_CONTRACT_TREE_DEPTH = 32"
            function constant_DEPOSIT_CONTRACT_TREE_DEPTH_56() -> ret {
                /// @src 0:4662:4664  "32"
                let expr_55 := 0x20
                let _66 := convert_t_rational_32_by_1_to_t_uint256(expr_55)

                ret := _66
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function checked_exp_t_rational_2_by_1_t_uint256(exponent) -> power {
                exponent := cleanup_t_uint256(exponent)

                if gt(exponent, 255) { panic_error_0x11() }

                power := exp(2, exponent)
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            /// @src 0:4739:4807  "uint constant MAX_DEPOSIT_COUNT = 2**DEPOSIT_CONTRACT_TREE_DEPTH - 1"
            function constant_MAX_DEPOSIT_COUNT_63() -> ret {
                /// @src 0:4773:4774  "2"
                let expr_58 := 0x02
                /// @src 0:4776:4803  "DEPOSIT_CONTRACT_TREE_DEPTH"
                let expr_59 := constant_DEPOSIT_CONTRACT_TREE_DEPTH_56()
                /// @src 0:4773:4803  "2**DEPOSIT_CONTRACT_TREE_DEPTH"
                let _67 := convert_t_rational_2_by_1_to_t_uint256(expr_58)
                let expr_60 := checked_exp_t_rational_2_by_1_t_uint256(expr_59)
                /// @src 0:4806:4807  "1"
                let expr_61 := 0x01
                /// @src 0:4773:4807  "2**DEPOSIT_CONTRACT_TREE_DEPTH - 1"
                let expr_62 := checked_sub_t_uint256(expr_60, convert_t_rational_1_by_1_to_t_uint256(expr_61))

                let _68 := expr_62

                ret := _68
            }

            function store_literal_in_memory_122aa4bcac592fd535cb6d2558ebbf28083cd32a46ad577d847ea313cd3a6be7(memPtr) {

                mstore(add(memPtr, 0), "DepositContract: merkle tree ful")

                mstore(add(memPtr, 32), "l")

            }

            function abi_encode_t_stringliteral_122aa4bcac592fd535cb6d2558ebbf28083cd32a46ad577d847ea313cd3a6be7_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 33)
                store_literal_in_memory_122aa4bcac592fd535cb6d2558ebbf28083cd32a46ad577d847ea313cd3a6be7(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_122aa4bcac592fd535cb6d2558ebbf28083cd32a46ad577d847ea313cd3a6be7__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_122aa4bcac592fd535cb6d2558ebbf28083cd32a46ad577d847ea313cd3a6be7_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_122aa4bcac592fd535cb6d2558ebbf28083cd32a46ad577d847ea313cd3a6be7(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_122aa4bcac592fd535cb6d2558ebbf28083cd32a46ad577d847ea313cd3a6be7__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

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

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_bytes32_$32_storage(value) -> length {

                length := 0x20

            }

            function array_dataslot_t_array$_t_bytes32_$32_storage(ptr) -> data {
                data := ptr

            }

            function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function long_byte_array_index_access_no_checks(array, index) -> slot, offset {

                offset := sub(31, mod(index, 0x20))
                let dataArea := array_dataslot_t_bytes_storage_ptr(array)
                slot := add(dataArea, div(index, 0x20))

            }

            function storage_array_index_access_t_array$_t_bytes32_$32_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_bytes32_$32_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_bytes32_$32_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

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

            function convert_t_bytes32_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(value)
            }

            function prepare_store_t_bytes32(value) -> ret {
                ret := shift_right_0_unsigned(value)
            }

            function update_storage_value_t_bytes32_to_t_bytes32(slot, offset, value_0) {
                let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_bytes32(convertedValue_0)))
            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_bytes32(slot_value, offset) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_bytes32(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_bytes32(sload(slot), offset)

            }

            function panic_error_0x01() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x01)
                revert(0, 0x24)
            }

            function assert_helper(condition) {
                if iszero(condition) { panic_error_0x01() }
            }

            /// @ast-id 431
            /// @src 0:5967:8717  "function deposit(..."
            function fun_deposit_431(var_pubkey_202_offset, var_pubkey_202_length, var_withdrawal_credentials_204_offset, var_withdrawal_credentials_204_length, var_signature_206_offset, var_signature_206_length, var_deposit_data_root_208) {

                /// @src 0:6249:6255  "pubkey"
                let _4_offset := var_pubkey_202_offset
                let _4_length := var_pubkey_202_length
                let expr_213_offset := _4_offset
                let expr_213_length := _4_length
                /// @src 0:6249:6262  "pubkey.length"
                let expr_214 := array_length_t_bytes_calldata_ptr(expr_213_offset, expr_213_length)
                /// @src 0:6266:6268  "48"
                let expr_215 := 0x30
                /// @src 0:6249:6268  "pubkey.length == 48"
                let expr_216 := eq(cleanup_t_uint256(expr_214), convert_t_rational_48_by_1_to_t_uint256(expr_215))
                /// @src 0:6241:6311  "require(pubkey.length == 48, \"DepositContract: invalid pubkey length\")"
                require_helper_t_stringliteral_c3b50b094eada99b5a9dfa8cfadfa82355edd40e0591c544071d0112172c4c5e(expr_216)
                /// @src 0:6329:6351  "withdrawal_credentials"
                let _5_offset := var_withdrawal_credentials_204_offset
                let _5_length := var_withdrawal_credentials_204_length
                let expr_221_offset := _5_offset
                let expr_221_length := _5_length
                /// @src 0:6329:6358  "withdrawal_credentials.length"
                let expr_222 := array_length_t_bytes_calldata_ptr(expr_221_offset, expr_221_length)
                /// @src 0:6362:6364  "32"
                let expr_223 := 0x20
                /// @src 0:6329:6364  "withdrawal_credentials.length == 32"
                let expr_224 := eq(cleanup_t_uint256(expr_222), convert_t_rational_32_by_1_to_t_uint256(expr_223))
                /// @src 0:6321:6423  "require(withdrawal_credentials.length == 32, \"DepositContract: invalid withdrawal_credentials length\")"
                require_helper_t_stringliteral_747182c86d19950fc1e3554e7b3e3a1972fcfdcf01419aa5598a57f4869840e0(expr_224)
                /// @src 0:6441:6450  "signature"
                let _6_offset := var_signature_206_offset
                let _6_length := var_signature_206_length
                let expr_229_offset := _6_offset
                let expr_229_length := _6_length
                /// @src 0:6441:6457  "signature.length"
                let expr_230 := array_length_t_bytes_calldata_ptr(expr_229_offset, expr_229_length)
                /// @src 0:6461:6463  "96"
                let expr_231 := 0x60
                /// @src 0:6441:6463  "signature.length == 96"
                let expr_232 := eq(cleanup_t_uint256(expr_230), convert_t_rational_96_by_1_to_t_uint256(expr_231))
                /// @src 0:6433:6509  "require(signature.length == 96, \"DepositContract: invalid signature length\")"
                require_helper_t_stringliteral_e15de1a983e2181dc403952307f19cbe1ac366f85accb46ba7ec34e71736287b(expr_232)
                /// @src 0:6560:6569  "msg.value"
                let expr_238 := callvalue()
                /// @src 0:6573:6580  "1 ether"
                let expr_239 := 0x0de0b6b3a7640000
                /// @src 0:6560:6580  "msg.value >= 1 ether"
                let expr_240 := iszero(lt(cleanup_t_uint256(expr_238), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_239)))
                /// @src 0:6552:6623  "require(msg.value >= 1 ether, \"DepositContract: deposit value too low\")"
                require_helper_t_stringliteral_d4d9a14975cc31a7dc18afc82ee6e59efa15377b990098eeaab4cc403f9d1217(expr_240)
                /// @src 0:6641:6650  "msg.value"
                let expr_246 := callvalue()
                /// @src 0:6653:6659  "1 gwei"
                let expr_247 := 0x3b9aca00
                /// @src 0:6641:6659  "msg.value % 1 gwei"
                let expr_248 := mod_t_uint256(expr_246, convert_t_rational_1000000000_by_1_to_t_uint256(expr_247))

                /// @src 0:6663:6664  "0"
                let expr_249 := 0x00
                /// @src 0:6641:6664  "msg.value % 1 gwei == 0"
                let expr_250 := eq(cleanup_t_uint256(expr_248), convert_t_rational_0_by_1_to_t_uint256(expr_249))
                /// @src 0:6633:6720  "require(msg.value % 1 gwei == 0, \"DepositContract: deposit value not multiple of gwei\")"
                require_helper_t_stringliteral_7db03c60fbfd1382397614fc537e65f67f687dbb18307bed297bda7f864590e0(expr_250)
                /// @src 0:6752:6761  "msg.value"
                let expr_257 := callvalue()
                /// @src 0:6764:6770  "1 gwei"
                let expr_258 := 0x3b9aca00
                /// @src 0:6752:6770  "msg.value / 1 gwei"
                let expr_259 := checked_div_t_uint256(expr_257, convert_t_rational_1000000000_by_1_to_t_uint256(expr_258))

                /// @src 0:6730:6770  "uint deposit_amount = msg.value / 1 gwei"
                let var_deposit_amount_255 := expr_259
                /// @src 0:6788:6802  "deposit_amount"
                let _7 := var_deposit_amount_255
                let expr_262 := _7
                /// @src 0:6806:6822  "type(uint64).max"
                let expr_267 := 0xffffffffffffffff
                /// @src 0:6788:6822  "deposit_amount <= type(uint64).max"
                let expr_268 := iszero(gt(cleanup_t_uint256(expr_262), convert_t_uint64_to_t_uint256(expr_267)))
                /// @src 0:6780:6866  "require(deposit_amount <= type(uint64).max, \"DepositContract: deposit value too high\")"
                require_helper_t_stringliteral_c445cee017c8884423c583c4e1697a8e774197f1748cc887aa73775ef891882f(expr_268)
                /// @src 0:6961:6975  "deposit_amount"
                let _8 := var_deposit_amount_255
                let expr_277 := _8
                /// @src 0:6954:6976  "uint64(deposit_amount)"
                let expr_278 := convert_t_uint256_to_t_uint64(expr_277)
                /// @src 0:6934:6977  "to_little_endian_64(uint64(deposit_amount))"
                let expr_279_mpos := fun_to_little_endian_64_540(expr_278)
                /// @src 0:6912:6977  "bytes memory amount = to_little_endian_64(uint64(deposit_amount))"
                let var_amount_273_mpos := expr_279_mpos
                /// @src 0:7018:7024  "pubkey"
                let _9_offset := var_pubkey_202_offset
                let _9_length := var_pubkey_202_length
                let expr_282_offset := _9_offset
                let expr_282_length := _9_length
                /// @src 0:7038:7060  "withdrawal_credentials"
                let _10_offset := var_withdrawal_credentials_204_offset
                let _10_length := var_withdrawal_credentials_204_length
                let expr_283_offset := _10_offset
                let expr_283_length := _10_length
                /// @src 0:7074:7080  "amount"
                let _11_mpos := var_amount_273_mpos
                let expr_284_mpos := _11_mpos
                /// @src 0:7094:7103  "signature"
                let _12_offset := var_signature_206_offset
                let _12_length := var_signature_206_length
                let expr_285_offset := _12_offset
                let expr_285_length := _12_length
                /// @src 0:7144:7157  "deposit_count"
                let _13 := read_from_storage_split_offset_0_t_uint256(0x20)
                let expr_289 := _13
                /// @src 0:7137:7158  "uint64(deposit_count)"
                let expr_290 := convert_t_uint256_to_t_uint64(expr_289)
                /// @src 0:7117:7159  "to_little_endian_64(uint64(deposit_count))"
                let expr_291_mpos := fun_to_little_endian_64_540(expr_290)
                /// @src 0:6992:7169  "DepositEvent(..."
                let _14 := 0x649bbc62d0e31342afea4e5cd82d4049e7e1ee912fc0889aa790803be39038c5
                {
                    let _15 := allocate_unbounded()
                    let _16 := abi_encode_tuple_t_bytes_calldata_ptr_t_bytes_calldata_ptr_t_bytes_memory_ptr_t_bytes_calldata_ptr_t_bytes_memory_ptr__to_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes_memory_ptr__fromStack(_15 , expr_282_offset, expr_282_length, expr_283_offset, expr_283_length, expr_284_mpos, expr_285_offset, expr_285_length, expr_291_mpos)
                    log1(_15, sub(_16, _15) , _14)
                }/// @src 0:7294:7300  "pubkey"
                let _17_offset := var_pubkey_202_offset
                let _17_length := var_pubkey_202_length
                let expr_299_offset := _17_offset
                let expr_299_length := _17_length
                /// @src 0:7310:7311  "0"
                let expr_302 := 0x00
                /// @src 0:7302:7312  "bytes16(0)"
                let expr_303 := convert_t_rational_0_by_1_to_t_bytes16(expr_302)
                /// @src 0:7277:7313  "abi.encodePacked(pubkey, bytes16(0))"

                let expr_304_mpos := allocate_unbounded()
                let _18 := add(expr_304_mpos, 0x20)

                let _19 := abi_encode_tuple_packed_t_bytes_calldata_ptr_t_bytes16__to_t_bytes_memory_ptr_t_bytes16__nonPadded_inplace_fromStack(_18, expr_299_offset, expr_299_length, expr_303)
                mstore(expr_304_mpos, sub(_19, add(expr_304_mpos, 0x20)))
                finalize_allocation(expr_304_mpos, sub(_19, expr_304_mpos))
                /// @src 0:7270:7314  "sha256(abi.encodePacked(pubkey, bytes16(0)))"

                let _20 := allocate_unbounded()
                let _21 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_20 , expr_304_mpos)

                let _22 := staticcall(gas(), 2 , _20, sub(_21, _20), 0, 32)
                if iszero(_22) { revert_forward_1() }
                let expr_305 := shift_left_0(mload(0))
                /// @src 0:7248:7314  "bytes32 pubkey_root = sha256(abi.encodePacked(pubkey, bytes16(0)))"
                let var_pubkey_root_295 := expr_305
                /// @src 0:7410:7419  "signature"
                let _23_offset := var_signature_206_offset
                let _23_length := var_signature_206_length
                let expr_315_offset := _23_offset
                let expr_315_length := _23_length
                /// @src 0:7421:7423  "64"
                let expr_316 := 0x40
                /// @src 0:7410:7424  "signature[:64]"
                let _24 := 0
                let _25 := convert_t_rational_64_by_1_to_t_uint256(expr_316)
                let expr_317_offset, expr_317_length := calldata_array_index_range_access_t_bytes_calldata_ptr(expr_315_offset, expr_315_length, _24, _25)
                /// @src 0:7393:7425  "abi.encodePacked(signature[:64])"

                let expr_318_mpos := allocate_unbounded()
                let _26 := add(expr_318_mpos, 0x20)

                let _27 := abi_encode_tuple_packed_t_bytes_calldata_ptr_slice__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_26, expr_317_offset, expr_317_length)
                mstore(expr_318_mpos, sub(_27, add(expr_318_mpos, 0x20)))
                finalize_allocation(expr_318_mpos, sub(_27, expr_318_mpos))
                /// @src 0:7386:7426  "sha256(abi.encodePacked(signature[:64]))"

                let _28 := allocate_unbounded()
                let _29 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_28 , expr_318_mpos)

                let _30 := staticcall(gas(), 2 , _28, sub(_29, _28), 0, 32)
                if iszero(_30) { revert_forward_1() }
                let expr_319 := shift_left_0(mload(0))
                /// @src 0:7464:7473  "signature"
                let _31_offset := var_signature_206_offset
                let _31_length := var_signature_206_length
                let expr_323_offset := _31_offset
                let expr_323_length := _31_length
                /// @src 0:7474:7476  "64"
                let expr_324 := 0x40
                /// @src 0:7464:7478  "signature[64:]"
                let _32 := convert_t_rational_64_by_1_to_t_uint256(expr_324)
                let _33 := expr_323_length
                let expr_325_offset, expr_325_length := calldata_array_index_range_access_t_bytes_calldata_ptr(expr_323_offset, expr_323_length, _32, _33)
                /// @src 0:7488:7489  "0"
                let expr_328 := 0x00
                /// @src 0:7480:7490  "bytes32(0)"
                let expr_329 := convert_t_rational_0_by_1_to_t_bytes32(expr_328)
                /// @src 0:7447:7491  "abi.encodePacked(signature[64:], bytes32(0))"

                let expr_330_mpos := allocate_unbounded()
                let _34 := add(expr_330_mpos, 0x20)

                let _35 := abi_encode_tuple_packed_t_bytes_calldata_ptr_slice_t_bytes32__to_t_bytes_memory_ptr_t_bytes32__nonPadded_inplace_fromStack(_34, expr_325_offset, expr_325_length, expr_329)
                mstore(expr_330_mpos, sub(_35, add(expr_330_mpos, 0x20)))
                finalize_allocation(expr_330_mpos, sub(_35, expr_330_mpos))
                /// @src 0:7440:7492  "sha256(abi.encodePacked(signature[64:], bytes32(0)))"

                let _36 := allocate_unbounded()
                let _37 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_36 , expr_330_mpos)

                let _38 := staticcall(gas(), 2 , _36, sub(_37, _36), 0, 32)
                if iszero(_38) { revert_forward_1() }
                let expr_331 := shift_left_0(mload(0))
                /// @src 0:7356:7502  "abi.encodePacked(..."

                let expr_332_mpos := allocate_unbounded()
                let _39 := add(expr_332_mpos, 0x20)

                let _40 := abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_39, expr_319, expr_331)
                mstore(expr_332_mpos, sub(_40, add(expr_332_mpos, 0x20)))
                finalize_allocation(expr_332_mpos, sub(_40, expr_332_mpos))
                /// @src 0:7349:7503  "sha256(abi.encodePacked(..."

                let _41 := allocate_unbounded()
                let _42 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_41 , expr_332_mpos)

                let _43 := staticcall(gas(), 2 , _41, sub(_42, _41), 0, 32)
                if iszero(_43) { revert_forward_1() }
                let expr_333 := shift_left_0(mload(0))
                /// @src 0:7324:7503  "bytes32 signature_root = sha256(abi.encodePacked(..."
                let var_signature_root_308 := expr_333
                /// @src 0:7589:7600  "pubkey_root"
                let _44 := var_pubkey_root_295
                let expr_343 := _44
                /// @src 0:7602:7624  "withdrawal_credentials"
                let _45_offset := var_withdrawal_credentials_204_offset
                let _45_length := var_withdrawal_credentials_204_length
                let expr_344_offset := _45_offset
                let expr_344_length := _45_length
                /// @src 0:7572:7625  "abi.encodePacked(pubkey_root, withdrawal_credentials)"

                let expr_345_mpos := allocate_unbounded()
                let _46 := add(expr_345_mpos, 0x20)

                let _47 := abi_encode_tuple_packed_t_bytes32_t_bytes_calldata_ptr__to_t_bytes32_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_46, expr_343, expr_344_offset, expr_344_length)
                mstore(expr_345_mpos, sub(_47, add(expr_345_mpos, 0x20)))
                finalize_allocation(expr_345_mpos, sub(_47, expr_345_mpos))
                /// @src 0:7565:7626  "sha256(abi.encodePacked(pubkey_root, withdrawal_credentials))"

                let _48 := allocate_unbounded()
                let _49 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_48 , expr_345_mpos)

                let _50 := staticcall(gas(), 2 , _48, sub(_49, _48), 0, 32)
                if iszero(_50) { revert_forward_1() }
                let expr_346 := shift_left_0(mload(0))
                /// @src 0:7664:7670  "amount"
                let _51_mpos := var_amount_273_mpos
                let expr_350_mpos := _51_mpos
                /// @src 0:7680:7681  "0"
                let expr_353 := 0x00
                /// @src 0:7672:7682  "bytes24(0)"
                let expr_354 := convert_t_rational_0_by_1_to_t_bytes24(expr_353)
                /// @src 0:7684:7698  "signature_root"
                let _52 := var_signature_root_308
                let expr_355 := _52
                /// @src 0:7647:7699  "abi.encodePacked(amount, bytes24(0), signature_root)"

                let expr_356_mpos := allocate_unbounded()
                let _53 := add(expr_356_mpos, 0x20)

                let _54 := abi_encode_tuple_packed_t_bytes_memory_ptr_t_bytes24_t_bytes32__to_t_bytes_memory_ptr_t_bytes24_t_bytes32__nonPadded_inplace_fromStack(_53, expr_350_mpos, expr_354, expr_355)
                mstore(expr_356_mpos, sub(_54, add(expr_356_mpos, 0x20)))
                finalize_allocation(expr_356_mpos, sub(_54, expr_356_mpos))
                /// @src 0:7640:7700  "sha256(abi.encodePacked(amount, bytes24(0), signature_root))"

                let _55 := allocate_unbounded()
                let _56 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_55 , expr_356_mpos)

                let _57 := staticcall(gas(), 2 , _55, sub(_56, _55), 0, 32)
                if iszero(_57) { revert_forward_1() }
                let expr_357 := shift_left_0(mload(0))
                /// @src 0:7535:7710  "abi.encodePacked(..."

                let expr_358_mpos := allocate_unbounded()
                let _58 := add(expr_358_mpos, 0x20)

                let _59 := abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_58, expr_346, expr_357)
                mstore(expr_358_mpos, sub(_59, add(expr_358_mpos, 0x20)))
                finalize_allocation(expr_358_mpos, sub(_59, expr_358_mpos))
                /// @src 0:7528:7711  "sha256(abi.encodePacked(..."

                let _60 := allocate_unbounded()
                let _61 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_60 , expr_358_mpos)

                let _62 := staticcall(gas(), 2 , _60, sub(_61, _60), 0, 32)
                if iszero(_62) { revert_forward_1() }
                let expr_359 := shift_left_0(mload(0))
                /// @src 0:7513:7711  "bytes32 node = sha256(abi.encodePacked(..."
                let var_node_336 := expr_359
                /// @src 0:7795:7799  "node"
                let _63 := var_node_336
                let expr_362 := _63
                /// @src 0:7803:7820  "deposit_data_root"
                let _64 := var_deposit_data_root_208
                let expr_363 := _64
                /// @src 0:7795:7820  "node == deposit_data_root"
                let expr_364 := eq(cleanup_t_bytes32(expr_362), cleanup_t_bytes32(expr_363))
                /// @src 0:7787:7909  "require(node == deposit_data_root, \"DepositContract: reconstructed DepositData does not match supplied deposit_data_root\")"
                require_helper_t_stringliteral_18a67971568b2dbad4353dfdc385098cc004c2a5070a439e010bb919d851babb(expr_364)
                /// @src 0:8019:8032  "deposit_count"
                let _65 := read_from_storage_split_offset_0_t_uint256(0x20)
                let expr_369 := _65
                /// @src 0:8035:8052  "MAX_DEPOSIT_COUNT"
                let expr_370 := constant_MAX_DEPOSIT_COUNT_63()
                /// @src 0:8019:8052  "deposit_count < MAX_DEPOSIT_COUNT"
                let expr_371 := lt(cleanup_t_uint256(expr_369), cleanup_t_uint256(expr_370))
                /// @src 0:8011:8090  "require(deposit_count < MAX_DEPOSIT_COUNT, \"DepositContract: merkle tree full\")"
                require_helper_t_stringliteral_122aa4bcac592fd535cb6d2558ebbf28083cd32a46ad577d847ea313cd3a6be7(expr_371)
                /// @src 0:8198:8199  "1"
                let expr_376 := 0x01
                /// @src 0:8181:8199  "deposit_count += 1"
                let _69 := convert_t_rational_1_by_1_to_t_uint256(expr_376)
                let _70 := read_from_storage_split_offset_0_t_uint256(0x20)
                let expr_377 := checked_add_t_uint256(_70, _69)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x20, expr_377)
                /// @src 0:8221:8234  "deposit_count"
                let _71 := read_from_storage_split_offset_0_t_uint256(0x20)
                let expr_381 := _71
                /// @src 0:8209:8234  "uint size = deposit_count"
                let var_size_380 := expr_381
                /// @src 0:8244:8527  "for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH; height++) {..."
                for {
                    /// @src 0:8263:8264  "0"
                    let expr_385 := 0x00
                    /// @src 0:8249:8264  "uint height = 0"
                    let var_height_384 := convert_t_rational_0_by_1_to_t_uint256(expr_385)
                    } 1 {
                    /// @src 0:8304:8312  "height++"
                    let _73 := var_height_384
                    let _72 := increment_wrapping_t_uint256(_73)
                    var_height_384 := _72
                    let expr_391 := _73
                }
                {
                    /// @src 0:8266:8272  "height"
                    let _74 := var_height_384
                    let expr_387 := _74
                    /// @src 0:8275:8302  "DEPOSIT_CONTRACT_TREE_DEPTH"
                    let expr_388 := constant_DEPOSIT_CONTRACT_TREE_DEPTH_56()
                    /// @src 0:8266:8302  "height < DEPOSIT_CONTRACT_TREE_DEPTH"
                    let expr_389 := lt(cleanup_t_uint256(expr_387), cleanup_t_uint256(expr_388))
                    if iszero(expr_389) { break }
                    /// @src 0:8333:8337  "size"
                    let _75 := var_size_380
                    let expr_393 := _75
                    /// @src 0:8340:8341  "1"
                    let expr_394 := 0x01
                    /// @src 0:8333:8341  "size & 1"
                    let expr_395 := and(expr_393, convert_t_rational_1_by_1_to_t_uint256(expr_394))

                    /// @src 0:8332:8342  "(size & 1)"
                    let expr_396 := expr_395
                    /// @src 0:8346:8347  "1"
                    let expr_397 := 0x01
                    /// @src 0:8332:8347  "(size & 1) == 1"
                    let expr_398 := eq(cleanup_t_uint256(expr_396), convert_t_rational_1_by_1_to_t_uint256(expr_397))
                    /// @src 0:8328:8427  "if ((size & 1) == 1) {..."
                    if expr_398 {
                        /// @src 0:8384:8388  "node"
                        let _76 := var_node_336
                        let expr_402 := _76
                        /// @src 0:8367:8373  "branch"
                        let _77_slot := 0x00
                        let expr_399_slot := _77_slot
                        /// @src 0:8374:8380  "height"
                        let _78 := var_height_384
                        let expr_400 := _78
                        /// @src 0:8367:8381  "branch[height]"

                        let _79, _80 := storage_array_index_access_t_array$_t_bytes32_$32_storage(expr_399_slot, expr_400)
                        /// @src 0:8367:8388  "branch[height] = node"
                        update_storage_value_t_bytes32_to_t_bytes32(_79, _80, expr_402)
                        let expr_403 := expr_402
                        /// @src 0:8406:8413  "return;"
                        leave
                        /// @src 0:8328:8427  "if ((size & 1) == 1) {..."
                    }
                    /// @src 0:8471:8477  "branch"
                    let _81_slot := 0x00
                    let expr_412_slot := _81_slot
                    /// @src 0:8478:8484  "height"
                    let _82 := var_height_384
                    let expr_413 := _82
                    /// @src 0:8471:8485  "branch[height]"

                    let _83, _84 := storage_array_index_access_t_array$_t_bytes32_$32_storage(expr_412_slot, expr_413)
                    let _85 := read_from_storage_split_dynamic_t_bytes32(_83, _84)
                    let expr_414 := _85
                    /// @src 0:8487:8491  "node"
                    let _86 := var_node_336
                    let expr_415 := _86
                    /// @src 0:8454:8492  "abi.encodePacked(branch[height], node)"

                    let expr_416_mpos := allocate_unbounded()
                    let _87 := add(expr_416_mpos, 0x20)

                    let _88 := abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_87, expr_414, expr_415)
                    mstore(expr_416_mpos, sub(_88, add(expr_416_mpos, 0x20)))
                    finalize_allocation(expr_416_mpos, sub(_88, expr_416_mpos))
                    /// @src 0:8447:8493  "sha256(abi.encodePacked(branch[height], node))"

                    let _89 := allocate_unbounded()
                    let _90 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_89 , expr_416_mpos)

                    let _91 := staticcall(gas(), 2 , _89, sub(_90, _89), 0, 32)
                    if iszero(_91) { revert_forward_1() }
                    let expr_417 := shift_left_0(mload(0))
                    /// @src 0:8440:8493  "node = sha256(abi.encodePacked(branch[height], node))"
                    var_node_336 := expr_417
                    let expr_418 := expr_417
                    /// @src 0:8515:8516  "2"
                    let expr_421 := 0x02
                    /// @src 0:8507:8516  "size /= 2"
                    let _92 := convert_t_rational_2_by_1_to_t_uint256(expr_421)
                    let _93 := var_size_380
                    let expr_422 := checked_div_t_uint256(_93, _92)

                    var_size_380 := expr_422
                }
                /// @src 0:8704:8709  "false"
                let expr_427 := 0x00
                /// @src 0:8697:8710  "assert(false)"
                assert_helper(expr_427)

            }
            /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            /// @ast-id 200
            /// @src 0:5820:5961  "function get_deposit_count() override external view returns (bytes memory) {..."
            function fun_get_deposit_count_200() -> var__190_mpos {
                /// @src 0:5881:5893  "bytes memory"
                let zero_t_bytes_memory_ptr_94_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__190_mpos := zero_t_bytes_memory_ptr_94_mpos

                /// @src 0:5939:5952  "deposit_count"
                let _95 := read_from_storage_split_offset_0_t_uint256(0x20)
                let expr_195 := _95
                /// @src 0:5932:5953  "uint64(deposit_count)"
                let expr_196 := convert_t_uint256_to_t_uint64(expr_195)
                /// @src 0:5912:5954  "to_little_endian_64(uint64(deposit_count))"
                let expr_197_mpos := fun_to_little_endian_64_540(expr_196)
                /// @src 0:5905:5954  "return to_little_endian_64(uint64(deposit_count))"
                var__190_mpos := expr_197_mpos
                leave

            }
            /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function abi_encode_tuple_packed_t_bytes32_t_bytes_memory_ptr_t_bytes24__to_t_bytes32_t_bytes_memory_ptr_t_bytes24__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                abi_encode_t_bytes24_to_t_bytes24_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 24)

                end := pos
            }

            /// @ast-id 186
            /// @src 0:5222:5814  "function get_deposit_root() override external view returns (bytes32) {..."
            function fun_get_deposit_root_186() -> var__112 {
                /// @src 0:5282:5289  "bytes32"
                let zero_t_bytes32_96 := zero_value_for_split_t_bytes32()
                var__112 := zero_t_bytes32_96

                /// @src 0:5301:5313  "bytes32 node"
                let var_node_115
                let zero_t_bytes32_97 := zero_value_for_split_t_bytes32()
                var_node_115 := zero_t_bytes32_97
                /// @src 0:5335:5348  "deposit_count"
                let _98 := read_from_storage_split_offset_0_t_uint256(0x20)
                let expr_119 := _98
                /// @src 0:5323:5348  "uint size = deposit_count"
                let var_size_118 := expr_119
                /// @src 0:5358:5659  "for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH; height++) {..."
                for {
                    /// @src 0:5377:5378  "0"
                    let expr_123 := 0x00
                    /// @src 0:5363:5378  "uint height = 0"
                    let var_height_122 := convert_t_rational_0_by_1_to_t_uint256(expr_123)
                    } 1 {
                    /// @src 0:5418:5426  "height++"
                    let _100 := var_height_122
                    let _99 := increment_wrapping_t_uint256(_100)
                    var_height_122 := _99
                    let expr_129 := _100
                }
                {
                    /// @src 0:5380:5386  "height"
                    let _101 := var_height_122
                    let expr_125 := _101
                    /// @src 0:5389:5416  "DEPOSIT_CONTRACT_TREE_DEPTH"
                    let expr_126 := constant_DEPOSIT_CONTRACT_TREE_DEPTH_56()
                    /// @src 0:5380:5416  "height < DEPOSIT_CONTRACT_TREE_DEPTH"
                    let expr_127 := lt(cleanup_t_uint256(expr_125), cleanup_t_uint256(expr_126))
                    if iszero(expr_127) { break }
                    /// @src 0:5447:5451  "size"
                    let _102 := var_size_118
                    let expr_131 := _102
                    /// @src 0:5454:5455  "1"
                    let expr_132 := 0x01
                    /// @src 0:5447:5455  "size & 1"
                    let expr_133 := and(expr_131, convert_t_rational_1_by_1_to_t_uint256(expr_132))

                    /// @src 0:5446:5456  "(size & 1)"
                    let expr_134 := expr_133
                    /// @src 0:5460:5461  "1"
                    let expr_135 := 0x01
                    /// @src 0:5446:5461  "(size & 1) == 1"
                    let expr_136 := eq(cleanup_t_uint256(expr_134), convert_t_rational_1_by_1_to_t_uint256(expr_135))
                    /// @src 0:5442:5625  "if ((size & 1) == 1)..."
                    switch expr_136
                    case 0 {
                        /// @src 0:5598:5602  "node"
                        let _103 := var_node_115
                        let expr_153 := _103
                        /// @src 0:5604:5615  "zero_hashes"
                        let _104_slot := 0x21
                        let expr_154_slot := _104_slot
                        /// @src 0:5616:5622  "height"
                        let _105 := var_height_122
                        let expr_155 := _105
                        /// @src 0:5604:5623  "zero_hashes[height]"

                        let _106, _107 := storage_array_index_access_t_array$_t_bytes32_$32_storage(expr_154_slot, expr_155)
                        let _108 := read_from_storage_split_dynamic_t_bytes32(_106, _107)
                        let expr_156 := _108
                        /// @src 0:5581:5624  "abi.encodePacked(node, zero_hashes[height])"

                        let expr_157_mpos := allocate_unbounded()
                        let _109 := add(expr_157_mpos, 0x20)

                        let _110 := abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_109, expr_153, expr_156)
                        mstore(expr_157_mpos, sub(_110, add(expr_157_mpos, 0x20)))
                        finalize_allocation(expr_157_mpos, sub(_110, expr_157_mpos))
                        /// @src 0:5574:5625  "sha256(abi.encodePacked(node, zero_hashes[height]))"

                        let _111 := allocate_unbounded()
                        let _112 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_111 , expr_157_mpos)

                        let _113 := staticcall(gas(), 2 , _111, sub(_112, _111), 0, 32)
                        if iszero(_113) { revert_forward_1() }
                        let expr_158 := shift_left_0(mload(0))
                        /// @src 0:5567:5625  "node = sha256(abi.encodePacked(node, zero_hashes[height]))"
                        var_node_115 := expr_158
                        let expr_159 := expr_158
                        /// @src 0:5442:5625  "if ((size & 1) == 1)..."
                    }
                    default {
                        /// @src 0:5510:5516  "branch"
                        let _114_slot := 0x00
                        let expr_141_slot := _114_slot
                        /// @src 0:5517:5523  "height"
                        let _115 := var_height_122
                        let expr_142 := _115
                        /// @src 0:5510:5524  "branch[height]"

                        let _116, _117 := storage_array_index_access_t_array$_t_bytes32_$32_storage(expr_141_slot, expr_142)
                        let _118 := read_from_storage_split_dynamic_t_bytes32(_116, _117)
                        let expr_143 := _118
                        /// @src 0:5526:5530  "node"
                        let _119 := var_node_115
                        let expr_144 := _119
                        /// @src 0:5493:5531  "abi.encodePacked(branch[height], node)"

                        let expr_145_mpos := allocate_unbounded()
                        let _120 := add(expr_145_mpos, 0x20)

                        let _121 := abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_120, expr_143, expr_144)
                        mstore(expr_145_mpos, sub(_121, add(expr_145_mpos, 0x20)))
                        finalize_allocation(expr_145_mpos, sub(_121, expr_145_mpos))
                        /// @src 0:5486:5532  "sha256(abi.encodePacked(branch[height], node))"

                        let _122 := allocate_unbounded()
                        let _123 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_122 , expr_145_mpos)

                        let _124 := staticcall(gas(), 2 , _122, sub(_123, _122), 0, 32)
                        if iszero(_124) { revert_forward_1() }
                        let expr_146 := shift_left_0(mload(0))
                        /// @src 0:5479:5532  "node = sha256(abi.encodePacked(branch[height], node))"
                        var_node_115 := expr_146
                        let expr_147 := expr_146
                        /// @src 0:5442:5625  "if ((size & 1) == 1)..."
                    }
                    /// @src 0:5647:5648  "2"
                    let expr_163 := 0x02
                    /// @src 0:5639:5648  "size /= 2"
                    let _125 := convert_t_rational_2_by_1_to_t_uint256(expr_163)
                    let _126 := var_size_118
                    let expr_164 := checked_div_t_uint256(_126, _125)

                    var_size_118 := expr_164
                }
                /// @src 0:5712:5716  "node"
                let _127 := var_node_115
                let expr_171 := _127
                /// @src 0:5757:5770  "deposit_count"
                let _128 := read_from_storage_split_offset_0_t_uint256(0x20)
                let expr_175 := _128
                /// @src 0:5750:5771  "uint64(deposit_count)"
                let expr_176 := convert_t_uint256_to_t_uint64(expr_175)
                /// @src 0:5730:5772  "to_little_endian_64(uint64(deposit_count))"
                let expr_177_mpos := fun_to_little_endian_64_540(expr_176)
                /// @src 0:5794:5795  "0"
                let expr_180 := 0x00
                /// @src 0:5786:5796  "bytes24(0)"
                let expr_181 := convert_t_rational_0_by_1_to_t_bytes24(expr_180)
                /// @src 0:5682:5806  "abi.encodePacked(..."

                let expr_182_mpos := allocate_unbounded()
                let _129 := add(expr_182_mpos, 0x20)

                let _130 := abi_encode_tuple_packed_t_bytes32_t_bytes_memory_ptr_t_bytes24__to_t_bytes32_t_bytes_memory_ptr_t_bytes24__nonPadded_inplace_fromStack(_129, expr_171, expr_177_mpos, expr_181)
                mstore(expr_182_mpos, sub(_130, add(expr_182_mpos, 0x20)))
                finalize_allocation(expr_182_mpos, sub(_130, expr_182_mpos))
                /// @src 0:5675:5807  "sha256(abi.encodePacked(..."

                let _131 := allocate_unbounded()
                let _132 := abi_encode_tuple_packed_t_bytes_memory_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_131 , expr_182_mpos)

                let _133 := staticcall(gas(), 2 , _131, sub(_132, _131), 0, 32)
                if iszero(_133) { revert_forward_1() }
                let expr_183 := shift_left_0(mload(0))
                /// @src 0:5668:5807  "return sha256(abi.encodePacked(..."
                var__112 := expr_183
                leave

            }
            /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8_by_1(value)))
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

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_memory_chunk_t_bytes1(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_bytes_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_bytes_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function cleanup_t_bytes8(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffff000000000000000000000000000000000000000000000000)
            }

            function shift_left_192(value) -> newValue {
                newValue :=

                shl(192, value)

            }

            function convert_t_uint64_to_t_bytes8(value) -> converted {
                converted := cleanup_t_bytes8(shift_left_192(cleanup_t_uint64(value)))
            }

            function cleanup_t_rational_7_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_7_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_7_by_1(value)))
            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function memory_array_index_access_t_bytes_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_bytes_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 1)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
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

            /// @ast-id 540
            /// @src 0:8930:9397  "function to_little_endian_64(uint64 value) internal pure returns (bytes memory ret) {..."
            function fun_to_little_endian_64_540(var_value_456) -> var_ret_459_mpos {
                /// @src 0:8996:9012  "bytes memory ret"
                let zero_t_bytes_memory_ptr_134_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var_ret_459_mpos := zero_t_bytes_memory_ptr_134_mpos

                /// @src 0:9040:9041  "8"
                let expr_464 := 0x08
                /// @src 0:9030:9042  "new bytes(8)"
                let _135 := convert_t_rational_8_by_1_to_t_uint256(expr_464)
                let expr_465_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(_135)
                /// @src 0:9024:9042  "ret = new bytes(8)"
                var_ret_459_mpos := expr_465_mpos
                let _136_mpos := var_ret_459_mpos
                let expr_466_mpos := _136_mpos
                /// @src 0:9079:9084  "value"
                let _137 := var_value_456
                let expr_472 := _137
                /// @src 0:9072:9085  "bytes8(value)"
                let expr_473 := convert_t_uint64_to_t_bytes8(expr_472)
                /// @src 0:9052:9085  "bytes8 bytesValue = bytes8(value)"
                let var_bytesValue_469 := expr_473
                /// @src 0:9153:9163  "bytesValue"
                let _138 := var_bytesValue_469
                let expr_478 := _138
                /// @src 0:9164:9165  "7"
                let expr_479 := 0x07
                /// @src 0:9153:9166  "bytesValue[7]"
                let _139 := convert_t_rational_7_by_1_to_t_uint256(expr_479)

                if iszero(lt(_139, 8)) { panic_error_0x32() }
                let expr_480 := shift_left_248(byte(_139, expr_478))
                /// @src 0:9144:9147  "ret"
                let _140_mpos := var_ret_459_mpos
                let expr_475_mpos := _140_mpos
                /// @src 0:9148:9149  "0"
                let expr_476 := 0x00
                /// @src 0:9144:9166  "ret[0] = bytesValue[7]"
                let _141 := expr_480
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_475_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_476)), byte(0, _141))
                let expr_481 := expr_480
                /// @src 0:9185:9195  "bytesValue"
                let _142 := var_bytesValue_469
                let expr_486 := _142
                /// @src 0:9196:9197  "6"
                let expr_487 := 0x06
                /// @src 0:9185:9198  "bytesValue[6]"
                let _143 := convert_t_rational_6_by_1_to_t_uint256(expr_487)

                if iszero(lt(_143, 8)) { panic_error_0x32() }
                let expr_488 := shift_left_248(byte(_143, expr_486))
                /// @src 0:9176:9179  "ret"
                let _144_mpos := var_ret_459_mpos
                let expr_483_mpos := _144_mpos
                /// @src 0:9180:9181  "1"
                let expr_484 := 0x01
                /// @src 0:9176:9198  "ret[1] = bytesValue[6]"
                let _145 := expr_488
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_483_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_484)), byte(0, _145))
                let expr_489 := expr_488
                /// @src 0:9217:9227  "bytesValue"
                let _146 := var_bytesValue_469
                let expr_494 := _146
                /// @src 0:9228:9229  "5"
                let expr_495 := 0x05
                /// @src 0:9217:9230  "bytesValue[5]"
                let _147 := convert_t_rational_5_by_1_to_t_uint256(expr_495)

                if iszero(lt(_147, 8)) { panic_error_0x32() }
                let expr_496 := shift_left_248(byte(_147, expr_494))
                /// @src 0:9208:9211  "ret"
                let _148_mpos := var_ret_459_mpos
                let expr_491_mpos := _148_mpos
                /// @src 0:9212:9213  "2"
                let expr_492 := 0x02
                /// @src 0:9208:9230  "ret[2] = bytesValue[5]"
                let _149 := expr_496
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_491_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_492)), byte(0, _149))
                let expr_497 := expr_496
                /// @src 0:9249:9259  "bytesValue"
                let _150 := var_bytesValue_469
                let expr_502 := _150
                /// @src 0:9260:9261  "4"
                let expr_503 := 0x04
                /// @src 0:9249:9262  "bytesValue[4]"
                let _151 := convert_t_rational_4_by_1_to_t_uint256(expr_503)

                if iszero(lt(_151, 8)) { panic_error_0x32() }
                let expr_504 := shift_left_248(byte(_151, expr_502))
                /// @src 0:9240:9243  "ret"
                let _152_mpos := var_ret_459_mpos
                let expr_499_mpos := _152_mpos
                /// @src 0:9244:9245  "3"
                let expr_500 := 0x03
                /// @src 0:9240:9262  "ret[3] = bytesValue[4]"
                let _153 := expr_504
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_499_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_500)), byte(0, _153))
                let expr_505 := expr_504
                /// @src 0:9281:9291  "bytesValue"
                let _154 := var_bytesValue_469
                let expr_510 := _154
                /// @src 0:9292:9293  "3"
                let expr_511 := 0x03
                /// @src 0:9281:9294  "bytesValue[3]"
                let _155 := convert_t_rational_3_by_1_to_t_uint256(expr_511)

                if iszero(lt(_155, 8)) { panic_error_0x32() }
                let expr_512 := shift_left_248(byte(_155, expr_510))
                /// @src 0:9272:9275  "ret"
                let _156_mpos := var_ret_459_mpos
                let expr_507_mpos := _156_mpos
                /// @src 0:9276:9277  "4"
                let expr_508 := 0x04
                /// @src 0:9272:9294  "ret[4] = bytesValue[3]"
                let _157 := expr_512
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_507_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_508)), byte(0, _157))
                let expr_513 := expr_512
                /// @src 0:9313:9323  "bytesValue"
                let _158 := var_bytesValue_469
                let expr_518 := _158
                /// @src 0:9324:9325  "2"
                let expr_519 := 0x02
                /// @src 0:9313:9326  "bytesValue[2]"
                let _159 := convert_t_rational_2_by_1_to_t_uint256(expr_519)

                if iszero(lt(_159, 8)) { panic_error_0x32() }
                let expr_520 := shift_left_248(byte(_159, expr_518))
                /// @src 0:9304:9307  "ret"
                let _160_mpos := var_ret_459_mpos
                let expr_515_mpos := _160_mpos
                /// @src 0:9308:9309  "5"
                let expr_516 := 0x05
                /// @src 0:9304:9326  "ret[5] = bytesValue[2]"
                let _161 := expr_520
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_515_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_516)), byte(0, _161))
                let expr_521 := expr_520
                /// @src 0:9345:9355  "bytesValue"
                let _162 := var_bytesValue_469
                let expr_526 := _162
                /// @src 0:9356:9357  "1"
                let expr_527 := 0x01
                /// @src 0:9345:9358  "bytesValue[1]"
                let _163 := convert_t_rational_1_by_1_to_t_uint256(expr_527)

                if iszero(lt(_163, 8)) { panic_error_0x32() }
                let expr_528 := shift_left_248(byte(_163, expr_526))
                /// @src 0:9336:9339  "ret"
                let _164_mpos := var_ret_459_mpos
                let expr_523_mpos := _164_mpos
                /// @src 0:9340:9341  "6"
                let expr_524 := 0x06
                /// @src 0:9336:9358  "ret[6] = bytesValue[1]"
                let _165 := expr_528
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_523_mpos, convert_t_rational_6_by_1_to_t_uint256(expr_524)), byte(0, _165))
                let expr_529 := expr_528
                /// @src 0:9377:9387  "bytesValue"
                let _166 := var_bytesValue_469
                let expr_534 := _166
                /// @src 0:9388:9389  "0"
                let expr_535 := 0x00
                /// @src 0:9377:9390  "bytesValue[0]"
                let _167 := convert_t_rational_0_by_1_to_t_uint256(expr_535)

                if iszero(lt(_167, 8)) { panic_error_0x32() }
                let expr_536 := shift_left_248(byte(_167, expr_534))
                /// @src 0:9368:9371  "ret"
                let _168_mpos := var_ret_459_mpos
                let expr_531_mpos := _168_mpos
                /// @src 0:9372:9373  "7"
                let expr_532 := 0x07
                /// @src 0:9368:9390  "ret[7] = bytesValue[0]"
                let _169 := expr_536
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_531_mpos, convert_t_rational_7_by_1_to_t_uint256(expr_532)), byte(0, _169))
                let expr_537 := expr_536

            }
            /// @src 0:4559:9399  "contract DepositContract is IDepositContract, ERC165 {..."

        }

        data ".metadata" hex"a26469706673582212203c110ccc9d7370dbbbe60d28220754f8aaaef3f9e22943017544c142558c7aae64736f6c634300081b0033"
    }

}
