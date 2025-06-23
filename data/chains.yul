IR:

/// @use-src 0:"data/chains.sol"
object "StdCheatsSafe_490" {
    code {
        /// @src 0:185:4758  "contract StdCheatsSafe {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_StdCheatsSafe_490()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("StdCheatsSafe_490_deployed"), datasize("StdCheatsSafe_490_deployed"))

        return(_1, datasize("StdCheatsSafe_490_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:185:4758  "contract StdCheatsSafe {..."
        function constructor_StdCheatsSafe_490() {

            /// @src 0:185:4758  "contract StdCheatsSafe {..."

        }
        /// @src 0:185:4758  "contract StdCheatsSafe {..."

    }
    /// @use-src 0:"data/chains.sol"
    object "StdCheatsSafe_490_deployed" {
        code {
            /// @src 0:185:4758  "contract StdCheatsSafe {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x10211b6b
                {
                    // f(string[2][])

                    external_fun_f_425()
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

            function array_allocation_size_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            function array_allocation_size_t_array$_t_string_memory_ptr_$2_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

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

            // string[2]
            function abi_decode_available_length_t_array$_t_string_memory_ptr_$2_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_string_memory_ptr_$2_memory_ptr(length))
                let dst := array

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let innerOffset := calldataload(src)
                    if gt(innerOffset, 0xffffffffffffffff) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                    let elementPos := add(offset, innerOffset)

                    mstore(dst, abi_decode_t_string_memory_ptr(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // string[2]
            function abi_decode_t_array$_t_string_memory_ptr_$2_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := 0x02
                array := abi_decode_available_length_t_array$_t_string_memory_ptr_$2_memory_ptr(offset, length, end)
            }

            // string[2][]
            function abi_decode_available_length_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let innerOffset := calldataload(src)
                    if gt(innerOffset, 0xffffffffffffffff) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                    let elementPos := add(offset, innerOffset)

                    mstore(dst, abi_decode_t_array$_t_string_memory_ptr_$2_memory_ptr(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // string[2][]
            function abi_decode_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(add(headStart, offset), dataEnd)
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

            function external_fun_f_425() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_f_425(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function allocate_memory_struct_t_struct$_Chain_$8_storage_ptr() -> memPtr {
                memPtr := allocate_memory(96)
            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_1ab1bd2f543bf53e1036abfe292a89809c7285bff756db6e274686afe6fb41b4(memPtr) {

                mstore(add(memPtr, 0), "Anvil")

            }

            function copy_literal_to_memory_1ab1bd2f543bf53e1036abfe292a89809c7285bff756db6e274686afe6fb41b4() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(5)
                store_literal_in_memory_1ab1bd2f543bf53e1036abfe292a89809c7285bff756db6e274686afe6fb41b4(add(memPtr, 32))
            }

            function convert_t_stringliteral_1ab1bd2f543bf53e1036abfe292a89809c7285bff756db6e274686afe6fb41b4_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_1ab1bd2f543bf53e1036abfe292a89809c7285bff756db6e274686afe6fb41b4()
            }

            function write_to_memory_t_string_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function cleanup_t_rational_31337_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_31337_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_31337_by_1(value)))
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function store_literal_in_memory_308a18cf3d9de3b161a842ef1e873581d7b16a5d4ea08170e123f95d25f33fe0(memPtr) {

                mstore(add(memPtr, 0), "http://127.0.0.1:8545")

                }

                function copy_literal_to_memory_308a18cf3d9de3b161a842ef1e873581d7b16a5d4ea08170e123f95d25f33fe0() -> memPtr {
                    memPtr := allocate_memory_array_t_string_memory_ptr(21)
                    store_literal_in_memory_308a18cf3d9de3b161a842ef1e873581d7b16a5d4ea08170e123f95d25f33fe0(add(memPtr, 32))
                }

                function convert_t_stringliteral_308a18cf3d9de3b161a842ef1e873581d7b16a5d4ea08170e123f95d25f33fe0_to_t_string_memory_ptr() -> converted {
                    converted := copy_literal_to_memory_308a18cf3d9de3b161a842ef1e873581d7b16a5d4ea08170e123f95d25f33fe0()
                }

                function store_literal_in_memory_586258927916cf0d904406d36da1f5f818494652192f6e9e71d4067756af388a(memPtr) {

                    mstore(add(memPtr, 0), "Hardhat")

                }

                function copy_literal_to_memory_586258927916cf0d904406d36da1f5f818494652192f6e9e71d4067756af388a() -> memPtr {
                    memPtr := allocate_memory_array_t_string_memory_ptr(7)
                    store_literal_in_memory_586258927916cf0d904406d36da1f5f818494652192f6e9e71d4067756af388a(add(memPtr, 32))
                }

                function convert_t_stringliteral_586258927916cf0d904406d36da1f5f818494652192f6e9e71d4067756af388a_to_t_string_memory_ptr() -> converted {
                    converted := copy_literal_to_memory_586258927916cf0d904406d36da1f5f818494652192f6e9e71d4067756af388a()
                }

                function store_literal_in_memory_8d646f556e5d9d6f1edcf7a39b77f5ac253776eb34efcfd688aacbee518efc26(memPtr) {

                    mstore(add(memPtr, 0), "Mainnet")

                }

                function copy_literal_to_memory_8d646f556e5d9d6f1edcf7a39b77f5ac253776eb34efcfd688aacbee518efc26() -> memPtr {
                    memPtr := allocate_memory_array_t_string_memory_ptr(7)
                    store_literal_in_memory_8d646f556e5d9d6f1edcf7a39b77f5ac253776eb34efcfd688aacbee518efc26(add(memPtr, 32))
                }

                function convert_t_stringliteral_8d646f556e5d9d6f1edcf7a39b77f5ac253776eb34efcfd688aacbee518efc26_to_t_string_memory_ptr() -> converted {
                    converted := copy_literal_to_memory_8d646f556e5d9d6f1edcf7a39b77f5ac253776eb34efcfd688aacbee518efc26()
                }

                function cleanup_t_rational_1_by_1(value) -> cleaned {
                    cleaned := value
                }

                function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                    converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
                }

                function store_literal_in_memory_642d0dfd5be66fc0d93c6f4bdcf342230ac00c9a7eea5a03cf0e431c94556a8a(memPtr) {

                    mstore(add(memPtr, 0), "https://api.mycryptoapi.com/eth")

                    }

                    function copy_literal_to_memory_642d0dfd5be66fc0d93c6f4bdcf342230ac00c9a7eea5a03cf0e431c94556a8a() -> memPtr {
                        memPtr := allocate_memory_array_t_string_memory_ptr(31)
                        store_literal_in_memory_642d0dfd5be66fc0d93c6f4bdcf342230ac00c9a7eea5a03cf0e431c94556a8a(add(memPtr, 32))
                    }

                    function convert_t_stringliteral_642d0dfd5be66fc0d93c6f4bdcf342230ac00c9a7eea5a03cf0e431c94556a8a_to_t_string_memory_ptr() -> converted {
                        converted := copy_literal_to_memory_642d0dfd5be66fc0d93c6f4bdcf342230ac00c9a7eea5a03cf0e431c94556a8a()
                    }

                    function store_literal_in_memory_736fc55653a3415af498a1309898240f13c5e9e33098fa3cf9e5f2a200d14c3e(memPtr) {

                        mstore(add(memPtr, 0), "Goerli")

                    }

                    function copy_literal_to_memory_736fc55653a3415af498a1309898240f13c5e9e33098fa3cf9e5f2a200d14c3e() -> memPtr {
                        memPtr := allocate_memory_array_t_string_memory_ptr(6)
                        store_literal_in_memory_736fc55653a3415af498a1309898240f13c5e9e33098fa3cf9e5f2a200d14c3e(add(memPtr, 32))
                    }

                    function convert_t_stringliteral_736fc55653a3415af498a1309898240f13c5e9e33098fa3cf9e5f2a200d14c3e_to_t_string_memory_ptr() -> converted {
                        converted := copy_literal_to_memory_736fc55653a3415af498a1309898240f13c5e9e33098fa3cf9e5f2a200d14c3e()
                    }

                    function cleanup_t_rational_5_by_1(value) -> cleaned {
                        cleaned := value
                    }

                    function convert_t_rational_5_by_1_to_t_uint256(value) -> converted {
                        converted := cleanup_t_uint256(identity(cleanup_t_rational_5_by_1(value)))
                    }

                    function store_literal_in_memory_c2d03e2021afc2d5d60147a3389a88cf92b3f908f6bb3983dd56ad3eccee2784(memPtr) {

                        mstore(add(memPtr, 0), "https://goerli.infura.io/v3/8484")

                            mstore(add(memPtr, 32), "2078b09946638c03157f83405213")

                        }

                        function copy_literal_to_memory_c2d03e2021afc2d5d60147a3389a88cf92b3f908f6bb3983dd56ad3eccee2784() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(60)
                            store_literal_in_memory_c2d03e2021afc2d5d60147a3389a88cf92b3f908f6bb3983dd56ad3eccee2784(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_c2d03e2021afc2d5d60147a3389a88cf92b3f908f6bb3983dd56ad3eccee2784_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_c2d03e2021afc2d5d60147a3389a88cf92b3f908f6bb3983dd56ad3eccee2784()
                        }

                        function store_literal_in_memory_a6b54cd124a84bb64f1808905ed95fb171a09730726f85e60eefcd47a4831b27(memPtr) {

                            mstore(add(memPtr, 0), "Sepolia")

                        }

                        function copy_literal_to_memory_a6b54cd124a84bb64f1808905ed95fb171a09730726f85e60eefcd47a4831b27() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(7)
                            store_literal_in_memory_a6b54cd124a84bb64f1808905ed95fb171a09730726f85e60eefcd47a4831b27(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_a6b54cd124a84bb64f1808905ed95fb171a09730726f85e60eefcd47a4831b27_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_a6b54cd124a84bb64f1808905ed95fb171a09730726f85e60eefcd47a4831b27()
                        }

                        function cleanup_t_rational_11155111_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_11155111_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_11155111_by_1(value)))
                        }

                        function store_literal_in_memory_e36469e9d6da385a975d561558a2cc6fd854a99901b2f285356c4d0070d0cd11(memPtr) {

                            mstore(add(memPtr, 0), "https://rpc.sepolia.dev")

                            }

                            function copy_literal_to_memory_e36469e9d6da385a975d561558a2cc6fd854a99901b2f285356c4d0070d0cd11() -> memPtr {
                                memPtr := allocate_memory_array_t_string_memory_ptr(23)
                                store_literal_in_memory_e36469e9d6da385a975d561558a2cc6fd854a99901b2f285356c4d0070d0cd11(add(memPtr, 32))
                            }

                            function convert_t_stringliteral_e36469e9d6da385a975d561558a2cc6fd854a99901b2f285356c4d0070d0cd11_to_t_string_memory_ptr() -> converted {
                                converted := copy_literal_to_memory_e36469e9d6da385a975d561558a2cc6fd854a99901b2f285356c4d0070d0cd11()
                            }

                            function store_literal_in_memory_f997187c3c319ef9e33fa05f852d1612b66e309dc48d97a4b6b39832090a3bec(memPtr) {

                                mstore(add(memPtr, 0), "Optimism")

                            }

                            function copy_literal_to_memory_f997187c3c319ef9e33fa05f852d1612b66e309dc48d97a4b6b39832090a3bec() -> memPtr {
                                memPtr := allocate_memory_array_t_string_memory_ptr(8)
                                store_literal_in_memory_f997187c3c319ef9e33fa05f852d1612b66e309dc48d97a4b6b39832090a3bec(add(memPtr, 32))
                            }

                            function convert_t_stringliteral_f997187c3c319ef9e33fa05f852d1612b66e309dc48d97a4b6b39832090a3bec_to_t_string_memory_ptr() -> converted {
                                converted := copy_literal_to_memory_f997187c3c319ef9e33fa05f852d1612b66e309dc48d97a4b6b39832090a3bec()
                            }

                            function cleanup_t_rational_10_by_1(value) -> cleaned {
                                cleaned := value
                            }

                            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                                converted := cleanup_t_uint256(identity(cleanup_t_rational_10_by_1(value)))
                            }

                            function store_literal_in_memory_38b9211512154272cdc8d9677b3720aef06041b8d31b5e68a6ffc7a4bb22d93e(memPtr) {

                                mstore(add(memPtr, 0), "https://mainnet.optimism.io")

                                }

                                function copy_literal_to_memory_38b9211512154272cdc8d9677b3720aef06041b8d31b5e68a6ffc7a4bb22d93e() -> memPtr {
                                    memPtr := allocate_memory_array_t_string_memory_ptr(27)
                                    store_literal_in_memory_38b9211512154272cdc8d9677b3720aef06041b8d31b5e68a6ffc7a4bb22d93e(add(memPtr, 32))
                                }

                                function convert_t_stringliteral_38b9211512154272cdc8d9677b3720aef06041b8d31b5e68a6ffc7a4bb22d93e_to_t_string_memory_ptr() -> converted {
                                    converted := copy_literal_to_memory_38b9211512154272cdc8d9677b3720aef06041b8d31b5e68a6ffc7a4bb22d93e()
                                }

                                function store_literal_in_memory_d9e83ba4223db8a023ae97eb487186dabb6dd9d99c932d6c6d55c3a871fd823b(memPtr) {

                                    mstore(add(memPtr, 0), "OptimismGoerli")

                                }

                                function copy_literal_to_memory_d9e83ba4223db8a023ae97eb487186dabb6dd9d99c932d6c6d55c3a871fd823b() -> memPtr {
                                    memPtr := allocate_memory_array_t_string_memory_ptr(14)
                                    store_literal_in_memory_d9e83ba4223db8a023ae97eb487186dabb6dd9d99c932d6c6d55c3a871fd823b(add(memPtr, 32))
                                }

                                function convert_t_stringliteral_d9e83ba4223db8a023ae97eb487186dabb6dd9d99c932d6c6d55c3a871fd823b_to_t_string_memory_ptr() -> converted {
                                    converted := copy_literal_to_memory_d9e83ba4223db8a023ae97eb487186dabb6dd9d99c932d6c6d55c3a871fd823b()
                                }

                                function cleanup_t_rational_420_by_1(value) -> cleaned {
                                    cleaned := value
                                }

                                function convert_t_rational_420_by_1_to_t_uint256(value) -> converted {
                                    converted := cleanup_t_uint256(identity(cleanup_t_rational_420_by_1(value)))
                                }

                                function store_literal_in_memory_ef3dbe59ba72d73e51c1959c67c0485880270dce59b4642a5dff6497ea5e55ad(memPtr) {

                                    mstore(add(memPtr, 0), "https://goerli.optimism.io")

                                    }

                                    function copy_literal_to_memory_ef3dbe59ba72d73e51c1959c67c0485880270dce59b4642a5dff6497ea5e55ad() -> memPtr {
                                        memPtr := allocate_memory_array_t_string_memory_ptr(26)
                                        store_literal_in_memory_ef3dbe59ba72d73e51c1959c67c0485880270dce59b4642a5dff6497ea5e55ad(add(memPtr, 32))
                                    }

                                    function convert_t_stringliteral_ef3dbe59ba72d73e51c1959c67c0485880270dce59b4642a5dff6497ea5e55ad_to_t_string_memory_ptr() -> converted {
                                        converted := copy_literal_to_memory_ef3dbe59ba72d73e51c1959c67c0485880270dce59b4642a5dff6497ea5e55ad()
                                    }

                                    function store_literal_in_memory_6df9caaa24d0aa87ccd61c51cb854d77d480b45159ae76ccd47b3ede5442512a(memPtr) {

                                        mstore(add(memPtr, 0), "ArbitrumOne")

                                    }

                                    function copy_literal_to_memory_6df9caaa24d0aa87ccd61c51cb854d77d480b45159ae76ccd47b3ede5442512a() -> memPtr {
                                        memPtr := allocate_memory_array_t_string_memory_ptr(11)
                                        store_literal_in_memory_6df9caaa24d0aa87ccd61c51cb854d77d480b45159ae76ccd47b3ede5442512a(add(memPtr, 32))
                                    }

                                    function convert_t_stringliteral_6df9caaa24d0aa87ccd61c51cb854d77d480b45159ae76ccd47b3ede5442512a_to_t_string_memory_ptr() -> converted {
                                        converted := copy_literal_to_memory_6df9caaa24d0aa87ccd61c51cb854d77d480b45159ae76ccd47b3ede5442512a()
                                    }

                                    function cleanup_t_rational_42161_by_1(value) -> cleaned {
                                        cleaned := value
                                    }

                                    function convert_t_rational_42161_by_1_to_t_uint256(value) -> converted {
                                        converted := cleanup_t_uint256(identity(cleanup_t_rational_42161_by_1(value)))
                                    }

                                    function store_literal_in_memory_ff28c1a1bf3c117d5956efad529d0ee22dcfc0fe5cbf5a03e0bdfcc3c6cac126(memPtr) {

                                        mstore(add(memPtr, 0), "https://arb1.arbitrum.io/rpc")

                                        }

                                        function copy_literal_to_memory_ff28c1a1bf3c117d5956efad529d0ee22dcfc0fe5cbf5a03e0bdfcc3c6cac126() -> memPtr {
                                            memPtr := allocate_memory_array_t_string_memory_ptr(28)
                                            store_literal_in_memory_ff28c1a1bf3c117d5956efad529d0ee22dcfc0fe5cbf5a03e0bdfcc3c6cac126(add(memPtr, 32))
                                        }

                                        function convert_t_stringliteral_ff28c1a1bf3c117d5956efad529d0ee22dcfc0fe5cbf5a03e0bdfcc3c6cac126_to_t_string_memory_ptr() -> converted {
                                            converted := copy_literal_to_memory_ff28c1a1bf3c117d5956efad529d0ee22dcfc0fe5cbf5a03e0bdfcc3c6cac126()
                                        }

                                        function store_literal_in_memory_a5b4956b999f35d4a20c70f00d0cedd04e295184a6fc63feee731ba560bf3905(memPtr) {

                                            mstore(add(memPtr, 0), "ArbitrumOneGoerli")

                                        }

                                        function copy_literal_to_memory_a5b4956b999f35d4a20c70f00d0cedd04e295184a6fc63feee731ba560bf3905() -> memPtr {
                                            memPtr := allocate_memory_array_t_string_memory_ptr(17)
                                            store_literal_in_memory_a5b4956b999f35d4a20c70f00d0cedd04e295184a6fc63feee731ba560bf3905(add(memPtr, 32))
                                        }

                                        function convert_t_stringliteral_a5b4956b999f35d4a20c70f00d0cedd04e295184a6fc63feee731ba560bf3905_to_t_string_memory_ptr() -> converted {
                                            converted := copy_literal_to_memory_a5b4956b999f35d4a20c70f00d0cedd04e295184a6fc63feee731ba560bf3905()
                                        }

                                        function cleanup_t_rational_421613_by_1(value) -> cleaned {
                                            cleaned := value
                                        }

                                        function convert_t_rational_421613_by_1_to_t_uint256(value) -> converted {
                                            converted := cleanup_t_uint256(identity(cleanup_t_rational_421613_by_1(value)))
                                        }

                                        function store_literal_in_memory_d65fa49ed6bf0763184aace821262295f8ad23c20b74cd1f836fe5e06f5dd8ea(memPtr) {

                                            mstore(add(memPtr, 0), "https://goerli-rollup.arbitrum.i")

                                                mstore(add(memPtr, 32), "o/rpc")

                                            }

                                            function copy_literal_to_memory_d65fa49ed6bf0763184aace821262295f8ad23c20b74cd1f836fe5e06f5dd8ea() -> memPtr {
                                                memPtr := allocate_memory_array_t_string_memory_ptr(37)
                                                store_literal_in_memory_d65fa49ed6bf0763184aace821262295f8ad23c20b74cd1f836fe5e06f5dd8ea(add(memPtr, 32))
                                            }

                                            function convert_t_stringliteral_d65fa49ed6bf0763184aace821262295f8ad23c20b74cd1f836fe5e06f5dd8ea_to_t_string_memory_ptr() -> converted {
                                                converted := copy_literal_to_memory_d65fa49ed6bf0763184aace821262295f8ad23c20b74cd1f836fe5e06f5dd8ea()
                                            }

                                            function store_literal_in_memory_13e73cab871f1c9e497ebd52b23be7e33059c34106c5972ca6d5442d7f6fd702(memPtr) {

                                                mstore(add(memPtr, 0), "ArbitrumNova")

                                            }

                                            function copy_literal_to_memory_13e73cab871f1c9e497ebd52b23be7e33059c34106c5972ca6d5442d7f6fd702() -> memPtr {
                                                memPtr := allocate_memory_array_t_string_memory_ptr(12)
                                                store_literal_in_memory_13e73cab871f1c9e497ebd52b23be7e33059c34106c5972ca6d5442d7f6fd702(add(memPtr, 32))
                                            }

                                            function convert_t_stringliteral_13e73cab871f1c9e497ebd52b23be7e33059c34106c5972ca6d5442d7f6fd702_to_t_string_memory_ptr() -> converted {
                                                converted := copy_literal_to_memory_13e73cab871f1c9e497ebd52b23be7e33059c34106c5972ca6d5442d7f6fd702()
                                            }

                                            function cleanup_t_rational_42170_by_1(value) -> cleaned {
                                                cleaned := value
                                            }

                                            function convert_t_rational_42170_by_1_to_t_uint256(value) -> converted {
                                                converted := cleanup_t_uint256(identity(cleanup_t_rational_42170_by_1(value)))
                                            }

                                            function store_literal_in_memory_a77f0a686c95785c75ada33247e30dc9ac80330a7f8eb521bebdf48f492ee4ac(memPtr) {

                                                mstore(add(memPtr, 0), "https://nova.arbitrum.io/rpc")

                                                }

                                                function copy_literal_to_memory_a77f0a686c95785c75ada33247e30dc9ac80330a7f8eb521bebdf48f492ee4ac() -> memPtr {
                                                    memPtr := allocate_memory_array_t_string_memory_ptr(28)
                                                    store_literal_in_memory_a77f0a686c95785c75ada33247e30dc9ac80330a7f8eb521bebdf48f492ee4ac(add(memPtr, 32))
                                                }

                                                function convert_t_stringliteral_a77f0a686c95785c75ada33247e30dc9ac80330a7f8eb521bebdf48f492ee4ac_to_t_string_memory_ptr() -> converted {
                                                    converted := copy_literal_to_memory_a77f0a686c95785c75ada33247e30dc9ac80330a7f8eb521bebdf48f492ee4ac()
                                                }

                                                function store_literal_in_memory_890af8db8ca1aa1e915857edbc2717639ebd8a22c786f9e0e776d6a1aacb5e71(memPtr) {

                                                    mstore(add(memPtr, 0), "Polygon")

                                                }

                                                function copy_literal_to_memory_890af8db8ca1aa1e915857edbc2717639ebd8a22c786f9e0e776d6a1aacb5e71() -> memPtr {
                                                    memPtr := allocate_memory_array_t_string_memory_ptr(7)
                                                    store_literal_in_memory_890af8db8ca1aa1e915857edbc2717639ebd8a22c786f9e0e776d6a1aacb5e71(add(memPtr, 32))
                                                }

                                                function convert_t_stringliteral_890af8db8ca1aa1e915857edbc2717639ebd8a22c786f9e0e776d6a1aacb5e71_to_t_string_memory_ptr() -> converted {
                                                    converted := copy_literal_to_memory_890af8db8ca1aa1e915857edbc2717639ebd8a22c786f9e0e776d6a1aacb5e71()
                                                }

                                                function cleanup_t_rational_137_by_1(value) -> cleaned {
                                                    cleaned := value
                                                }

                                                function convert_t_rational_137_by_1_to_t_uint256(value) -> converted {
                                                    converted := cleanup_t_uint256(identity(cleanup_t_rational_137_by_1(value)))
                                                }

                                                function store_literal_in_memory_fda46ab670b83929623b4aa9bcfa97ff7b7376fa90a24a450a8561482232c5c0(memPtr) {

                                                    mstore(add(memPtr, 0), "https://polygon-rpc.com")

                                                    }

                                                    function copy_literal_to_memory_fda46ab670b83929623b4aa9bcfa97ff7b7376fa90a24a450a8561482232c5c0() -> memPtr {
                                                        memPtr := allocate_memory_array_t_string_memory_ptr(23)
                                                        store_literal_in_memory_fda46ab670b83929623b4aa9bcfa97ff7b7376fa90a24a450a8561482232c5c0(add(memPtr, 32))
                                                    }

                                                    function convert_t_stringliteral_fda46ab670b83929623b4aa9bcfa97ff7b7376fa90a24a450a8561482232c5c0_to_t_string_memory_ptr() -> converted {
                                                        converted := copy_literal_to_memory_fda46ab670b83929623b4aa9bcfa97ff7b7376fa90a24a450a8561482232c5c0()
                                                    }

                                                    function store_literal_in_memory_b679d1334e201410faae95031e02547ebf38762fd30bbdb02e972f9620e68b0c(memPtr) {

                                                        mstore(add(memPtr, 0), "PolygonMumbai")

                                                    }

                                                    function copy_literal_to_memory_b679d1334e201410faae95031e02547ebf38762fd30bbdb02e972f9620e68b0c() -> memPtr {
                                                        memPtr := allocate_memory_array_t_string_memory_ptr(13)
                                                        store_literal_in_memory_b679d1334e201410faae95031e02547ebf38762fd30bbdb02e972f9620e68b0c(add(memPtr, 32))
                                                    }

                                                    function convert_t_stringliteral_b679d1334e201410faae95031e02547ebf38762fd30bbdb02e972f9620e68b0c_to_t_string_memory_ptr() -> converted {
                                                        converted := copy_literal_to_memory_b679d1334e201410faae95031e02547ebf38762fd30bbdb02e972f9620e68b0c()
                                                    }

                                                    function cleanup_t_rational_80001_by_1(value) -> cleaned {
                                                        cleaned := value
                                                    }

                                                    function convert_t_rational_80001_by_1_to_t_uint256(value) -> converted {
                                                        converted := cleanup_t_uint256(identity(cleanup_t_rational_80001_by_1(value)))
                                                    }

                                                    function store_literal_in_memory_f106af479a6c11cecfa2b74ea0e8c7e413c6e6ff201ebf6b50d3261e370192f7(memPtr) {

                                                        mstore(add(memPtr, 0), "https://rpc-mumbai.matic.today")

                                                        }

                                                        function copy_literal_to_memory_f106af479a6c11cecfa2b74ea0e8c7e413c6e6ff201ebf6b50d3261e370192f7() -> memPtr {
                                                            memPtr := allocate_memory_array_t_string_memory_ptr(30)
                                                            store_literal_in_memory_f106af479a6c11cecfa2b74ea0e8c7e413c6e6ff201ebf6b50d3261e370192f7(add(memPtr, 32))
                                                        }

                                                        function convert_t_stringliteral_f106af479a6c11cecfa2b74ea0e8c7e413c6e6ff201ebf6b50d3261e370192f7_to_t_string_memory_ptr() -> converted {
                                                            converted := copy_literal_to_memory_f106af479a6c11cecfa2b74ea0e8c7e413c6e6ff201ebf6b50d3261e370192f7()
                                                        }

                                                        function store_literal_in_memory_6585177c3aba6cb7ffc0a37e831a958c4ee9278e4c62c7bdad7175ca09883c40(memPtr) {

                                                            mstore(add(memPtr, 0), "Avalanche")

                                                        }

                                                        function copy_literal_to_memory_6585177c3aba6cb7ffc0a37e831a958c4ee9278e4c62c7bdad7175ca09883c40() -> memPtr {
                                                            memPtr := allocate_memory_array_t_string_memory_ptr(9)
                                                            store_literal_in_memory_6585177c3aba6cb7ffc0a37e831a958c4ee9278e4c62c7bdad7175ca09883c40(add(memPtr, 32))
                                                        }

                                                        function convert_t_stringliteral_6585177c3aba6cb7ffc0a37e831a958c4ee9278e4c62c7bdad7175ca09883c40_to_t_string_memory_ptr() -> converted {
                                                            converted := copy_literal_to_memory_6585177c3aba6cb7ffc0a37e831a958c4ee9278e4c62c7bdad7175ca09883c40()
                                                        }

                                                        function cleanup_t_rational_43114_by_1(value) -> cleaned {
                                                            cleaned := value
                                                        }

                                                        function convert_t_rational_43114_by_1_to_t_uint256(value) -> converted {
                                                            converted := cleanup_t_uint256(identity(cleanup_t_rational_43114_by_1(value)))
                                                        }

                                                        function store_literal_in_memory_429365eac47ed6b261c38927d854e528b743fc5a678b1b4ba631c511f305886a(memPtr) {

                                                            mstore(add(memPtr, 0), "https://api.avax.network/ext/bc/")

                                                                mstore(add(memPtr, 32), "C/rpc")

                                                            }

                                                            function copy_literal_to_memory_429365eac47ed6b261c38927d854e528b743fc5a678b1b4ba631c511f305886a() -> memPtr {
                                                                memPtr := allocate_memory_array_t_string_memory_ptr(37)
                                                                store_literal_in_memory_429365eac47ed6b261c38927d854e528b743fc5a678b1b4ba631c511f305886a(add(memPtr, 32))
                                                            }

                                                            function convert_t_stringliteral_429365eac47ed6b261c38927d854e528b743fc5a678b1b4ba631c511f305886a_to_t_string_memory_ptr() -> converted {
                                                                converted := copy_literal_to_memory_429365eac47ed6b261c38927d854e528b743fc5a678b1b4ba631c511f305886a()
                                                            }

                                                            function store_literal_in_memory_fdf69378c46b8ff891cba7e67a64ab16528e8dd2967a6899493af515997356c9(memPtr) {

                                                                mstore(add(memPtr, 0), "AvalancheFuji")

                                                            }

                                                            function copy_literal_to_memory_fdf69378c46b8ff891cba7e67a64ab16528e8dd2967a6899493af515997356c9() -> memPtr {
                                                                memPtr := allocate_memory_array_t_string_memory_ptr(13)
                                                                store_literal_in_memory_fdf69378c46b8ff891cba7e67a64ab16528e8dd2967a6899493af515997356c9(add(memPtr, 32))
                                                            }

                                                            function convert_t_stringliteral_fdf69378c46b8ff891cba7e67a64ab16528e8dd2967a6899493af515997356c9_to_t_string_memory_ptr() -> converted {
                                                                converted := copy_literal_to_memory_fdf69378c46b8ff891cba7e67a64ab16528e8dd2967a6899493af515997356c9()
                                                            }

                                                            function cleanup_t_rational_43113_by_1(value) -> cleaned {
                                                                cleaned := value
                                                            }

                                                            function convert_t_rational_43113_by_1_to_t_uint256(value) -> converted {
                                                                converted := cleanup_t_uint256(identity(cleanup_t_rational_43113_by_1(value)))
                                                            }

                                                            function store_literal_in_memory_d6621ea822eabf6c190358ea82de0c52d3503dcce8117b3366a8a3bd96eb422d(memPtr) {

                                                                mstore(add(memPtr, 0), "https://api.avax-test.network/ex")

                                                                    mstore(add(memPtr, 32), "t/bc/C/rpc")

                                                                }

                                                                function copy_literal_to_memory_d6621ea822eabf6c190358ea82de0c52d3503dcce8117b3366a8a3bd96eb422d() -> memPtr {
                                                                    memPtr := allocate_memory_array_t_string_memory_ptr(42)
                                                                    store_literal_in_memory_d6621ea822eabf6c190358ea82de0c52d3503dcce8117b3366a8a3bd96eb422d(add(memPtr, 32))
                                                                }

                                                                function convert_t_stringliteral_d6621ea822eabf6c190358ea82de0c52d3503dcce8117b3366a8a3bd96eb422d_to_t_string_memory_ptr() -> converted {
                                                                    converted := copy_literal_to_memory_d6621ea822eabf6c190358ea82de0c52d3503dcce8117b3366a8a3bd96eb422d()
                                                                }

                                                                function store_literal_in_memory_d4fe9019651d2cbc3862fc4674c442a483623b82a7dce2ac7c28138180d528c5(memPtr) {

                                                                    mstore(add(memPtr, 0), "BnbSmartChain")

                                                                }

                                                                function copy_literal_to_memory_d4fe9019651d2cbc3862fc4674c442a483623b82a7dce2ac7c28138180d528c5() -> memPtr {
                                                                    memPtr := allocate_memory_array_t_string_memory_ptr(13)
                                                                    store_literal_in_memory_d4fe9019651d2cbc3862fc4674c442a483623b82a7dce2ac7c28138180d528c5(add(memPtr, 32))
                                                                }

                                                                function convert_t_stringliteral_d4fe9019651d2cbc3862fc4674c442a483623b82a7dce2ac7c28138180d528c5_to_t_string_memory_ptr() -> converted {
                                                                    converted := copy_literal_to_memory_d4fe9019651d2cbc3862fc4674c442a483623b82a7dce2ac7c28138180d528c5()
                                                                }

                                                                function cleanup_t_rational_56_by_1(value) -> cleaned {
                                                                    cleaned := value
                                                                }

                                                                function convert_t_rational_56_by_1_to_t_uint256(value) -> converted {
                                                                    converted := cleanup_t_uint256(identity(cleanup_t_rational_56_by_1(value)))
                                                                }

                                                                function store_literal_in_memory_e2b4215bd50ab260c8c9f18e36ea07b1f952450853bcf024123d5767a40d4719(memPtr) {

                                                                    mstore(add(memPtr, 0), "https://bsc-dataseed1.binance.or")

                                                                        mstore(add(memPtr, 32), "g")

                                                                    }

                                                                    function copy_literal_to_memory_e2b4215bd50ab260c8c9f18e36ea07b1f952450853bcf024123d5767a40d4719() -> memPtr {
                                                                        memPtr := allocate_memory_array_t_string_memory_ptr(33)
                                                                        store_literal_in_memory_e2b4215bd50ab260c8c9f18e36ea07b1f952450853bcf024123d5767a40d4719(add(memPtr, 32))
                                                                    }

                                                                    function convert_t_stringliteral_e2b4215bd50ab260c8c9f18e36ea07b1f952450853bcf024123d5767a40d4719_to_t_string_memory_ptr() -> converted {
                                                                        converted := copy_literal_to_memory_e2b4215bd50ab260c8c9f18e36ea07b1f952450853bcf024123d5767a40d4719()
                                                                    }

                                                                    function store_literal_in_memory_c6b8390686af629e8bd6173ee298c65730bbac6941fb18507d79305cdc961824(memPtr) {

                                                                        mstore(add(memPtr, 0), "BnbSmartChainTestnet")

                                                                    }

                                                                    function copy_literal_to_memory_c6b8390686af629e8bd6173ee298c65730bbac6941fb18507d79305cdc961824() -> memPtr {
                                                                        memPtr := allocate_memory_array_t_string_memory_ptr(20)
                                                                        store_literal_in_memory_c6b8390686af629e8bd6173ee298c65730bbac6941fb18507d79305cdc961824(add(memPtr, 32))
                                                                    }

                                                                    function convert_t_stringliteral_c6b8390686af629e8bd6173ee298c65730bbac6941fb18507d79305cdc961824_to_t_string_memory_ptr() -> converted {
                                                                        converted := copy_literal_to_memory_c6b8390686af629e8bd6173ee298c65730bbac6941fb18507d79305cdc961824()
                                                                    }

                                                                    function cleanup_t_rational_97_by_1(value) -> cleaned {
                                                                        cleaned := value
                                                                    }

                                                                    function convert_t_rational_97_by_1_to_t_uint256(value) -> converted {
                                                                        converted := cleanup_t_uint256(identity(cleanup_t_rational_97_by_1(value)))
                                                                    }

                                                                    function store_literal_in_memory_06894ce500210f386acd0844767c4ae19c623595ce2845e4d185bcd99fc926dc(memPtr) {

                                                                        mstore(add(memPtr, 0), "https://data-seed-prebsc-1-s1.bi")

                                                                            mstore(add(memPtr, 32), "nance.org:8545")

                                                                        }

                                                                        function copy_literal_to_memory_06894ce500210f386acd0844767c4ae19c623595ce2845e4d185bcd99fc926dc() -> memPtr {
                                                                            memPtr := allocate_memory_array_t_string_memory_ptr(46)
                                                                            store_literal_in_memory_06894ce500210f386acd0844767c4ae19c623595ce2845e4d185bcd99fc926dc(add(memPtr, 32))
                                                                        }

                                                                        function convert_t_stringliteral_06894ce500210f386acd0844767c4ae19c623595ce2845e4d185bcd99fc926dc_to_t_string_memory_ptr() -> converted {
                                                                            converted := copy_literal_to_memory_06894ce500210f386acd0844767c4ae19c623595ce2845e4d185bcd99fc926dc()
                                                                        }

                                                                        function store_literal_in_memory_589ad15416facb73658c8b7c701776721413377d931b9f2915448613d693ae89(memPtr) {

                                                                            mstore(add(memPtr, 0), "GnosisChain")

                                                                        }

                                                                        function copy_literal_to_memory_589ad15416facb73658c8b7c701776721413377d931b9f2915448613d693ae89() -> memPtr {
                                                                            memPtr := allocate_memory_array_t_string_memory_ptr(11)
                                                                            store_literal_in_memory_589ad15416facb73658c8b7c701776721413377d931b9f2915448613d693ae89(add(memPtr, 32))
                                                                        }

                                                                        function convert_t_stringliteral_589ad15416facb73658c8b7c701776721413377d931b9f2915448613d693ae89_to_t_string_memory_ptr() -> converted {
                                                                            converted := copy_literal_to_memory_589ad15416facb73658c8b7c701776721413377d931b9f2915448613d693ae89()
                                                                        }

                                                                        function cleanup_t_rational_100_by_1(value) -> cleaned {
                                                                            cleaned := value
                                                                        }

                                                                        function convert_t_rational_100_by_1_to_t_uint256(value) -> converted {
                                                                            converted := cleanup_t_uint256(identity(cleanup_t_rational_100_by_1(value)))
                                                                        }

                                                                        function store_literal_in_memory_127e02590d58e22164456f76136047039faabc2ca27eb41939081a3e775b50df(memPtr) {

                                                                            mstore(add(memPtr, 0), "https://rpc.gnosischain.com")

                                                                            }

                                                                            function copy_literal_to_memory_127e02590d58e22164456f76136047039faabc2ca27eb41939081a3e775b50df() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(27)
                                                                                store_literal_in_memory_127e02590d58e22164456f76136047039faabc2ca27eb41939081a3e775b50df(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_127e02590d58e22164456f76136047039faabc2ca27eb41939081a3e775b50df_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_127e02590d58e22164456f76136047039faabc2ca27eb41939081a3e775b50df()
                                                                            }

                                                                            function allocate_memory_struct_t_struct$_Chains_$60_storage_ptr() -> memPtr {
                                                                                memPtr := allocate_memory(544)
                                                                            }

                                                                            function write_to_memory_t_struct$_Chain_$8_memory_ptr(memPtr, value) {
                                                                                mstore(memPtr, value)
                                                                            }

                                                                            function panic_error_0x00() {
                                                                                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                                                                                mstore(4, 0x00)
                                                                                revert(0, 0x24)
                                                                            }

                                                                            function read_from_memoryt_struct$_Chain_$8_memory_ptr(memPtr) -> value {
                                                                                value := mload(memPtr)
                                                                            }

                                                                            function read_from_memoryt_string_memory_ptr(memPtr) -> value {
                                                                                value := mload(memPtr)
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

                                                                            function read_from_memoryt_uint256(ptr) -> returnValue {

                                                                                let value := cleanup_t_uint256(mload(ptr))

                                                                                returnValue :=

                                                                                value

                                                                            }

                                                                            function shift_left_0(value) -> newValue {
                                                                                newValue :=

                                                                                shl(0, value)

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

                                                                            function copy_struct_to_storage_from_t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(slot, value) {

                                                                                {

                                                                                    let memberSlot := add(slot, 0)
                                                                                    let memberSrcPtr := add(value, 0)

                                                                                    let memberValue_0 := read_from_memoryt_string_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 1)
                                                                                    let memberSrcPtr := add(value, 32)

                                                                                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_uint256_to_t_uint256(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 2)
                                                                                    let memberSrcPtr := add(value, 64)

                                                                                    let memberValue_0 := read_from_memoryt_string_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(memberSlot, memberValue_0)

                                                                                }

                                                                            }

                                                                            function update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(slot, value_0) {

                                                                                copy_struct_to_storage_from_t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(slot, value_0)
                                                                            }

                                                                            function copy_struct_to_storage_from_t_struct$_Chains_$60_memory_ptr_to_t_struct$_Chains_$60_storage(slot, value) {

                                                                                {

                                                                                    let memberSlot := add(slot, 0)
                                                                                    let memberSrcPtr := add(value, 0)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 3)
                                                                                    let memberSrcPtr := add(value, 32)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 6)
                                                                                    let memberSrcPtr := add(value, 64)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 9)
                                                                                    let memberSrcPtr := add(value, 96)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 12)
                                                                                    let memberSrcPtr := add(value, 128)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 15)
                                                                                    let memberSrcPtr := add(value, 160)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 18)
                                                                                    let memberSrcPtr := add(value, 192)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 21)
                                                                                    let memberSrcPtr := add(value, 224)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 24)
                                                                                    let memberSrcPtr := add(value, 256)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 27)
                                                                                    let memberSrcPtr := add(value, 288)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 30)
                                                                                    let memberSrcPtr := add(value, 320)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 33)
                                                                                    let memberSrcPtr := add(value, 352)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 36)
                                                                                    let memberSrcPtr := add(value, 384)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 39)
                                                                                    let memberSrcPtr := add(value, 416)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 42)
                                                                                    let memberSrcPtr := add(value, 448)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 45)
                                                                                    let memberSrcPtr := add(value, 480)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                                {

                                                                                    let memberSlot := add(slot, 48)
                                                                                    let memberSrcPtr := add(value, 512)

                                                                                    let memberValue_0 := read_from_memoryt_struct$_Chain_$8_memory_ptr(memberSrcPtr)

                                                                                    update_storage_value_offset_0t_struct$_Chain_$8_memory_ptr_to_t_struct$_Chain_$8_storage(memberSlot, memberValue_0)

                                                                                }

                                                                            }

                                                                            function update_storage_value_offset_0t_struct$_Chains_$60_memory_ptr_to_t_struct$_Chains_$60_storage(slot, value_0) {

                                                                                copy_struct_to_storage_from_t_struct$_Chains_$60_memory_ptr_to_t_struct$_Chains_$60_storage(slot, value_0)
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

                                                                            function array_length_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(value) -> length {

                                                                                length := mload(value)

                                                                            }

                                                                            function panic_error_0x32() {
                                                                                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                                                                                mstore(4, 0x32)
                                                                                revert(0, 0x24)
                                                                            }

                                                                            function memory_array_index_access_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(baseRef, index) -> addr {
                                                                                if iszero(lt(index, array_length_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(baseRef))) {
                                                                                    panic_error_0x32()
                                                                                }

                                                                                let offset := mul(index, 32)

                                                                                offset := add(offset, 32)

                                                                                addr := add(baseRef, offset)
                                                                            }

                                                                            function array_length_t_array$_t_string_memory_ptr_$2_memory_ptr(value) -> length {

                                                                                length := 0x02

                                                                            }

                                                                            function memory_array_index_access_t_array$_t_string_memory_ptr_$2_memory_ptr(baseRef, index) -> addr {
                                                                                if iszero(lt(index, array_length_t_array$_t_string_memory_ptr_$2_memory_ptr(baseRef))) {
                                                                                    panic_error_0x32()
                                                                                }

                                                                                let offset := mul(index, 32)

                                                                                addr := add(baseRef, offset)
                                                                            }

                                                                            function store_literal_in_memory_a3d859b77cebfdf9da3b485434702c5090ff9e91b7b86c670ebb15f8a00eb72b(memPtr) {

                                                                                mstore(add(memPtr, 0), "anvil")

                                                                            }

                                                                            function copy_literal_to_memory_a3d859b77cebfdf9da3b485434702c5090ff9e91b7b86c670ebb15f8a00eb72b() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(5)
                                                                                store_literal_in_memory_a3d859b77cebfdf9da3b485434702c5090ff9e91b7b86c670ebb15f8a00eb72b(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_a3d859b77cebfdf9da3b485434702c5090ff9e91b7b86c670ebb15f8a00eb72b_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_a3d859b77cebfdf9da3b485434702c5090ff9e91b7b86c670ebb15f8a00eb72b()
                                                                            }

                                                                            function store_literal_in_memory_41d010e4d55c1f680ac8d1df51d62770f05ab44e7687503f884ef0629dbf7ab0(memPtr) {

                                                                                mstore(add(memPtr, 0), "hardhat")

                                                                            }

                                                                            function copy_literal_to_memory_41d010e4d55c1f680ac8d1df51d62770f05ab44e7687503f884ef0629dbf7ab0() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(7)
                                                                                store_literal_in_memory_41d010e4d55c1f680ac8d1df51d62770f05ab44e7687503f884ef0629dbf7ab0(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_41d010e4d55c1f680ac8d1df51d62770f05ab44e7687503f884ef0629dbf7ab0_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_41d010e4d55c1f680ac8d1df51d62770f05ab44e7687503f884ef0629dbf7ab0()
                                                                            }

                                                                            function store_literal_in_memory_7beafa94c8bfb8f1c1a43104a34f72c524268aafbfe83bff17485539345c66ff(memPtr) {

                                                                                mstore(add(memPtr, 0), "mainnet")

                                                                            }

                                                                            function copy_literal_to_memory_7beafa94c8bfb8f1c1a43104a34f72c524268aafbfe83bff17485539345c66ff() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(7)
                                                                                store_literal_in_memory_7beafa94c8bfb8f1c1a43104a34f72c524268aafbfe83bff17485539345c66ff(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_7beafa94c8bfb8f1c1a43104a34f72c524268aafbfe83bff17485539345c66ff_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_7beafa94c8bfb8f1c1a43104a34f72c524268aafbfe83bff17485539345c66ff()
                                                                            }

                                                                            function store_literal_in_memory_e24dd81d18a6354d406364c0fc25f4237534cee10d0c3099c9c2a6aa50d7dd0a(memPtr) {

                                                                                mstore(add(memPtr, 0), "goerli")

                                                                            }

                                                                            function copy_literal_to_memory_e24dd81d18a6354d406364c0fc25f4237534cee10d0c3099c9c2a6aa50d7dd0a() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(6)
                                                                                store_literal_in_memory_e24dd81d18a6354d406364c0fc25f4237534cee10d0c3099c9c2a6aa50d7dd0a(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_e24dd81d18a6354d406364c0fc25f4237534cee10d0c3099c9c2a6aa50d7dd0a_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_e24dd81d18a6354d406364c0fc25f4237534cee10d0c3099c9c2a6aa50d7dd0a()
                                                                            }

                                                                            function store_literal_in_memory_e1f58df0b51f34f4835aba989f0aa2f2e66218cab53207bafd3dbf37270bd39a(memPtr) {

                                                                                mstore(add(memPtr, 0), "sepolia")

                                                                            }

                                                                            function copy_literal_to_memory_e1f58df0b51f34f4835aba989f0aa2f2e66218cab53207bafd3dbf37270bd39a() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(7)
                                                                                store_literal_in_memory_e1f58df0b51f34f4835aba989f0aa2f2e66218cab53207bafd3dbf37270bd39a(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_e1f58df0b51f34f4835aba989f0aa2f2e66218cab53207bafd3dbf37270bd39a_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_e1f58df0b51f34f4835aba989f0aa2f2e66218cab53207bafd3dbf37270bd39a()
                                                                            }

                                                                            function store_literal_in_memory_09d0f27659ee556a8134fa56941e42400e672aecc2d4cfc61cdb0fcea4590e05(memPtr) {

                                                                                mstore(add(memPtr, 0), "optimism")

                                                                            }

                                                                            function copy_literal_to_memory_09d0f27659ee556a8134fa56941e42400e672aecc2d4cfc61cdb0fcea4590e05() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(8)
                                                                                store_literal_in_memory_09d0f27659ee556a8134fa56941e42400e672aecc2d4cfc61cdb0fcea4590e05(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_09d0f27659ee556a8134fa56941e42400e672aecc2d4cfc61cdb0fcea4590e05_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_09d0f27659ee556a8134fa56941e42400e672aecc2d4cfc61cdb0fcea4590e05()
                                                                            }

                                                                            function store_literal_in_memory_ecf3b2cc678a701bfbf2329b12e6edf723c3043a32339c2eea2efb7c9533c09c(memPtr) {

                                                                                mstore(add(memPtr, 0), "optimism_goerli")

                                                                            }

                                                                            function copy_literal_to_memory_ecf3b2cc678a701bfbf2329b12e6edf723c3043a32339c2eea2efb7c9533c09c() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(15)
                                                                                store_literal_in_memory_ecf3b2cc678a701bfbf2329b12e6edf723c3043a32339c2eea2efb7c9533c09c(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_ecf3b2cc678a701bfbf2329b12e6edf723c3043a32339c2eea2efb7c9533c09c_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_ecf3b2cc678a701bfbf2329b12e6edf723c3043a32339c2eea2efb7c9533c09c()
                                                                            }

                                                                            function store_literal_in_memory_d68b5da1d2df2dbe4764ed9e76bdeb201ef1878643e994b3a46689de6ddf2672(memPtr) {

                                                                                mstore(add(memPtr, 0), "optimism-goerli")

                                                                            }

                                                                            function copy_literal_to_memory_d68b5da1d2df2dbe4764ed9e76bdeb201ef1878643e994b3a46689de6ddf2672() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(15)
                                                                                store_literal_in_memory_d68b5da1d2df2dbe4764ed9e76bdeb201ef1878643e994b3a46689de6ddf2672(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_d68b5da1d2df2dbe4764ed9e76bdeb201ef1878643e994b3a46689de6ddf2672_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_d68b5da1d2df2dbe4764ed9e76bdeb201ef1878643e994b3a46689de6ddf2672()
                                                                            }

                                                                            function store_literal_in_memory_e4b44cea7839e0679ac5072602932da9b25ebfb3a9ac42625d9c583a7b6b2eb4(memPtr) {

                                                                                mstore(add(memPtr, 0), "arbitrum_one")

                                                                            }

                                                                            function copy_literal_to_memory_e4b44cea7839e0679ac5072602932da9b25ebfb3a9ac42625d9c583a7b6b2eb4() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(12)
                                                                                store_literal_in_memory_e4b44cea7839e0679ac5072602932da9b25ebfb3a9ac42625d9c583a7b6b2eb4(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_e4b44cea7839e0679ac5072602932da9b25ebfb3a9ac42625d9c583a7b6b2eb4_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_e4b44cea7839e0679ac5072602932da9b25ebfb3a9ac42625d9c583a7b6b2eb4()
                                                                            }

                                                                            function store_literal_in_memory_5c0fe22876ca849b8468b279a80ab02e01b5927ecd890a0e70c39380fa1d9b88(memPtr) {

                                                                                mstore(add(memPtr, 0), "arbitrum-one")

                                                                            }

                                                                            function copy_literal_to_memory_5c0fe22876ca849b8468b279a80ab02e01b5927ecd890a0e70c39380fa1d9b88() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(12)
                                                                                store_literal_in_memory_5c0fe22876ca849b8468b279a80ab02e01b5927ecd890a0e70c39380fa1d9b88(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_5c0fe22876ca849b8468b279a80ab02e01b5927ecd890a0e70c39380fa1d9b88_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_5c0fe22876ca849b8468b279a80ab02e01b5927ecd890a0e70c39380fa1d9b88()
                                                                            }

                                                                            function store_literal_in_memory_9c5068a3a5cdbd747f13200fdd6f590995f99bde231a5dcfa62a5f92af1dc3d4(memPtr) {

                                                                                mstore(add(memPtr, 0), "arbitrum_one_goerli")

                                                                            }

                                                                            function copy_literal_to_memory_9c5068a3a5cdbd747f13200fdd6f590995f99bde231a5dcfa62a5f92af1dc3d4() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(19)
                                                                                store_literal_in_memory_9c5068a3a5cdbd747f13200fdd6f590995f99bde231a5dcfa62a5f92af1dc3d4(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_9c5068a3a5cdbd747f13200fdd6f590995f99bde231a5dcfa62a5f92af1dc3d4_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_9c5068a3a5cdbd747f13200fdd6f590995f99bde231a5dcfa62a5f92af1dc3d4()
                                                                            }

                                                                            function store_literal_in_memory_3e7ef79dc818f58845fdbe1d5ebeafa39e4565fbfca7e1fc93bcda3fa9bd367e(memPtr) {

                                                                                mstore(add(memPtr, 0), "arbitrum-one-goerli")

                                                                            }

                                                                            function copy_literal_to_memory_3e7ef79dc818f58845fdbe1d5ebeafa39e4565fbfca7e1fc93bcda3fa9bd367e() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(19)
                                                                                store_literal_in_memory_3e7ef79dc818f58845fdbe1d5ebeafa39e4565fbfca7e1fc93bcda3fa9bd367e(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_3e7ef79dc818f58845fdbe1d5ebeafa39e4565fbfca7e1fc93bcda3fa9bd367e_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_3e7ef79dc818f58845fdbe1d5ebeafa39e4565fbfca7e1fc93bcda3fa9bd367e()
                                                                            }

                                                                            function store_literal_in_memory_9338ed1403277416ebb39d4e992ebf5c49e6dded5ec79963ea5fc261cbd7fdac(memPtr) {

                                                                                mstore(add(memPtr, 0), "arbitrum_nova")

                                                                            }

                                                                            function copy_literal_to_memory_9338ed1403277416ebb39d4e992ebf5c49e6dded5ec79963ea5fc261cbd7fdac() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(13)
                                                                                store_literal_in_memory_9338ed1403277416ebb39d4e992ebf5c49e6dded5ec79963ea5fc261cbd7fdac(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_9338ed1403277416ebb39d4e992ebf5c49e6dded5ec79963ea5fc261cbd7fdac_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_9338ed1403277416ebb39d4e992ebf5c49e6dded5ec79963ea5fc261cbd7fdac()
                                                                            }

                                                                            function store_literal_in_memory_e520ee08b2577ac8be4e654f7d92e8715f162ac40a35c745c50be017a9eb8a06(memPtr) {

                                                                                mstore(add(memPtr, 0), "arbitrum-nova")

                                                                            }

                                                                            function copy_literal_to_memory_e520ee08b2577ac8be4e654f7d92e8715f162ac40a35c745c50be017a9eb8a06() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(13)
                                                                                store_literal_in_memory_e520ee08b2577ac8be4e654f7d92e8715f162ac40a35c745c50be017a9eb8a06(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_e520ee08b2577ac8be4e654f7d92e8715f162ac40a35c745c50be017a9eb8a06_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_e520ee08b2577ac8be4e654f7d92e8715f162ac40a35c745c50be017a9eb8a06()
                                                                            }

                                                                            function store_literal_in_memory_ac63fa1fe369e75c38d62f0f4d465b48b3cd5159f0fb416332899402031d1408(memPtr) {

                                                                                mstore(add(memPtr, 0), "polygon")

                                                                            }

                                                                            function copy_literal_to_memory_ac63fa1fe369e75c38d62f0f4d465b48b3cd5159f0fb416332899402031d1408() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(7)
                                                                                store_literal_in_memory_ac63fa1fe369e75c38d62f0f4d465b48b3cd5159f0fb416332899402031d1408(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_ac63fa1fe369e75c38d62f0f4d465b48b3cd5159f0fb416332899402031d1408_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_ac63fa1fe369e75c38d62f0f4d465b48b3cd5159f0fb416332899402031d1408()
                                                                            }

                                                                            function store_literal_in_memory_a7308364e169f5f44de3933205a00d3632b7366702c91dff3452b4dbf6ed70f0(memPtr) {

                                                                                mstore(add(memPtr, 0), "polygon_mumbai")

                                                                            }

                                                                            function copy_literal_to_memory_a7308364e169f5f44de3933205a00d3632b7366702c91dff3452b4dbf6ed70f0() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(14)
                                                                                store_literal_in_memory_a7308364e169f5f44de3933205a00d3632b7366702c91dff3452b4dbf6ed70f0(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_a7308364e169f5f44de3933205a00d3632b7366702c91dff3452b4dbf6ed70f0_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_a7308364e169f5f44de3933205a00d3632b7366702c91dff3452b4dbf6ed70f0()
                                                                            }

                                                                            function store_literal_in_memory_d4ba5060ac26b70957e2b8e70e404ab62930e333eae52a8a727b41630a82ffb8(memPtr) {

                                                                                mstore(add(memPtr, 0), "polygon-mumbai")

                                                                            }

                                                                            function copy_literal_to_memory_d4ba5060ac26b70957e2b8e70e404ab62930e333eae52a8a727b41630a82ffb8() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(14)
                                                                                store_literal_in_memory_d4ba5060ac26b70957e2b8e70e404ab62930e333eae52a8a727b41630a82ffb8(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_d4ba5060ac26b70957e2b8e70e404ab62930e333eae52a8a727b41630a82ffb8_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_d4ba5060ac26b70957e2b8e70e404ab62930e333eae52a8a727b41630a82ffb8()
                                                                            }

                                                                            function store_literal_in_memory_6e8b0d92516ee4289145e3b78cea58daac177b1c618beeedbc6cdabd388a6e55(memPtr) {

                                                                                mstore(add(memPtr, 0), "avalanche")

                                                                            }

                                                                            function copy_literal_to_memory_6e8b0d92516ee4289145e3b78cea58daac177b1c618beeedbc6cdabd388a6e55() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(9)
                                                                                store_literal_in_memory_6e8b0d92516ee4289145e3b78cea58daac177b1c618beeedbc6cdabd388a6e55(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_6e8b0d92516ee4289145e3b78cea58daac177b1c618beeedbc6cdabd388a6e55_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_6e8b0d92516ee4289145e3b78cea58daac177b1c618beeedbc6cdabd388a6e55()
                                                                            }

                                                                            function store_literal_in_memory_a1920d2f80060f1c83444622c7eb5adf4484bed8a537b8d13eae53bd800aa692(memPtr) {

                                                                                mstore(add(memPtr, 0), "avalanche_fuji")

                                                                            }

                                                                            function copy_literal_to_memory_a1920d2f80060f1c83444622c7eb5adf4484bed8a537b8d13eae53bd800aa692() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(14)
                                                                                store_literal_in_memory_a1920d2f80060f1c83444622c7eb5adf4484bed8a537b8d13eae53bd800aa692(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_a1920d2f80060f1c83444622c7eb5adf4484bed8a537b8d13eae53bd800aa692_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_a1920d2f80060f1c83444622c7eb5adf4484bed8a537b8d13eae53bd800aa692()
                                                                            }

                                                                            function store_literal_in_memory_563fae2db16567e7c8de7ab296c24bee337018b6040b5ac271d22d493a2fb29a(memPtr) {

                                                                                mstore(add(memPtr, 0), "avalanche-fuji")

                                                                            }

                                                                            function copy_literal_to_memory_563fae2db16567e7c8de7ab296c24bee337018b6040b5ac271d22d493a2fb29a() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(14)
                                                                                store_literal_in_memory_563fae2db16567e7c8de7ab296c24bee337018b6040b5ac271d22d493a2fb29a(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_563fae2db16567e7c8de7ab296c24bee337018b6040b5ac271d22d493a2fb29a_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_563fae2db16567e7c8de7ab296c24bee337018b6040b5ac271d22d493a2fb29a()
                                                                            }

                                                                            function store_literal_in_memory_fa8b17ae9aa26749f5dc3a3bb333e0019db0c257f3541e870f73bb48b574361e(memPtr) {

                                                                                mstore(add(memPtr, 0), "bnb_smart_chain")

                                                                            }

                                                                            function copy_literal_to_memory_fa8b17ae9aa26749f5dc3a3bb333e0019db0c257f3541e870f73bb48b574361e() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(15)
                                                                                store_literal_in_memory_fa8b17ae9aa26749f5dc3a3bb333e0019db0c257f3541e870f73bb48b574361e(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_fa8b17ae9aa26749f5dc3a3bb333e0019db0c257f3541e870f73bb48b574361e_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_fa8b17ae9aa26749f5dc3a3bb333e0019db0c257f3541e870f73bb48b574361e()
                                                                            }

                                                                            function store_literal_in_memory_cb542230e53a4ffc48d33ce19295cce7f9000dbfcd3dd12a9b1e152eb1f2c90a(memPtr) {

                                                                                mstore(add(memPtr, 0), "bnb-smart-chain")

                                                                            }

                                                                            function copy_literal_to_memory_cb542230e53a4ffc48d33ce19295cce7f9000dbfcd3dd12a9b1e152eb1f2c90a() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(15)
                                                                                store_literal_in_memory_cb542230e53a4ffc48d33ce19295cce7f9000dbfcd3dd12a9b1e152eb1f2c90a(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_cb542230e53a4ffc48d33ce19295cce7f9000dbfcd3dd12a9b1e152eb1f2c90a_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_cb542230e53a4ffc48d33ce19295cce7f9000dbfcd3dd12a9b1e152eb1f2c90a()
                                                                            }

                                                                            function store_literal_in_memory_1813de9892ab9db3d0c3b0c3eed9c8b820fe0c7e205bed860e6e89f4d7f75f29(memPtr) {

                                                                                mstore(add(memPtr, 0), "bnb_smart_chain_testnet")

                                                                            }

                                                                            function copy_literal_to_memory_1813de9892ab9db3d0c3b0c3eed9c8b820fe0c7e205bed860e6e89f4d7f75f29() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(23)
                                                                                store_literal_in_memory_1813de9892ab9db3d0c3b0c3eed9c8b820fe0c7e205bed860e6e89f4d7f75f29(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_1813de9892ab9db3d0c3b0c3eed9c8b820fe0c7e205bed860e6e89f4d7f75f29_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_1813de9892ab9db3d0c3b0c3eed9c8b820fe0c7e205bed860e6e89f4d7f75f29()
                                                                            }

                                                                            function store_literal_in_memory_16de182b04188fa3afc72806ce6c2f0c8ad4b079f90da09319c4a2e7506f403f(memPtr) {

                                                                                mstore(add(memPtr, 0), "bnb-smart-chain-testnet")

                                                                            }

                                                                            function copy_literal_to_memory_16de182b04188fa3afc72806ce6c2f0c8ad4b079f90da09319c4a2e7506f403f() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(23)
                                                                                store_literal_in_memory_16de182b04188fa3afc72806ce6c2f0c8ad4b079f90da09319c4a2e7506f403f(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_16de182b04188fa3afc72806ce6c2f0c8ad4b079f90da09319c4a2e7506f403f_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_16de182b04188fa3afc72806ce6c2f0c8ad4b079f90da09319c4a2e7506f403f()
                                                                            }

                                                                            function store_literal_in_memory_847b7ed4df59b2dfcdba377bf4ac481c502926169e9af948ee2dd45c0e6df595(memPtr) {

                                                                                mstore(add(memPtr, 0), "gnosis_chain")

                                                                            }

                                                                            function copy_literal_to_memory_847b7ed4df59b2dfcdba377bf4ac481c502926169e9af948ee2dd45c0e6df595() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(12)
                                                                                store_literal_in_memory_847b7ed4df59b2dfcdba377bf4ac481c502926169e9af948ee2dd45c0e6df595(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_847b7ed4df59b2dfcdba377bf4ac481c502926169e9af948ee2dd45c0e6df595_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_847b7ed4df59b2dfcdba377bf4ac481c502926169e9af948ee2dd45c0e6df595()
                                                                            }

                                                                            function store_literal_in_memory_aaa0352933f7ca2ff9f89ab88e70b00bef753b85c8ceac462339fb3928bd7531(memPtr) {

                                                                                mstore(add(memPtr, 0), "gnosis-chain")

                                                                            }

                                                                            function copy_literal_to_memory_aaa0352933f7ca2ff9f89ab88e70b00bef753b85c8ceac462339fb3928bd7531() -> memPtr {
                                                                                memPtr := allocate_memory_array_t_string_memory_ptr(12)
                                                                                store_literal_in_memory_aaa0352933f7ca2ff9f89ab88e70b00bef753b85c8ceac462339fb3928bd7531(add(memPtr, 32))
                                                                            }

                                                                            function convert_t_stringliteral_aaa0352933f7ca2ff9f89ab88e70b00bef753b85c8ceac462339fb3928bd7531_to_t_string_memory_ptr() -> converted {
                                                                                converted := copy_literal_to_memory_aaa0352933f7ca2ff9f89ab88e70b00bef753b85c8ceac462339fb3928bd7531()
                                                                            }

                                                                            /// @ast-id 425
                                                                            /// @src 0:811:4349  "function f(string[2][] memory rpcs) public returns (uint256) {..."
                                                                            function fun_f_425(var_rpcs_68_mpos) -> var__71 {
                                                                                /// @src 0:863:870  "uint256"
                                                                                let zero_t_uint256_1 := zero_value_for_split_t_uint256()
                                                                                var__71 := zero_t_uint256_1

                                                                                /// @src 0:937:942  "31337"
                                                                                let expr_77 := 0x7a69
                                                                                /// @src 0:922:968  "Chain(\"Anvil\", 31337, \"http://127.0.0.1:8545\")"
                                                                                let expr_79_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _2_mpos := convert_t_stringliteral_1ab1bd2f543bf53e1036abfe292a89809c7285bff756db6e274686afe6fb41b4_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_79_mpos, 0), _2_mpos)
                                                                                let _3 := convert_t_rational_31337_by_1_to_t_uint256(expr_77)
                                                                                write_to_memory_t_uint256(add(expr_79_mpos, 32), _3)
                                                                                let _4_mpos := convert_t_stringliteral_308a18cf3d9de3b161a842ef1e873581d7b16a5d4ea08170e123f95d25f33fe0_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_79_mpos, 64), _4_mpos)
                                                                                /// @src 0:1008:1013  "31337"
                                                                                let expr_82 := 0x7a69
                                                                                /// @src 0:991:1039  "Chain(\"Hardhat\", 31337, \"http://127.0.0.1:8545\")"
                                                                                let expr_84_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _5_mpos := convert_t_stringliteral_586258927916cf0d904406d36da1f5f818494652192f6e9e71d4067756af388a_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_84_mpos, 0), _5_mpos)
                                                                                let _6 := convert_t_rational_31337_by_1_to_t_uint256(expr_82)
                                                                                write_to_memory_t_uint256(add(expr_84_mpos, 32), _6)
                                                                                let _7_mpos := convert_t_stringliteral_308a18cf3d9de3b161a842ef1e873581d7b16a5d4ea08170e123f95d25f33fe0_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_84_mpos, 64), _7_mpos)
                                                                                /// @src 0:1079:1080  "1"
                                                                                let expr_87 := 0x01
                                                                                /// @src 0:1062:1116  "Chain(\"Mainnet\", 1, \"https://api.mycryptoapi.com/eth\")"
                                                                                let expr_89_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _8_mpos := convert_t_stringliteral_8d646f556e5d9d6f1edcf7a39b77f5ac253776eb34efcfd688aacbee518efc26_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_89_mpos, 0), _8_mpos)
                                                                                let _9 := convert_t_rational_1_by_1_to_t_uint256(expr_87)
                                                                                write_to_memory_t_uint256(add(expr_89_mpos, 32), _9)
                                                                                let _10_mpos := convert_t_stringliteral_642d0dfd5be66fc0d93c6f4bdcf342230ac00c9a7eea5a03cf0e431c94556a8a_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_89_mpos, 64), _10_mpos)
                                                                                /// @src 0:1154:1155  "5"
                                                                                let expr_92 := 0x05
                                                                                /// @src 0:1138:1220  "Chain(\"Goerli\", 5, \"https://goerli.infura.io/v3/84842078b09946638c03157f83405213\")"
                                                                                let expr_94_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _11_mpos := convert_t_stringliteral_736fc55653a3415af498a1309898240f13c5e9e33098fa3cf9e5f2a200d14c3e_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_94_mpos, 0), _11_mpos)
                                                                                let _12 := convert_t_rational_5_by_1_to_t_uint256(expr_92)
                                                                                write_to_memory_t_uint256(add(expr_94_mpos, 32), _12)
                                                                                let _13_mpos := convert_t_stringliteral_c2d03e2021afc2d5d60147a3389a88cf92b3f908f6bb3983dd56ad3eccee2784_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_94_mpos, 64), _13_mpos)
                                                                                /// @src 0:1260:1268  "11155111"
                                                                                let expr_97 := 0xaa36a7
                                                                                /// @src 0:1243:1296  "Chain(\"Sepolia\", 11155111, \"https://rpc.sepolia.dev\")"
                                                                                let expr_99_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _14_mpos := convert_t_stringliteral_a6b54cd124a84bb64f1808905ed95fb171a09730726f85e60eefcd47a4831b27_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_99_mpos, 0), _14_mpos)
                                                                                let _15 := convert_t_rational_11155111_by_1_to_t_uint256(expr_97)
                                                                                write_to_memory_t_uint256(add(expr_99_mpos, 32), _15)
                                                                                let _16_mpos := convert_t_stringliteral_e36469e9d6da385a975d561558a2cc6fd854a99901b2f285356c4d0070d0cd11_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_99_mpos, 64), _16_mpos)
                                                                                /// @src 0:1338:1340  "10"
                                                                                let expr_102 := 0x0a
                                                                                /// @src 0:1320:1372  "Chain(\"Optimism\", 10, \"https://mainnet.optimism.io\")"
                                                                                let expr_104_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _17_mpos := convert_t_stringliteral_f997187c3c319ef9e33fa05f852d1612b66e309dc48d97a4b6b39832090a3bec_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_104_mpos, 0), _17_mpos)
                                                                                let _18 := convert_t_rational_10_by_1_to_t_uint256(expr_102)
                                                                                write_to_memory_t_uint256(add(expr_104_mpos, 32), _18)
                                                                                let _19_mpos := convert_t_stringliteral_38b9211512154272cdc8d9677b3720aef06041b8d31b5e68a6ffc7a4bb22d93e_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_104_mpos, 64), _19_mpos)
                                                                                /// @src 0:1426:1429  "420"
                                                                                let expr_107 := 0x01a4
                                                                                /// @src 0:1402:1460  "Chain(\"OptimismGoerli\", 420, \"https://goerli.optimism.io\")"
                                                                                let expr_109_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _20_mpos := convert_t_stringliteral_d9e83ba4223db8a023ae97eb487186dabb6dd9d99c932d6c6d55c3a871fd823b_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_109_mpos, 0), _20_mpos)
                                                                                let _21 := convert_t_rational_420_by_1_to_t_uint256(expr_107)
                                                                                write_to_memory_t_uint256(add(expr_109_mpos, 32), _21)
                                                                                let _22_mpos := convert_t_stringliteral_ef3dbe59ba72d73e51c1959c67c0485880270dce59b4642a5dff6497ea5e55ad_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_109_mpos, 64), _22_mpos)
                                                                                /// @src 0:1508:1513  "42161"
                                                                                let expr_112 := 0xa4b1
                                                                                /// @src 0:1487:1546  "Chain(\"ArbitrumOne\", 42161, \"https://arb1.arbitrum.io/rpc\")"
                                                                                let expr_114_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _23_mpos := convert_t_stringliteral_6df9caaa24d0aa87ccd61c51cb854d77d480b45159ae76ccd47b3ede5442512a_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_114_mpos, 0), _23_mpos)
                                                                                let _24 := convert_t_rational_42161_by_1_to_t_uint256(expr_112)
                                                                                write_to_memory_t_uint256(add(expr_114_mpos, 32), _24)
                                                                                let _25_mpos := convert_t_stringliteral_ff28c1a1bf3c117d5956efad529d0ee22dcfc0fe5cbf5a03e0bdfcc3c6cac126_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_114_mpos, 64), _25_mpos)
                                                                                /// @src 0:1606:1612  "421613"
                                                                                let expr_117 := 0x066eed
                                                                                /// @src 0:1579:1654  "Chain(\"ArbitrumOneGoerli\", 421613, \"https://goerli-rollup.arbitrum.io/rpc\")"
                                                                                let expr_119_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _26_mpos := convert_t_stringliteral_a5b4956b999f35d4a20c70f00d0cedd04e295184a6fc63feee731ba560bf3905_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_119_mpos, 0), _26_mpos)
                                                                                let _27 := convert_t_rational_421613_by_1_to_t_uint256(expr_117)
                                                                                write_to_memory_t_uint256(add(expr_119_mpos, 32), _27)
                                                                                let _28_mpos := convert_t_stringliteral_d65fa49ed6bf0763184aace821262295f8ad23c20b74cd1f836fe5e06f5dd8ea_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_119_mpos, 64), _28_mpos)
                                                                                /// @src 0:1704:1709  "42170"
                                                                                let expr_122 := 0xa4ba
                                                                                /// @src 0:1682:1742  "Chain(\"ArbitrumNova\", 42170, \"https://nova.arbitrum.io/rpc\")"
                                                                                let expr_124_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _29_mpos := convert_t_stringliteral_13e73cab871f1c9e497ebd52b23be7e33059c34106c5972ca6d5442d7f6fd702_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_124_mpos, 0), _29_mpos)
                                                                                let _30 := convert_t_rational_42170_by_1_to_t_uint256(expr_122)
                                                                                write_to_memory_t_uint256(add(expr_124_mpos, 32), _30)
                                                                                let _31_mpos := convert_t_stringliteral_a77f0a686c95785c75ada33247e30dc9ac80330a7f8eb521bebdf48f492ee4ac_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_124_mpos, 64), _31_mpos)
                                                                                /// @src 0:1782:1785  "137"
                                                                                let expr_127 := 0x89
                                                                                /// @src 0:1765:1813  "Chain(\"Polygon\", 137, \"https://polygon-rpc.com\")"
                                                                                let expr_129_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _32_mpos := convert_t_stringliteral_890af8db8ca1aa1e915857edbc2717639ebd8a22c786f9e0e776d6a1aacb5e71_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_129_mpos, 0), _32_mpos)
                                                                                let _33 := convert_t_rational_137_by_1_to_t_uint256(expr_127)
                                                                                write_to_memory_t_uint256(add(expr_129_mpos, 32), _33)
                                                                                let _34_mpos := convert_t_stringliteral_fda46ab670b83929623b4aa9bcfa97ff7b7376fa90a24a450a8561482232c5c0_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_129_mpos, 64), _34_mpos)
                                                                                /// @src 0:1865:1870  "80001"
                                                                                let expr_132 := 0x013881
                                                                                /// @src 0:1842:1905  "Chain(\"PolygonMumbai\", 80001, \"https://rpc-mumbai.matic.today\")"
                                                                                let expr_134_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _35_mpos := convert_t_stringliteral_b679d1334e201410faae95031e02547ebf38762fd30bbdb02e972f9620e68b0c_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_134_mpos, 0), _35_mpos)
                                                                                let _36 := convert_t_rational_80001_by_1_to_t_uint256(expr_132)
                                                                                write_to_memory_t_uint256(add(expr_134_mpos, 32), _36)
                                                                                let _37_mpos := convert_t_stringliteral_f106af479a6c11cecfa2b74ea0e8c7e413c6e6ff201ebf6b50d3261e370192f7_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_134_mpos, 64), _37_mpos)
                                                                                /// @src 0:1949:1954  "43114"
                                                                                let expr_137 := 0xa86a
                                                                                /// @src 0:1930:1996  "Chain(\"Avalanche\", 43114, \"https://api.avax.network/ext/bc/C/rpc\")"
                                                                                let expr_139_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _38_mpos := convert_t_stringliteral_6585177c3aba6cb7ffc0a37e831a958c4ee9278e4c62c7bdad7175ca09883c40_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_139_mpos, 0), _38_mpos)
                                                                                let _39 := convert_t_rational_43114_by_1_to_t_uint256(expr_137)
                                                                                write_to_memory_t_uint256(add(expr_139_mpos, 32), _39)
                                                                                let _40_mpos := convert_t_stringliteral_429365eac47ed6b261c38927d854e528b743fc5a678b1b4ba631c511f305886a_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_139_mpos, 64), _40_mpos)
                                                                                /// @src 0:2048:2053  "43113"
                                                                                let expr_142 := 0xa869
                                                                                /// @src 0:2025:2100  "Chain(\"AvalancheFuji\", 43113, \"https://api.avax-test.network/ext/bc/C/rpc\")"
                                                                                let expr_144_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _41_mpos := convert_t_stringliteral_fdf69378c46b8ff891cba7e67a64ab16528e8dd2967a6899493af515997356c9_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_144_mpos, 0), _41_mpos)
                                                                                let _42 := convert_t_rational_43113_by_1_to_t_uint256(expr_142)
                                                                                write_to_memory_t_uint256(add(expr_144_mpos, 32), _42)
                                                                                let _43_mpos := convert_t_stringliteral_d6621ea822eabf6c190358ea82de0c52d3503dcce8117b3366a8a3bd96eb422d_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_144_mpos, 64), _43_mpos)
                                                                                /// @src 0:2152:2154  "56"
                                                                                let expr_147 := 0x38
                                                                                /// @src 0:2129:2192  "Chain(\"BnbSmartChain\", 56, \"https://bsc-dataseed1.binance.org\")"
                                                                                let expr_149_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _44_mpos := convert_t_stringliteral_d4fe9019651d2cbc3862fc4674c442a483623b82a7dce2ac7c28138180d528c5_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_149_mpos, 0), _44_mpos)
                                                                                let _45 := convert_t_rational_56_by_1_to_t_uint256(expr_147)
                                                                                write_to_memory_t_uint256(add(expr_149_mpos, 32), _45)
                                                                                let _46_mpos := convert_t_stringliteral_e2b4215bd50ab260c8c9f18e36ea07b1f952450853bcf024123d5767a40d4719_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_149_mpos, 64), _46_mpos)
                                                                                /// @src 0:2258:2260  "97"
                                                                                let expr_152 := 0x61
                                                                                /// @src 0:2228:2311  "Chain(\"BnbSmartChainTestnet\", 97, \"https://data-seed-prebsc-1-s1.binance.org:8545\")"
                                                                                let expr_154_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _47_mpos := convert_t_stringliteral_c6b8390686af629e8bd6173ee298c65730bbac6941fb18507d79305cdc961824_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_154_mpos, 0), _47_mpos)
                                                                                let _48 := convert_t_rational_97_by_1_to_t_uint256(expr_152)
                                                                                write_to_memory_t_uint256(add(expr_154_mpos, 32), _48)
                                                                                let _49_mpos := convert_t_stringliteral_06894ce500210f386acd0844767c4ae19c623595ce2845e4d185bcd99fc926dc_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_154_mpos, 64), _49_mpos)
                                                                                /// @src 0:2359:2362  "100"
                                                                                let expr_157 := 0x64
                                                                                /// @src 0:2338:2394  "Chain(\"GnosisChain\", 100, \"https://rpc.gnosischain.com\")"
                                                                                let expr_159_mpos := allocate_memory_struct_t_struct$_Chain_$8_storage_ptr()
                                                                                let _50_mpos := convert_t_stringliteral_589ad15416facb73658c8b7c701776721413377d931b9f2915448613d693ae89_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_159_mpos, 0), _50_mpos)
                                                                                let _51 := convert_t_rational_100_by_1_to_t_uint256(expr_157)
                                                                                write_to_memory_t_uint256(add(expr_159_mpos, 32), _51)
                                                                                let _52_mpos := convert_t_stringliteral_127e02590d58e22164456f76136047039faabc2ca27eb41939081a3e775b50df_to_t_string_memory_ptr()
                                                                                write_to_memory_t_string_memory_ptr(add(expr_159_mpos, 64), _52_mpos)
                                                                                /// @src 0:894:2405  "Chains({..."
                                                                                let expr_160_mpos := allocate_memory_struct_t_struct$_Chains_$60_storage_ptr()
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 0), expr_79_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 32), expr_84_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 64), expr_89_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 96), expr_94_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 128), expr_99_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 160), expr_104_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 192), expr_109_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 224), expr_114_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 256), expr_119_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 288), expr_124_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 320), expr_129_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 352), expr_134_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 384), expr_139_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 416), expr_144_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 448), expr_149_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 480), expr_154_mpos)
                                                                                write_to_memory_t_struct$_Chain_$8_memory_ptr(add(expr_160_mpos, 512), expr_159_mpos)
                                                                                /// @src 0:882:2405  "stdChains = Chains({..."
                                                                                update_storage_value_offset_0t_struct$_Chains_$60_memory_ptr_to_t_struct$_Chains_$60_storage(0x00, expr_160_mpos)
                                                                                let _53_slot := 0x00
                                                                                let expr_161_slot := _53_slot
                                                                                /// @src 0:2416:4325  "for (uint256 i = 0; i < rpcs.length; i++) {..."
                                                                                for {
                                                                                    /// @src 0:2433:2434  "0"
                                                                                    let expr_165 := 0x00
                                                                                    /// @src 0:2421:2434  "uint256 i = 0"
                                                                                    let var_i_164 := convert_t_rational_0_by_1_to_t_uint256(expr_165)
                                                                                    } 1 {
                                                                                    /// @src 0:2453:2456  "i++"
                                                                                    let _55 := var_i_164
                                                                                    let _54 := increment_wrapping_t_uint256(_55)
                                                                                    var_i_164 := _54
                                                                                    let expr_172 := _55
                                                                                }
                                                                                {
                                                                                    /// @src 0:2436:2437  "i"
                                                                                    let _56 := var_i_164
                                                                                    let expr_167 := _56
                                                                                    /// @src 0:2440:2444  "rpcs"
                                                                                    let _57_mpos := var_rpcs_68_mpos
                                                                                    let expr_168_mpos := _57_mpos
                                                                                    /// @src 0:2440:2451  "rpcs.length"
                                                                                    let expr_169 := array_length_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(expr_168_mpos)
                                                                                    /// @src 0:2436:2451  "i < rpcs.length"
                                                                                    let expr_170 := lt(cleanup_t_uint256(expr_167), cleanup_t_uint256(expr_169))
                                                                                    if iszero(expr_170) { break }
                                                                                    /// @src 0:2518:2522  "rpcs"
                                                                                    let _58_mpos := var_rpcs_68_mpos
                                                                                    let expr_178_mpos := _58_mpos
                                                                                    /// @src 0:2523:2524  "i"
                                                                                    let _59 := var_i_164
                                                                                    let expr_179 := _59
                                                                                    /// @src 0:2518:2525  "rpcs[i]"
                                                                                    let _60_mpos := mload(memory_array_index_access_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(expr_178_mpos, expr_179))
                                                                                    let expr_180_mpos := _60_mpos
                                                                                    /// @src 0:2526:2527  "0"
                                                                                    let expr_181 := 0x00
                                                                                    /// @src 0:2518:2528  "rpcs[i][0]"
                                                                                    let _61_mpos := mload(memory_array_index_access_t_array$_t_string_memory_ptr_$2_memory_ptr(expr_180_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_181)))
                                                                                    let expr_182_mpos := _61_mpos
                                                                                    /// @src 0:2517:2541  "(rpcs[i][0], rpcs[i][1])"
                                                                                    let expr_188_component_1_mpos := expr_182_mpos
                                                                                    /// @src 0:2530:2534  "rpcs"
                                                                                    let _62_mpos := var_rpcs_68_mpos
                                                                                    let expr_183_mpos := _62_mpos
                                                                                    /// @src 0:2535:2536  "i"
                                                                                    let _63 := var_i_164
                                                                                    let expr_184 := _63
                                                                                    /// @src 0:2530:2537  "rpcs[i]"
                                                                                    let _64_mpos := mload(memory_array_index_access_t_array$_t_array$_t_string_memory_ptr_$2_memory_ptr_$dyn_memory_ptr(expr_183_mpos, expr_184))
                                                                                    let expr_185_mpos := _64_mpos
                                                                                    /// @src 0:2538:2539  "1"
                                                                                    let expr_186 := 0x01
                                                                                    /// @src 0:2530:2540  "rpcs[i][1]"
                                                                                    let _65_mpos := mload(memory_array_index_access_t_array$_t_string_memory_ptr_$2_memory_ptr(expr_185_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_186)))
                                                                                    let expr_187_mpos := _65_mpos
                                                                                    /// @src 0:2517:2541  "(rpcs[i][0], rpcs[i][1])"
                                                                                    let expr_188_component_2_mpos := expr_187_mpos
                                                                                    /// @src 0:2472:2541  "(string memory name, string memory rpcUrl) = (rpcs[i][0], rpcs[i][1])"
                                                                                    let var_name_175_mpos := expr_188_component_1_mpos
                                                                                    let var_rpcUrl_177_mpos := expr_188_component_2_mpos
                                                                                    /// @src 0:2606:2610  "name"
                                                                                    let _66_mpos := var_name_175_mpos
                                                                                    let expr_191_mpos := _66_mpos
                                                                                    /// @src 0:2598:2620  "isEqual(name, \"anvil\")"
                                                                                    let _67_mpos := convert_t_stringliteral_a3d859b77cebfdf9da3b485434702c5090ff9e91b7b86c670ebb15f8a00eb72b_to_t_string_memory_ptr()
                                                                                    let expr_193 := fun_isEqual_449(expr_191_mpos, _67_mpos)
                                                                                    /// @src 0:2594:4277  "if (isEqual(name, \"anvil\")) stdChains.Anvil.rpcUrl = rpcUrl;..."
                                                                                    switch expr_193
                                                                                    case 0 {
                                                                                        /// @src 0:2684:2688  "name"
                                                                                        let _68_mpos := var_name_175_mpos
                                                                                        let expr_203_mpos := _68_mpos
                                                                                        /// @src 0:2676:2700  "isEqual(name, \"hardhat\")"
                                                                                        let _69_mpos := convert_t_stringliteral_41d010e4d55c1f680ac8d1df51d62770f05ab44e7687503f884ef0629dbf7ab0_to_t_string_memory_ptr()
                                                                                        let expr_205 := fun_isEqual_449(expr_203_mpos, _69_mpos)
                                                                                        /// @src 0:2672:4277  "if (isEqual(name, \"hardhat\")) stdChains.Hardhat.rpcUrl = rpcUrl;..."
                                                                                        switch expr_205
                                                                                        case 0 {
                                                                                            /// @src 0:2766:2770  "name"
                                                                                            let _70_mpos := var_name_175_mpos
                                                                                            let expr_215_mpos := _70_mpos
                                                                                            /// @src 0:2758:2782  "isEqual(name, \"mainnet\")"
                                                                                            let _71_mpos := convert_t_stringliteral_7beafa94c8bfb8f1c1a43104a34f72c524268aafbfe83bff17485539345c66ff_to_t_string_memory_ptr()
                                                                                            let expr_217 := fun_isEqual_449(expr_215_mpos, _71_mpos)
                                                                                            /// @src 0:2754:4277  "if (isEqual(name, \"mainnet\")) stdChains.Mainnet.rpcUrl = rpcUrl;..."
                                                                                            switch expr_217
                                                                                            case 0 {
                                                                                                /// @src 0:2848:2852  "name"
                                                                                                let _72_mpos := var_name_175_mpos
                                                                                                let expr_227_mpos := _72_mpos
                                                                                                /// @src 0:2840:2863  "isEqual(name, \"goerli\")"
                                                                                                let _73_mpos := convert_t_stringliteral_e24dd81d18a6354d406364c0fc25f4237534cee10d0c3099c9c2a6aa50d7dd0a_to_t_string_memory_ptr()
                                                                                                let expr_229 := fun_isEqual_449(expr_227_mpos, _73_mpos)
                                                                                                /// @src 0:2836:4277  "if (isEqual(name, \"goerli\")) stdChains.Goerli.rpcUrl = rpcUrl;..."
                                                                                                switch expr_229
                                                                                                case 0 {
                                                                                                    /// @src 0:2928:2932  "name"
                                                                                                    let _74_mpos := var_name_175_mpos
                                                                                                    let expr_239_mpos := _74_mpos
                                                                                                    /// @src 0:2920:2944  "isEqual(name, \"sepolia\")"
                                                                                                    let _75_mpos := convert_t_stringliteral_e1f58df0b51f34f4835aba989f0aa2f2e66218cab53207bafd3dbf37270bd39a_to_t_string_memory_ptr()
                                                                                                    let expr_241 := fun_isEqual_449(expr_239_mpos, _75_mpos)
                                                                                                    /// @src 0:2916:4277  "if (isEqual(name, \"sepolia\")) stdChains.Sepolia.rpcUrl = rpcUrl;..."
                                                                                                    switch expr_241
                                                                                                    case 0 {
                                                                                                        /// @src 0:3010:3014  "name"
                                                                                                        let _76_mpos := var_name_175_mpos
                                                                                                        let expr_251_mpos := _76_mpos
                                                                                                        /// @src 0:3002:3027  "isEqual(name, \"optimism\")"
                                                                                                        let _77_mpos := convert_t_stringliteral_09d0f27659ee556a8134fa56941e42400e672aecc2d4cfc61cdb0fcea4590e05_to_t_string_memory_ptr()
                                                                                                        let expr_253 := fun_isEqual_449(expr_251_mpos, _77_mpos)
                                                                                                        /// @src 0:2998:4277  "if (isEqual(name, \"optimism\")) stdChains.Optimism.rpcUrl = rpcUrl;..."
                                                                                                        switch expr_253
                                                                                                        case 0 {
                                                                                                            /// @src 0:3094:3098  "name"
                                                                                                            let _78_mpos := var_name_175_mpos
                                                                                                            let expr_263_mpos := _78_mpos
                                                                                                            /// @src 0:3086:3137  "isEqual(name, \"optimism_goerli\", \"optimism-goerli\")"
                                                                                                            let _79_mpos := convert_t_stringliteral_ecf3b2cc678a701bfbf2329b12e6edf723c3043a32339c2eea2efb7c9533c09c_to_t_string_memory_ptr()
                                                                                                            let _80_mpos := convert_t_stringliteral_d68b5da1d2df2dbe4764ed9e76bdeb201ef1878643e994b3a46689de6ddf2672_to_t_string_memory_ptr()
                                                                                                            let expr_266 := fun_isEqual_489(expr_263_mpos, _79_mpos, _80_mpos)
                                                                                                            /// @src 0:3082:4277  "if (isEqual(name, \"optimism_goerli\", \"optimism-goerli\")) stdChains.OptimismGoerli.rpcUrl = rpcUrl;..."
                                                                                                            switch expr_266
                                                                                                            case 0 {
                                                                                                                /// @src 0:3210:3214  "name"
                                                                                                                let _81_mpos := var_name_175_mpos
                                                                                                                let expr_276_mpos := _81_mpos
                                                                                                                /// @src 0:3202:3247  "isEqual(name, \"arbitrum_one\", \"arbitrum-one\")"
                                                                                                                let _82_mpos := convert_t_stringliteral_e4b44cea7839e0679ac5072602932da9b25ebfb3a9ac42625d9c583a7b6b2eb4_to_t_string_memory_ptr()
                                                                                                                let _83_mpos := convert_t_stringliteral_5c0fe22876ca849b8468b279a80ab02e01b5927ecd890a0e70c39380fa1d9b88_to_t_string_memory_ptr()
                                                                                                                let expr_279 := fun_isEqual_489(expr_276_mpos, _82_mpos, _83_mpos)
                                                                                                                /// @src 0:3198:4277  "if (isEqual(name, \"arbitrum_one\", \"arbitrum-one\")) stdChains.ArbitrumOne.rpcUrl = rpcUrl;..."
                                                                                                                switch expr_279
                                                                                                                case 0 {
                                                                                                                    /// @src 0:3317:3321  "name"
                                                                                                                    let _84_mpos := var_name_175_mpos
                                                                                                                    let expr_289_mpos := _84_mpos
                                                                                                                    /// @src 0:3309:3368  "isEqual(name, \"arbitrum_one_goerli\", \"arbitrum-one-goerli\")"
                                                                                                                    let _85_mpos := convert_t_stringliteral_9c5068a3a5cdbd747f13200fdd6f590995f99bde231a5dcfa62a5f92af1dc3d4_to_t_string_memory_ptr()
                                                                                                                    let _86_mpos := convert_t_stringliteral_3e7ef79dc818f58845fdbe1d5ebeafa39e4565fbfca7e1fc93bcda3fa9bd367e_to_t_string_memory_ptr()
                                                                                                                    let expr_292 := fun_isEqual_489(expr_289_mpos, _85_mpos, _86_mpos)
                                                                                                                    /// @src 0:3305:4277  "if (isEqual(name, \"arbitrum_one_goerli\", \"arbitrum-one-goerli\")) stdChains.ArbitrumOneGoerli.rpcUrl = rpcUrl;..."
                                                                                                                    switch expr_292
                                                                                                                    case 0 {
                                                                                                                        /// @src 0:3444:3448  "name"
                                                                                                                        let _87_mpos := var_name_175_mpos
                                                                                                                        let expr_302_mpos := _87_mpos
                                                                                                                        /// @src 0:3436:3483  "isEqual(name, \"arbitrum_nova\", \"arbitrum-nova\")"
                                                                                                                        let _88_mpos := convert_t_stringliteral_9338ed1403277416ebb39d4e992ebf5c49e6dded5ec79963ea5fc261cbd7fdac_to_t_string_memory_ptr()
                                                                                                                        let _89_mpos := convert_t_stringliteral_e520ee08b2577ac8be4e654f7d92e8715f162ac40a35c745c50be017a9eb8a06_to_t_string_memory_ptr()
                                                                                                                        let expr_305 := fun_isEqual_489(expr_302_mpos, _88_mpos, _89_mpos)
                                                                                                                        /// @src 0:3432:4277  "if (isEqual(name, \"arbitrum_nova\", \"arbitrum-nova\")) stdChains.ArbitrumNova.rpcUrl = rpcUrl;..."
                                                                                                                        switch expr_305
                                                                                                                        case 0 {
                                                                                                                            /// @src 0:3554:3558  "name"
                                                                                                                            let _90_mpos := var_name_175_mpos
                                                                                                                            let expr_315_mpos := _90_mpos
                                                                                                                            /// @src 0:3546:3570  "isEqual(name, \"polygon\")"
                                                                                                                            let _91_mpos := convert_t_stringliteral_ac63fa1fe369e75c38d62f0f4d465b48b3cd5159f0fb416332899402031d1408_to_t_string_memory_ptr()
                                                                                                                            let expr_317 := fun_isEqual_449(expr_315_mpos, _91_mpos)
                                                                                                                            /// @src 0:3542:4277  "if (isEqual(name, \"polygon\")) stdChains.Polygon.rpcUrl = rpcUrl;..."
                                                                                                                            switch expr_317
                                                                                                                            case 0 {
                                                                                                                                /// @src 0:3636:3640  "name"
                                                                                                                                let _92_mpos := var_name_175_mpos
                                                                                                                                let expr_327_mpos := _92_mpos
                                                                                                                                /// @src 0:3628:3677  "isEqual(name, \"polygon_mumbai\", \"polygon-mumbai\")"
                                                                                                                                let _93_mpos := convert_t_stringliteral_a7308364e169f5f44de3933205a00d3632b7366702c91dff3452b4dbf6ed70f0_to_t_string_memory_ptr()
                                                                                                                                let _94_mpos := convert_t_stringliteral_d4ba5060ac26b70957e2b8e70e404ab62930e333eae52a8a727b41630a82ffb8_to_t_string_memory_ptr()
                                                                                                                                let expr_330 := fun_isEqual_489(expr_327_mpos, _93_mpos, _94_mpos)
                                                                                                                                /// @src 0:3624:4277  "if (isEqual(name, \"polygon_mumbai\", \"polygon-mumbai\")) stdChains.PolygonMumbai.rpcUrl = rpcUrl;..."
                                                                                                                                switch expr_330
                                                                                                                                case 0 {
                                                                                                                                    /// @src 0:3749:3753  "name"
                                                                                                                                    let _95_mpos := var_name_175_mpos
                                                                                                                                    let expr_340_mpos := _95_mpos
                                                                                                                                    /// @src 0:3741:3767  "isEqual(name, \"avalanche\")"
                                                                                                                                    let _96_mpos := convert_t_stringliteral_6e8b0d92516ee4289145e3b78cea58daac177b1c618beeedbc6cdabd388a6e55_to_t_string_memory_ptr()
                                                                                                                                    let expr_342 := fun_isEqual_449(expr_340_mpos, _96_mpos)
                                                                                                                                    /// @src 0:3737:4277  "if (isEqual(name, \"avalanche\")) stdChains.Avalanche.rpcUrl = rpcUrl;..."
                                                                                                                                    switch expr_342
                                                                                                                                    case 0 {
                                                                                                                                        /// @src 0:3835:3839  "name"
                                                                                                                                        let _97_mpos := var_name_175_mpos
                                                                                                                                        let expr_352_mpos := _97_mpos
                                                                                                                                        /// @src 0:3827:3876  "isEqual(name, \"avalanche_fuji\", \"avalanche-fuji\")"
                                                                                                                                        let _98_mpos := convert_t_stringliteral_a1920d2f80060f1c83444622c7eb5adf4484bed8a537b8d13eae53bd800aa692_to_t_string_memory_ptr()
                                                                                                                                        let _99_mpos := convert_t_stringliteral_563fae2db16567e7c8de7ab296c24bee337018b6040b5ac271d22d493a2fb29a_to_t_string_memory_ptr()
                                                                                                                                        let expr_355 := fun_isEqual_489(expr_352_mpos, _98_mpos, _99_mpos)
                                                                                                                                        /// @src 0:3823:4277  "if (isEqual(name, \"avalanche_fuji\", \"avalanche-fuji\")) stdChains.AvalancheFuji.rpcUrl = rpcUrl;..."
                                                                                                                                        switch expr_355
                                                                                                                                        case 0 {
                                                                                                                                            /// @src 0:3948:3952  "name"
                                                                                                                                            let _100_mpos := var_name_175_mpos
                                                                                                                                            let expr_365_mpos := _100_mpos
                                                                                                                                            /// @src 0:3940:3991  "isEqual(name, \"bnb_smart_chain\", \"bnb-smart-chain\")"
                                                                                                                                            let _101_mpos := convert_t_stringliteral_fa8b17ae9aa26749f5dc3a3bb333e0019db0c257f3541e870f73bb48b574361e_to_t_string_memory_ptr()
                                                                                                                                            let _102_mpos := convert_t_stringliteral_cb542230e53a4ffc48d33ce19295cce7f9000dbfcd3dd12a9b1e152eb1f2c90a_to_t_string_memory_ptr()
                                                                                                                                            let expr_368 := fun_isEqual_489(expr_365_mpos, _101_mpos, _102_mpos)
                                                                                                                                            /// @src 0:3936:4277  "if (isEqual(name, \"bnb_smart_chain\", \"bnb-smart-chain\")) stdChains.BnbSmartChain.rpcUrl = rpcUrl;..."
                                                                                                                                            switch expr_368
                                                                                                                                            case 0 {
                                                                                                                                                /// @src 0:4063:4067  "name"
                                                                                                                                                let _103_mpos := var_name_175_mpos
                                                                                                                                                let expr_378_mpos := _103_mpos
                                                                                                                                                /// @src 0:4055:4122  "isEqual(name, \"bnb_smart_chain_testnet\", \"bnb-smart-chain-testnet\")"
                                                                                                                                                let _104_mpos := convert_t_stringliteral_1813de9892ab9db3d0c3b0c3eed9c8b820fe0c7e205bed860e6e89f4d7f75f29_to_t_string_memory_ptr()
                                                                                                                                                let _105_mpos := convert_t_stringliteral_16de182b04188fa3afc72806ce6c2f0c8ad4b079f90da09319c4a2e7506f403f_to_t_string_memory_ptr()
                                                                                                                                                let expr_381 := fun_isEqual_489(expr_378_mpos, _104_mpos, _105_mpos)
                                                                                                                                                /// @src 0:4051:4277  "if (isEqual(name, \"bnb_smart_chain_testnet\", \"bnb-smart-chain-testnet\")) stdChains.BnbSmartChainTestnet.rpcUrl = rpcUrl;..."
                                                                                                                                                switch expr_381
                                                                                                                                                case 0 {
                                                                                                                                                    /// @src 0:4201:4205  "name"
                                                                                                                                                    let _106_mpos := var_name_175_mpos
                                                                                                                                                    let expr_391_mpos := _106_mpos
                                                                                                                                                    /// @src 0:4193:4238  "isEqual(name, \"gnosis_chain\", \"gnosis-chain\")"
                                                                                                                                                    let _107_mpos := convert_t_stringliteral_847b7ed4df59b2dfcdba377bf4ac481c502926169e9af948ee2dd45c0e6df595_to_t_string_memory_ptr()
                                                                                                                                                    let _108_mpos := convert_t_stringliteral_aaa0352933f7ca2ff9f89ab88e70b00bef753b85c8ceac462339fb3928bd7531_to_t_string_memory_ptr()
                                                                                                                                                    let expr_394 := fun_isEqual_489(expr_391_mpos, _107_mpos, _108_mpos)
                                                                                                                                                    /// @src 0:4189:4277  "if (isEqual(name, \"gnosis_chain\", \"gnosis-chain\")) stdChains.GnosisChain.rpcUrl = rpcUrl"
                                                                                                                                                    if expr_394 {
                                                                                                                                                        /// @src 0:4271:4277  "rpcUrl"
                                                                                                                                                        let _109_mpos := var_rpcUrl_177_mpos
                                                                                                                                                        let expr_400_mpos := _109_mpos
                                                                                                                                                        /// @src 0:4240:4249  "stdChains"
                                                                                                                                                        let _110_slot := 0x00
                                                                                                                                                        let expr_395_slot := _110_slot
                                                                                                                                                        /// @src 0:4240:4261  "stdChains.GnosisChain"
                                                                                                                                                        let _111 := add(expr_395_slot, 48)
                                                                                                                                                        let _112_slot := _111
                                                                                                                                                        let expr_398_slot := _112_slot
                                                                                                                                                        /// @src 0:4240:4268  "stdChains.GnosisChain.rpcUrl"
                                                                                                                                                        let _113 := add(expr_398_slot, 2)
                                                                                                                                                        /// @src 0:4240:4277  "stdChains.GnosisChain.rpcUrl = rpcUrl"
                                                                                                                                                        update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_113, expr_400_mpos)
                                                                                                                                                        let _114_slot := _113
                                                                                                                                                        let expr_401_slot := _114_slot
                                                                                                                                                        /// @src 0:4189:4277  "if (isEqual(name, \"gnosis_chain\", \"gnosis-chain\")) stdChains.GnosisChain.rpcUrl = rpcUrl"
                                                                                                                                                    }
                                                                                                                                                    /// @src 0:4051:4277  "if (isEqual(name, \"bnb_smart_chain_testnet\", \"bnb-smart-chain-testnet\")) stdChains.BnbSmartChainTestnet.rpcUrl = rpcUrl;..."
                                                                                                                                                }
                                                                                                                                                default {
                                                                                                                                                    /// @src 0:4164:4170  "rpcUrl"
                                                                                                                                                    let _115_mpos := var_rpcUrl_177_mpos
                                                                                                                                                    let expr_387_mpos := _115_mpos
                                                                                                                                                    /// @src 0:4124:4133  "stdChains"
                                                                                                                                                    let _116_slot := 0x00
                                                                                                                                                    let expr_382_slot := _116_slot
                                                                                                                                                    /// @src 0:4124:4154  "stdChains.BnbSmartChainTestnet"
                                                                                                                                                    let _117 := add(expr_382_slot, 45)
                                                                                                                                                    let _118_slot := _117
                                                                                                                                                    let expr_385_slot := _118_slot
                                                                                                                                                    /// @src 0:4124:4161  "stdChains.BnbSmartChainTestnet.rpcUrl"
                                                                                                                                                    let _119 := add(expr_385_slot, 2)
                                                                                                                                                    /// @src 0:4124:4170  "stdChains.BnbSmartChainTestnet.rpcUrl = rpcUrl"
                                                                                                                                                    update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_119, expr_387_mpos)
                                                                                                                                                    let _120_slot := _119
                                                                                                                                                    let expr_388_slot := _120_slot
                                                                                                                                                    /// @src 0:4051:4277  "if (isEqual(name, \"bnb_smart_chain_testnet\", \"bnb-smart-chain-testnet\")) stdChains.BnbSmartChainTestnet.rpcUrl = rpcUrl;..."
                                                                                                                                                }
                                                                                                                                                /// @src 0:3936:4277  "if (isEqual(name, \"bnb_smart_chain\", \"bnb-smart-chain\")) stdChains.BnbSmartChain.rpcUrl = rpcUrl;..."
                                                                                                                                            }
                                                                                                                                            default {
                                                                                                                                                /// @src 0:4026:4032  "rpcUrl"
                                                                                                                                                let _121_mpos := var_rpcUrl_177_mpos
                                                                                                                                                let expr_374_mpos := _121_mpos
                                                                                                                                                /// @src 0:3993:4002  "stdChains"
                                                                                                                                                let _122_slot := 0x00
                                                                                                                                                let expr_369_slot := _122_slot
                                                                                                                                                /// @src 0:3993:4016  "stdChains.BnbSmartChain"
                                                                                                                                                let _123 := add(expr_369_slot, 42)
                                                                                                                                                let _124_slot := _123
                                                                                                                                                let expr_372_slot := _124_slot
                                                                                                                                                /// @src 0:3993:4023  "stdChains.BnbSmartChain.rpcUrl"
                                                                                                                                                let _125 := add(expr_372_slot, 2)
                                                                                                                                                /// @src 0:3993:4032  "stdChains.BnbSmartChain.rpcUrl = rpcUrl"
                                                                                                                                                update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_125, expr_374_mpos)
                                                                                                                                                let _126_slot := _125
                                                                                                                                                let expr_375_slot := _126_slot
                                                                                                                                                /// @src 0:3936:4277  "if (isEqual(name, \"bnb_smart_chain\", \"bnb-smart-chain\")) stdChains.BnbSmartChain.rpcUrl = rpcUrl;..."
                                                                                                                                            }
                                                                                                                                            /// @src 0:3823:4277  "if (isEqual(name, \"avalanche_fuji\", \"avalanche-fuji\")) stdChains.AvalancheFuji.rpcUrl = rpcUrl;..."
                                                                                                                                        }
                                                                                                                                        default {
                                                                                                                                            /// @src 0:3911:3917  "rpcUrl"
                                                                                                                                            let _127_mpos := var_rpcUrl_177_mpos
                                                                                                                                            let expr_361_mpos := _127_mpos
                                                                                                                                            /// @src 0:3878:3887  "stdChains"
                                                                                                                                            let _128_slot := 0x00
                                                                                                                                            let expr_356_slot := _128_slot
                                                                                                                                            /// @src 0:3878:3901  "stdChains.AvalancheFuji"
                                                                                                                                            let _129 := add(expr_356_slot, 39)
                                                                                                                                            let _130_slot := _129
                                                                                                                                            let expr_359_slot := _130_slot
                                                                                                                                            /// @src 0:3878:3908  "stdChains.AvalancheFuji.rpcUrl"
                                                                                                                                            let _131 := add(expr_359_slot, 2)
                                                                                                                                            /// @src 0:3878:3917  "stdChains.AvalancheFuji.rpcUrl = rpcUrl"
                                                                                                                                            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_131, expr_361_mpos)
                                                                                                                                            let _132_slot := _131
                                                                                                                                            let expr_362_slot := _132_slot
                                                                                                                                            /// @src 0:3823:4277  "if (isEqual(name, \"avalanche_fuji\", \"avalanche-fuji\")) stdChains.AvalancheFuji.rpcUrl = rpcUrl;..."
                                                                                                                                        }
                                                                                                                                        /// @src 0:3737:4277  "if (isEqual(name, \"avalanche\")) stdChains.Avalanche.rpcUrl = rpcUrl;..."
                                                                                                                                    }
                                                                                                                                    default {
                                                                                                                                        /// @src 0:3798:3804  "rpcUrl"
                                                                                                                                        let _133_mpos := var_rpcUrl_177_mpos
                                                                                                                                        let expr_348_mpos := _133_mpos
                                                                                                                                        /// @src 0:3769:3778  "stdChains"
                                                                                                                                        let _134_slot := 0x00
                                                                                                                                        let expr_343_slot := _134_slot
                                                                                                                                        /// @src 0:3769:3788  "stdChains.Avalanche"
                                                                                                                                        let _135 := add(expr_343_slot, 36)
                                                                                                                                        let _136_slot := _135
                                                                                                                                        let expr_346_slot := _136_slot
                                                                                                                                        /// @src 0:3769:3795  "stdChains.Avalanche.rpcUrl"
                                                                                                                                        let _137 := add(expr_346_slot, 2)
                                                                                                                                        /// @src 0:3769:3804  "stdChains.Avalanche.rpcUrl = rpcUrl"
                                                                                                                                        update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_137, expr_348_mpos)
                                                                                                                                        let _138_slot := _137
                                                                                                                                        let expr_349_slot := _138_slot
                                                                                                                                        /// @src 0:3737:4277  "if (isEqual(name, \"avalanche\")) stdChains.Avalanche.rpcUrl = rpcUrl;..."
                                                                                                                                    }
                                                                                                                                    /// @src 0:3624:4277  "if (isEqual(name, \"polygon_mumbai\", \"polygon-mumbai\")) stdChains.PolygonMumbai.rpcUrl = rpcUrl;..."
                                                                                                                                }
                                                                                                                                default {
                                                                                                                                    /// @src 0:3712:3718  "rpcUrl"
                                                                                                                                    let _139_mpos := var_rpcUrl_177_mpos
                                                                                                                                    let expr_336_mpos := _139_mpos
                                                                                                                                    /// @src 0:3679:3688  "stdChains"
                                                                                                                                    let _140_slot := 0x00
                                                                                                                                    let expr_331_slot := _140_slot
                                                                                                                                    /// @src 0:3679:3702  "stdChains.PolygonMumbai"
                                                                                                                                    let _141 := add(expr_331_slot, 33)
                                                                                                                                    let _142_slot := _141
                                                                                                                                    let expr_334_slot := _142_slot
                                                                                                                                    /// @src 0:3679:3709  "stdChains.PolygonMumbai.rpcUrl"
                                                                                                                                    let _143 := add(expr_334_slot, 2)
                                                                                                                                    /// @src 0:3679:3718  "stdChains.PolygonMumbai.rpcUrl = rpcUrl"
                                                                                                                                    update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_143, expr_336_mpos)
                                                                                                                                    let _144_slot := _143
                                                                                                                                    let expr_337_slot := _144_slot
                                                                                                                                    /// @src 0:3624:4277  "if (isEqual(name, \"polygon_mumbai\", \"polygon-mumbai\")) stdChains.PolygonMumbai.rpcUrl = rpcUrl;..."
                                                                                                                                }
                                                                                                                                /// @src 0:3542:4277  "if (isEqual(name, \"polygon\")) stdChains.Polygon.rpcUrl = rpcUrl;..."
                                                                                                                            }
                                                                                                                            default {
                                                                                                                                /// @src 0:3599:3605  "rpcUrl"
                                                                                                                                let _145_mpos := var_rpcUrl_177_mpos
                                                                                                                                let expr_323_mpos := _145_mpos
                                                                                                                                /// @src 0:3572:3581  "stdChains"
                                                                                                                                let _146_slot := 0x00
                                                                                                                                let expr_318_slot := _146_slot
                                                                                                                                /// @src 0:3572:3589  "stdChains.Polygon"
                                                                                                                                let _147 := add(expr_318_slot, 30)
                                                                                                                                let _148_slot := _147
                                                                                                                                let expr_321_slot := _148_slot
                                                                                                                                /// @src 0:3572:3596  "stdChains.Polygon.rpcUrl"
                                                                                                                                let _149 := add(expr_321_slot, 2)
                                                                                                                                /// @src 0:3572:3605  "stdChains.Polygon.rpcUrl = rpcUrl"
                                                                                                                                update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_149, expr_323_mpos)
                                                                                                                                let _150_slot := _149
                                                                                                                                let expr_324_slot := _150_slot
                                                                                                                                /// @src 0:3542:4277  "if (isEqual(name, \"polygon\")) stdChains.Polygon.rpcUrl = rpcUrl;..."
                                                                                                                            }
                                                                                                                            /// @src 0:3432:4277  "if (isEqual(name, \"arbitrum_nova\", \"arbitrum-nova\")) stdChains.ArbitrumNova.rpcUrl = rpcUrl;..."
                                                                                                                        }
                                                                                                                        default {
                                                                                                                            /// @src 0:3517:3523  "rpcUrl"
                                                                                                                            let _151_mpos := var_rpcUrl_177_mpos
                                                                                                                            let expr_311_mpos := _151_mpos
                                                                                                                            /// @src 0:3485:3494  "stdChains"
                                                                                                                            let _152_slot := 0x00
                                                                                                                            let expr_306_slot := _152_slot
                                                                                                                            /// @src 0:3485:3507  "stdChains.ArbitrumNova"
                                                                                                                            let _153 := add(expr_306_slot, 27)
                                                                                                                            let _154_slot := _153
                                                                                                                            let expr_309_slot := _154_slot
                                                                                                                            /// @src 0:3485:3514  "stdChains.ArbitrumNova.rpcUrl"
                                                                                                                            let _155 := add(expr_309_slot, 2)
                                                                                                                            /// @src 0:3485:3523  "stdChains.ArbitrumNova.rpcUrl = rpcUrl"
                                                                                                                            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_155, expr_311_mpos)
                                                                                                                            let _156_slot := _155
                                                                                                                            let expr_312_slot := _156_slot
                                                                                                                            /// @src 0:3432:4277  "if (isEqual(name, \"arbitrum_nova\", \"arbitrum-nova\")) stdChains.ArbitrumNova.rpcUrl = rpcUrl;..."
                                                                                                                        }
                                                                                                                        /// @src 0:3305:4277  "if (isEqual(name, \"arbitrum_one_goerli\", \"arbitrum-one-goerli\")) stdChains.ArbitrumOneGoerli.rpcUrl = rpcUrl;..."
                                                                                                                    }
                                                                                                                    default {
                                                                                                                        /// @src 0:3407:3413  "rpcUrl"
                                                                                                                        let _157_mpos := var_rpcUrl_177_mpos
                                                                                                                        let expr_298_mpos := _157_mpos
                                                                                                                        /// @src 0:3370:3379  "stdChains"
                                                                                                                        let _158_slot := 0x00
                                                                                                                        let expr_293_slot := _158_slot
                                                                                                                        /// @src 0:3370:3397  "stdChains.ArbitrumOneGoerli"
                                                                                                                        let _159 := add(expr_293_slot, 24)
                                                                                                                        let _160_slot := _159
                                                                                                                        let expr_296_slot := _160_slot
                                                                                                                        /// @src 0:3370:3404  "stdChains.ArbitrumOneGoerli.rpcUrl"
                                                                                                                        let _161 := add(expr_296_slot, 2)
                                                                                                                        /// @src 0:3370:3413  "stdChains.ArbitrumOneGoerli.rpcUrl = rpcUrl"
                                                                                                                        update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_161, expr_298_mpos)
                                                                                                                        let _162_slot := _161
                                                                                                                        let expr_299_slot := _162_slot
                                                                                                                        /// @src 0:3305:4277  "if (isEqual(name, \"arbitrum_one_goerli\", \"arbitrum-one-goerli\")) stdChains.ArbitrumOneGoerli.rpcUrl = rpcUrl;..."
                                                                                                                    }
                                                                                                                    /// @src 0:3198:4277  "if (isEqual(name, \"arbitrum_one\", \"arbitrum-one\")) stdChains.ArbitrumOne.rpcUrl = rpcUrl;..."
                                                                                                                }
                                                                                                                default {
                                                                                                                    /// @src 0:3280:3286  "rpcUrl"
                                                                                                                    let _163_mpos := var_rpcUrl_177_mpos
                                                                                                                    let expr_285_mpos := _163_mpos
                                                                                                                    /// @src 0:3249:3258  "stdChains"
                                                                                                                    let _164_slot := 0x00
                                                                                                                    let expr_280_slot := _164_slot
                                                                                                                    /// @src 0:3249:3270  "stdChains.ArbitrumOne"
                                                                                                                    let _165 := add(expr_280_slot, 21)
                                                                                                                    let _166_slot := _165
                                                                                                                    let expr_283_slot := _166_slot
                                                                                                                    /// @src 0:3249:3277  "stdChains.ArbitrumOne.rpcUrl"
                                                                                                                    let _167 := add(expr_283_slot, 2)
                                                                                                                    /// @src 0:3249:3286  "stdChains.ArbitrumOne.rpcUrl = rpcUrl"
                                                                                                                    update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_167, expr_285_mpos)
                                                                                                                    let _168_slot := _167
                                                                                                                    let expr_286_slot := _168_slot
                                                                                                                    /// @src 0:3198:4277  "if (isEqual(name, \"arbitrum_one\", \"arbitrum-one\")) stdChains.ArbitrumOne.rpcUrl = rpcUrl;..."
                                                                                                                }
                                                                                                                /// @src 0:3082:4277  "if (isEqual(name, \"optimism_goerli\", \"optimism-goerli\")) stdChains.OptimismGoerli.rpcUrl = rpcUrl;..."
                                                                                                            }
                                                                                                            default {
                                                                                                                /// @src 0:3173:3179  "rpcUrl"
                                                                                                                let _169_mpos := var_rpcUrl_177_mpos
                                                                                                                let expr_272_mpos := _169_mpos
                                                                                                                /// @src 0:3139:3148  "stdChains"
                                                                                                                let _170_slot := 0x00
                                                                                                                let expr_267_slot := _170_slot
                                                                                                                /// @src 0:3139:3163  "stdChains.OptimismGoerli"
                                                                                                                let _171 := add(expr_267_slot, 18)
                                                                                                                let _172_slot := _171
                                                                                                                let expr_270_slot := _172_slot
                                                                                                                /// @src 0:3139:3170  "stdChains.OptimismGoerli.rpcUrl"
                                                                                                                let _173 := add(expr_270_slot, 2)
                                                                                                                /// @src 0:3139:3179  "stdChains.OptimismGoerli.rpcUrl = rpcUrl"
                                                                                                                update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_173, expr_272_mpos)
                                                                                                                let _174_slot := _173
                                                                                                                let expr_273_slot := _174_slot
                                                                                                                /// @src 0:3082:4277  "if (isEqual(name, \"optimism_goerli\", \"optimism-goerli\")) stdChains.OptimismGoerli.rpcUrl = rpcUrl;..."
                                                                                                            }
                                                                                                            /// @src 0:2998:4277  "if (isEqual(name, \"optimism\")) stdChains.Optimism.rpcUrl = rpcUrl;..."
                                                                                                        }
                                                                                                        default {
                                                                                                            /// @src 0:3057:3063  "rpcUrl"
                                                                                                            let _175_mpos := var_rpcUrl_177_mpos
                                                                                                            let expr_259_mpos := _175_mpos
                                                                                                            /// @src 0:3029:3038  "stdChains"
                                                                                                            let _176_slot := 0x00
                                                                                                            let expr_254_slot := _176_slot
                                                                                                            /// @src 0:3029:3047  "stdChains.Optimism"
                                                                                                            let _177 := add(expr_254_slot, 15)
                                                                                                            let _178_slot := _177
                                                                                                            let expr_257_slot := _178_slot
                                                                                                            /// @src 0:3029:3054  "stdChains.Optimism.rpcUrl"
                                                                                                            let _179 := add(expr_257_slot, 2)
                                                                                                            /// @src 0:3029:3063  "stdChains.Optimism.rpcUrl = rpcUrl"
                                                                                                            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_179, expr_259_mpos)
                                                                                                            let _180_slot := _179
                                                                                                            let expr_260_slot := _180_slot
                                                                                                            /// @src 0:2998:4277  "if (isEqual(name, \"optimism\")) stdChains.Optimism.rpcUrl = rpcUrl;..."
                                                                                                        }
                                                                                                        /// @src 0:2916:4277  "if (isEqual(name, \"sepolia\")) stdChains.Sepolia.rpcUrl = rpcUrl;..."
                                                                                                    }
                                                                                                    default {
                                                                                                        /// @src 0:2973:2979  "rpcUrl"
                                                                                                        let _181_mpos := var_rpcUrl_177_mpos
                                                                                                        let expr_247_mpos := _181_mpos
                                                                                                        /// @src 0:2946:2955  "stdChains"
                                                                                                        let _182_slot := 0x00
                                                                                                        let expr_242_slot := _182_slot
                                                                                                        /// @src 0:2946:2963  "stdChains.Sepolia"
                                                                                                        let _183 := add(expr_242_slot, 12)
                                                                                                        let _184_slot := _183
                                                                                                        let expr_245_slot := _184_slot
                                                                                                        /// @src 0:2946:2970  "stdChains.Sepolia.rpcUrl"
                                                                                                        let _185 := add(expr_245_slot, 2)
                                                                                                        /// @src 0:2946:2979  "stdChains.Sepolia.rpcUrl = rpcUrl"
                                                                                                        update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_185, expr_247_mpos)
                                                                                                        let _186_slot := _185
                                                                                                        let expr_248_slot := _186_slot
                                                                                                        /// @src 0:2916:4277  "if (isEqual(name, \"sepolia\")) stdChains.Sepolia.rpcUrl = rpcUrl;..."
                                                                                                    }
                                                                                                    /// @src 0:2836:4277  "if (isEqual(name, \"goerli\")) stdChains.Goerli.rpcUrl = rpcUrl;..."
                                                                                                }
                                                                                                default {
                                                                                                    /// @src 0:2891:2897  "rpcUrl"
                                                                                                    let _187_mpos := var_rpcUrl_177_mpos
                                                                                                    let expr_235_mpos := _187_mpos
                                                                                                    /// @src 0:2865:2874  "stdChains"
                                                                                                    let _188_slot := 0x00
                                                                                                    let expr_230_slot := _188_slot
                                                                                                    /// @src 0:2865:2881  "stdChains.Goerli"
                                                                                                    let _189 := add(expr_230_slot, 9)
                                                                                                    let _190_slot := _189
                                                                                                    let expr_233_slot := _190_slot
                                                                                                    /// @src 0:2865:2888  "stdChains.Goerli.rpcUrl"
                                                                                                    let _191 := add(expr_233_slot, 2)
                                                                                                    /// @src 0:2865:2897  "stdChains.Goerli.rpcUrl = rpcUrl"
                                                                                                    update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_191, expr_235_mpos)
                                                                                                    let _192_slot := _191
                                                                                                    let expr_236_slot := _192_slot
                                                                                                    /// @src 0:2836:4277  "if (isEqual(name, \"goerli\")) stdChains.Goerli.rpcUrl = rpcUrl;..."
                                                                                                }
                                                                                                /// @src 0:2754:4277  "if (isEqual(name, \"mainnet\")) stdChains.Mainnet.rpcUrl = rpcUrl;..."
                                                                                            }
                                                                                            default {
                                                                                                /// @src 0:2811:2817  "rpcUrl"
                                                                                                let _193_mpos := var_rpcUrl_177_mpos
                                                                                                let expr_223_mpos := _193_mpos
                                                                                                /// @src 0:2784:2793  "stdChains"
                                                                                                let _194_slot := 0x00
                                                                                                let expr_218_slot := _194_slot
                                                                                                /// @src 0:2784:2801  "stdChains.Mainnet"
                                                                                                let _195 := add(expr_218_slot, 6)
                                                                                                let _196_slot := _195
                                                                                                let expr_221_slot := _196_slot
                                                                                                /// @src 0:2784:2808  "stdChains.Mainnet.rpcUrl"
                                                                                                let _197 := add(expr_221_slot, 2)
                                                                                                /// @src 0:2784:2817  "stdChains.Mainnet.rpcUrl = rpcUrl"
                                                                                                update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_197, expr_223_mpos)
                                                                                                let _198_slot := _197
                                                                                                let expr_224_slot := _198_slot
                                                                                                /// @src 0:2754:4277  "if (isEqual(name, \"mainnet\")) stdChains.Mainnet.rpcUrl = rpcUrl;..."
                                                                                            }
                                                                                            /// @src 0:2672:4277  "if (isEqual(name, \"hardhat\")) stdChains.Hardhat.rpcUrl = rpcUrl;..."
                                                                                        }
                                                                                        default {
                                                                                            /// @src 0:2729:2735  "rpcUrl"
                                                                                            let _199_mpos := var_rpcUrl_177_mpos
                                                                                            let expr_211_mpos := _199_mpos
                                                                                            /// @src 0:2702:2711  "stdChains"
                                                                                            let _200_slot := 0x00
                                                                                            let expr_206_slot := _200_slot
                                                                                            /// @src 0:2702:2719  "stdChains.Hardhat"
                                                                                            let _201 := add(expr_206_slot, 3)
                                                                                            let _202_slot := _201
                                                                                            let expr_209_slot := _202_slot
                                                                                            /// @src 0:2702:2726  "stdChains.Hardhat.rpcUrl"
                                                                                            let _203 := add(expr_209_slot, 2)
                                                                                            /// @src 0:2702:2735  "stdChains.Hardhat.rpcUrl = rpcUrl"
                                                                                            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_203, expr_211_mpos)
                                                                                            let _204_slot := _203
                                                                                            let expr_212_slot := _204_slot
                                                                                            /// @src 0:2672:4277  "if (isEqual(name, \"hardhat\")) stdChains.Hardhat.rpcUrl = rpcUrl;..."
                                                                                        }
                                                                                        /// @src 0:2594:4277  "if (isEqual(name, \"anvil\")) stdChains.Anvil.rpcUrl = rpcUrl;..."
                                                                                    }
                                                                                    default {
                                                                                        /// @src 0:2647:2653  "rpcUrl"
                                                                                        let _205_mpos := var_rpcUrl_177_mpos
                                                                                        let expr_199_mpos := _205_mpos
                                                                                        /// @src 0:2622:2631  "stdChains"
                                                                                        let _206_slot := 0x00
                                                                                        let expr_194_slot := _206_slot
                                                                                        /// @src 0:2622:2637  "stdChains.Anvil"
                                                                                        let _207 := add(expr_194_slot, 0)
                                                                                        let _208_slot := _207
                                                                                        let expr_197_slot := _208_slot
                                                                                        /// @src 0:2622:2644  "stdChains.Anvil.rpcUrl"
                                                                                        let _209 := add(expr_197_slot, 2)
                                                                                        /// @src 0:2622:2653  "stdChains.Anvil.rpcUrl = rpcUrl"
                                                                                        update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(_209, expr_199_mpos)
                                                                                        let _210_slot := _209
                                                                                        let expr_200_slot := _210_slot
                                                                                        /// @src 0:2594:4277  "if (isEqual(name, \"anvil\")) stdChains.Anvil.rpcUrl = rpcUrl;..."
                                                                                    }
                                                                                }
                                                                                /// @src 0:4341:4342  "0"
                                                                                let expr_422 := 0x00
                                                                                /// @src 0:4334:4342  "return 0"
                                                                                var__71 := convert_t_rational_0_by_1_to_t_uint256(expr_422)
                                                                                leave

                                                                            }
                                                                            /// @src 0:185:4758  "contract StdCheatsSafe {..."

                                                                            function zero_value_for_split_t_bool() -> ret {
                                                                                ret := 0
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

                                                                            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                                                                                data := ptr

                                                                                data := add(ptr, 0x20)

                                                                            }

                                                                            function array_length_t_bytes_memory_ptr(value) -> length {

                                                                                length := mload(value)

                                                                            }

                                                                            function cleanup_t_bytes32(value) -> cleaned {
                                                                                cleaned := value
                                                                            }

                                                                            /// @ast-id 449
                                                                            /// @src 0:4355:4510  "function isEqual(string memory a, string memory b) private pure returns (bool) {..."
                                                                            function fun_isEqual_449(var_a_427_mpos, var_b_429_mpos) -> var__432 {
                                                                                /// @src 0:4428:4432  "bool"
                                                                                let zero_t_bool_211 := zero_value_for_split_t_bool()
                                                                                var__432 := zero_t_bool_211

                                                                                /// @src 0:4472:4473  "a"
                                                                                let _212_mpos := var_a_427_mpos
                                                                                let expr_437_mpos := _212_mpos
                                                                                /// @src 0:4461:4474  "abi.encode(a)"

                                                                                let expr_438_mpos := allocate_unbounded()
                                                                                let _213 := add(expr_438_mpos, 0x20)

                                                                                let _214 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(_213, expr_437_mpos)
                                                                                mstore(expr_438_mpos, sub(_214, add(expr_438_mpos, 0x20)))
                                                                                finalize_allocation(expr_438_mpos, sub(_214, expr_438_mpos))
                                                                                /// @src 0:4451:4475  "keccak256(abi.encode(a))"
                                                                                let expr_439 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_438_mpos), array_length_t_bytes_memory_ptr(expr_438_mpos))
                                                                                /// @src 0:4500:4501  "b"
                                                                                let _215_mpos := var_b_429_mpos
                                                                                let expr_443_mpos := _215_mpos
                                                                                /// @src 0:4489:4502  "abi.encode(b)"

                                                                                let expr_444_mpos := allocate_unbounded()
                                                                                let _216 := add(expr_444_mpos, 0x20)

                                                                                let _217 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(_216, expr_443_mpos)
                                                                                mstore(expr_444_mpos, sub(_217, add(expr_444_mpos, 0x20)))
                                                                                finalize_allocation(expr_444_mpos, sub(_217, expr_444_mpos))
                                                                                /// @src 0:4479:4503  "keccak256(abi.encode(b))"
                                                                                let expr_445 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_444_mpos), array_length_t_bytes_memory_ptr(expr_444_mpos))
                                                                                /// @src 0:4451:4503  "keccak256(abi.encode(a)) == keccak256(abi.encode(b))"
                                                                                let expr_446 := eq(cleanup_t_bytes32(expr_439), cleanup_t_bytes32(expr_445))
                                                                                /// @src 0:4444:4503  "return keccak256(abi.encode(a)) == keccak256(abi.encode(b))"
                                                                                var__432 := expr_446
                                                                                leave

                                                                            }
                                                                            /// @src 0:185:4758  "contract StdCheatsSafe {..."

                                                                            /// @ast-id 489
                                                                            /// @src 0:4516:4756  "function isEqual(string memory a, string memory b, string memory c) private pure returns (bool) {..."
                                                                            function fun_isEqual_489(var_a_451_mpos, var_b_453_mpos, var_c_455_mpos) -> var__458 {
                                                                                /// @src 0:4606:4610  "bool"
                                                                                let zero_t_bool_218 := zero_value_for_split_t_bool()
                                                                                var__458 := zero_t_bool_218

                                                                                /// @src 0:4650:4651  "a"
                                                                                let _219_mpos := var_a_451_mpos
                                                                                let expr_463_mpos := _219_mpos
                                                                                /// @src 0:4639:4652  "abi.encode(a)"

                                                                                let expr_464_mpos := allocate_unbounded()
                                                                                let _220 := add(expr_464_mpos, 0x20)

                                                                                let _221 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(_220, expr_463_mpos)
                                                                                mstore(expr_464_mpos, sub(_221, add(expr_464_mpos, 0x20)))
                                                                                finalize_allocation(expr_464_mpos, sub(_221, expr_464_mpos))
                                                                                /// @src 0:4629:4653  "keccak256(abi.encode(a))"
                                                                                let expr_465 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_464_mpos), array_length_t_bytes_memory_ptr(expr_464_mpos))
                                                                                /// @src 0:4678:4679  "b"
                                                                                let _222_mpos := var_b_453_mpos
                                                                                let expr_469_mpos := _222_mpos
                                                                                /// @src 0:4667:4680  "abi.encode(b)"

                                                                                let expr_470_mpos := allocate_unbounded()
                                                                                let _223 := add(expr_470_mpos, 0x20)

                                                                                let _224 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(_223, expr_469_mpos)
                                                                                mstore(expr_470_mpos, sub(_224, add(expr_470_mpos, 0x20)))
                                                                                finalize_allocation(expr_470_mpos, sub(_224, expr_470_mpos))
                                                                                /// @src 0:4657:4681  "keccak256(abi.encode(b))"
                                                                                let expr_471 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_470_mpos), array_length_t_bytes_memory_ptr(expr_470_mpos))
                                                                                /// @src 0:4629:4681  "keccak256(abi.encode(a)) == keccak256(abi.encode(b))"
                                                                                let expr_472 := eq(cleanup_t_bytes32(expr_465), cleanup_t_bytes32(expr_471))
                                                                                /// @src 0:4629:4749  "keccak256(abi.encode(a)) == keccak256(abi.encode(b))..."
                                                                                let expr_486 := expr_472
                                                                                if iszero(expr_486) {
                                                                                    /// @src 0:4718:4719  "a"
                                                                                    let _225_mpos := var_a_451_mpos
                                                                                    let expr_476_mpos := _225_mpos
                                                                                    /// @src 0:4707:4720  "abi.encode(a)"

                                                                                    let expr_477_mpos := allocate_unbounded()
                                                                                    let _226 := add(expr_477_mpos, 0x20)

                                                                                    let _227 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(_226, expr_476_mpos)
                                                                                    mstore(expr_477_mpos, sub(_227, add(expr_477_mpos, 0x20)))
                                                                                    finalize_allocation(expr_477_mpos, sub(_227, expr_477_mpos))
                                                                                    /// @src 0:4697:4721  "keccak256(abi.encode(a))"
                                                                                    let expr_478 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_477_mpos), array_length_t_bytes_memory_ptr(expr_477_mpos))
                                                                                    /// @src 0:4746:4747  "c"
                                                                                    let _228_mpos := var_c_455_mpos
                                                                                    let expr_482_mpos := _228_mpos
                                                                                    /// @src 0:4735:4748  "abi.encode(c)"

                                                                                    let expr_483_mpos := allocate_unbounded()
                                                                                    let _229 := add(expr_483_mpos, 0x20)

                                                                                    let _230 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(_229, expr_482_mpos)
                                                                                    mstore(expr_483_mpos, sub(_230, add(expr_483_mpos, 0x20)))
                                                                                    finalize_allocation(expr_483_mpos, sub(_230, expr_483_mpos))
                                                                                    /// @src 0:4725:4749  "keccak256(abi.encode(c))"
                                                                                    let expr_484 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_483_mpos), array_length_t_bytes_memory_ptr(expr_483_mpos))
                                                                                    /// @src 0:4697:4749  "keccak256(abi.encode(a)) == keccak256(abi.encode(c))"
                                                                                    let expr_485 := eq(cleanup_t_bytes32(expr_478), cleanup_t_bytes32(expr_484))
                                                                                    /// @src 0:4629:4749  "keccak256(abi.encode(a)) == keccak256(abi.encode(b))..."
                                                                                    expr_486 := expr_485
                                                                                }
                                                                                /// @src 0:4622:4749  "return keccak256(abi.encode(a)) == keccak256(abi.encode(b))..."
                                                                                var__458 := expr_486
                                                                                leave

                                                                            }
                                                                            /// @src 0:185:4758  "contract StdCheatsSafe {..."

                                                                        }

                                                                        data ".metadata" hex"a26469706673582212209b50734dc03beb08da2e5190094fdfac5a62ba44c714c334813caa053ac605e464736f6c637828302e382e32362d646576656c6f702e323032342e332e32302b636f6d6d69742e61666461363938340059"
                                                                    }

                                                                }


