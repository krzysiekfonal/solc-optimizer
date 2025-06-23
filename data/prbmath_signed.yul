IR:

/// @use-src 0:"_prbmath/PRBMathCommon.sol"
object "PRBMathCommon_2669" {
    code {
        /// @src 0:377:19723  "library PRBMathCommon {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("PRBMathCommon_2669_deployed"), datasize("PRBMathCommon_2669_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("PRBMathCommon_2669_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:377:19723  "library PRBMathCommon {..."
        function constructor_PRBMathCommon_2669() {

            /// @src 0:377:19723  "library PRBMathCommon {..."

        }
        /// @src 0:377:19723  "library PRBMathCommon {..."

    }
    /// @use-src 0:"_prbmath/PRBMathCommon.sol"
    object "PRBMathCommon_2669_deployed" {
        code {
            /// @src 0:377:19723  "library PRBMathCommon {..."
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

        data ".metadata" hex"a26469706673582212202c2e0cec6ce0b8379a8a7aa7858799e2e541c7cf03730a6631e5bf2315baf04064736f6c634300081b0033"
    }

}


IR:

/// @use-src 1:"_prbmath/PRBMathSD59x18.sol"
object "PRBMathSD59x18_1159" {
    code {
        /// @src 1:595:27917  "library PRBMathSD59x18 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("PRBMathSD59x18_1159_deployed"), datasize("PRBMathSD59x18_1159_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("PRBMathSD59x18_1159_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 1:595:27917  "library PRBMathSD59x18 {..."
        function constructor_PRBMathSD59x18_1159() {

            /// @src 1:595:27917  "library PRBMathSD59x18 {..."

        }
        /// @src 1:595:27917  "library PRBMathSD59x18 {..."

    }
    /// @use-src 1:"_prbmath/PRBMathSD59x18.sol"
    object "PRBMathSD59x18_1159_deployed" {
        code {
            /// @src 1:595:27917  "library PRBMathSD59x18 {..."
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

        data ".metadata" hex"a26469706673582212204317e09b9b004c12ca15af59041631cabef112efe63bca31c01ceed1b76d6ea964736f6c634300081b0033"
    }

}


IR:

/// @use-src 2:"prbmath_signed.sol"
object "test_215" {
    code {
        /// @src 2:39:1342  "contract test {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_test_215()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("test_215_deployed"), datasize("test_215_deployed"))

        return(_1, datasize("test_215_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 2:39:1342  "contract test {..."
        function constructor_test_215() {

            /// @src 2:39:1342  "contract test {..."

        }
        /// @src 2:39:1342  "contract test {..."

    }
    /// @use-src 0:"_prbmath/PRBMathCommon.sol", 1:"_prbmath/PRBMathSD59x18.sol", 2:"prbmath_signed.sol"
    object "test_215_deployed" {
        code {
            /// @src 2:39:1342  "contract test {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x43509138
                {
                    // div(int256,int256)

                    external_fun_div_21()
                }

                case 0x665df460
                {
                    // sqrt(int256)

                    external_fun_sqrt_142()
                }

                case 0x6a6742dc
                {
                    // pow(int256,uint256)

                    external_fun_pow_128()
                }

                case 0x889c7955
                {
                    // benchmark(int256)

                    external_fun_benchmark_214()
                }

                case 0xb47ca3c7
                {
                    // log10(int256)

                    external_fun_log10_80()
                }

                case 0xbbe93d91
                {
                    // mul(int256,int256)

                    external_fun_mul_111()
                }

                case 0xd2bc4bc9
                {
                    // gm(int256,int256)

                    external_fun_gm_66()
                }

                case 0xdbbb06d2
                {
                    // exp2(int256)

                    external_fun_exp2_49()
                }

                case 0xe0d68737
                {
                    // log2(int256)

                    external_fun_log2_94()
                }

                case 0xe46751e3
                {
                    // exp(int256)

                    external_fun_exp_35()
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

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_int256(value) {
                if iszero(eq(value, cleanup_t_int256(value))) { revert(0, 0) }
            }

            function abi_decode_t_int256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_int256(value)
            }

            function abi_decode_tuple_t_int256t_int256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_int256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_int256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_int256_to_t_int256_fromStack(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_tuple_t_int256__to_t_int256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_div_21() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_int256t_int256(4, calldatasize())
                let ret_0 :=  fun_div_21(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_int256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_int256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_sqrt_142() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_int256(4, calldatasize())
                let ret_0 :=  fun_sqrt_142(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            function abi_decode_tuple_t_int256t_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_int256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_pow_128() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_int256t_uint256(4, calldatasize())
                let ret_0 :=  fun_pow_128(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_tuple_t_int256_t_int256_t_int256__to_t_int256_t_int256_t_int256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int256_to_t_int256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_int256_to_t_int256_fromStack(value2,  add(headStart, 64))

            }

            function external_fun_benchmark_214() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_int256(4, calldatasize())
                let ret_0, ret_1, ret_2 :=  fun_benchmark_214(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256_t_int256_t_int256__to_t_int256_t_int256_t_int256__fromStack(memPos , ret_0, ret_1, ret_2)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_log10_80() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_int256(4, calldatasize())
                let ret_0 :=  fun_log10_80(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_mul_111() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_int256t_int256(4, calldatasize())
                let ret_0 :=  fun_mul_111(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_gm_66() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_int256t_int256(4, calldatasize())
                let ret_0 :=  fun_gm_66(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_exp2_49() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_int256(4, calldatasize())
                let ret_0 :=  fun_exp2_49(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_log2_94() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_int256(4, calldatasize())
                let ret_0 :=  fun_log2_94(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_exp_35() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_int256(4, calldatasize())
                let ret_0 :=  fun_exp_35(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_int256() -> ret {
                ret := 0
            }

            /// @ast-id 21
            /// @src 2:97:196  "function div(int256 x, int256 y) external pure returns (int256 ret) {..."
            function fun_div_21(var_x_6, var_y_8) -> var_ret_11 {
                /// @src 2:153:163  "int256 ret"
                let zero_t_int256_1 := zero_value_for_split_t_int256()
                var_ret_11 := zero_t_int256_1

                /// @src 2:181:182  "x"
                let _2 := var_x_6
                let expr_14 := _2
                /// @src 2:181:186  "x.div"
                let expr_15_self := expr_14
                /// @src 2:187:188  "y"
                let _3 := var_y_8
                let expr_16 := _3
                /// @src 2:181:189  "x.div(y)"
                let expr_17 := fun_div_473(expr_15_self, expr_16)
                /// @src 2:175:189  "ret = x.div(y)"
                var_ret_11 := expr_17
                let expr_18 := expr_17

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 142
            /// @src 2:892:982  "function sqrt(int256 x) external pure returns (int256 ret) {..."
            function fun_sqrt_142(var_x_130) -> var_ret_133 {
                /// @src 2:939:949  "int256 ret"
                let zero_t_int256_4 := zero_value_for_split_t_int256()
                var_ret_133 := zero_t_int256_4

                /// @src 2:967:968  "x"
                let _5 := var_x_130
                let expr_136 := _5
                /// @src 2:967:973  "x.sqrt"
                let expr_137_self := expr_136
                /// @src 2:967:975  "x.sqrt()"
                let expr_138 := fun_sqrt_1158(expr_137_self)
                /// @src 2:961:975  "ret = x.sqrt()"
                var_ret_133 := expr_138
                let expr_139 := expr_138

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 128
            /// @src 2:787:887  "function pow(int256 x, uint256 y) external pure returns (int256 ret) {..."
            function fun_pow_128(var_x_113, var_y_115) -> var_ret_118 {
                /// @src 2:844:854  "int256 ret"
                let zero_t_int256_6 := zero_value_for_split_t_int256()
                var_ret_118 := zero_t_int256_6

                /// @src 2:872:873  "x"
                let _7 := var_x_113
                let expr_121 := _7
                /// @src 2:872:877  "x.pow"
                let expr_122_self := expr_121
                /// @src 2:878:879  "y"
                let _8 := var_y_115
                let expr_123 := _8
                /// @src 2:872:880  "x.pow(y)"
                let expr_124 := fun_pow_1110(expr_122_self, expr_123)
                /// @src 2:866:880  "ret = x.pow(y)"
                var_ret_118 := expr_124
                let expr_125 := expr_124

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_3_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_3_by_1(value)))
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

            function cleanup_t_rational_10_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10_by_1(value)))
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function panic_error_0x01() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x01)
                revert(0, 0x24)
            }

            function assert_helper(condition) {
                if iszero(condition) { panic_error_0x01() }
            }

            /// @ast-id 214
            /// @src 2:987:1340  "function benchmark(int256 x) external pure returns (int256 ret, int256 z1, int256 z2) {..."
            function fun_benchmark_214(var_x_144) -> var_ret_147, var_z1_149, var_z2_151 {
                /// @src 2:1039:1049  "int256 ret"
                let zero_t_int256_9 := zero_value_for_split_t_int256()
                var_ret_147 := zero_t_int256_9
                /// @src 2:1051:1060  "int256 z1"
                let zero_t_int256_10 := zero_value_for_split_t_int256()
                var_z1_149 := zero_t_int256_10
                /// @src 2:1062:1071  "int256 z2"
                let zero_t_int256_11 := zero_value_for_split_t_int256()
                var_z2_151 := zero_t_int256_11

                /// @src 2:1094:1095  "x"
                let _12 := var_x_144
                let expr_155 := _12
                /// @src 2:1094:1099  "x.mul"
                let expr_156_self := expr_155
                /// @src 2:1100:1101  "3"
                let expr_157 := 0x03
                /// @src 2:1094:1102  "x.mul(3)"
                let _13 := convert_t_rational_3_by_1_to_t_int256(expr_157)
                let expr_158 := fun_mul_994(expr_156_self, _13)
                /// @src 2:1094:1107  "x.mul(3).ceil"
                let expr_159_self := expr_158
                /// @src 2:1094:1109  "x.mul(3).ceil()"
                let expr_160 := fun_ceil_353(expr_159_self)
                /// @src 2:1083:1109  "int256 y = x.mul(3).ceil()"
                let var_y_154 := expr_160
                /// @src 2:1130:1131  "y"
                let _14 := var_y_154
                let expr_164 := _14
                /// @src 2:1130:1135  "y.div"
                let expr_165_self := expr_164
                /// @src 2:1136:1137  "x"
                let _15 := var_x_144
                let expr_166 := _15
                /// @src 2:1130:1138  "y.div(x)"
                let expr_167 := fun_div_473(expr_165_self, expr_166)
                /// @src 2:1119:1138  "int256 z = y.div(x)"
                let var_z_163 := expr_167
                /// @src 2:1148:1202  "for (uint i = 0; i < 10; i++)..."
                for {
                    /// @src 2:1162:1163  "0"
                    let expr_171 := 0x00
                    /// @src 2:1153:1163  "uint i = 0"
                    let var_i_170 := convert_t_rational_0_by_1_to_t_uint256(expr_171)
                    } 1 {
                    /// @src 2:1173:1176  "i++"
                    let _17 := var_i_170
                    let _16 := increment_wrapping_t_uint256(_17)
                    var_i_170 := _16
                    let expr_177 := _17
                }
                {
                    /// @src 2:1165:1166  "i"
                    let _18 := var_i_170
                    let expr_173 := _18
                    /// @src 2:1169:1171  "10"
                    let expr_174 := 0x0a
                    /// @src 2:1165:1171  "i < 10"
                    let expr_175 := lt(cleanup_t_uint256(expr_173), convert_t_rational_10_by_1_to_t_uint256(expr_174))
                    if iszero(expr_175) { break }
                    /// @src 2:1194:1195  "z"
                    let _19 := var_z_163
                    let expr_180 := _19
                    /// @src 2:1194:1200  "z.sqrt"
                    let expr_181_self := expr_180
                    /// @src 2:1194:1202  "z.sqrt()"
                    let expr_182 := fun_sqrt_1158(expr_181_self)
                    /// @src 2:1190:1202  "z = z.sqrt()"
                    var_z_163 := expr_182
                    let expr_183 := expr_182
                }
                /// @src 2:1218:1219  "z"
                let _20 := var_z_163
                let expr_187 := _20
                /// @src 2:1212:1219  "ret = z"
                var_ret_147 := expr_187
                let expr_188 := expr_187
                /// @src 2:1262:1263  "z"
                let _21 := var_z_163
                let expr_191 := _21
                /// @src 2:1262:1268  "z.ceil"
                let expr_192_self := expr_191
                /// @src 2:1262:1270  "z.ceil()"
                let expr_193 := fun_ceil_353(expr_192_self)
                /// @src 2:1257:1270  "z1 = z.ceil()"
                var_z1_149 := expr_193
                let expr_194 := expr_193
                /// @src 2:1285:1286  "z"
                let _22 := var_z_163
                let expr_197 := _22
                /// @src 2:1285:1291  "z.sqrt"
                let expr_198_self := expr_197
                /// @src 2:1285:1293  "z.sqrt()"
                let expr_199 := fun_sqrt_1158(expr_198_self)
                /// @src 2:1285:1297  "z.sqrt().pow"
                let expr_200_self := expr_199
                /// @src 2:1298:1299  "2"
                let expr_201 := 0x02
                /// @src 2:1285:1300  "z.sqrt().pow(2)"
                let _23 := convert_t_rational_2_by_1_to_t_uint256(expr_201)
                let expr_202 := fun_pow_1110(expr_200_self, _23)
                /// @src 2:1285:1305  "z.sqrt().pow(2).ceil"
                let expr_203_self := expr_202
                /// @src 2:1285:1307  "z.sqrt().pow(2).ceil()"
                let expr_204 := fun_ceil_353(expr_203_self)
                /// @src 2:1280:1307  "z2 = z.sqrt().pow(2).ceil()"
                var_z2_151 := expr_204
                let expr_205 := expr_204
                /// @src 2:1324:1326  "z1"
                let _24 := var_z1_149
                let expr_208 := _24
                /// @src 2:1330:1332  "z2"
                let _25 := var_z2_151
                let expr_209 := _25
                /// @src 2:1324:1332  "z1 == z2"
                let expr_210 := eq(cleanup_t_int256(expr_208), cleanup_t_int256(expr_209))
                /// @src 2:1317:1333  "assert(z1 == z2)"
                assert_helper(expr_210)

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 80
            /// @src 2:491:583  "function log10(int256 x) external pure returns (int256 ret) {..."
            function fun_log10_80(var_x_68) -> var_ret_71 {
                /// @src 2:539:549  "int256 ret"
                let zero_t_int256_26 := zero_value_for_split_t_int256()
                var_ret_71 := zero_t_int256_26

                /// @src 2:567:568  "x"
                let _27 := var_x_68
                let expr_74 := _27
                /// @src 2:567:574  "x.log10"
                let expr_75_self := expr_74
                /// @src 2:567:576  "x.log10()"
                let expr_76 := fun_log10_775(expr_75_self)
                /// @src 2:561:576  "ret = x.log10()"
                var_ret_71 := expr_76
                let expr_77 := expr_76

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 111
            /// @src 2:683:782  "function mul(int256 x, int256 y) external pure returns (int256 ret) {..."
            function fun_mul_111(var_x_96, var_y_98) -> var_ret_101 {
                /// @src 2:739:749  "int256 ret"
                let zero_t_int256_28 := zero_value_for_split_t_int256()
                var_ret_101 := zero_t_int256_28

                /// @src 2:767:768  "x"
                let _29 := var_x_96
                let expr_104 := _29
                /// @src 2:767:772  "x.mul"
                let expr_105_self := expr_104
                /// @src 2:773:774  "y"
                let _30 := var_y_98
                let expr_106 := _30
                /// @src 2:767:775  "x.mul(y)"
                let expr_107 := fun_mul_994(expr_105_self, expr_106)
                /// @src 2:761:775  "ret = x.mul(y)"
                var_ret_101 := expr_107
                let expr_108 := expr_107

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 66
            /// @src 2:389:486  "function gm(int256 x, int256 y) external pure returns (int256 ret) {..."
            function fun_gm_66(var_x_51, var_y_53) -> var_ret_56 {
                /// @src 2:444:454  "int256 ret"
                let zero_t_int256_31 := zero_value_for_split_t_int256()
                var_ret_56 := zero_t_int256_31

                /// @src 2:472:473  "x"
                let _32 := var_x_51
                let expr_59 := _32
                /// @src 2:472:476  "x.gm"
                let expr_60_self := expr_59
                /// @src 2:477:478  "y"
                let _33 := var_y_53
                let expr_61 := _33
                /// @src 2:472:479  "x.gm(y)"
                let expr_62 := fun_gm_705(expr_60_self, expr_61)
                /// @src 2:466:479  "ret = x.gm(y)"
                var_ret_56 := expr_62
                let expr_63 := expr_62

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 49
            /// @src 2:294:384  "function exp2(int256 x) external pure returns (int256 ret) {..."
            function fun_exp2_49(var_x_37) -> var_ret_40 {
                /// @src 2:341:351  "int256 ret"
                let zero_t_int256_34 := zero_value_for_split_t_int256()
                var_ret_40 := zero_t_int256_34

                /// @src 2:369:370  "x"
                let _35 := var_x_37
                let expr_43 := _35
                /// @src 2:369:375  "x.exp2"
                let expr_44_self := expr_43
                /// @src 2:369:377  "x.exp2()"
                let expr_45 := fun_exp2_590(expr_44_self)
                /// @src 2:363:377  "ret = x.exp2()"
                var_ret_40 := expr_45
                let expr_46 := expr_45

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 94
            /// @src 2:588:678  "function log2(int256 x) external pure returns (int256 ret) {..."
            function fun_log2_94(var_x_82) -> var_ret_85 {
                /// @src 2:635:645  "int256 ret"
                let zero_t_int256_36 := zero_value_for_split_t_int256()
                var_ret_85 := zero_t_int256_36

                /// @src 2:663:664  "x"
                let _37 := var_x_82
                let expr_88 := _37
                /// @src 2:663:669  "x.log2"
                let expr_89_self := expr_88
                /// @src 2:663:671  "x.log2()"
                let expr_90 := fun_log2_890(expr_89_self)
                /// @src 2:657:671  "ret = x.log2()"
                var_ret_85 := expr_90
                let expr_91 := expr_90

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 35
            /// @src 2:201:289  "function exp(int256 x) external pure returns (int256 ret) {..."
            function fun_exp_35(var_x_23) -> var_ret_26 {
                /// @src 2:247:257  "int256 ret"
                let zero_t_int256_38 := zero_value_for_split_t_int256()
                var_ret_26 := zero_t_int256_38

                /// @src 2:275:276  "x"
                let _39 := var_x_23
                let expr_29 := _39
                /// @src 2:275:280  "x.exp"
                let expr_30_self := expr_29
                /// @src 2:275:282  "x.exp()"
                let expr_31 := fun_exp_525(expr_30_self)
                /// @src 2:269:282  "ret = x.exp()"
                var_ret_26 := expr_31
                let expr_32 := expr_31

            }
            /// @src 2:39:1342  "contract test {..."

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_int256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_int256(value)))
            }

            function negate_wrapping_t_int256(value) -> ret {
                ret := cleanup_t_int256(sub(0, value))
            }

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            /// @src 1:1746:1783  "int256 internal constant SCALE = 1e18"
            function constant_SCALE_249() -> ret {
                /// @src 1:1779:1783  "1e18"
                let expr_248 := 0x0de0b6b3a7640000
                let _52 := convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_248)

                ret := _52
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_uint256_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_uint256(value)))
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function negate_t_int256(value) -> ret {
                value := cleanup_t_int256(value)
                if eq(value, 0x8000000000000000000000000000000000000000000000000000000000000000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            /// @ast-id 473
            /// @src 1:4899:5958  "function div(int256 x, int256 y) internal pure returns (int256 result) {..."
            function fun_div_473(var_x_356, var_y_358) -> var_result_361 {
                /// @src 1:4955:4968  "int256 result"
                let zero_t_int256_40 := zero_value_for_split_t_int256()
                var_result_361 := zero_t_int256_40

                /// @src 1:4988:4989  "x"
                let _41 := var_x_356
                let expr_364 := _41
                /// @src 1:4992:5008  "type(int256).min"
                let expr_369 := 0x8000000000000000000000000000000000000000000000000000000000000000
                /// @src 1:4988:5008  "x > type(int256).min"
                let expr_370 := sgt(cleanup_t_int256(expr_364), cleanup_t_int256(expr_369))
                /// @src 1:4980:5009  "require(x > type(int256).min)"
                require_helper(expr_370)
                /// @src 1:5027:5028  "y"
                let _42 := var_y_358
                let expr_374 := _42
                /// @src 1:5031:5047  "type(int256).min"
                let expr_379 := 0x8000000000000000000000000000000000000000000000000000000000000000
                /// @src 1:5027:5047  "y > type(int256).min"
                let expr_380 := sgt(cleanup_t_int256(expr_374), cleanup_t_int256(expr_379))
                /// @src 1:5019:5048  "require(y > type(int256).min)"
                require_helper(expr_380)
                /// @src 1:5114:5124  "uint256 ax"
                let var_ax_384
                let zero_t_uint256_43 := zero_value_for_split_t_uint256()
                var_ax_384 := zero_t_uint256_43
                /// @src 1:5134:5144  "uint256 ay"
                let var_ay_387
                let zero_t_uint256_44 := zero_value_for_split_t_uint256()
                var_ay_387 := zero_t_uint256_44
                /// @src 1:5183:5184  "x"
                let _45 := var_x_356
                let expr_390 := _45
                /// @src 1:5187:5188  "0"
                let expr_391 := 0x00
                /// @src 1:5183:5188  "x < 0"
                let expr_392 := slt(cleanup_t_int256(expr_390), convert_t_rational_0_by_1_to_t_int256(expr_391))
                /// @src 1:5183:5215  "x < 0 ? uint256(-x) : uint256(x)"
                let expr_402
                switch expr_392
                case 0 {
                    /// @src 1:5213:5214  "x"
                    let _46 := var_x_356
                    let expr_400 := _46
                    /// @src 1:5205:5215  "uint256(x)"
                    let expr_401 := convert_t_int256_to_t_uint256(expr_400)
                    /// @src 1:5183:5215  "x < 0 ? uint256(-x) : uint256(x)"
                    expr_402 := expr_401
                }
                default {
                    /// @src 1:5200:5201  "x"
                    let _47 := var_x_356
                    let expr_395 := _47
                    /// @src 1:5199:5201  "-x"
                    let expr_396 := negate_wrapping_t_int256(expr_395)
                    /// @src 1:5191:5202  "uint256(-x)"
                    let expr_397 := convert_t_int256_to_t_uint256(expr_396)
                    /// @src 1:5183:5215  "x < 0 ? uint256(-x) : uint256(x)"
                    expr_402 := expr_397
                }
                /// @src 1:5178:5215  "ax = x < 0 ? uint256(-x) : uint256(x)"
                var_ax_384 := expr_402
                let expr_403 := expr_402
                /// @src 1:5234:5235  "y"
                let _48 := var_y_358
                let expr_406 := _48
                /// @src 1:5238:5239  "0"
                let expr_407 := 0x00
                /// @src 1:5234:5239  "y < 0"
                let expr_408 := slt(cleanup_t_int256(expr_406), convert_t_rational_0_by_1_to_t_int256(expr_407))
                /// @src 1:5234:5266  "y < 0 ? uint256(-y) : uint256(y)"
                let expr_418
                switch expr_408
                case 0 {
                    /// @src 1:5264:5265  "y"
                    let _49 := var_y_358
                    let expr_416 := _49
                    /// @src 1:5256:5266  "uint256(y)"
                    let expr_417 := convert_t_int256_to_t_uint256(expr_416)
                    /// @src 1:5234:5266  "y < 0 ? uint256(-y) : uint256(y)"
                    expr_418 := expr_417
                }
                default {
                    /// @src 1:5251:5252  "y"
                    let _50 := var_y_358
                    let expr_411 := _50
                    /// @src 1:5250:5252  "-y"
                    let expr_412 := negate_wrapping_t_int256(expr_411)
                    /// @src 1:5242:5253  "uint256(-y)"
                    let expr_413 := convert_t_int256_to_t_uint256(expr_412)
                    /// @src 1:5234:5266  "y < 0 ? uint256(-y) : uint256(y)"
                    expr_418 := expr_413
                }
                /// @src 1:5229:5266  "ay = y < 0 ? uint256(-y) : uint256(y)"
                var_ay_387 := expr_418
                let expr_419 := expr_418
                /// @src 1:5402:5415  "PRBMathCommon"
                let expr_424_address := linkersymbol("_prbmath/PRBMathCommon.sol:PRBMathCommon")
                /// @src 1:5423:5425  "ax"
                let _51 := var_ax_384
                let expr_426 := _51
                /// @src 1:5435:5440  "SCALE"
                let expr_429 := constant_SCALE_249()
                /// @src 1:5427:5441  "uint256(SCALE)"
                let expr_430 := convert_t_int256_to_t_uint256(expr_429)
                /// @src 1:5443:5445  "ay"
                let _53 := var_ay_387
                let expr_431 := _53
                /// @src 1:5402:5446  "PRBMathCommon.mulDiv(ax, uint256(SCALE), ay)"
                let expr_432 := fun_mulDiv_2414(expr_426, expr_430, expr_431)
                /// @src 1:5377:5446  "uint256 resultUnsigned = PRBMathCommon.mulDiv(ax, uint256(SCALE), ay)"
                let var_resultUnsigned_423 := expr_432
                /// @src 1:5464:5478  "resultUnsigned"
                let _54 := var_resultUnsigned_423
                let expr_435 := _54
                /// @src 1:5490:5506  "type(int256).max"
                let expr_442 := 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 1:5482:5507  "uint256(type(int256).max)"
                let expr_443 := convert_t_int256_to_t_uint256(expr_442)
                /// @src 1:5464:5507  "resultUnsigned <= uint256(type(int256).max)"
                let expr_444 := iszero(gt(cleanup_t_uint256(expr_435), cleanup_t_uint256(expr_443)))
                /// @src 1:5456:5508  "require(resultUnsigned <= uint256(type(int256).max))"
                require_helper(expr_444)
                /// @src 1:5556:5566  "uint256 sx"
                let var_sx_448
                let zero_t_uint256_55 := zero_value_for_split_t_uint256()
                var_sx_448 := zero_t_uint256_55
                /// @src 1:5576:5586  "uint256 sy"
                let var_sy_451
                let zero_t_uint256_56 := zero_value_for_split_t_uint256()
                var_sy_451 := zero_t_uint256_56
                /// @src 1:5596:5688  "assembly {..."
                {
                    var_sx_448 := sgt(var_x_356, sub(0, 1))
                    var_sy_451 := sgt(var_y_358, sub(0, 1))
                }
                /// @src 1:5888:5890  "sx"
                let _57 := var_sx_448
                let expr_455 := _57
                /// @src 1:5893:5895  "sy"
                let _58 := var_sy_451
                let expr_456 := _58
                /// @src 1:5888:5895  "sx ^ sy"
                let expr_457 := xor(expr_455, expr_456)

                /// @src 1:5899:5900  "1"
                let expr_458 := 0x01
                /// @src 1:5888:5900  "sx ^ sy == 1"
                let expr_459 := eq(cleanup_t_uint256(expr_457), convert_t_rational_1_by_1_to_t_uint256(expr_458))
                /// @src 1:5888:5951  "sx ^ sy == 1 ? -int256(resultUnsigned) : int256(resultUnsigned)"
                let expr_469
                switch expr_459
                case 0 {
                    /// @src 1:5936:5950  "resultUnsigned"
                    let _59 := var_resultUnsigned_423
                    let expr_467 := _59
                    /// @src 1:5929:5951  "int256(resultUnsigned)"
                    let expr_468 := convert_t_uint256_to_t_int256(expr_467)
                    /// @src 1:5888:5951  "sx ^ sy == 1 ? -int256(resultUnsigned) : int256(resultUnsigned)"
                    expr_469 := expr_468
                }
                default {
                    /// @src 1:5911:5925  "resultUnsigned"
                    let _60 := var_resultUnsigned_423
                    let expr_462 := _60
                    /// @src 1:5904:5926  "int256(resultUnsigned)"
                    let expr_463 := convert_t_uint256_to_t_int256(expr_462)
                    /// @src 1:5903:5926  "-int256(resultUnsigned)"
                    let expr_464 := negate_t_int256(expr_463)
                    /// @src 1:5888:5951  "sx ^ sy == 1 ? -int256(resultUnsigned) : int256(resultUnsigned)"
                    expr_469 := expr_464
                }
                /// @src 1:5879:5951  "result = sx ^ sy == 1 ? -int256(resultUnsigned) : int256(resultUnsigned)"
                var_result_361 := expr_469
                let expr_470 := expr_469

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_57896044618658097711785492504343953926634992332820282019729_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_57896044618658097711785492504343953926634992332820282019729_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_57896044618658097711785492504343953926634992332820282019729_by_1(value)))
            }

            function wrapping_mul_t_int256(x, y) -> product {
                product := cleanup_t_int256(mul(x, y))
            }

            /// @ast-id 1158
            /// @src 1:27402:27915  "function sqrt(int256 x) internal pure returns (int256 result) {..."
            function fun_sqrt_1158(var_x_1124) -> var_result_1127 {
                /// @src 1:27449:27462  "int256 result"
                let zero_t_int256_61 := zero_value_for_split_t_int256()
                var_result_1127 := zero_t_int256_61

                /// @src 1:27482:27483  "x"
                let _62 := var_x_1124
                let expr_1130 := _62
                /// @src 1:27487:27488  "0"
                let expr_1131 := 0x00
                /// @src 1:27482:27488  "x >= 0"
                let expr_1132 := iszero(slt(cleanup_t_int256(expr_1130), convert_t_rational_0_by_1_to_t_int256(expr_1131)))
                /// @src 1:27474:27489  "require(x >= 0)"
                require_helper(expr_1132)
                /// @src 1:27507:27508  "x"
                let _63 := var_x_1124
                let expr_1136 := _63
                /// @src 1:27511:27570  "57896044618658097711785492504343953926634992332820282019729"
                let expr_1137 := 0x09392ee8e921d5d073aff322e62439fcf32d7f344649470f91
                /// @src 1:27507:27570  "x < 57896044618658097711785492504343953926634992332820282019729"
                let expr_1138 := slt(cleanup_t_int256(expr_1136), convert_t_rational_57896044618658097711785492504343953926634992332820282019729_by_1_to_t_int256(expr_1137))
                /// @src 1:27499:27571  "require(x < 57896044618658097711785492504343953926634992332820282019729)"
                require_helper(expr_1138)
                /// @src 1:27859:27872  "PRBMathCommon"
                let expr_1144_address := linkersymbol("_prbmath/PRBMathCommon.sol:PRBMathCommon")
                /// @src 1:27886:27887  "x"
                let _64 := var_x_1124
                let expr_1148 := _64
                /// @src 1:27890:27895  "SCALE"
                let expr_1149 := constant_SCALE_249()
                /// @src 1:27886:27895  "x * SCALE"
                let expr_1150 := wrapping_mul_t_int256(expr_1148, expr_1149)

                /// @src 1:27878:27896  "uint256(x * SCALE)"
                let expr_1151 := convert_t_int256_to_t_uint256(expr_1150)
                /// @src 1:27859:27897  "PRBMathCommon.sqrt(uint256(x * SCALE))"
                let expr_1152 := fun_sqrt_2668(expr_1151)
                /// @src 1:27852:27898  "int256(PRBMathCommon.sqrt(uint256(x * SCALE)))"
                let expr_1153 := convert_t_uint256_to_t_int256(expr_1152)
                /// @src 1:27843:27898  "result = int256(PRBMathCommon.sqrt(uint256(x * SCALE)))"
                var_result_1127 := expr_1153
                let expr_1154 := expr_1153

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_1_by_1(value)))
            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function shift_right_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            function cleanup_t_rational_57896044618658097711785492504343953926634992332820282019728792003956564819967_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_57896044618658097711785492504343953926634992332820282019728792003956564819967_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_57896044618658097711785492504343953926634992332820282019728792003956564819967_by_1(value)))
            }

            /// @src 1:919:1035  "int256 internal constant MAX_SD59x18 = 57896044618658097711785492504343953926634992332820282019728792003956564819967"
            function constant_MAX_SD59x18_231() -> ret {
                /// @src 1:958:1035  "57896044618658097711785492504343953926634992332820282019728792003956564819967"
                let expr_230 := 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                let _80 := convert_t_rational_57896044618658097711785492504343953926634992332820282019728792003956564819967_by_1_to_t_int256(expr_230)

                ret := _80
            }

            /// @ast-id 1110
            /// @src 1:25686:26608  "function pow(int256 x, uint256 y) internal pure returns (int256 result) {..."
            function fun_pow_1110(var_x_1008, var_y_1010) -> var_result_1013 {
                /// @src 1:25743:25756  "int256 result"
                let zero_t_int256_65 := zero_value_for_split_t_int256()
                var_result_1013 := zero_t_int256_65

                /// @src 1:25795:25796  "x"
                let _66 := var_x_1008
                let expr_1020 := _66
                /// @src 1:25791:25797  "abs(x)"
                let expr_1021 := fun_abs_275(expr_1020)
                /// @src 1:25783:25798  "uint256(abs(x))"
                let expr_1022 := convert_t_int256_to_t_uint256(expr_1021)
                /// @src 1:25768:25798  "uint256 absX = uint256(abs(x))"
                let var_absX_1016 := expr_1022
                /// @src 1:25894:25895  "y"
                let _67 := var_y_1010
                let expr_1026 := _67
                /// @src 1:25898:25899  "1"
                let expr_1027 := 0x01
                /// @src 1:25894:25899  "y & 1"
                let expr_1028 := and(expr_1026, convert_t_rational_1_by_1_to_t_uint256(expr_1027))

                /// @src 1:25902:25903  "0"
                let expr_1029 := 0x00
                /// @src 1:25894:25903  "y & 1 > 0"
                let expr_1030 := gt(cleanup_t_uint256(expr_1028), convert_t_rational_0_by_1_to_t_uint256(expr_1029))
                /// @src 1:25894:25927  "y & 1 > 0 ? absX : uint256(SCALE)"
                let expr_1036
                switch expr_1030
                case 0 {
                    /// @src 1:25921:25926  "SCALE"
                    let expr_1034 := constant_SCALE_249()
                    /// @src 1:25913:25927  "uint256(SCALE)"
                    let expr_1035 := convert_t_int256_to_t_uint256(expr_1034)
                    /// @src 1:25894:25927  "y & 1 > 0 ? absX : uint256(SCALE)"
                    expr_1036 := expr_1035
                }
                default {
                    /// @src 1:25906:25910  "absX"
                    let _68 := var_absX_1016
                    let expr_1031 := _68
                    /// @src 1:25894:25927  "y & 1 > 0 ? absX : uint256(SCALE)"
                    expr_1036 := expr_1031
                }
                /// @src 1:25874:25927  "uint256 absResult = y & 1 > 0 ? absX : uint256(SCALE)"
                let var_absResult_1025 := expr_1036
                /// @src 1:26004:26283  "for (y >>= 1; y > 0; y >>= 1) {..."
                for {
                    /// @src 1:26015:26016  "1"
                    let expr_1039 := 0x01
                    /// @src 1:26009:26016  "y >>= 1"
                    let _69 := convert_t_rational_1_by_1_to_t_uint8(expr_1039)
                    let _70 := var_y_1010
                    let expr_1040 :=
                    shift_right_t_uint256_t_uint8(_70, _69)

                    var_y_1010 := expr_1040
                    } 1 {
                    /// @src 1:26031:26032  "1"
                    let expr_1046 := 0x01
                    /// @src 1:26025:26032  "y >>= 1"
                    let _71 := convert_t_rational_1_by_1_to_t_uint8(expr_1046)
                    let _72 := var_y_1010
                    let expr_1047 :=
                    shift_right_t_uint256_t_uint8(_72, _71)

                    var_y_1010 := expr_1047
                }
                {
                    /// @src 1:26018:26019  "y"
                    let _73 := var_y_1010
                    let expr_1042 := _73
                    /// @src 1:26022:26023  "0"
                    let expr_1043 := 0x00
                    /// @src 1:26018:26023  "y > 0"
                    let expr_1044 := gt(cleanup_t_uint256(expr_1042), convert_t_rational_0_by_1_to_t_uint256(expr_1043))
                    if iszero(expr_1044) { break }
                    /// @src 1:26055:26068  "PRBMathCommon"
                    let expr_1050_address := linkersymbol("_prbmath/PRBMathCommon.sol:PRBMathCommon")
                    /// @src 1:26086:26090  "absX"
                    let _74 := var_absX_1016
                    let expr_1052 := _74
                    /// @src 1:26092:26096  "absX"
                    let _75 := var_absX_1016
                    let expr_1053 := _75
                    /// @src 1:26055:26097  "PRBMathCommon.mulDivFixedPoint(absX, absX)"
                    let expr_1054 := fun_mulDivFixedPoint_2463(expr_1052, expr_1053)
                    /// @src 1:26048:26097  "absX = PRBMathCommon.mulDivFixedPoint(absX, absX)"
                    var_absX_1016 := expr_1054
                    let expr_1055 := expr_1054
                    /// @src 1:26170:26171  "y"
                    let _76 := var_y_1010
                    let expr_1057 := _76
                    /// @src 1:26174:26175  "1"
                    let expr_1058 := 0x01
                    /// @src 1:26170:26175  "y & 1"
                    let expr_1059 := and(expr_1057, convert_t_rational_1_by_1_to_t_uint256(expr_1058))

                    /// @src 1:26178:26179  "0"
                    let expr_1060 := 0x00
                    /// @src 1:26170:26179  "y & 1 > 0"
                    let expr_1061 := gt(cleanup_t_uint256(expr_1059), convert_t_rational_0_by_1_to_t_uint256(expr_1060))
                    /// @src 1:26166:26273  "if (y & 1 > 0) {..."
                    if expr_1061 {
                        /// @src 1:26211:26224  "PRBMathCommon"
                        let expr_1063_address := linkersymbol("_prbmath/PRBMathCommon.sol:PRBMathCommon")
                        /// @src 1:26242:26251  "absResult"
                        let _77 := var_absResult_1025
                        let expr_1065 := _77
                        /// @src 1:26253:26257  "absX"
                        let _78 := var_absX_1016
                        let expr_1066 := _78
                        /// @src 1:26211:26258  "PRBMathCommon.mulDivFixedPoint(absResult, absX)"
                        let expr_1067 := fun_mulDivFixedPoint_2463(expr_1065, expr_1066)
                        /// @src 1:26199:26258  "absResult = PRBMathCommon.mulDivFixedPoint(absResult, absX)"
                        var_absResult_1025 := expr_1067
                        let expr_1068 := expr_1067
                        /// @src 1:26166:26273  "if (y & 1 > 0) {..."
                    }
                }
                /// @src 1:26385:26394  "absResult"
                let _79 := var_absResult_1025
                let expr_1075 := _79
                /// @src 1:26406:26417  "MAX_SD59x18"
                let expr_1078 := constant_MAX_SD59x18_231()
                /// @src 1:26398:26418  "uint256(MAX_SD59x18)"
                let expr_1079 := convert_t_int256_to_t_uint256(expr_1078)
                /// @src 1:26385:26418  "absResult <= uint256(MAX_SD59x18)"
                let expr_1080 := iszero(gt(cleanup_t_uint256(expr_1075), cleanup_t_uint256(expr_1079)))
                /// @src 1:26377:26419  "require(absResult <= uint256(MAX_SD59x18))"
                require_helper(expr_1080)
                /// @src 1:26512:26513  "x"
                let _81 := var_x_1008
                let expr_1085 := _81
                /// @src 1:26516:26517  "0"
                let expr_1086 := 0x00
                /// @src 1:26512:26517  "x < 0"
                let expr_1087 := slt(cleanup_t_int256(expr_1085), convert_t_rational_0_by_1_to_t_int256(expr_1086))
                /// @src 1:26512:26531  "x < 0 && y & 1 == 1"
                let expr_1093 := expr_1087
                if expr_1093 {
                    /// @src 1:26521:26522  "y"
                    let _82 := var_y_1010
                    let expr_1088 := _82
                    /// @src 1:26525:26526  "1"
                    let expr_1089 := 0x01
                    /// @src 1:26521:26526  "y & 1"
                    let expr_1090 := and(expr_1088, convert_t_rational_1_by_1_to_t_uint256(expr_1089))

                    /// @src 1:26530:26531  "1"
                    let expr_1091 := 0x01
                    /// @src 1:26521:26531  "y & 1 == 1"
                    let expr_1092 := eq(cleanup_t_uint256(expr_1090), convert_t_rational_1_by_1_to_t_uint256(expr_1091))
                    /// @src 1:26512:26531  "x < 0 && y & 1 == 1"
                    expr_1093 := expr_1092
                }
                /// @src 1:26494:26531  "bool isNegative = x < 0 && y & 1 == 1"
                let var_isNegative_1084 := expr_1093
                /// @src 1:26550:26560  "isNegative"
                let _83 := var_isNegative_1084
                let expr_1096 := _83
                /// @src 1:26550:26601  "isNegative ? -int256(absResult) : int256(absResult)"
                let expr_1106
                switch expr_1096
                case 0 {
                    /// @src 1:26591:26600  "absResult"
                    let _84 := var_absResult_1025
                    let expr_1104 := _84
                    /// @src 1:26584:26601  "int256(absResult)"
                    let expr_1105 := convert_t_uint256_to_t_int256(expr_1104)
                    /// @src 1:26550:26601  "isNegative ? -int256(absResult) : int256(absResult)"
                    expr_1106 := expr_1105
                }
                default {
                    /// @src 1:26571:26580  "absResult"
                    let _85 := var_absResult_1025
                    let expr_1099 := _85
                    /// @src 1:26564:26581  "int256(absResult)"
                    let expr_1100 := convert_t_uint256_to_t_int256(expr_1099)
                    /// @src 1:26563:26581  "-int256(absResult)"
                    let expr_1101 := negate_t_int256(expr_1100)
                    /// @src 1:26550:26601  "isNegative ? -int256(absResult) : int256(absResult)"
                    expr_1106 := expr_1101
                }
                /// @src 1:26541:26601  "result = isNegative ? -int256(absResult) : int256(absResult)"
                var_result_1013 := expr_1106
                let expr_1107 := expr_1106

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_minus_57896044618658097711785492504343953926634992332820282019728792003956564819968_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_57896044618658097711785492504343953926634992332820282019728792003956564819968_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_minus_57896044618658097711785492504343953926634992332820282019728792003956564819968_by_1(value)))
            }

            /// @src 1:1343:1460  "int256 internal constant MIN_SD59x18 = -57896044618658097711785492504343953926634992332820282019728792003956564819968"
            function constant_MIN_SD59x18_240() -> ret {
                /// @src 1:1382:1460  "-57896044618658097711785492504343953926634992332820282019728792003956564819968"
                let expr_239 := 0x8000000000000000000000000000000000000000000000000000000000000000
                let _88 := convert_t_rational_minus_57896044618658097711785492504343953926634992332820282019728792003956564819968_by_1_to_t_int256(expr_239)

                ret := _88
            }

            /// @ast-id 994
            /// @src 1:24073:24791  "function mul(int256 x, int256 y) internal pure returns (int256 result) {..."
            function fun_mul_994(var_x_893, var_y_895) -> var_result_898 {
                /// @src 1:24129:24142  "int256 result"
                let zero_t_int256_86 := zero_value_for_split_t_int256()
                var_result_898 := zero_t_int256_86

                /// @src 1:24162:24163  "x"
                let _87 := var_x_893
                let expr_901 := _87
                /// @src 1:24166:24177  "MIN_SD59x18"
                let expr_902 := constant_MIN_SD59x18_240()
                /// @src 1:24162:24177  "x > MIN_SD59x18"
                let expr_903 := sgt(cleanup_t_int256(expr_901), cleanup_t_int256(expr_902))
                /// @src 1:24154:24178  "require(x > MIN_SD59x18)"
                require_helper(expr_903)
                /// @src 1:24196:24197  "y"
                let _89 := var_y_895
                let expr_907 := _89
                /// @src 1:24200:24211  "MIN_SD59x18"
                let expr_908 := constant_MIN_SD59x18_240()
                /// @src 1:24196:24211  "y > MIN_SD59x18"
                let expr_909 := sgt(cleanup_t_int256(expr_907), cleanup_t_int256(expr_908))
                /// @src 1:24188:24212  "require(y > MIN_SD59x18)"
                require_helper(expr_909)
                /// @src 1:24247:24257  "uint256 ax"
                let var_ax_913
                let zero_t_uint256_90 := zero_value_for_split_t_uint256()
                var_ax_913 := zero_t_uint256_90
                /// @src 1:24271:24281  "uint256 ay"
                let var_ay_916
                let zero_t_uint256_91 := zero_value_for_split_t_uint256()
                var_ay_916 := zero_t_uint256_91
                /// @src 1:24300:24301  "x"
                let _92 := var_x_893
                let expr_919 := _92
                /// @src 1:24304:24305  "0"
                let expr_920 := 0x00
                /// @src 1:24300:24305  "x < 0"
                let expr_921 := slt(cleanup_t_int256(expr_919), convert_t_rational_0_by_1_to_t_int256(expr_920))
                /// @src 1:24300:24332  "x < 0 ? uint256(-x) : uint256(x)"
                let expr_931
                switch expr_921
                case 0 {
                    /// @src 1:24330:24331  "x"
                    let _93 := var_x_893
                    let expr_929 := _93
                    /// @src 1:24322:24332  "uint256(x)"
                    let expr_930 := convert_t_int256_to_t_uint256(expr_929)
                    /// @src 1:24300:24332  "x < 0 ? uint256(-x) : uint256(x)"
                    expr_931 := expr_930
                }
                default {
                    /// @src 1:24317:24318  "x"
                    let _94 := var_x_893
                    let expr_924 := _94
                    /// @src 1:24316:24318  "-x"
                    let expr_925 := negate_wrapping_t_int256(expr_924)
                    /// @src 1:24308:24319  "uint256(-x)"
                    let expr_926 := convert_t_int256_to_t_uint256(expr_925)
                    /// @src 1:24300:24332  "x < 0 ? uint256(-x) : uint256(x)"
                    expr_931 := expr_926
                }
                /// @src 1:24295:24332  "ax = x < 0 ? uint256(-x) : uint256(x)"
                var_ax_913 := expr_931
                let expr_932 := expr_931
                /// @src 1:24351:24352  "y"
                let _95 := var_y_895
                let expr_935 := _95
                /// @src 1:24355:24356  "0"
                let expr_936 := 0x00
                /// @src 1:24351:24356  "y < 0"
                let expr_937 := slt(cleanup_t_int256(expr_935), convert_t_rational_0_by_1_to_t_int256(expr_936))
                /// @src 1:24351:24383  "y < 0 ? uint256(-y) : uint256(y)"
                let expr_947
                switch expr_937
                case 0 {
                    /// @src 1:24381:24382  "y"
                    let _96 := var_y_895
                    let expr_945 := _96
                    /// @src 1:24373:24383  "uint256(y)"
                    let expr_946 := convert_t_int256_to_t_uint256(expr_945)
                    /// @src 1:24351:24383  "y < 0 ? uint256(-y) : uint256(y)"
                    expr_947 := expr_946
                }
                default {
                    /// @src 1:24368:24369  "y"
                    let _97 := var_y_895
                    let expr_940 := _97
                    /// @src 1:24367:24369  "-y"
                    let expr_941 := negate_wrapping_t_int256(expr_940)
                    /// @src 1:24359:24370  "uint256(-y)"
                    let expr_942 := convert_t_int256_to_t_uint256(expr_941)
                    /// @src 1:24351:24383  "y < 0 ? uint256(-y) : uint256(y)"
                    expr_947 := expr_942
                }
                /// @src 1:24346:24383  "ay = y < 0 ? uint256(-y) : uint256(y)"
                var_ay_916 := expr_947
                let expr_948 := expr_947
                /// @src 1:24423:24436  "PRBMathCommon"
                let expr_952_address := linkersymbol("_prbmath/PRBMathCommon.sol:PRBMathCommon")
                /// @src 1:24454:24456  "ax"
                let _98 := var_ax_913
                let expr_954 := _98
                /// @src 1:24458:24460  "ay"
                let _99 := var_ay_916
                let expr_955 := _99
                /// @src 1:24423:24461  "PRBMathCommon.mulDivFixedPoint(ax, ay)"
                let expr_956 := fun_mulDivFixedPoint_2463(expr_954, expr_955)
                /// @src 1:24398:24461  "uint256 resultUnsigned = PRBMathCommon.mulDivFixedPoint(ax, ay)"
                let var_resultUnsigned_951 := expr_956
                /// @src 1:24483:24497  "resultUnsigned"
                let _100 := var_resultUnsigned_951
                let expr_959 := _100
                /// @src 1:24509:24520  "MAX_SD59x18"
                let expr_962 := constant_MAX_SD59x18_231()
                /// @src 1:24501:24521  "uint256(MAX_SD59x18)"
                let expr_963 := convert_t_int256_to_t_uint256(expr_962)
                /// @src 1:24483:24521  "resultUnsigned <= uint256(MAX_SD59x18)"
                let expr_964 := iszero(gt(cleanup_t_uint256(expr_959), cleanup_t_uint256(expr_963)))
                /// @src 1:24475:24522  "require(resultUnsigned <= uint256(MAX_SD59x18))"
                require_helper(expr_964)
                /// @src 1:24537:24547  "uint256 sx"
                let var_sx_968
                let zero_t_uint256_101 := zero_value_for_split_t_uint256()
                var_sx_968 := zero_t_uint256_101
                /// @src 1:24561:24571  "uint256 sy"
                let var_sy_971
                let zero_t_uint256_102 := zero_value_for_split_t_uint256()
                var_sy_971 := zero_t_uint256_102
                /// @src 1:24585:24689  "assembly {..."
                {
                    var_sx_968 := sgt(var_x_893, sub(0, 1))
                    var_sy_971 := sgt(var_y_895, sub(0, 1))
                }
                /// @src 1:24711:24713  "sx"
                let _103 := var_sx_968
                let expr_975 := _103
                /// @src 1:24716:24718  "sy"
                let _104 := var_sy_971
                let expr_976 := _104
                /// @src 1:24711:24718  "sx ^ sy"
                let expr_977 := xor(expr_975, expr_976)

                /// @src 1:24722:24723  "1"
                let expr_978 := 0x01
                /// @src 1:24711:24723  "sx ^ sy == 1"
                let expr_979 := eq(cleanup_t_uint256(expr_977), convert_t_rational_1_by_1_to_t_uint256(expr_978))
                /// @src 1:24711:24774  "sx ^ sy == 1 ? -int256(resultUnsigned) : int256(resultUnsigned)"
                let expr_989
                switch expr_979
                case 0 {
                    /// @src 1:24759:24773  "resultUnsigned"
                    let _105 := var_resultUnsigned_951
                    let expr_987 := _105
                    /// @src 1:24752:24774  "int256(resultUnsigned)"
                    let expr_988 := convert_t_uint256_to_t_int256(expr_987)
                    /// @src 1:24711:24774  "sx ^ sy == 1 ? -int256(resultUnsigned) : int256(resultUnsigned)"
                    expr_989 := expr_988
                }
                default {
                    /// @src 1:24734:24748  "resultUnsigned"
                    let _106 := var_resultUnsigned_951
                    let expr_982 := _106
                    /// @src 1:24727:24749  "int256(resultUnsigned)"
                    let expr_983 := convert_t_uint256_to_t_int256(expr_982)
                    /// @src 1:24726:24749  "-int256(resultUnsigned)"
                    let expr_984 := negate_wrapping_t_int256(expr_983)
                    /// @src 1:24711:24774  "sx ^ sy == 1 ? -int256(resultUnsigned) : int256(resultUnsigned)"
                    expr_989 := expr_984
                }
                /// @src 1:24702:24774  "result = sx ^ sy == 1 ? -int256(resultUnsigned) : int256(resultUnsigned)"
                var_result_898 := expr_989
                let expr_990 := expr_989

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_57896044618658097711785492504343953926634992332820282019728000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_57896044618658097711785492504343953926634992332820282019728000000000000000000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_57896044618658097711785492504343953926634992332820282019728000000000000000000_by_1(value)))
            }

            /// @src 1:1131:1253  "int256 internal constant MAX_WHOLE_SD59x18 = 57896044618658097711785492504343953926634992332820282019728000000000000000000"
            function constant_MAX_WHOLE_SD59x18_235() -> ret {
                /// @src 1:1176:1253  "57896044618658097711785492504343953926634992332820282019728000000000000000000"
                let expr_234 := 0x7ffffffffffffffffffffffffffffffffffffffffffffffff5023c9904400000
                let _109 := convert_t_rational_57896044618658097711785492504343953926634992332820282019728000000000000000000_by_1_to_t_int256(expr_234)

                ret := _109
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function mod_t_int256(x, y) -> r {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                if iszero(y) { panic_error_0x12() }
                r := smod(x, y)
            }

            function wrapping_sub_t_int256(x, y) -> diff {
                diff := cleanup_t_int256(sub(x, y))
            }

            function wrapping_add_t_int256(x, y) -> sum {
                sum := cleanup_t_int256(add(x, y))
            }

            /// @ast-id 353
            /// @src 1:3616:4115  "function ceil(int256 x) internal pure returns (int256 result) {..."
            function fun_ceil_353(var_x_309) -> var_result_312 {
                /// @src 1:3663:3676  "int256 result"
                let zero_t_int256_107 := zero_value_for_split_t_int256()
                var_result_312 := zero_t_int256_107

                /// @src 1:3696:3697  "x"
                let _108 := var_x_309
                let expr_315 := _108
                /// @src 1:3701:3718  "MAX_WHOLE_SD59x18"
                let expr_316 := constant_MAX_WHOLE_SD59x18_235()
                /// @src 1:3696:3718  "x <= MAX_WHOLE_SD59x18"
                let expr_317 := iszero(sgt(cleanup_t_int256(expr_315), cleanup_t_int256(expr_316)))
                /// @src 1:3688:3719  "require(x <= MAX_WHOLE_SD59x18)"
                require_helper(expr_317)
                /// @src 1:3772:3773  "x"
                let _110 := var_x_309
                let expr_322 := _110
                /// @src 1:3776:3781  "SCALE"
                let expr_323 := constant_SCALE_249()
                /// @src 1:3772:3781  "x % SCALE"
                let expr_324 := mod_t_int256(expr_322, expr_323)

                /// @src 1:3753:3781  "int256 remainder = x % SCALE"
                let var_remainder_321 := expr_324
                /// @src 1:3799:3808  "remainder"
                let _111 := var_remainder_321
                let expr_326 := _111
                /// @src 1:3812:3813  "0"
                let expr_327 := 0x00
                /// @src 1:3799:3813  "remainder == 0"
                let expr_328 := eq(cleanup_t_int256(expr_326), convert_t_rational_0_by_1_to_t_int256(expr_327))
                /// @src 1:3795:4099  "if (remainder == 0) {..."
                switch expr_328
                case 0 {
                    /// @src 1:3987:3988  "x"
                    let _112 := var_x_309
                    let expr_335 := _112
                    /// @src 1:3991:4000  "remainder"
                    let _113 := var_remainder_321
                    let expr_336 := _113
                    /// @src 1:3987:4000  "x - remainder"
                    let expr_337 := wrapping_sub_t_int256(expr_335, expr_336)

                    /// @src 1:3978:4000  "result = x - remainder"
                    var_result_312 := expr_337
                    let expr_338 := expr_337
                    /// @src 1:4022:4023  "x"
                    let _114 := var_x_309
                    let expr_340 := _114
                    /// @src 1:4026:4027  "0"
                    let expr_341 := 0x00
                    /// @src 1:4022:4027  "x > 0"
                    let expr_342 := sgt(cleanup_t_int256(expr_340), convert_t_rational_0_by_1_to_t_int256(expr_341))
                    /// @src 1:4018:4085  "if (x > 0) {..."
                    if expr_342 {
                        /// @src 1:4061:4066  "SCALE"
                        let expr_344 := constant_SCALE_249()
                        /// @src 1:4051:4066  "result += SCALE"
                        let _115 := var_result_312
                        let expr_345 := wrapping_add_t_int256(_115, expr_344)

                        var_result_312 := expr_345
                        /// @src 1:4018:4085  "if (x > 0) {..."
                    }
                    /// @src 1:3795:4099  "if (remainder == 0) {..."
                }
                default {
                    /// @src 1:3842:3843  "x"
                    let _116 := var_x_309
                    let expr_330 := _116
                    /// @src 1:3833:3843  "result = x"
                    var_result_312 := expr_330
                    let expr_331 := expr_330
                    /// @src 1:3795:4099  "if (remainder == 0) {..."
                }

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_332192809488736234_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_332192809488736234_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_332192809488736234_by_1(value)))
            }

            function wrapping_div_t_int256(x, y) -> r {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                if iszero(y) { panic_error_0x12() }
                r := sdiv(x, y)
            }

            /// @ast-id 775
            /// @src 1:13446:20776  "function log10(int256 x) internal pure returns (int256 result) {..."
            function fun_log10_775(var_x_745) -> var_result_748 {
                /// @src 1:13494:13507  "int256 result"
                let zero_t_int256_117 := zero_value_for_split_t_int256()
                var_result_748 := zero_t_int256_117

                /// @src 1:13527:13528  "x"
                let _118 := var_x_745
                let expr_751 := _118
                /// @src 1:13531:13532  "0"
                let expr_752 := 0x00
                /// @src 1:13527:13532  "x > 0"
                let expr_753 := sgt(cleanup_t_int256(expr_751), convert_t_rational_0_by_1_to_t_int256(expr_752))
                /// @src 1:13519:13533  "require(x > 0)"
                require_helper(expr_753)
                /// @src 1:13696:20555  "assembly {..."
                {
                    switch var_x_745
                    case 1 {
                        var_result_748 := mul(1000000000000000000, sub(0, 18))
                    }
                    case 10 {
                        var_result_748 := mul(1000000000000000000, sub(1, 18))
                    }
                    case 100 {
                        var_result_748 := mul(1000000000000000000, sub(2, 18))
                    }
                    case 1000 {
                        var_result_748 := mul(1000000000000000000, sub(3, 18))
                    }
                    case 10000 {
                        var_result_748 := mul(1000000000000000000, sub(4, 18))
                    }
                    case 100000 {
                        var_result_748 := mul(1000000000000000000, sub(5, 18))
                    }
                    case 1000000 {
                        var_result_748 := mul(1000000000000000000, sub(6, 18))
                    }
                    case 10000000 {
                        var_result_748 := mul(1000000000000000000, sub(7, 18))
                    }
                    case 100000000 {
                        var_result_748 := mul(1000000000000000000, sub(8, 18))
                    }
                    case 1000000000 {
                        var_result_748 := mul(1000000000000000000, sub(9, 18))
                    }
                    case 10000000000 {
                        var_result_748 := mul(1000000000000000000, sub(10, 18))
                    }
                    case 100000000000 {
                        var_result_748 := mul(1000000000000000000, sub(11, 18))
                    }
                    case 1000000000000 {
                        var_result_748 := mul(1000000000000000000, sub(12, 18))
                    }
                    case 10000000000000 {
                        var_result_748 := mul(1000000000000000000, sub(13, 18))
                    }
                    case 100000000000000 {
                        var_result_748 := mul(1000000000000000000, sub(14, 18))
                    }
                    case 1000000000000000 {
                        var_result_748 := mul(1000000000000000000, sub(15, 18))
                    }
                    case 10000000000000000 {
                        var_result_748 := mul(1000000000000000000, sub(16, 18))
                    }
                    case 100000000000000000 {
                        var_result_748 := mul(1000000000000000000, sub(17, 18))
                    }
                    case 1000000000000000000 { var_result_748 := 0 }
                    case 10000000000000000000 {
                        var_result_748 := 1000000000000000000
                    }
                    case 100000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 2)
                    }
                    case 1000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 3)
                    }
                    case 10000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 4)
                    }
                    case 100000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 5)
                    }
                    case 1000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 6)
                    }
                    case 10000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 7)
                    }
                    case 100000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 8)
                    }
                    case 1000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 9)
                    }
                    case 10000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 10)
                    }
                    case 100000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 11)
                    }
                    case 1000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 12)
                    }
                    case 10000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 13)
                    }
                    case 100000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 14)
                    }
                    case 1000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 15)
                    }
                    case 10000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 16)
                    }
                    case 100000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 17)
                    }
                    case 1000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 18)
                    }
                    case 10000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 19)
                    }
                    case 100000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 20)
                    }
                    case 1000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 21)
                    }
                    case 10000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 22)
                    }
                    case 100000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 23)
                    }
                    case 1000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 24)
                    }
                    case 10000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 25)
                    }
                    case 100000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 26)
                    }
                    case 1000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 27)
                    }
                    case 10000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 28)
                    }
                    case 100000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 29)
                    }
                    case 1000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 30)
                    }
                    case 10000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 31)
                    }
                    case 100000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 32)
                    }
                    case 1000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 33)
                    }
                    case 10000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 34)
                    }
                    case 100000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 35)
                    }
                    case 1000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 36)
                    }
                    case 10000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 37)
                    }
                    case 100000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 38)
                    }
                    case 1000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 39)
                    }
                    case 10000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 40)
                    }
                    case 100000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 41)
                    }
                    case 1000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 42)
                    }
                    case 10000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 43)
                    }
                    case 100000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 44)
                    }
                    case 1000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 45)
                    }
                    case 10000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 46)
                    }
                    case 100000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 47)
                    }
                    case 1000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 48)
                    }
                    case 10000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 49)
                    }
                    case 100000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 50)
                    }
                    case 1000000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 51)
                    }
                    case 10000000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 52)
                    }
                    case 100000000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 53)
                    }
                    case 1000000000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 54)
                    }
                    case 10000000000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 55)
                    }
                    case 100000000000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 56)
                    }
                    case 1000000000000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 57)
                    }
                    case 10000000000000000000000000000000000000000000000000000000000000000000000000000 {
                        var_result_748 := mul(1000000000000000000, 58)
                    }
                    default {
                        var_result_748 := 57896044618658097711785492504343953926634992332820282019728792003956564819967
                    }
                }
                /// @src 1:20569:20575  "result"
                let _119 := var_result_748
                let expr_757 := _119
                /// @src 1:20579:20590  "MAX_SD59x18"
                let expr_758 := constant_MAX_SD59x18_231()
                /// @src 1:20569:20590  "result == MAX_SD59x18"
                let expr_759 := eq(cleanup_t_int256(expr_757), cleanup_t_int256(expr_758))
                /// @src 1:20565:20770  "if (result == MAX_SD59x18) {..."
                if expr_759 {
                    /// @src 1:20725:20726  "x"
                    let _120 := var_x_745
                    let expr_762 := _120
                    /// @src 1:20720:20727  "log2(x)"
                    let expr_763 := fun_log2_890(expr_762)
                    /// @src 1:20730:20735  "SCALE"
                    let expr_764 := constant_SCALE_249()
                    /// @src 1:20720:20735  "log2(x) * SCALE"
                    let expr_765 := wrapping_mul_t_int256(expr_763, expr_764)

                    /// @src 1:20719:20736  "(log2(x) * SCALE)"
                    let expr_766 := expr_765
                    /// @src 1:20739:20757  "332192809488736234"
                    let expr_767 := 0x049c2f99a683dfea
                    /// @src 1:20719:20757  "(log2(x) * SCALE) / 332192809488736234"
                    let expr_768 := wrapping_div_t_int256(expr_766, convert_t_rational_332192809488736234_by_1_to_t_int256(expr_767))

                    /// @src 1:20710:20757  "result = (log2(x) * SCALE) / 332192809488736234"
                    var_result_748 := expr_768
                    let expr_769 := expr_768
                    /// @src 1:20565:20770  "if (result == MAX_SD59x18) {..."
                }

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 705
            /// @src 1:10873:11532  "function gm(int256 x, int256 y) internal pure returns (int256 result) {..."
            function fun_gm_705(var_x_656, var_y_658) -> var_result_661 {
                /// @src 1:10928:10941  "int256 result"
                let zero_t_int256_121 := zero_value_for_split_t_int256()
                var_result_661 := zero_t_int256_121

                /// @src 1:10957:10958  "x"
                let _122 := var_x_656
                let expr_663 := _122
                /// @src 1:10962:10963  "0"
                let expr_664 := 0x00
                /// @src 1:10957:10963  "x == 0"
                let expr_665 := eq(cleanup_t_int256(expr_663), convert_t_rational_0_by_1_to_t_int256(expr_664))
                /// @src 1:10953:10998  "if (x == 0) {..."
                if expr_665 {
                    /// @src 1:10986:10987  "0"
                    let expr_666 := 0x00
                    /// @src 1:10979:10987  "return 0"
                    var_result_661 := convert_t_rational_0_by_1_to_t_int256(expr_666)
                    leave
                    /// @src 1:10953:10998  "if (x == 0) {..."
                }
                /// @src 1:11129:11130  "x"
                let _123 := var_x_656
                let expr_672 := _123
                /// @src 1:11133:11134  "y"
                let _124 := var_y_658
                let expr_673 := _124
                /// @src 1:11129:11134  "x * y"
                let expr_674 := wrapping_mul_t_int256(expr_672, expr_673)

                /// @src 1:11117:11134  "int256 xy = x * y"
                let var_xy_671 := expr_674
                /// @src 1:11156:11158  "xy"
                let _125 := var_xy_671
                let expr_677 := _125
                /// @src 1:11161:11162  "x"
                let _126 := var_x_656
                let expr_678 := _126
                /// @src 1:11156:11162  "xy / x"
                let expr_679 := wrapping_div_t_int256(expr_677, expr_678)

                /// @src 1:11166:11167  "y"
                let _127 := var_y_658
                let expr_680 := _127
                /// @src 1:11156:11167  "xy / x == y"
                let expr_681 := eq(cleanup_t_int256(expr_679), cleanup_t_int256(expr_680))
                /// @src 1:11148:11168  "require(xy / x == y)"
                require_helper(expr_681)
                /// @src 1:11238:11240  "xy"
                let _128 := var_xy_671
                let expr_685 := _128
                /// @src 1:11244:11245  "0"
                let expr_686 := 0x00
                /// @src 1:11238:11245  "xy >= 0"
                let expr_687 := iszero(slt(cleanup_t_int256(expr_685), convert_t_rational_0_by_1_to_t_int256(expr_686)))
                /// @src 1:11230:11246  "require(xy >= 0)"
                require_helper(expr_687)
                /// @src 1:11483:11496  "PRBMathCommon"
                let expr_693_address := linkersymbol("_prbmath/PRBMathCommon.sol:PRBMathCommon")
                /// @src 1:11510:11512  "xy"
                let _129 := var_xy_671
                let expr_697 := _129
                /// @src 1:11502:11513  "uint256(xy)"
                let expr_698 := convert_t_int256_to_t_uint256(expr_697)
                /// @src 1:11483:11514  "PRBMathCommon.sqrt(uint256(xy))"
                let expr_699 := fun_sqrt_2668(expr_698)
                /// @src 1:11476:11515  "int256(PRBMathCommon.sqrt(uint256(xy)))"
                let expr_700 := convert_t_uint256_to_t_int256(expr_699)
                /// @src 1:11467:11515  "result = int256(PRBMathCommon.sqrt(uint256(xy)))"
                var_result_661 := expr_700
                let expr_701 := expr_700

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_128000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_128000000000000000000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_128000000000000000000_by_1(value)))
            }

            function cleanup_t_rational_128_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_128_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_128_by_1(value)))
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_left_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_left_dynamic(bits, cleanup_t_uint256(value)))
            }

            function wrapping_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := div(x, y)
            }

            function cleanup_t_rational_minus_59794705707972522261_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_59794705707972522261_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_minus_59794705707972522261_by_1(value)))
            }

            function cleanup_t_rational_1000000000000000000000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000000000000000000000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_1000000000000000000000000000000000000_by_1(value)))
            }

            /// @ast-id 590
            /// @src 1:7758:8728  "function exp2(int256 x) internal pure returns (int256 result) {..."
            function fun_exp2_590(var_x_528) -> var_result_531 {
                /// @src 1:7805:7818  "int256 result"
                let zero_t_int256_130 := zero_value_for_split_t_int256()
                var_result_531 := zero_t_int256_130

                /// @src 1:7880:7881  "x"
                let _131 := var_x_528
                let expr_533 := _131
                /// @src 1:7884:7885  "0"
                let expr_534 := 0x00
                /// @src 1:7880:7885  "x < 0"
                let expr_535 := slt(cleanup_t_int256(expr_533), convert_t_rational_0_by_1_to_t_int256(expr_534))
                /// @src 1:7876:8722  "if (x < 0) {..."
                switch expr_535
                case 0 {
                    /// @src 1:8346:8347  "x"
                    let _132 := var_x_528
                    let expr_556 := _132
                    /// @src 1:8350:8356  "128e18"
                    let expr_557 := 0x06f05b59d3b2000000
                    /// @src 1:8346:8356  "x < 128e18"
                    let expr_558 := slt(cleanup_t_int256(expr_556), convert_t_rational_128000000000000000000_by_1_to_t_int256(expr_557))
                    /// @src 1:8338:8357  "require(x < 128e18)"
                    require_helper(expr_558)
                    /// @src 1:8496:8497  "x"
                    let _133 := var_x_528
                    let expr_565 := _133
                    /// @src 1:8488:8498  "uint256(x)"
                    let expr_566 := convert_t_int256_to_t_uint256(expr_565)
                    /// @src 1:8502:8505  "128"
                    let expr_567 := 0x80
                    /// @src 1:8488:8505  "uint256(x) << 128"
                    let _134 := convert_t_rational_128_by_1_to_t_uint8(expr_567)
                    let expr_568 :=
                    shift_left_t_uint256_t_uint8(expr_566, _134)

                    /// @src 1:8487:8506  "(uint256(x) << 128)"
                    let expr_569 := expr_568
                    /// @src 1:8517:8522  "SCALE"
                    let expr_572 := constant_SCALE_249()
                    /// @src 1:8509:8523  "uint256(SCALE)"
                    let expr_573 := convert_t_int256_to_t_uint256(expr_572)
                    /// @src 1:8487:8523  "(uint256(x) << 128) / uint256(SCALE)"
                    let expr_574 := wrapping_div_t_uint256(expr_569, expr_573)

                    /// @src 1:8468:8523  "uint256 x128x128 = (uint256(x) << 128) / uint256(SCALE)"
                    let var_x128x128_562 := expr_574
                    /// @src 1:8668:8681  "PRBMathCommon"
                    let expr_579_address := linkersymbol("_prbmath/PRBMathCommon.sol:PRBMathCommon")
                    /// @src 1:8687:8695  "x128x128"
                    let _135 := var_x128x128_562
                    let expr_581 := _135
                    /// @src 1:8668:8696  "PRBMathCommon.exp2(x128x128)"
                    let expr_582 := fun_exp2_2162(expr_581)
                    /// @src 1:8661:8697  "int256(PRBMathCommon.exp2(x128x128))"
                    let expr_583 := convert_t_uint256_to_t_int256(expr_582)
                    /// @src 1:8652:8697  "result = int256(PRBMathCommon.exp2(x128x128))"
                    var_result_531 := expr_583
                    let expr_584 := expr_583
                    /// @src 1:7876:8722  "if (x < 0) {..."
                }
                default {
                    /// @src 1:8006:8007  "x"
                    let _136 := var_x_528
                    let expr_536 := _136
                    /// @src 1:8010:8031  "-59794705707972522261"
                    let expr_538 := 0xfffffffffffffffffffffffffffffffffffffffffffffffcc22e87f6eb468eeb
                    /// @src 1:8006:8031  "x < -59794705707972522261"
                    let expr_539 := slt(cleanup_t_int256(expr_536), convert_t_rational_minus_59794705707972522261_by_1_to_t_int256(expr_538))
                    /// @src 1:8002:8074  "if (x < -59794705707972522261) {..."
                    if expr_539 {
                        /// @src 1:8058:8059  "0"
                        let expr_540 := 0x00
                        /// @src 1:8051:8059  "return 0"
                        var_result_531 := convert_t_rational_0_by_1_to_t_int256(expr_540)
                        leave
                        /// @src 1:8002:8074  "if (x < -59794705707972522261) {..."
                    }
                    /// @src 1:8205:8209  "1e36"
                    let expr_545 := 0xc097ce7bc90715b34b9f1000000000
                    /// @src 1:8218:8219  "x"
                    let _137 := var_x_528
                    let expr_547 := _137
                    /// @src 1:8217:8219  "-x"
                    let expr_548 := negate_wrapping_t_int256(expr_547)
                    /// @src 1:8212:8220  "exp2(-x)"
                    let expr_549 := fun_exp2_590(expr_548)
                    /// @src 1:8205:8220  "1e36 / exp2(-x)"
                    let expr_550 := wrapping_div_t_int256(convert_t_rational_1000000000000000000000000000000000000_by_1_to_t_int256(expr_545), expr_549)

                    /// @src 1:8196:8220  "result = 1e36 / exp2(-x)"
                    var_result_531 := expr_550
                    let expr_551 := expr_550
                    /// @src 1:7876:8722  "if (x < 0) {..."
                }

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_minus_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_1_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_minus_1_by_1(value)))
            }

            function convert_t_rational_1_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function shift_right_signed_dynamic(bits, value) -> result {

                result := sar(bits, value)

            }

            function shift_right_t_int256_t_uint256(value, bits) -> result {
                bits := cleanup_t_uint256(bits)
                result := cleanup_t_int256(shift_right_signed_dynamic(bits, cleanup_t_int256(value)))
            }

            function cleanup_t_rational_500000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_500000000000000000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_500000000000000000_by_1(value)))
            }

            /// @src 1:787:829  "int256 internal constant HALF_SCALE = 5e17"
            function constant_HALF_SCALE_227() -> ret {
                /// @src 1:825:829  "5e17"
                let expr_226 := 0x06f05b59d3b20000
                let _151 := convert_t_rational_500000000000000000_by_1_to_t_int256(expr_226)

                ret := _151
            }

            function shift_right_t_int256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_int256(shift_right_signed_dynamic(bits, cleanup_t_int256(value)))
            }

            function convert_t_rational_2_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @ast-id 890
            /// @src 1:21409:23238  "function log2(int256 x) internal pure returns (int256 result) {..."
            function fun_log2_890(var_x_778) -> var_result_781 {
                /// @src 1:21456:21469  "int256 result"
                let zero_t_int256_138 := zero_value_for_split_t_int256()
                var_result_781 := zero_t_int256_138

                /// @src 1:21489:21490  "x"
                let _139 := var_x_778
                let expr_784 := _139
                /// @src 1:21493:21494  "0"
                let expr_785 := 0x00
                /// @src 1:21489:21494  "x > 0"
                let expr_786 := sgt(cleanup_t_int256(expr_784), convert_t_rational_0_by_1_to_t_int256(expr_785))
                /// @src 1:21481:21495  "require(x > 0)"
                require_helper(expr_786)
                /// @src 1:21585:21596  "int256 sign"
                let var_sign_790
                let zero_t_int256_140 := zero_value_for_split_t_int256()
                var_sign_790 := zero_t_int256_140
                /// @src 1:21614:21615  "x"
                let _141 := var_x_778
                let expr_792 := _141
                /// @src 1:21619:21624  "SCALE"
                let expr_793 := constant_SCALE_249()
                /// @src 1:21614:21624  "x >= SCALE"
                let expr_794 := iszero(slt(cleanup_t_int256(expr_792), cleanup_t_int256(expr_793)))
                /// @src 1:21610:21931  "if (x >= SCALE) {..."
                switch expr_794
                case 0 {
                    /// @src 1:21698:21700  "-1"
                    let expr_802 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 1:21691:21700  "sign = -1"
                    let _142 := convert_t_rational_minus_1_by_1_to_t_int256(expr_802)
                    var_sign_790 := _142
                    let expr_803 := _142
                    /// @src 1:21818:21917  "assembly {..."
                    {
                        var_x_778 := div(1000000000000000000000000000000000000, var_x_778)
                    }
                    /// @src 1:21610:21931  "if (x >= SCALE) {..."
                }
                default {
                    /// @src 1:21651:21652  "1"
                    let expr_796 := 0x01
                    /// @src 1:21644:21652  "sign = 1"
                    let _143 := convert_t_rational_1_by_1_to_t_int256(expr_796)
                    var_sign_790 := _143
                    let expr_797 := _143
                    /// @src 1:21610:21931  "if (x >= SCALE) {..."
                }
                /// @src 1:22079:22092  "PRBMathCommon"
                let expr_810_address := linkersymbol("_prbmath/PRBMathCommon.sol:PRBMathCommon")
                /// @src 1:22120:22121  "x"
                let _144 := var_x_778
                let expr_814 := _144
                /// @src 1:22124:22129  "SCALE"
                let expr_815 := constant_SCALE_249()
                /// @src 1:22120:22129  "x / SCALE"
                let expr_816 := wrapping_div_t_int256(expr_814, expr_815)

                /// @src 1:22112:22130  "uint256(x / SCALE)"
                let expr_817 := convert_t_int256_to_t_uint256(expr_816)
                /// @src 1:22079:22131  "PRBMathCommon.mostSignificantBit(uint256(x / SCALE))"
                let expr_818 := fun_mostSignificantBit_2287(expr_817)
                /// @src 1:22067:22131  "uint256 n = PRBMathCommon.mostSignificantBit(uint256(x / SCALE))"
                let var_n_809 := expr_818
                /// @src 1:22369:22370  "n"
                let _145 := var_n_809
                let expr_823 := _145
                /// @src 1:22362:22371  "int256(n)"
                let expr_824 := convert_t_uint256_to_t_int256(expr_823)
                /// @src 1:22374:22379  "SCALE"
                let expr_825 := constant_SCALE_249()
                /// @src 1:22362:22379  "int256(n) * SCALE"
                let expr_826 := wrapping_mul_t_int256(expr_824, expr_825)

                /// @src 1:22353:22379  "result = int256(n) * SCALE"
                var_result_781 := expr_826
                let expr_827 := expr_826
                /// @src 1:22444:22445  "x"
                let _146 := var_x_778
                let expr_831 := _146
                /// @src 1:22449:22450  "n"
                let _147 := var_n_809
                let expr_832 := _147
                /// @src 1:22444:22450  "x >> n"
                let expr_833 :=
                shift_right_t_int256_t_uint256(expr_831, expr_832)

                /// @src 1:22433:22450  "int256 y = x >> n"
                let var_y_830 := expr_833
                /// @src 1:22523:22524  "y"
                let _148 := var_y_830
                let expr_835 := _148
                /// @src 1:22528:22533  "SCALE"
                let expr_836 := constant_SCALE_249()
                /// @src 1:22523:22533  "y == SCALE"
                let expr_837 := eq(cleanup_t_int256(expr_835), cleanup_t_int256(expr_836))
                /// @src 1:22519:22588  "if (y == SCALE) {..."
                if expr_837 {
                    /// @src 1:22560:22566  "result"
                    let _149 := var_result_781
                    let expr_838 := _149
                    /// @src 1:22569:22573  "sign"
                    let _150 := var_sign_790
                    let expr_839 := _150
                    /// @src 1:22560:22573  "result * sign"
                    let expr_840 := wrapping_mul_t_int256(expr_838, expr_839)

                    /// @src 1:22553:22573  "return result * sign"
                    var_result_781 := expr_840
                    leave
                    /// @src 1:22519:22588  "if (y == SCALE) {..."
                }
                /// @src 1:22778:23194  "for (int256 delta = int256(HALF_SCALE); delta > 0; delta >>= 1) {..."
                for {
                    /// @src 1:22805:22815  "HALF_SCALE"
                    let expr_848 := constant_HALF_SCALE_227()
                    /// @src 1:22798:22816  "int256(HALF_SCALE)"
                    let expr_849 := expr_848
                    /// @src 1:22783:22816  "int256 delta = int256(HALF_SCALE)"
                    let var_delta_845 := expr_849
                    } 1 {
                    /// @src 1:22839:22840  "1"
                    let expr_855 := 0x01
                    /// @src 1:22829:22840  "delta >>= 1"
                    let _152 := convert_t_rational_1_by_1_to_t_uint8(expr_855)
                    let _153 := var_delta_845
                    let expr_856 :=
                    shift_right_t_int256_t_uint8(_153, _152)

                    var_delta_845 := expr_856
                }
                {
                    /// @src 1:22818:22823  "delta"
                    let _154 := var_delta_845
                    let expr_851 := _154
                    /// @src 1:22826:22827  "0"
                    let expr_852 := 0x00
                    /// @src 1:22818:22827  "delta > 0"
                    let expr_853 := sgt(cleanup_t_int256(expr_851), convert_t_rational_0_by_1_to_t_int256(expr_852))
                    if iszero(expr_853) { break }
                    /// @src 1:22865:22866  "y"
                    let _155 := var_y_830
                    let expr_859 := _155
                    /// @src 1:22869:22870  "y"
                    let _156 := var_y_830
                    let expr_860 := _156
                    /// @src 1:22865:22870  "y * y"
                    let expr_861 := wrapping_mul_t_int256(expr_859, expr_860)

                    /// @src 1:22864:22871  "(y * y)"
                    let expr_862 := expr_861
                    /// @src 1:22874:22879  "SCALE"
                    let expr_863 := constant_SCALE_249()
                    /// @src 1:22864:22879  "(y * y) / SCALE"
                    let expr_864 := wrapping_div_t_int256(expr_862, expr_863)

                    /// @src 1:22860:22879  "y = (y * y) / SCALE"
                    var_y_830 := expr_864
                    let expr_865 := expr_864
                    /// @src 1:22959:22960  "y"
                    let _157 := var_y_830
                    let expr_867 := _157
                    /// @src 1:22964:22965  "2"
                    let expr_868 := 0x02
                    /// @src 1:22968:22973  "SCALE"
                    let expr_869 := constant_SCALE_249()
                    /// @src 1:22964:22973  "2 * SCALE"
                    let expr_870 := wrapping_mul_t_int256(convert_t_rational_2_by_1_to_t_int256(expr_868), expr_869)

                    /// @src 1:22959:22973  "y >= 2 * SCALE"
                    let expr_871 := iszero(slt(cleanup_t_int256(expr_867), cleanup_t_int256(expr_870)))
                    /// @src 1:22955:23180  "if (y >= 2 * SCALE) {..."
                    if expr_871 {
                        /// @src 1:23070:23075  "delta"
                        let _158 := var_delta_845
                        let expr_873 := _158
                        /// @src 1:23060:23075  "result += delta"
                        let _159 := var_result_781
                        let expr_874 := wrapping_add_t_int256(_159, expr_873)

                        var_result_781 := expr_874
                        /// @src 1:23160:23161  "1"
                        let expr_877 := 0x01
                        /// @src 1:23154:23161  "y >>= 1"
                        let _160 := convert_t_rational_1_by_1_to_t_uint8(expr_877)
                        let _161 := var_y_830
                        let expr_878 :=
                        shift_right_t_int256_t_uint8(_161, _160)

                        var_y_830 := expr_878
                        /// @src 1:22955:23180  "if (y >= 2 * SCALE) {..."
                    }
                }
                /// @src 1:23217:23221  "sign"
                let _162 := var_sign_790
                let expr_885 := _162
                /// @src 1:23207:23221  "result *= sign"
                let _163 := var_result_781
                let expr_886 := wrapping_mul_t_int256(_163, expr_885)

                var_result_781 := expr_886

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_minus_41446531673892822322_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_41446531673892822322_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_minus_41446531673892822322_by_1(value)))
            }

            function cleanup_t_rational_88722839111672999628_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_88722839111672999628_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_88722839111672999628_by_1(value)))
            }

            function cleanup_t_rational_1442695040888963407_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1442695040888963407_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_1442695040888963407_by_1(value)))
            }

            /// @src 1:691:744  "int256 internal constant LOG2_E = 1442695040888963407"
            function constant_LOG2_E_223() -> ret {
                /// @src 1:725:744  "1442695040888963407"
                let expr_222 := 0x14057b7ef767814f
                let _168 := convert_t_rational_1442695040888963407_by_1_to_t_int256(expr_222)

                ret := _168
            }

            /// @ast-id 525
            /// @src 1:6622:7213  "function exp(int256 x) internal pure returns (int256 result) {..."
            function fun_exp_525(var_x_487) -> var_result_490 {
                /// @src 1:6668:6681  "int256 result"
                let zero_t_int256_164 := zero_value_for_split_t_int256()
                var_result_490 := zero_t_int256_164

                /// @src 1:6797:6798  "x"
                let _165 := var_x_487
                let expr_492 := _165
                /// @src 1:6801:6822  "-41446531673892822322"
                let expr_494 := 0xfffffffffffffffffffffffffffffffffffffffffffffffdc0d0570925a462ce
                /// @src 1:6797:6822  "x < -41446531673892822322"
                let expr_495 := slt(cleanup_t_int256(expr_492), convert_t_rational_minus_41446531673892822322_by_1_to_t_int256(expr_494))
                /// @src 1:6793:6857  "if (x < -41446531673892822322) {..."
                if expr_495 {
                    /// @src 1:6845:6846  "0"
                    let expr_496 := 0x00
                    /// @src 1:6838:6846  "return 0"
                    var_result_490 := convert_t_rational_0_by_1_to_t_int256(expr_496)
                    leave
                    /// @src 1:6793:6857  "if (x < -41446531673892822322) {..."
                }
                /// @src 1:6963:6964  "x"
                let _166 := var_x_487
                let expr_501 := _166
                /// @src 1:6967:6987  "88722839111672999628"
                let expr_502 := 0x04cf46d8192b672ecc
                /// @src 1:6963:6987  "x < 88722839111672999628"
                let expr_503 := slt(cleanup_t_int256(expr_501), convert_t_rational_88722839111672999628_by_1_to_t_int256(expr_502))
                /// @src 1:6955:6988  "require(x < 88722839111672999628)"
                require_helper(expr_503)
                /// @src 1:7116:7117  "x"
                let _167 := var_x_487
                let expr_508 := _167
                /// @src 1:7120:7126  "LOG2_E"
                let expr_509 := constant_LOG2_E_223()
                /// @src 1:7116:7126  "x * LOG2_E"
                let expr_510 := wrapping_mul_t_int256(expr_508, expr_509)

                /// @src 1:7088:7126  "int256 doubleScaleProduct = x * LOG2_E"
                let var_doubleScaleProduct_507 := expr_510
                /// @src 1:7155:7173  "doubleScaleProduct"
                let _169 := var_doubleScaleProduct_507
                let expr_514 := _169
                /// @src 1:7176:7186  "HALF_SCALE"
                let expr_515 := constant_HALF_SCALE_227()
                /// @src 1:7155:7186  "doubleScaleProduct + HALF_SCALE"
                let expr_516 := wrapping_add_t_int256(expr_514, expr_515)

                /// @src 1:7154:7187  "(doubleScaleProduct + HALF_SCALE)"
                let expr_517 := expr_516
                /// @src 1:7190:7195  "SCALE"
                let expr_518 := constant_SCALE_249()
                /// @src 1:7154:7195  "(doubleScaleProduct + HALF_SCALE) / SCALE"
                let expr_519 := wrapping_div_t_int256(expr_517, expr_518)

                /// @src 1:7149:7196  "exp2((doubleScaleProduct + HALF_SCALE) / SCALE)"
                let expr_520 := fun_exp2_590(expr_519)
                /// @src 1:7140:7196  "result = exp2((doubleScaleProduct + HALF_SCALE) / SCALE)"
                var_result_490 := expr_520
                let expr_521 := expr_520

            }
            /// @src 2:39:1342  "contract test {..."

            function wrapping_add_t_uint256(x, y) -> sum {
                sum := cleanup_t_uint256(add(x, y))
            }

            function wrapping_mul_t_uint256(x, y) -> product {
                product := cleanup_t_uint256(mul(x, y))
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            /// @ast-id 2414
            /// @src 0:11542:15507  "function mulDiv(..."
            function fun_mulDiv_2414(var_x_2290, var_y_2292, var_denominator_2294) -> var_result_2297 {
                /// @src 0:11654:11668  "uint256 result"
                let zero_t_uint256_170 := zero_value_for_split_t_uint256()
                var_result_2297 := zero_t_uint256_170

                /// @src 0:11968:11981  "uint256 prod0"
                let var_prod0_2300
                let zero_t_uint256_171 := zero_value_for_split_t_uint256()
                var_prod0_2300 := zero_t_uint256_171
                /// @src 0:12036:12049  "uint256 prod1"
                let var_prod1_2303
                let zero_t_uint256_172 := zero_value_for_split_t_uint256()
                var_prod1_2303 := zero_t_uint256_172
                /// @src 0:12103:12253  "assembly {..."
                {
                    let usr$mm := mulmod(var_x_2290, var_y_2292, not(0))
                    var_prod0_2300 := mul(var_x_2290, var_y_2292)
                    var_prod1_2303 := sub(sub(usr$mm, var_prod0_2300), lt(usr$mm, var_prod0_2300))
                }
                /// @src 0:12325:12330  "prod1"
                let _173 := var_prod1_2303
                let expr_2306 := _173
                /// @src 0:12334:12335  "0"
                let expr_2307 := 0x00
                /// @src 0:12325:12335  "prod1 == 0"
                let expr_2308 := eq(cleanup_t_uint256(expr_2306), convert_t_rational_0_by_1_to_t_uint256(expr_2307))
                /// @src 0:12321:12500  "if (prod1 == 0) {..."
                if expr_2308 {
                    /// @src 0:12359:12370  "denominator"
                    let _174 := var_denominator_2294
                    let expr_2310 := _174
                    /// @src 0:12373:12374  "0"
                    let expr_2311 := 0x00
                    /// @src 0:12359:12374  "denominator > 0"
                    let expr_2312 := gt(cleanup_t_uint256(expr_2310), convert_t_rational_0_by_1_to_t_uint256(expr_2311))
                    /// @src 0:12351:12375  "require(denominator > 0)"
                    require_helper(expr_2312)
                    /// @src 0:12389:12463  "assembly {..."
                    {
                        var_result_2297 := div(var_prod0_2300, var_denominator_2294)
                    }
                    /// @src 0:12483:12489  "result"
                    let _175 := var_result_2297
                    let expr_2316 := _175
                    /// @src 0:12476:12489  "return result"
                    var_result_2297 := expr_2316
                    leave
                    /// @src 0:12321:12500  "if (prod1 == 0) {..."
                }
                /// @src 0:12603:12614  "denominator"
                let _176 := var_denominator_2294
                let expr_2321 := _176
                /// @src 0:12617:12622  "prod1"
                let _177 := var_prod1_2303
                let expr_2322 := _177
                /// @src 0:12603:12622  "denominator > prod1"
                let expr_2323 := gt(cleanup_t_uint256(expr_2321), cleanup_t_uint256(expr_2322))
                /// @src 0:12595:12623  "require(denominator > prod1)"
                require_helper(expr_2323)
                /// @src 0:12859:12876  "uint256 remainder"
                let var_remainder_2327
                let zero_t_uint256_178 := zero_value_for_split_t_uint256()
                var_remainder_2327 := zero_t_uint256_178
                /// @src 0:12886:13161  "assembly {..."
                {
                    var_remainder_2327 := mulmod(var_x_2290, var_y_2292, var_denominator_2294)
                    var_prod1_2303 := sub(var_prod1_2303, gt(var_remainder_2327, var_prod0_2300))
                    var_prod0_2300 := sub(var_prod0_2300, var_remainder_2327)
                }
                /// @src 0:13497:13508  "denominator"
                let _179 := var_denominator_2294
                let expr_2332 := _179
                /// @src 0:13513:13524  "denominator"
                let _180 := var_denominator_2294
                let expr_2333 := _180
                /// @src 0:13512:13524  "~denominator"
                let expr_2334 := cleanup_t_uint256(not(expr_2333))
                /// @src 0:13527:13528  "1"
                let expr_2335 := 0x01
                /// @src 0:13512:13528  "~denominator + 1"
                let expr_2336 := wrapping_add_t_uint256(expr_2334, convert_t_rational_1_by_1_to_t_uint256(expr_2335))

                /// @src 0:13511:13529  "(~denominator + 1)"
                let expr_2337 := expr_2336
                /// @src 0:13497:13529  "denominator & (~denominator + 1)"
                let expr_2338 := and(expr_2332, expr_2337)

                /// @src 0:13479:13529  "uint256 lpotdod = denominator & (~denominator + 1)"
                let var_lpotdod_2331 := expr_2338
                /// @src 0:13543:13945  "assembly {..."
                {
                    var_denominator_2294 := div(var_denominator_2294, var_lpotdod_2331)
                    var_prod0_2300 := div(var_prod0_2300, var_lpotdod_2331)
                    var_lpotdod_2331 := add(div(sub(0, var_lpotdod_2331), var_lpotdod_2331), 1)
                }
                /// @src 0:14020:14025  "prod1"
                let _181 := var_prod1_2303
                let expr_2342 := _181
                /// @src 0:14028:14035  "lpotdod"
                let _182 := var_lpotdod_2331
                let expr_2343 := _182
                /// @src 0:14020:14035  "prod1 * lpotdod"
                let expr_2344 := wrapping_mul_t_uint256(expr_2342, expr_2343)

                /// @src 0:14011:14035  "prod0 |= prod1 * lpotdod"
                let _183 := var_prod0_2300
                let expr_2345 := or(_183, expr_2344)

                var_prod0_2300 := expr_2345
                /// @src 0:14375:14376  "3"
                let expr_2349 := 0x03
                /// @src 0:14379:14390  "denominator"
                let _184 := var_denominator_2294
                let expr_2350 := _184
                /// @src 0:14375:14390  "3 * denominator"
                let expr_2351 := wrapping_mul_t_uint256(convert_t_rational_3_by_1_to_t_uint256(expr_2349), expr_2350)

                /// @src 0:14374:14391  "(3 * denominator)"
                let expr_2352 := expr_2351
                /// @src 0:14394:14395  "2"
                let expr_2353 := 0x02
                /// @src 0:14374:14395  "(3 * denominator) ^ 2"
                let expr_2354 := xor(expr_2352, convert_t_rational_2_by_1_to_t_uint256(expr_2353))

                /// @src 0:14356:14395  "uint256 inverse = (3 * denominator) ^ 2"
                let var_inverse_2348 := expr_2354
                /// @src 0:14623:14624  "2"
                let expr_2357 := 0x02
                /// @src 0:14627:14638  "denominator"
                let _185 := var_denominator_2294
                let expr_2358 := _185
                /// @src 0:14641:14648  "inverse"
                let _186 := var_inverse_2348
                let expr_2359 := _186
                /// @src 0:14627:14648  "denominator * inverse"
                let expr_2360 := wrapping_mul_t_uint256(expr_2358, expr_2359)

                /// @src 0:14623:14648  "2 - denominator * inverse"
                let expr_2361 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2357), expr_2360)

                /// @src 0:14612:14648  "inverse *= 2 - denominator * inverse"
                let _187 := var_inverse_2348
                let expr_2362 := wrapping_mul_t_uint256(_187, expr_2361)

                var_inverse_2348 := expr_2362
                /// @src 0:14693:14694  "2"
                let expr_2365 := 0x02
                /// @src 0:14697:14708  "denominator"
                let _188 := var_denominator_2294
                let expr_2366 := _188
                /// @src 0:14711:14718  "inverse"
                let _189 := var_inverse_2348
                let expr_2367 := _189
                /// @src 0:14697:14718  "denominator * inverse"
                let expr_2368 := wrapping_mul_t_uint256(expr_2366, expr_2367)

                /// @src 0:14693:14718  "2 - denominator * inverse"
                let expr_2369 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2365), expr_2368)

                /// @src 0:14682:14718  "inverse *= 2 - denominator * inverse"
                let _190 := var_inverse_2348
                let expr_2370 := wrapping_mul_t_uint256(_190, expr_2369)

                var_inverse_2348 := expr_2370
                /// @src 0:14764:14765  "2"
                let expr_2373 := 0x02
                /// @src 0:14768:14779  "denominator"
                let _191 := var_denominator_2294
                let expr_2374 := _191
                /// @src 0:14782:14789  "inverse"
                let _192 := var_inverse_2348
                let expr_2375 := _192
                /// @src 0:14768:14789  "denominator * inverse"
                let expr_2376 := wrapping_mul_t_uint256(expr_2374, expr_2375)

                /// @src 0:14764:14789  "2 - denominator * inverse"
                let expr_2377 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2373), expr_2376)

                /// @src 0:14753:14789  "inverse *= 2 - denominator * inverse"
                let _193 := var_inverse_2348
                let expr_2378 := wrapping_mul_t_uint256(_193, expr_2377)

                var_inverse_2348 := expr_2378
                /// @src 0:14835:14836  "2"
                let expr_2381 := 0x02
                /// @src 0:14839:14850  "denominator"
                let _194 := var_denominator_2294
                let expr_2382 := _194
                /// @src 0:14853:14860  "inverse"
                let _195 := var_inverse_2348
                let expr_2383 := _195
                /// @src 0:14839:14860  "denominator * inverse"
                let expr_2384 := wrapping_mul_t_uint256(expr_2382, expr_2383)

                /// @src 0:14835:14860  "2 - denominator * inverse"
                let expr_2385 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2381), expr_2384)

                /// @src 0:14824:14860  "inverse *= 2 - denominator * inverse"
                let _196 := var_inverse_2348
                let expr_2386 := wrapping_mul_t_uint256(_196, expr_2385)

                var_inverse_2348 := expr_2386
                /// @src 0:14906:14907  "2"
                let expr_2389 := 0x02
                /// @src 0:14910:14921  "denominator"
                let _197 := var_denominator_2294
                let expr_2390 := _197
                /// @src 0:14924:14931  "inverse"
                let _198 := var_inverse_2348
                let expr_2391 := _198
                /// @src 0:14910:14931  "denominator * inverse"
                let expr_2392 := wrapping_mul_t_uint256(expr_2390, expr_2391)

                /// @src 0:14906:14931  "2 - denominator * inverse"
                let expr_2393 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2389), expr_2392)

                /// @src 0:14895:14931  "inverse *= 2 - denominator * inverse"
                let _199 := var_inverse_2348
                let expr_2394 := wrapping_mul_t_uint256(_199, expr_2393)

                var_inverse_2348 := expr_2394
                /// @src 0:14978:14979  "2"
                let expr_2397 := 0x02
                /// @src 0:14982:14993  "denominator"
                let _200 := var_denominator_2294
                let expr_2398 := _200
                /// @src 0:14996:15003  "inverse"
                let _201 := var_inverse_2348
                let expr_2399 := _201
                /// @src 0:14982:15003  "denominator * inverse"
                let expr_2400 := wrapping_mul_t_uint256(expr_2398, expr_2399)

                /// @src 0:14978:15003  "2 - denominator * inverse"
                let expr_2401 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2397), expr_2400)

                /// @src 0:14967:15003  "inverse *= 2 - denominator * inverse"
                let _202 := var_inverse_2348
                let expr_2402 := wrapping_mul_t_uint256(_202, expr_2401)

                var_inverse_2348 := expr_2402
                /// @src 0:15448:15453  "prod0"
                let _203 := var_prod0_2300
                let expr_2405 := _203
                /// @src 0:15456:15463  "inverse"
                let _204 := var_inverse_2348
                let expr_2406 := _204
                /// @src 0:15448:15463  "prod0 * inverse"
                let expr_2407 := wrapping_mul_t_uint256(expr_2405, expr_2406)

                /// @src 0:15439:15463  "result = prod0 * inverse"
                var_result_2297 := expr_2407
                let expr_2408 := expr_2407
                /// @src 0:15484:15490  "result"
                let _205 := var_result_2297
                let expr_2410 := _205
                /// @src 0:15477:15490  "return result"
                var_result_2297 := expr_2410
                leave

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_340282366920938463463374607431768211456_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463463374607431768211456_by_1(value)))
            }

            function cleanup_t_rational_64_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_64_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_64_by_1(value)))
            }

            function cleanup_t_rational_18446744073709551616_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18446744073709551616_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18446744073709551616_by_1(value)))
            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_32_by_1(value)))
            }

            function cleanup_t_rational_4294967296_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4294967296_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4294967296_by_1(value)))
            }

            function cleanup_t_rational_16_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_16_by_1(value)))
            }

            function cleanup_t_rational_65536_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_65536_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_65536_by_1(value)))
            }

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_8_by_1(value)))
            }

            function cleanup_t_rational_256_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_256_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_256_by_1(value)))
            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_4_by_1(value)))
            }

            function convert_t_rational_16_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16_by_1(value)))
            }

            function convert_t_rational_2_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_2_by_1(value)))
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8_by_1(value)))
            }

            /// @ast-id 2668
            /// @src 0:18137:19721  "function sqrt(uint256 x) internal pure returns (uint256 result) {..."
            function fun_sqrt_2668(var_x_2466) -> var_result_2469 {
                /// @src 0:18185:18199  "uint256 result"
                let zero_t_uint256_206 := zero_value_for_split_t_uint256()
                var_result_2469 := zero_t_uint256_206

                /// @src 0:18215:18216  "x"
                let _207 := var_x_2466
                let expr_2471 := _207
                /// @src 0:18220:18221  "0"
                let expr_2472 := 0x00
                /// @src 0:18215:18221  "x == 0"
                let expr_2473 := eq(cleanup_t_uint256(expr_2471), convert_t_rational_0_by_1_to_t_uint256(expr_2472))
                /// @src 0:18211:18256  "if (x == 0) {..."
                if expr_2473 {
                    /// @src 0:18244:18245  "0"
                    let expr_2474 := 0x00
                    /// @src 0:18237:18245  "return 0"
                    var_result_2469 := convert_t_rational_0_by_1_to_t_uint256(expr_2474)
                    leave
                    /// @src 0:18211:18256  "if (x == 0) {..."
                }
                /// @src 0:18392:18393  "x"
                let _208 := var_x_2466
                let expr_2482 := _208
                /// @src 0:18384:18394  "uint256(x)"
                let expr_2483 := expr_2482
                /// @src 0:18369:18394  "uint256 xAux = uint256(x)"
                let var_xAux_2479 := expr_2483
                /// @src 0:18413:18414  "1"
                let expr_2486 := 0x01
                /// @src 0:18404:18414  "result = 1"
                let _209 := convert_t_rational_1_by_1_to_t_uint256(expr_2486)
                var_result_2469 := _209
                let expr_2487 := _209
                /// @src 0:18428:18432  "xAux"
                let _210 := var_xAux_2479
                let expr_2489 := _210
                /// @src 0:18436:18471  "0x100000000000000000000000000000000"
                let expr_2490 := 0x0100000000000000000000000000000000
                /// @src 0:18428:18471  "xAux >= 0x100000000000000000000000000000000"
                let expr_2491 := iszero(lt(cleanup_t_uint256(expr_2489), convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_2490)))
                /// @src 0:18424:18537  "if (xAux >= 0x100000000000000000000000000000000) {..."
                if expr_2491 {
                    /// @src 0:18496:18499  "128"
                    let expr_2493 := 0x80
                    /// @src 0:18487:18499  "xAux >>= 128"
                    let _211 := convert_t_rational_128_by_1_to_t_uint8(expr_2493)
                    let _212 := var_xAux_2479
                    let expr_2494 :=
                    shift_right_t_uint256_t_uint8(_212, _211)

                    var_xAux_2479 := expr_2494
                    /// @src 0:18524:18526  "64"
                    let expr_2497 := 0x40
                    /// @src 0:18513:18526  "result <<= 64"
                    let _213 := convert_t_rational_64_by_1_to_t_uint8(expr_2497)
                    let _214 := var_result_2469
                    let expr_2498 :=
                    shift_left_t_uint256_t_uint8(_214, _213)

                    var_result_2469 := expr_2498
                    /// @src 0:18424:18537  "if (xAux >= 0x100000000000000000000000000000000) {..."
                }
                /// @src 0:18550:18554  "xAux"
                let _215 := var_xAux_2479
                let expr_2502 := _215
                /// @src 0:18558:18577  "0x10000000000000000"
                let expr_2503 := 0x010000000000000000
                /// @src 0:18550:18577  "xAux >= 0x10000000000000000"
                let expr_2504 := iszero(lt(cleanup_t_uint256(expr_2502), convert_t_rational_18446744073709551616_by_1_to_t_uint256(expr_2503)))
                /// @src 0:18546:18642  "if (xAux >= 0x10000000000000000) {..."
                if expr_2504 {
                    /// @src 0:18602:18604  "64"
                    let expr_2506 := 0x40
                    /// @src 0:18593:18604  "xAux >>= 64"
                    let _216 := convert_t_rational_64_by_1_to_t_uint8(expr_2506)
                    let _217 := var_xAux_2479
                    let expr_2507 :=
                    shift_right_t_uint256_t_uint8(_217, _216)

                    var_xAux_2479 := expr_2507
                    /// @src 0:18629:18631  "32"
                    let expr_2510 := 0x20
                    /// @src 0:18618:18631  "result <<= 32"
                    let _218 := convert_t_rational_32_by_1_to_t_uint8(expr_2510)
                    let _219 := var_result_2469
                    let expr_2511 :=
                    shift_left_t_uint256_t_uint8(_219, _218)

                    var_result_2469 := expr_2511
                    /// @src 0:18546:18642  "if (xAux >= 0x10000000000000000) {..."
                }
                /// @src 0:18655:18659  "xAux"
                let _220 := var_xAux_2479
                let expr_2515 := _220
                /// @src 0:18663:18674  "0x100000000"
                let expr_2516 := 0x0100000000
                /// @src 0:18655:18674  "xAux >= 0x100000000"
                let expr_2517 := iszero(lt(cleanup_t_uint256(expr_2515), convert_t_rational_4294967296_by_1_to_t_uint256(expr_2516)))
                /// @src 0:18651:18739  "if (xAux >= 0x100000000) {..."
                if expr_2517 {
                    /// @src 0:18699:18701  "32"
                    let expr_2519 := 0x20
                    /// @src 0:18690:18701  "xAux >>= 32"
                    let _221 := convert_t_rational_32_by_1_to_t_uint8(expr_2519)
                    let _222 := var_xAux_2479
                    let expr_2520 :=
                    shift_right_t_uint256_t_uint8(_222, _221)

                    var_xAux_2479 := expr_2520
                    /// @src 0:18726:18728  "16"
                    let expr_2523 := 0x10
                    /// @src 0:18715:18728  "result <<= 16"
                    let _223 := convert_t_rational_16_by_1_to_t_uint8(expr_2523)
                    let _224 := var_result_2469
                    let expr_2524 :=
                    shift_left_t_uint256_t_uint8(_224, _223)

                    var_result_2469 := expr_2524
                    /// @src 0:18651:18739  "if (xAux >= 0x100000000) {..."
                }
                /// @src 0:18752:18756  "xAux"
                let _225 := var_xAux_2479
                let expr_2528 := _225
                /// @src 0:18760:18767  "0x10000"
                let expr_2529 := 0x010000
                /// @src 0:18752:18767  "xAux >= 0x10000"
                let expr_2530 := iszero(lt(cleanup_t_uint256(expr_2528), convert_t_rational_65536_by_1_to_t_uint256(expr_2529)))
                /// @src 0:18748:18831  "if (xAux >= 0x10000) {..."
                if expr_2530 {
                    /// @src 0:18792:18794  "16"
                    let expr_2532 := 0x10
                    /// @src 0:18783:18794  "xAux >>= 16"
                    let _226 := convert_t_rational_16_by_1_to_t_uint8(expr_2532)
                    let _227 := var_xAux_2479
                    let expr_2533 :=
                    shift_right_t_uint256_t_uint8(_227, _226)

                    var_xAux_2479 := expr_2533
                    /// @src 0:18819:18820  "8"
                    let expr_2536 := 0x08
                    /// @src 0:18808:18820  "result <<= 8"
                    let _228 := convert_t_rational_8_by_1_to_t_uint8(expr_2536)
                    let _229 := var_result_2469
                    let expr_2537 :=
                    shift_left_t_uint256_t_uint8(_229, _228)

                    var_result_2469 := expr_2537
                    /// @src 0:18748:18831  "if (xAux >= 0x10000) {..."
                }
                /// @src 0:18844:18848  "xAux"
                let _230 := var_xAux_2479
                let expr_2541 := _230
                /// @src 0:18852:18857  "0x100"
                let expr_2542 := 0x0100
                /// @src 0:18844:18857  "xAux >= 0x100"
                let expr_2543 := iszero(lt(cleanup_t_uint256(expr_2541), convert_t_rational_256_by_1_to_t_uint256(expr_2542)))
                /// @src 0:18840:18920  "if (xAux >= 0x100) {..."
                if expr_2543 {
                    /// @src 0:18882:18883  "8"
                    let expr_2545 := 0x08
                    /// @src 0:18873:18883  "xAux >>= 8"
                    let _231 := convert_t_rational_8_by_1_to_t_uint8(expr_2545)
                    let _232 := var_xAux_2479
                    let expr_2546 :=
                    shift_right_t_uint256_t_uint8(_232, _231)

                    var_xAux_2479 := expr_2546
                    /// @src 0:18908:18909  "4"
                    let expr_2549 := 0x04
                    /// @src 0:18897:18909  "result <<= 4"
                    let _233 := convert_t_rational_4_by_1_to_t_uint8(expr_2549)
                    let _234 := var_result_2469
                    let expr_2550 :=
                    shift_left_t_uint256_t_uint8(_234, _233)

                    var_result_2469 := expr_2550
                    /// @src 0:18840:18920  "if (xAux >= 0x100) {..."
                }
                /// @src 0:18933:18937  "xAux"
                let _235 := var_xAux_2479
                let expr_2554 := _235
                /// @src 0:18941:18945  "0x10"
                let expr_2555 := 0x10
                /// @src 0:18933:18945  "xAux >= 0x10"
                let expr_2556 := iszero(lt(cleanup_t_uint256(expr_2554), convert_t_rational_16_by_1_to_t_uint256(expr_2555)))
                /// @src 0:18929:19008  "if (xAux >= 0x10) {..."
                if expr_2556 {
                    /// @src 0:18970:18971  "4"
                    let expr_2558 := 0x04
                    /// @src 0:18961:18971  "xAux >>= 4"
                    let _236 := convert_t_rational_4_by_1_to_t_uint8(expr_2558)
                    let _237 := var_xAux_2479
                    let expr_2559 :=
                    shift_right_t_uint256_t_uint8(_237, _236)

                    var_xAux_2479 := expr_2559
                    /// @src 0:18996:18997  "2"
                    let expr_2562 := 0x02
                    /// @src 0:18985:18997  "result <<= 2"
                    let _238 := convert_t_rational_2_by_1_to_t_uint8(expr_2562)
                    let _239 := var_result_2469
                    let expr_2563 :=
                    shift_left_t_uint256_t_uint8(_239, _238)

                    var_result_2469 := expr_2563
                    /// @src 0:18929:19008  "if (xAux >= 0x10) {..."
                }
                /// @src 0:19021:19025  "xAux"
                let _240 := var_xAux_2479
                let expr_2567 := _240
                /// @src 0:19029:19032  "0x8"
                let expr_2568 := 0x08
                /// @src 0:19021:19032  "xAux >= 0x8"
                let expr_2569 := iszero(lt(cleanup_t_uint256(expr_2567), convert_t_rational_8_by_1_to_t_uint256(expr_2568)))
                /// @src 0:19017:19071  "if (xAux >= 0x8) {..."
                if expr_2569 {
                    /// @src 0:19059:19060  "1"
                    let expr_2571 := 0x01
                    /// @src 0:19048:19060  "result <<= 1"
                    let _241 := convert_t_rational_1_by_1_to_t_uint8(expr_2571)
                    let _242 := var_result_2469
                    let expr_2572 :=
                    shift_left_t_uint256_t_uint8(_242, _241)

                    var_result_2469 := expr_2572
                    /// @src 0:19017:19071  "if (xAux >= 0x8) {..."
                }
                /// @src 0:19219:19225  "result"
                let _243 := var_result_2469
                let expr_2577 := _243
                /// @src 0:19228:19229  "x"
                let _244 := var_x_2466
                let expr_2578 := _244
                /// @src 0:19232:19238  "result"
                let _245 := var_result_2469
                let expr_2579 := _245
                /// @src 0:19228:19238  "x / result"
                let expr_2580 := wrapping_div_t_uint256(expr_2578, expr_2579)

                /// @src 0:19219:19238  "result + x / result"
                let expr_2581 := wrapping_add_t_uint256(expr_2577, expr_2580)

                /// @src 0:19218:19239  "(result + x / result)"
                let expr_2582 := expr_2581
                /// @src 0:19243:19244  "1"
                let expr_2583 := 0x01
                /// @src 0:19218:19244  "(result + x / result) >> 1"
                let _246 := convert_t_rational_1_by_1_to_t_uint8(expr_2583)
                let expr_2584 :=
                shift_right_t_uint256_t_uint8(expr_2582, _246)

                /// @src 0:19209:19244  "result = (result + x / result) >> 1"
                var_result_2469 := expr_2584
                let expr_2585 := expr_2584
                /// @src 0:19268:19274  "result"
                let _247 := var_result_2469
                let expr_2588 := _247
                /// @src 0:19277:19278  "x"
                let _248 := var_x_2466
                let expr_2589 := _248
                /// @src 0:19281:19287  "result"
                let _249 := var_result_2469
                let expr_2590 := _249
                /// @src 0:19277:19287  "x / result"
                let expr_2591 := wrapping_div_t_uint256(expr_2589, expr_2590)

                /// @src 0:19268:19287  "result + x / result"
                let expr_2592 := wrapping_add_t_uint256(expr_2588, expr_2591)

                /// @src 0:19267:19288  "(result + x / result)"
                let expr_2593 := expr_2592
                /// @src 0:19292:19293  "1"
                let expr_2594 := 0x01
                /// @src 0:19267:19293  "(result + x / result) >> 1"
                let _250 := convert_t_rational_1_by_1_to_t_uint8(expr_2594)
                let expr_2595 :=
                shift_right_t_uint256_t_uint8(expr_2593, _250)

                /// @src 0:19258:19293  "result = (result + x / result) >> 1"
                var_result_2469 := expr_2595
                let expr_2596 := expr_2595
                /// @src 0:19317:19323  "result"
                let _251 := var_result_2469
                let expr_2599 := _251
                /// @src 0:19326:19327  "x"
                let _252 := var_x_2466
                let expr_2600 := _252
                /// @src 0:19330:19336  "result"
                let _253 := var_result_2469
                let expr_2601 := _253
                /// @src 0:19326:19336  "x / result"
                let expr_2602 := wrapping_div_t_uint256(expr_2600, expr_2601)

                /// @src 0:19317:19336  "result + x / result"
                let expr_2603 := wrapping_add_t_uint256(expr_2599, expr_2602)

                /// @src 0:19316:19337  "(result + x / result)"
                let expr_2604 := expr_2603
                /// @src 0:19341:19342  "1"
                let expr_2605 := 0x01
                /// @src 0:19316:19342  "(result + x / result) >> 1"
                let _254 := convert_t_rational_1_by_1_to_t_uint8(expr_2605)
                let expr_2606 :=
                shift_right_t_uint256_t_uint8(expr_2604, _254)

                /// @src 0:19307:19342  "result = (result + x / result) >> 1"
                var_result_2469 := expr_2606
                let expr_2607 := expr_2606
                /// @src 0:19366:19372  "result"
                let _255 := var_result_2469
                let expr_2610 := _255
                /// @src 0:19375:19376  "x"
                let _256 := var_x_2466
                let expr_2611 := _256
                /// @src 0:19379:19385  "result"
                let _257 := var_result_2469
                let expr_2612 := _257
                /// @src 0:19375:19385  "x / result"
                let expr_2613 := wrapping_div_t_uint256(expr_2611, expr_2612)

                /// @src 0:19366:19385  "result + x / result"
                let expr_2614 := wrapping_add_t_uint256(expr_2610, expr_2613)

                /// @src 0:19365:19386  "(result + x / result)"
                let expr_2615 := expr_2614
                /// @src 0:19390:19391  "1"
                let expr_2616 := 0x01
                /// @src 0:19365:19391  "(result + x / result) >> 1"
                let _258 := convert_t_rational_1_by_1_to_t_uint8(expr_2616)
                let expr_2617 :=
                shift_right_t_uint256_t_uint8(expr_2615, _258)

                /// @src 0:19356:19391  "result = (result + x / result) >> 1"
                var_result_2469 := expr_2617
                let expr_2618 := expr_2617
                /// @src 0:19415:19421  "result"
                let _259 := var_result_2469
                let expr_2621 := _259
                /// @src 0:19424:19425  "x"
                let _260 := var_x_2466
                let expr_2622 := _260
                /// @src 0:19428:19434  "result"
                let _261 := var_result_2469
                let expr_2623 := _261
                /// @src 0:19424:19434  "x / result"
                let expr_2624 := wrapping_div_t_uint256(expr_2622, expr_2623)

                /// @src 0:19415:19434  "result + x / result"
                let expr_2625 := wrapping_add_t_uint256(expr_2621, expr_2624)

                /// @src 0:19414:19435  "(result + x / result)"
                let expr_2626 := expr_2625
                /// @src 0:19439:19440  "1"
                let expr_2627 := 0x01
                /// @src 0:19414:19440  "(result + x / result) >> 1"
                let _262 := convert_t_rational_1_by_1_to_t_uint8(expr_2627)
                let expr_2628 :=
                shift_right_t_uint256_t_uint8(expr_2626, _262)

                /// @src 0:19405:19440  "result = (result + x / result) >> 1"
                var_result_2469 := expr_2628
                let expr_2629 := expr_2628
                /// @src 0:19464:19470  "result"
                let _263 := var_result_2469
                let expr_2632 := _263
                /// @src 0:19473:19474  "x"
                let _264 := var_x_2466
                let expr_2633 := _264
                /// @src 0:19477:19483  "result"
                let _265 := var_result_2469
                let expr_2634 := _265
                /// @src 0:19473:19483  "x / result"
                let expr_2635 := wrapping_div_t_uint256(expr_2633, expr_2634)

                /// @src 0:19464:19483  "result + x / result"
                let expr_2636 := wrapping_add_t_uint256(expr_2632, expr_2635)

                /// @src 0:19463:19484  "(result + x / result)"
                let expr_2637 := expr_2636
                /// @src 0:19488:19489  "1"
                let expr_2638 := 0x01
                /// @src 0:19463:19489  "(result + x / result) >> 1"
                let _266 := convert_t_rational_1_by_1_to_t_uint8(expr_2638)
                let expr_2639 :=
                shift_right_t_uint256_t_uint8(expr_2637, _266)

                /// @src 0:19454:19489  "result = (result + x / result) >> 1"
                var_result_2469 := expr_2639
                let expr_2640 := expr_2639
                /// @src 0:19513:19519  "result"
                let _267 := var_result_2469
                let expr_2643 := _267
                /// @src 0:19522:19523  "x"
                let _268 := var_x_2466
                let expr_2644 := _268
                /// @src 0:19526:19532  "result"
                let _269 := var_result_2469
                let expr_2645 := _269
                /// @src 0:19522:19532  "x / result"
                let expr_2646 := wrapping_div_t_uint256(expr_2644, expr_2645)

                /// @src 0:19513:19532  "result + x / result"
                let expr_2647 := wrapping_add_t_uint256(expr_2643, expr_2646)

                /// @src 0:19512:19533  "(result + x / result)"
                let expr_2648 := expr_2647
                /// @src 0:19537:19538  "1"
                let expr_2649 := 0x01
                /// @src 0:19512:19538  "(result + x / result) >> 1"
                let _270 := convert_t_rational_1_by_1_to_t_uint8(expr_2649)
                let expr_2650 :=
                shift_right_t_uint256_t_uint8(expr_2648, _270)

                /// @src 0:19503:19538  "result = (result + x / result) >> 1"
                var_result_2469 := expr_2650
                let expr_2651 := expr_2650
                /// @src 0:19617:19618  "x"
                let _271 := var_x_2466
                let expr_2655 := _271
                /// @src 0:19621:19627  "result"
                let _272 := var_result_2469
                let expr_2656 := _272
                /// @src 0:19617:19627  "x / result"
                let expr_2657 := wrapping_div_t_uint256(expr_2655, expr_2656)

                /// @src 0:19589:19627  "uint256 roundedDownResult = x / result"
                let var_roundedDownResult_2654 := expr_2657
                /// @src 0:19648:19654  "result"
                let _273 := var_result_2469
                let expr_2659 := _273
                /// @src 0:19658:19675  "roundedDownResult"
                let _274 := var_roundedDownResult_2654
                let expr_2660 := _274
                /// @src 0:19648:19675  "result >= roundedDownResult"
                let expr_2661 := iszero(lt(cleanup_t_uint256(expr_2659), cleanup_t_uint256(expr_2660)))
                /// @src 0:19648:19704  "result >= roundedDownResult ? roundedDownResult : result"
                let expr_2664
                switch expr_2661
                case 0 {
                    /// @src 0:19698:19704  "result"
                    let _275 := var_result_2469
                    let expr_2663 := _275
                    /// @src 0:19648:19704  "result >= roundedDownResult ? roundedDownResult : result"
                    expr_2664 := expr_2663
                }
                default {
                    /// @src 0:19678:19695  "roundedDownResult"
                    let _276 := var_roundedDownResult_2654
                    let expr_2662 := _276
                    /// @src 0:19648:19704  "result >= roundedDownResult ? roundedDownResult : result"
                    expr_2664 := expr_2662
                }
                /// @src 0:19641:19704  "return result >= roundedDownResult ? roundedDownResult : result"
                var_result_2469 := expr_2664
                leave

            }
            /// @src 2:39:1342  "contract test {..."

            /// @ast-id 275
            /// @src 1:2074:2247  "function abs(int256 x) internal pure returns (int256 result) {..."
            function fun_abs_275(var_x_252) -> var_result_255 {
                /// @src 1:2120:2133  "int256 result"
                let zero_t_int256_277 := zero_value_for_split_t_int256()
                var_result_255 := zero_t_int256_277

                /// @src 1:2177:2178  "x"
                let _278 := var_x_252
                let expr_258 := _278
                /// @src 1:2181:2192  "MIN_SD59x18"
                let expr_259 := constant_MIN_SD59x18_240()
                /// @src 1:2177:2192  "x > MIN_SD59x18"
                let expr_260 := sgt(cleanup_t_int256(expr_258), cleanup_t_int256(expr_259))
                /// @src 1:2169:2193  "require(x > MIN_SD59x18)"
                require_helper(expr_260)
                /// @src 1:2216:2217  "x"
                let _279 := var_x_252
                let expr_264 := _279
                /// @src 1:2220:2221  "0"
                let expr_265 := 0x00
                /// @src 1:2216:2221  "x < 0"
                let expr_266 := slt(cleanup_t_int256(expr_264), convert_t_rational_0_by_1_to_t_int256(expr_265))
                /// @src 1:2216:2230  "x < 0 ? -x : x"
                let expr_270
                switch expr_266
                case 0 {
                    /// @src 1:2229:2230  "x"
                    let _280 := var_x_252
                    let expr_269 := _280
                    /// @src 1:2216:2230  "x < 0 ? -x : x"
                    expr_270 := expr_269
                }
                default {
                    /// @src 1:2225:2226  "x"
                    let _281 := var_x_252
                    let expr_267 := _281
                    /// @src 1:2224:2226  "-x"
                    let expr_268 := negate_wrapping_t_int256(expr_267)
                    /// @src 1:2216:2230  "x < 0 ? -x : x"
                    expr_270 := expr_268
                }
                /// @src 1:2207:2230  "result = x < 0 ? -x : x"
                var_result_255 := expr_270
                let expr_271 := expr_270

            }
            /// @src 2:39:1342  "contract test {..."

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            /// @src 0:465:503  "uint256 internal constant SCALE = 1e18"
            function constant_SCALE_1166() -> ret {
                /// @src 0:499:503  "1e18"
                let expr_1165 := 0x0de0b6b3a7640000
                let _289 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_1165)

                ret := _289
            }

            /// @ast-id 2463
            /// @src 0:16642:17722  "function mulDivFixedPoint(uint256 x, uint256 y) internal pure returns (uint256 result) {..."
            function fun_mulDivFixedPoint_2463(var_x_2417, var_y_2419) -> var_result_2422 {
                /// @src 0:16713:16727  "uint256 result"
                let zero_t_uint256_282 := zero_value_for_split_t_uint256()
                var_result_2422 := zero_t_uint256_282

                /// @src 0:16739:16752  "uint256 prod0"
                let var_prod0_2425
                let zero_t_uint256_283 := zero_value_for_split_t_uint256()
                var_prod0_2425 := zero_t_uint256_283
                /// @src 0:16762:16775  "uint256 prod1"
                let var_prod1_2428
                let zero_t_uint256_284 := zero_value_for_split_t_uint256()
                var_prod1_2428 := zero_t_uint256_284
                /// @src 0:16785:16935  "assembly {..."
                {
                    let usr$mm := mulmod(var_x_2417, var_y_2419, not(0))
                    var_prod0_2425 := mul(var_x_2417, var_y_2419)
                    var_prod1_2428 := sub(sub(usr$mm, var_prod0_2425), lt(usr$mm, var_prod0_2425))
                }
                /// @src 0:16945:16962  "uint256 remainder"
                let var_remainder_2432
                let zero_t_uint256_285 := zero_value_for_split_t_uint256()
                var_remainder_2432 := zero_t_uint256_285
                /// @src 0:16972:16991  "uint256 roundUpUnit"
                let var_roundUpUnit_2435
                let zero_t_uint256_286 := zero_value_for_split_t_uint256()
                var_roundUpUnit_2435 := zero_t_uint256_286
                /// @src 0:17001:17127  "assembly {..."
                {
                    var_remainder_2432 := mulmod(var_x_2417, var_y_2419, 1000000000000000000)
                    var_roundUpUnit_2435 := gt(var_remainder_2432, 499999999999999999)
                }
                /// @src 0:17141:17146  "prod1"
                let _287 := var_prod1_2428
                let expr_2438 := _287
                /// @src 0:17150:17151  "0"
                let expr_2439 := 0x00
                /// @src 0:17141:17151  "prod1 == 0"
                let expr_2440 := eq(cleanup_t_uint256(expr_2438), convert_t_rational_0_by_1_to_t_uint256(expr_2439))
                /// @src 0:17137:17289  "if (prod1 == 0) {..."
                if expr_2440 {
                    /// @src 0:17205:17210  "prod0"
                    let _288 := var_prod0_2425
                    let expr_2442 := _288
                    /// @src 0:17213:17218  "SCALE"
                    let expr_2443 := constant_SCALE_1166()
                    /// @src 0:17205:17218  "prod0 / SCALE"
                    let expr_2444 := wrapping_div_t_uint256(expr_2442, expr_2443)

                    /// @src 0:17204:17219  "(prod0 / SCALE)"
                    let expr_2445 := expr_2444
                    /// @src 0:17222:17233  "roundUpUnit"
                    let _290 := var_roundUpUnit_2435
                    let expr_2446 := _290
                    /// @src 0:17204:17233  "(prod0 / SCALE) + roundUpUnit"
                    let expr_2447 := wrapping_add_t_uint256(expr_2445, expr_2446)

                    /// @src 0:17195:17233  "result = (prod0 / SCALE) + roundUpUnit"
                    var_result_2422 := expr_2447
                    let expr_2448 := expr_2447
                    /// @src 0:17258:17264  "result"
                    let _291 := var_result_2422
                    let expr_2450 := _291
                    /// @src 0:17251:17264  "return result"
                    var_result_2422 := expr_2450
                    leave
                    /// @src 0:17137:17289  "if (prod1 == 0) {..."
                }
                /// @src 0:17307:17312  "SCALE"
                let expr_2456 := constant_SCALE_1166()
                /// @src 0:17315:17320  "prod1"
                let _292 := var_prod1_2428
                let expr_2457 := _292
                /// @src 0:17307:17320  "SCALE > prod1"
                let expr_2458 := gt(cleanup_t_uint256(expr_2456), cleanup_t_uint256(expr_2457))
                /// @src 0:17299:17321  "require(SCALE > prod1)"
                require_helper(expr_2458)
                /// @src 0:17332:17716  "assembly {..."
                {
                    var_result_2422 := add(mul(or(div(sub(var_prod0_2425, var_remainder_2432), 262144), mul(sub(var_prod1_2428, gt(var_remainder_2432, var_prod0_2425)), add(div(sub(0, 262144), 262144), 1))), 78156646155174841979727994598816262306175212592076161876661508869554232690281), var_roundUpUnit_2435)
                }

            }
            /// @src 2:39:1342  "contract test {..."

            function cleanup_t_rational_170141183460469231731687303715884105728_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_170141183460469231731687303715884105728_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_170141183460469231731687303715884105728_by_1(value)))
            }

            function cleanup_t_rational_481231938336009023090067544955250113854_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_481231938336009023090067544955250113854_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_481231938336009023090067544955250113854_by_1(value)))
            }

            function cleanup_t_rational_85070591730234615865843651857942052864_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_85070591730234615865843651857942052864_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_85070591730234615865843651857942052864_by_1(value)))
            }

            function cleanup_t_rational_404666211852346594250993303657235475949_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_404666211852346594250993303657235475949_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_404666211852346594250993303657235475949_by_1(value)))
            }

            function cleanup_t_rational_42535295865117307932921825928971026432_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_42535295865117307932921825928971026432_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_42535295865117307932921825928971026432_by_1(value)))
            }

            function cleanup_t_rational_371080552416919877990254144423618836768_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_371080552416919877990254144423618836768_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_371080552416919877990254144423618836768_by_1(value)))
            }

            function cleanup_t_rational_21267647932558653966460912964485513216_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21267647932558653966460912964485513216_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_21267647932558653966460912964485513216_by_1(value)))
            }

            function cleanup_t_rational_355347954397881497469693820312941593444_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_355347954397881497469693820312941593444_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_355347954397881497469693820312941593444_by_1(value)))
            }

            function cleanup_t_rational_10633823966279326983230456482242756608_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10633823966279326983230456482242756608_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10633823966279326983230456482242756608_by_1(value)))
            }

            function cleanup_t_rational_347733580493780928808815525413232318462_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_347733580493780928808815525413232318462_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_347733580493780928808815525413232318462_by_1(value)))
            }

            function cleanup_t_rational_5316911983139663491615228241121378304_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5316911983139663491615228241121378304_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5316911983139663491615228241121378304_by_1(value)))
            }

            function cleanup_t_rational_343987798952690256687074238090730651113_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_343987798952690256687074238090730651113_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_343987798952690256687074238090730651113_by_1(value)))
            }

            function cleanup_t_rational_2658455991569831745807614120560689152_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2658455991569831745807614120560689152_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2658455991569831745807614120560689152_by_1(value)))
            }

            function cleanup_t_rational_342130066523749645191881555545647086144_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_342130066523749645191881555545647086144_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_342130066523749645191881555545647086144_by_1(value)))
            }

            function cleanup_t_rational_1329227995784915872903807060280344576_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1329227995784915872903807060280344576_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1329227995784915872903807060280344576_by_1(value)))
            }

            function cleanup_t_rational_341204966012395051463589306197117539652_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_341204966012395051463589306197117539652_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_341204966012395051463589306197117539652_by_1(value)))
            }

            function cleanup_t_rational_664613997892457936451903530140172288_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_664613997892457936451903530140172288_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_664613997892457936451903530140172288_by_1(value)))
            }

            function cleanup_t_rational_340743354212339922144397487283364652956_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340743354212339922144397487283364652956_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340743354212339922144397487283364652956_by_1(value)))
            }

            function cleanup_t_rational_332306998946228968225951765070086144_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_332306998946228968225951765070086144_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_332306998946228968225951765070086144_by_1(value)))
            }

            function cleanup_t_rational_340512782555889898808859563671008026641_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340512782555889898808859563671008026641_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340512782555889898808859563671008026641_by_1(value)))
            }

            function cleanup_t_rational_166153499473114484112975882535043072_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_166153499473114484112975882535043072_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_166153499473114484112975882535043072_by_1(value)))
            }

            function cleanup_t_rational_340397555242326998647385072673097901536_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340397555242326998647385072673097901536_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340397555242326998647385072673097901536_by_1(value)))
            }

            function cleanup_t_rational_83076749736557242056487941267521536_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_83076749736557242056487941267521536_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_83076749736557242056487941267521536_by_1(value)))
            }

            function cleanup_t_rational_340339956208435708755752659506489956134_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340339956208435708755752659506489956134_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340339956208435708755752659506489956134_by_1(value)))
            }

            function cleanup_t_rational_41538374868278621028243970633760768_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_41538374868278621028243970633760768_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_41538374868278621028243970633760768_by_1(value)))
            }

            function cleanup_t_rational_340311160346490911934870813363085081662_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340311160346490911934870813363085081662_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340311160346490911934870813363085081662_by_1(value)))
            }

            function cleanup_t_rational_20769187434139310514121985316880384_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20769187434139310514121985316880384_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_20769187434139310514121985316880384_by_1(value)))
            }

            function cleanup_t_rational_340296763329178528376528243588334151604_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340296763329178528376528243588334151604_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340296763329178528376528243588334151604_by_1(value)))
            }

            function cleanup_t_rational_10384593717069655257060992658440192_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10384593717069655257060992658440192_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10384593717069655257060992658440192_by_1(value)))
            }

            function cleanup_t_rational_340289565048926066557319684044576333863_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340289565048926066557319684044576333863_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340289565048926066557319684044576333863_by_1(value)))
            }

            function cleanup_t_rational_5192296858534827628530496329220096_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5192296858534827628530496329220096_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5192296858534827628530496329220096_by_1(value)))
            }

            function cleanup_t_rational_340285965965899358974465315064323671037_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340285965965899358974465315064323671037_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340285965965899358974465315064323671037_by_1(value)))
            }

            function cleanup_t_rational_2596148429267413814265248164610048_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2596148429267413814265248164610048_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2596148429267413814265248164610048_by_1(value)))
            }

            function cleanup_t_rational_340284166438660709872813645066166128556_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340284166438660709872813645066166128556_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340284166438660709872813645066166128556_by_1(value)))
            }

            function cleanup_t_rational_1298074214633706907132624082305024_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1298074214633706907132624082305024_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1298074214633706907132624082305024_by_1(value)))
            }

            function cleanup_t_rational_340283266678610039476911010529773336522_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340283266678610039476911010529773336522_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340283266678610039476911010529773336522_by_1(value)))
            }

            function cleanup_t_rational_649037107316853453566312041152512_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_649037107316853453566312041152512_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_649037107316853453566312041152512_by_1(value)))
            }

            function cleanup_t_rational_340282816799476865065514053322893021549_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282816799476865065514053322893021549_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282816799476865065514053322893021549_by_1(value)))
            }

            function cleanup_t_rational_324518553658426726783156020576256_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_324518553658426726783156020576256_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_324518553658426726783156020576256_by_1(value)))
            }

            function cleanup_t_rational_340282591860133317712432962519222523747_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282591860133317712432962519222523747_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282591860133317712432962519222523747_by_1(value)))
            }

            function cleanup_t_rational_162259276829213363391578010288128_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_162259276829213363391578010288128_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_162259276829213363391578010288128_by_1(value)))
            }

            function cleanup_t_rational_340282479390517303956044167089727739433_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282479390517303956044167089727739433_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282479390517303956044167089727739433_by_1(value)))
            }

            function cleanup_t_rational_81129638414606681695789005144064_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_81129638414606681695789005144064_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_81129638414606681695789005144064_by_1(value)))
            }

            function cleanup_t_rational_340282423155723237052512385577070742060_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282423155723237052512385577070742060_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282423155723237052512385577070742060_by_1(value)))
            }

            function cleanup_t_rational_40564819207303340847894502572032_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_40564819207303340847894502572032_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_40564819207303340847894502572032_by_1(value)))
            }

            function cleanup_t_rational_340282395038329688593740233918090740390_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282395038329688593740233918090740390_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282395038329688593740233918090740390_by_1(value)))
            }

            function cleanup_t_rational_20282409603651670423947251286016_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20282409603651670423947251286016_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_20282409603651670423947251286016_by_1(value)))
            }

            function cleanup_t_rational_340282380979633785612518603506803612671_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282380979633785612518603506803612671_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282380979633785612518603506803612671_by_1(value)))
            }

            function cleanup_t_rational_10141204801825835211973625643008_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10141204801825835211973625643008_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10141204801825835211973625643008_by_1(value)))
            }

            function cleanup_t_rational_340282373950286051933938400987007267568_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282373950286051933938400987007267568_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282373950286051933938400987007267568_by_1(value)))
            }

            function cleanup_t_rational_5070602400912917605986812821504_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5070602400912917605986812821504_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5070602400912917605986812821504_by_1(value)))
            }

            function cleanup_t_rational_340282370435612239547654640565033792379_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282370435612239547654640565033792379_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282370435612239547654640565033792379_by_1(value)))
            }

            function cleanup_t_rational_2535301200456458802993406410752_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2535301200456458802993406410752_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2535301200456458802993406410752_by_1(value)))
            }

            function cleanup_t_rational_340282368678275346967764181521839267591_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282368678275346967764181521839267591_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282368678275346967764181521839267591_by_1(value)))
            }

            function cleanup_t_rational_1267650600228229401496703205376_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1267650600228229401496703205376_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1267650600228229401496703205376_by_1(value)))
            }

            function cleanup_t_rational_340282367799606904081131786786979136762_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282367799606904081131786786979136762_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282367799606904081131786786979136762_by_1(value)))
            }

            function cleanup_t_rational_633825300114114700748351602688_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_633825300114114700748351602688_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_633825300114114700748351602688_by_1(value)))
            }

            function cleanup_t_rational_340282367360272683488643795553082001444_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282367360272683488643795553082001444_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282367360272683488643795553082001444_by_1(value)))
            }

            function cleanup_t_rational_316912650057057350374175801344_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_316912650057057350374175801344_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_316912650057057350374175801344_by_1(value)))
            }

            function cleanup_t_rational_340282367140605573405106851149122747985_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282367140605573405106851149122747985_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282367140605573405106851149122747985_by_1(value)))
            }

            function cleanup_t_rational_158456325028528675187087900672_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_158456325028528675187087900672_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_158456325028528675187087900672_by_1(value)))
            }

            function cleanup_t_rational_340282367030772018416515141710341210064_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282367030772018416515141710341210064_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282367030772018416515141710341210064_by_1(value)))
            }

            function cleanup_t_rational_79228162514264337593543950336_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_79228162514264337593543950336_by_1(value)))
            }

            function cleanup_t_rational_340282366975855240935513477676743808340_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366975855240935513477676743808340_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366975855240935513477676743808340_by_1(value)))
            }

            function cleanup_t_rational_39614081257132168796771975168_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_39614081257132168796771975168_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_39614081257132168796771975168_by_1(value)))
            }

            function cleanup_t_rational_340282366948396852198336193330767679918_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366948396852198336193330767679918_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366948396852198336193330767679918_by_1(value)))
            }

            function cleanup_t_rational_19807040628566084398385987584_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_19807040628566084398385987584_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_19807040628566084398385987584_by_1(value)))
            }

            function cleanup_t_rational_340282366934667657830578438075407037645_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366934667657830578438075407037645_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366934667657830578438075407037645_by_1(value)))
            }

            function cleanup_t_rational_9903520314283042199192993792_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9903520314283042199192993792_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9903520314283042199192993792_by_1(value)))
            }

            function cleanup_t_rational_340282366927803060646907282177123794346_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366927803060646907282177123794346_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366927803060646907282177123794346_by_1(value)))
            }

            function cleanup_t_rational_4951760157141521099596496896_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4951760157141521099596496896_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4951760157141521099596496896_by_1(value)))
            }

            function cleanup_t_rational_340282366924370762055123634660330219951_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366924370762055123634660330219951_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366924370762055123634660330219951_by_1(value)))
            }

            function cleanup_t_rational_2475880078570760549798248448_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2475880078570760549798248448_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2475880078570760549798248448_by_1(value)))
            }

            function cleanup_t_rational_340282366922654612759244793510020291791_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366922654612759244793510020291791_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366922654612759244793510020291791_by_1(value)))
            }

            function cleanup_t_rational_1237940039285380274899124224_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1237940039285380274899124224_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1237940039285380274899124224_by_1(value)))
            }

            function cleanup_t_rational_340282366921796538111308618586887023374_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366921796538111308618586887023374_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366921796538111308618586887023374_by_1(value)))
            }

            function cleanup_t_rational_618970019642690137449562112_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_618970019642690137449562112_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_618970019642690137449562112_by_1(value)))
            }

            function cleanup_t_rational_340282366921367500787341342538325810693_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366921367500787341342538325810693_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366921367500787341342538325810693_by_1(value)))
            }

            function cleanup_t_rational_309485009821345068724781056_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_309485009821345068724781056_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_309485009821345068724781056_by_1(value)))
            }

            function cleanup_t_rational_340282366921152982125357907367296559437_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366921152982125357907367296559437_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366921152982125357907367296559437_by_1(value)))
            }

            function cleanup_t_rational_154742504910672534362390528_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_154742504910672534362390528_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_154742504910672534362390528_by_1(value)))
            }

            function cleanup_t_rational_340282366921045722794366240495094772542_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366921045722794366240495094772542_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366921045722794366240495094772542_by_1(value)))
            }

            function cleanup_t_rational_77371252455336267181195264_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_77371252455336267181195264_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_77371252455336267181195264_by_1(value)))
            }

            function cleanup_t_rational_340282366920992093128870419737322088774_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920992093128870419737322088774_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920992093128870419737322088774_by_1(value)))
            }

            function cleanup_t_rational_38685626227668133590597632_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_38685626227668133590597632_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_38685626227668133590597632_by_1(value)))
            }

            function cleanup_t_rational_340282366920965278296122512528017799309_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920965278296122512528017799309_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920965278296122512528017799309_by_1(value)))
            }

            function cleanup_t_rational_19342813113834066795298816_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_19342813113834066795298816_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_19342813113834066795298816_by_1(value)))
            }

            function cleanup_t_rational_340282366920951870879748559715761167681_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920951870879748559715761167681_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920951870879748559715761167681_by_1(value)))
            }

            function cleanup_t_rational_9671406556917033397649408_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9671406556917033397649408_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9671406556917033397649408_by_1(value)))
            }

            function cleanup_t_rational_340282366920945167171561583507731730143_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920945167171561583507731730143_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920945167171561583507731730143_by_1(value)))
            }

            function cleanup_t_rational_4835703278458516698824704_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4835703278458516698824704_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4835703278458516698824704_by_1(value)))
            }

            function cleanup_t_rational_340282366920941815317468095453241730943_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920941815317468095453241730943_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920941815317468095453241730943_by_1(value)))
            }

            function cleanup_t_rational_2417851639229258349412352_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2417851639229258349412352_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2417851639229258349412352_by_1(value)))
            }

            function cleanup_t_rational_340282366920940139390421351438377911235_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920940139390421351438377911235_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920940139390421351438377911235_by_1(value)))
            }

            function cleanup_t_rational_1208925819614629174706176_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1208925819614629174706176_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1208925819614629174706176_by_1(value)))
            }

            function cleanup_t_rational_340282366920939301426897979434041296355_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920939301426897979434041296355_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920939301426897979434041296355_by_1(value)))
            }

            function cleanup_t_rational_604462909807314587353088_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_604462909807314587353088_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_604462909807314587353088_by_1(value)))
            }

            function cleanup_t_rational_340282366920938882445136293432646812658_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938882445136293432646812658_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938882445136293432646812658_by_1(value)))
            }

            function cleanup_t_rational_302231454903657293676544_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_302231454903657293676544_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_302231454903657293676544_by_1(value)))
            }

            function cleanup_t_rational_340282366920938672954255450432143026745_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938672954255450432143026745_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938672954255450432143026745_by_1(value)))
            }

            function cleanup_t_rational_151115727451828646838272_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_151115727451828646838272_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_151115727451828646838272_by_1(value)))
            }

            function cleanup_t_rational_340282366920938568208815028931939497772_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938568208815028931939497772_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938568208815028931939497772_by_1(value)))
            }

            function cleanup_t_rational_75557863725914323419136_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_75557863725914323419136_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_75557863725914323419136_by_1(value)))
            }

            function cleanup_t_rational_340282366920938515836094818181849824282_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938515836094818181849824282_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938515836094818181849824282_by_1(value)))
            }

            function cleanup_t_rational_37778931862957161709568_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_37778931862957161709568_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_37778931862957161709568_by_1(value)))
            }

            function cleanup_t_rational_340282366920938489649734712806808010286_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938489649734712806808010286_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938489649734712806808010286_by_1(value)))
            }

            function cleanup_t_rational_18889465931478580854784_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18889465931478580854784_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18889465931478580854784_by_1(value)))
            }

            function cleanup_t_rational_340282366920938476556554660119287858975_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938476556554660119287858975_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938476556554660119287858975_by_1(value)))
            }

            function cleanup_t_rational_9444732965739290427392_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9444732965739290427392_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_9444732965739290427392_by_1(value)))
            }

            function cleanup_t_rational_340282366920938470009964633775527972242_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938470009964633775527972242_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938470009964633775527972242_by_1(value)))
            }

            function cleanup_t_rational_4722366482869645213696_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4722366482869645213696_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4722366482869645213696_by_1(value)))
            }

            function cleanup_t_rational_340282366920938466736669620603648076105_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938466736669620603648076105_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938466736669620603648076105_by_1(value)))
            }

            function cleanup_t_rational_2361183241434822606848_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2361183241434822606848_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2361183241434822606848_by_1(value)))
            }

            function cleanup_t_rational_340282366920938465100022114017708139845_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938465100022114017708139845_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938465100022114017708139845_by_1(value)))
            }

            function cleanup_t_rational_1180591620717411303424_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1180591620717411303424_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1180591620717411303424_by_1(value)))
            }

            function cleanup_t_rational_340282366920938464281698360724738174666_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938464281698360724738174666_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938464281698360724738174666_by_1(value)))
            }

            function cleanup_t_rational_590295810358705651712_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_590295810358705651712_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_590295810358705651712_by_1(value)))
            }

            function cleanup_t_rational_340282366920938463872536484078253192815_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463872536484078253192815_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463872536484078253192815_by_1(value)))
            }

            function cleanup_t_rational_295147905179352825856_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_295147905179352825856_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_295147905179352825856_by_1(value)))
            }

            function cleanup_t_rational_340282366920938463667955545755010702074_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463667955545755010702074_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463667955545755010702074_by_1(value)))
            }

            function cleanup_t_rational_147573952589676412928_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_147573952589676412928_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_147573952589676412928_by_1(value)))
            }

            function cleanup_t_rational_340282366920938463565665076593389456750_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463565665076593389456750_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463565665076593389456750_by_1(value)))
            }

            function cleanup_t_rational_73786976294838206464_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_73786976294838206464_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_73786976294838206464_by_1(value)))
            }

            function cleanup_t_rational_340282366920938463514519842012578834099_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463514519842012578834099_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463514519842012578834099_by_1(value)))
            }

            function cleanup_t_rational_36893488147419103232_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_36893488147419103232_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_36893488147419103232_by_1(value)))
            }

            function cleanup_t_rational_340282366920938463488947224722173522777_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463488947224722173522777_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463488947224722173522777_by_1(value)))
            }

            function cleanup_t_rational_340282366920938463476160916076970867116_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463476160916076970867116_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463476160916076970867116_by_1(value)))
            }

            function cleanup_t_rational_127_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_127_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_127_by_1(value)))
            }

            function shift_right_t_uint256_t_uint256(value, bits) -> result {
                bits := cleanup_t_uint256(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            /// @ast-id 2162
            /// @src 0:1172:9823  "function exp2(uint256 x) internal pure returns (uint256 result) {..."
            function fun_exp2_2162(var_x_1177) -> var_result_1180 {
                /// @src 0:1220:1234  "uint256 result"
                let zero_t_uint256_293 := zero_value_for_split_t_uint256()
                var_result_1180 := zero_t_uint256_293

                /// @src 0:1348:1382  "0x80000000000000000000000000000000"
                let expr_1183 := 0x80000000000000000000000000000000
                /// @src 0:1339:1382  "result = 0x80000000000000000000000000000000"
                let _294 := convert_t_rational_170141183460469231731687303715884105728_by_1_to_t_uint256(expr_1183)
                var_result_1180 := _294
                let expr_1184 := _294
                /// @src 0:1623:1624  "x"
                let _295 := var_x_1177
                let expr_1186 := _295
                /// @src 0:1627:1661  "0x80000000000000000000000000000000"
                let expr_1187 := 0x80000000000000000000000000000000
                /// @src 0:1623:1661  "x & 0x80000000000000000000000000000000"
                let expr_1188 := and(expr_1186, convert_t_rational_170141183460469231731687303715884105728_by_1_to_t_uint256(expr_1187))

                /// @src 0:1664:1665  "0"
                let expr_1189 := 0x00
                /// @src 0:1623:1665  "x & 0x80000000000000000000000000000000 > 0"
                let expr_1190 := gt(cleanup_t_uint256(expr_1188), convert_t_rational_0_by_1_to_t_uint256(expr_1189))
                /// @src 0:1619:1729  "if (x & 0x80000000000000000000000000000000 > 0) result = (result * 0x16A09E667F3BCC908B2FB1366EA957D3E) >> 128"
                if expr_1190 {
                    /// @src 0:1677:1683  "result"
                    let _296 := var_result_1180
                    let expr_1192 := _296
                    /// @src 0:1686:1721  "0x16A09E667F3BCC908B2FB1366EA957D3E"
                    let expr_1193 := 0x016a09e667f3bcc908b2fb1366ea957d3e
                    /// @src 0:1677:1721  "result * 0x16A09E667F3BCC908B2FB1366EA957D3E"
                    let expr_1194 := wrapping_mul_t_uint256(expr_1192, convert_t_rational_481231938336009023090067544955250113854_by_1_to_t_uint256(expr_1193))

                    /// @src 0:1676:1722  "(result * 0x16A09E667F3BCC908B2FB1366EA957D3E)"
                    let expr_1195 := expr_1194
                    /// @src 0:1726:1729  "128"
                    let expr_1196 := 0x80
                    /// @src 0:1676:1729  "(result * 0x16A09E667F3BCC908B2FB1366EA957D3E) >> 128"
                    let _297 := convert_t_rational_128_by_1_to_t_uint8(expr_1196)
                    let expr_1197 :=
                    shift_right_t_uint256_t_uint8(expr_1195, _297)

                    /// @src 0:1667:1729  "result = (result * 0x16A09E667F3BCC908B2FB1366EA957D3E) >> 128"
                    var_result_1180 := expr_1197
                    let expr_1198 := expr_1197
                    /// @src 0:1619:1729  "if (x & 0x80000000000000000000000000000000 > 0) result = (result * 0x16A09E667F3BCC908B2FB1366EA957D3E) >> 128"
                }
                /// @src 0:1747:1748  "x"
                let _298 := var_x_1177
                let expr_1201 := _298
                /// @src 0:1751:1785  "0x40000000000000000000000000000000"
                let expr_1202 := 0x40000000000000000000000000000000
                /// @src 0:1747:1785  "x & 0x40000000000000000000000000000000"
                let expr_1203 := and(expr_1201, convert_t_rational_85070591730234615865843651857942052864_by_1_to_t_uint256(expr_1202))

                /// @src 0:1788:1789  "0"
                let expr_1204 := 0x00
                /// @src 0:1747:1789  "x & 0x40000000000000000000000000000000 > 0"
                let expr_1205 := gt(cleanup_t_uint256(expr_1203), convert_t_rational_0_by_1_to_t_uint256(expr_1204))
                /// @src 0:1743:1853  "if (x & 0x40000000000000000000000000000000 > 0) result = (result * 0x1306FE0A31B7152DE8D5A46305C85EDED) >> 128"
                if expr_1205 {
                    /// @src 0:1801:1807  "result"
                    let _299 := var_result_1180
                    let expr_1207 := _299
                    /// @src 0:1810:1845  "0x1306FE0A31B7152DE8D5A46305C85EDED"
                    let expr_1208 := 0x01306fe0a31b7152de8d5a46305c85eded
                    /// @src 0:1801:1845  "result * 0x1306FE0A31B7152DE8D5A46305C85EDED"
                    let expr_1209 := wrapping_mul_t_uint256(expr_1207, convert_t_rational_404666211852346594250993303657235475949_by_1_to_t_uint256(expr_1208))

                    /// @src 0:1800:1846  "(result * 0x1306FE0A31B7152DE8D5A46305C85EDED)"
                    let expr_1210 := expr_1209
                    /// @src 0:1850:1853  "128"
                    let expr_1211 := 0x80
                    /// @src 0:1800:1853  "(result * 0x1306FE0A31B7152DE8D5A46305C85EDED) >> 128"
                    let _300 := convert_t_rational_128_by_1_to_t_uint8(expr_1211)
                    let expr_1212 :=
                    shift_right_t_uint256_t_uint8(expr_1210, _300)

                    /// @src 0:1791:1853  "result = (result * 0x1306FE0A31B7152DE8D5A46305C85EDED) >> 128"
                    var_result_1180 := expr_1212
                    let expr_1213 := expr_1212
                    /// @src 0:1743:1853  "if (x & 0x40000000000000000000000000000000 > 0) result = (result * 0x1306FE0A31B7152DE8D5A46305C85EDED) >> 128"
                }
                /// @src 0:1871:1872  "x"
                let _301 := var_x_1177
                let expr_1216 := _301
                /// @src 0:1875:1909  "0x20000000000000000000000000000000"
                let expr_1217 := 0x20000000000000000000000000000000
                /// @src 0:1871:1909  "x & 0x20000000000000000000000000000000"
                let expr_1218 := and(expr_1216, convert_t_rational_42535295865117307932921825928971026432_by_1_to_t_uint256(expr_1217))

                /// @src 0:1912:1913  "0"
                let expr_1219 := 0x00
                /// @src 0:1871:1913  "x & 0x20000000000000000000000000000000 > 0"
                let expr_1220 := gt(cleanup_t_uint256(expr_1218), convert_t_rational_0_by_1_to_t_uint256(expr_1219))
                /// @src 0:1867:1977  "if (x & 0x20000000000000000000000000000000 > 0) result = (result * 0x1172B83C7D517ADCDF7C8C50EB14A7920) >> 128"
                if expr_1220 {
                    /// @src 0:1925:1931  "result"
                    let _302 := var_result_1180
                    let expr_1222 := _302
                    /// @src 0:1934:1969  "0x1172B83C7D517ADCDF7C8C50EB14A7920"
                    let expr_1223 := 0x01172b83c7d517adcdf7c8c50eb14a7920
                    /// @src 0:1925:1969  "result * 0x1172B83C7D517ADCDF7C8C50EB14A7920"
                    let expr_1224 := wrapping_mul_t_uint256(expr_1222, convert_t_rational_371080552416919877990254144423618836768_by_1_to_t_uint256(expr_1223))

                    /// @src 0:1924:1970  "(result * 0x1172B83C7D517ADCDF7C8C50EB14A7920)"
                    let expr_1225 := expr_1224
                    /// @src 0:1974:1977  "128"
                    let expr_1226 := 0x80
                    /// @src 0:1924:1977  "(result * 0x1172B83C7D517ADCDF7C8C50EB14A7920) >> 128"
                    let _303 := convert_t_rational_128_by_1_to_t_uint8(expr_1226)
                    let expr_1227 :=
                    shift_right_t_uint256_t_uint8(expr_1225, _303)

                    /// @src 0:1915:1977  "result = (result * 0x1172B83C7D517ADCDF7C8C50EB14A7920) >> 128"
                    var_result_1180 := expr_1227
                    let expr_1228 := expr_1227
                    /// @src 0:1867:1977  "if (x & 0x20000000000000000000000000000000 > 0) result = (result * 0x1172B83C7D517ADCDF7C8C50EB14A7920) >> 128"
                }
                /// @src 0:1995:1996  "x"
                let _304 := var_x_1177
                let expr_1231 := _304
                /// @src 0:1999:2033  "0x10000000000000000000000000000000"
                let expr_1232 := 0x10000000000000000000000000000000
                /// @src 0:1995:2033  "x & 0x10000000000000000000000000000000"
                let expr_1233 := and(expr_1231, convert_t_rational_21267647932558653966460912964485513216_by_1_to_t_uint256(expr_1232))

                /// @src 0:2036:2037  "0"
                let expr_1234 := 0x00
                /// @src 0:1995:2037  "x & 0x10000000000000000000000000000000 > 0"
                let expr_1235 := gt(cleanup_t_uint256(expr_1233), convert_t_rational_0_by_1_to_t_uint256(expr_1234))
                /// @src 0:1991:2101  "if (x & 0x10000000000000000000000000000000 > 0) result = (result * 0x10B5586CF9890F6298B92B71842A98364) >> 128"
                if expr_1235 {
                    /// @src 0:2049:2055  "result"
                    let _305 := var_result_1180
                    let expr_1237 := _305
                    /// @src 0:2058:2093  "0x10B5586CF9890F6298B92B71842A98364"
                    let expr_1238 := 0x010b5586cf9890f6298b92b71842a98364
                    /// @src 0:2049:2093  "result * 0x10B5586CF9890F6298B92B71842A98364"
                    let expr_1239 := wrapping_mul_t_uint256(expr_1237, convert_t_rational_355347954397881497469693820312941593444_by_1_to_t_uint256(expr_1238))

                    /// @src 0:2048:2094  "(result * 0x10B5586CF9890F6298B92B71842A98364)"
                    let expr_1240 := expr_1239
                    /// @src 0:2098:2101  "128"
                    let expr_1241 := 0x80
                    /// @src 0:2048:2101  "(result * 0x10B5586CF9890F6298B92B71842A98364) >> 128"
                    let _306 := convert_t_rational_128_by_1_to_t_uint8(expr_1241)
                    let expr_1242 :=
                    shift_right_t_uint256_t_uint8(expr_1240, _306)

                    /// @src 0:2039:2101  "result = (result * 0x10B5586CF9890F6298B92B71842A98364) >> 128"
                    var_result_1180 := expr_1242
                    let expr_1243 := expr_1242
                    /// @src 0:1991:2101  "if (x & 0x10000000000000000000000000000000 > 0) result = (result * 0x10B5586CF9890F6298B92B71842A98364) >> 128"
                }
                /// @src 0:2119:2120  "x"
                let _307 := var_x_1177
                let expr_1246 := _307
                /// @src 0:2123:2156  "0x8000000000000000000000000000000"
                let expr_1247 := 0x08000000000000000000000000000000
                /// @src 0:2119:2156  "x & 0x8000000000000000000000000000000"
                let expr_1248 := and(expr_1246, convert_t_rational_10633823966279326983230456482242756608_by_1_to_t_uint256(expr_1247))

                /// @src 0:2159:2160  "0"
                let expr_1249 := 0x00
                /// @src 0:2119:2160  "x & 0x8000000000000000000000000000000 > 0"
                let expr_1250 := gt(cleanup_t_uint256(expr_1248), convert_t_rational_0_by_1_to_t_uint256(expr_1249))
                /// @src 0:2115:2224  "if (x & 0x8000000000000000000000000000000 > 0) result = (result * 0x1059B0D31585743AE7C548EB68CA417FE) >> 128"
                if expr_1250 {
                    /// @src 0:2172:2178  "result"
                    let _308 := var_result_1180
                    let expr_1252 := _308
                    /// @src 0:2181:2216  "0x1059B0D31585743AE7C548EB68CA417FE"
                    let expr_1253 := 0x01059b0d31585743ae7c548eb68ca417fe
                    /// @src 0:2172:2216  "result * 0x1059B0D31585743AE7C548EB68CA417FE"
                    let expr_1254 := wrapping_mul_t_uint256(expr_1252, convert_t_rational_347733580493780928808815525413232318462_by_1_to_t_uint256(expr_1253))

                    /// @src 0:2171:2217  "(result * 0x1059B0D31585743AE7C548EB68CA417FE)"
                    let expr_1255 := expr_1254
                    /// @src 0:2221:2224  "128"
                    let expr_1256 := 0x80
                    /// @src 0:2171:2224  "(result * 0x1059B0D31585743AE7C548EB68CA417FE) >> 128"
                    let _309 := convert_t_rational_128_by_1_to_t_uint8(expr_1256)
                    let expr_1257 :=
                    shift_right_t_uint256_t_uint8(expr_1255, _309)

                    /// @src 0:2162:2224  "result = (result * 0x1059B0D31585743AE7C548EB68CA417FE) >> 128"
                    var_result_1180 := expr_1257
                    let expr_1258 := expr_1257
                    /// @src 0:2115:2224  "if (x & 0x8000000000000000000000000000000 > 0) result = (result * 0x1059B0D31585743AE7C548EB68CA417FE) >> 128"
                }
                /// @src 0:2242:2243  "x"
                let _310 := var_x_1177
                let expr_1261 := _310
                /// @src 0:2246:2279  "0x4000000000000000000000000000000"
                let expr_1262 := 0x04000000000000000000000000000000
                /// @src 0:2242:2279  "x & 0x4000000000000000000000000000000"
                let expr_1263 := and(expr_1261, convert_t_rational_5316911983139663491615228241121378304_by_1_to_t_uint256(expr_1262))

                /// @src 0:2282:2283  "0"
                let expr_1264 := 0x00
                /// @src 0:2242:2283  "x & 0x4000000000000000000000000000000 > 0"
                let expr_1265 := gt(cleanup_t_uint256(expr_1263), convert_t_rational_0_by_1_to_t_uint256(expr_1264))
                /// @src 0:2238:2347  "if (x & 0x4000000000000000000000000000000 > 0) result = (result * 0x102C9A3E778060EE6F7CACA4F7A29BDE9) >> 128"
                if expr_1265 {
                    /// @src 0:2295:2301  "result"
                    let _311 := var_result_1180
                    let expr_1267 := _311
                    /// @src 0:2304:2339  "0x102C9A3E778060EE6F7CACA4F7A29BDE9"
                    let expr_1268 := 0x0102c9a3e778060ee6f7caca4f7a29bde9
                    /// @src 0:2295:2339  "result * 0x102C9A3E778060EE6F7CACA4F7A29BDE9"
                    let expr_1269 := wrapping_mul_t_uint256(expr_1267, convert_t_rational_343987798952690256687074238090730651113_by_1_to_t_uint256(expr_1268))

                    /// @src 0:2294:2340  "(result * 0x102C9A3E778060EE6F7CACA4F7A29BDE9)"
                    let expr_1270 := expr_1269
                    /// @src 0:2344:2347  "128"
                    let expr_1271 := 0x80
                    /// @src 0:2294:2347  "(result * 0x102C9A3E778060EE6F7CACA4F7A29BDE9) >> 128"
                    let _312 := convert_t_rational_128_by_1_to_t_uint8(expr_1271)
                    let expr_1272 :=
                    shift_right_t_uint256_t_uint8(expr_1270, _312)

                    /// @src 0:2285:2347  "result = (result * 0x102C9A3E778060EE6F7CACA4F7A29BDE9) >> 128"
                    var_result_1180 := expr_1272
                    let expr_1273 := expr_1272
                    /// @src 0:2238:2347  "if (x & 0x4000000000000000000000000000000 > 0) result = (result * 0x102C9A3E778060EE6F7CACA4F7A29BDE9) >> 128"
                }
                /// @src 0:2365:2366  "x"
                let _313 := var_x_1177
                let expr_1276 := _313
                /// @src 0:2369:2402  "0x2000000000000000000000000000000"
                let expr_1277 := 0x02000000000000000000000000000000
                /// @src 0:2365:2402  "x & 0x2000000000000000000000000000000"
                let expr_1278 := and(expr_1276, convert_t_rational_2658455991569831745807614120560689152_by_1_to_t_uint256(expr_1277))

                /// @src 0:2405:2406  "0"
                let expr_1279 := 0x00
                /// @src 0:2365:2406  "x & 0x2000000000000000000000000000000 > 0"
                let expr_1280 := gt(cleanup_t_uint256(expr_1278), convert_t_rational_0_by_1_to_t_uint256(expr_1279))
                /// @src 0:2361:2470  "if (x & 0x2000000000000000000000000000000 > 0) result = (result * 0x10163DA9FB33356D84A66AE336DCDFA40) >> 128"
                if expr_1280 {
                    /// @src 0:2418:2424  "result"
                    let _314 := var_result_1180
                    let expr_1282 := _314
                    /// @src 0:2427:2462  "0x10163DA9FB33356D84A66AE336DCDFA40"
                    let expr_1283 := 0x010163da9fb33356d84a66ae336dcdfa40
                    /// @src 0:2418:2462  "result * 0x10163DA9FB33356D84A66AE336DCDFA40"
                    let expr_1284 := wrapping_mul_t_uint256(expr_1282, convert_t_rational_342130066523749645191881555545647086144_by_1_to_t_uint256(expr_1283))

                    /// @src 0:2417:2463  "(result * 0x10163DA9FB33356D84A66AE336DCDFA40)"
                    let expr_1285 := expr_1284
                    /// @src 0:2467:2470  "128"
                    let expr_1286 := 0x80
                    /// @src 0:2417:2470  "(result * 0x10163DA9FB33356D84A66AE336DCDFA40) >> 128"
                    let _315 := convert_t_rational_128_by_1_to_t_uint8(expr_1286)
                    let expr_1287 :=
                    shift_right_t_uint256_t_uint8(expr_1285, _315)

                    /// @src 0:2408:2470  "result = (result * 0x10163DA9FB33356D84A66AE336DCDFA40) >> 128"
                    var_result_1180 := expr_1287
                    let expr_1288 := expr_1287
                    /// @src 0:2361:2470  "if (x & 0x2000000000000000000000000000000 > 0) result = (result * 0x10163DA9FB33356D84A66AE336DCDFA40) >> 128"
                }
                /// @src 0:2488:2489  "x"
                let _316 := var_x_1177
                let expr_1291 := _316
                /// @src 0:2492:2525  "0x1000000000000000000000000000000"
                let expr_1292 := 0x01000000000000000000000000000000
                /// @src 0:2488:2525  "x & 0x1000000000000000000000000000000"
                let expr_1293 := and(expr_1291, convert_t_rational_1329227995784915872903807060280344576_by_1_to_t_uint256(expr_1292))

                /// @src 0:2528:2529  "0"
                let expr_1294 := 0x00
                /// @src 0:2488:2529  "x & 0x1000000000000000000000000000000 > 0"
                let expr_1295 := gt(cleanup_t_uint256(expr_1293), convert_t_rational_0_by_1_to_t_uint256(expr_1294))
                /// @src 0:2484:2593  "if (x & 0x1000000000000000000000000000000 > 0) result = (result * 0x100B1AFA5ABCBED6129AB13EC11DC9544) >> 128"
                if expr_1295 {
                    /// @src 0:2541:2547  "result"
                    let _317 := var_result_1180
                    let expr_1297 := _317
                    /// @src 0:2550:2585  "0x100B1AFA5ABCBED6129AB13EC11DC9544"
                    let expr_1298 := 0x0100b1afa5abcbed6129ab13ec11dc9544
                    /// @src 0:2541:2585  "result * 0x100B1AFA5ABCBED6129AB13EC11DC9544"
                    let expr_1299 := wrapping_mul_t_uint256(expr_1297, convert_t_rational_341204966012395051463589306197117539652_by_1_to_t_uint256(expr_1298))

                    /// @src 0:2540:2586  "(result * 0x100B1AFA5ABCBED6129AB13EC11DC9544)"
                    let expr_1300 := expr_1299
                    /// @src 0:2590:2593  "128"
                    let expr_1301 := 0x80
                    /// @src 0:2540:2593  "(result * 0x100B1AFA5ABCBED6129AB13EC11DC9544) >> 128"
                    let _318 := convert_t_rational_128_by_1_to_t_uint8(expr_1301)
                    let expr_1302 :=
                    shift_right_t_uint256_t_uint8(expr_1300, _318)

                    /// @src 0:2531:2593  "result = (result * 0x100B1AFA5ABCBED6129AB13EC11DC9544) >> 128"
                    var_result_1180 := expr_1302
                    let expr_1303 := expr_1302
                    /// @src 0:2484:2593  "if (x & 0x1000000000000000000000000000000 > 0) result = (result * 0x100B1AFA5ABCBED6129AB13EC11DC9544) >> 128"
                }
                /// @src 0:2611:2612  "x"
                let _319 := var_x_1177
                let expr_1306 := _319
                /// @src 0:2615:2647  "0x800000000000000000000000000000"
                let expr_1307 := 0x800000000000000000000000000000
                /// @src 0:2611:2647  "x & 0x800000000000000000000000000000"
                let expr_1308 := and(expr_1306, convert_t_rational_664613997892457936451903530140172288_by_1_to_t_uint256(expr_1307))

                /// @src 0:2650:2651  "0"
                let expr_1309 := 0x00
                /// @src 0:2611:2651  "x & 0x800000000000000000000000000000 > 0"
                let expr_1310 := gt(cleanup_t_uint256(expr_1308), convert_t_rational_0_by_1_to_t_uint256(expr_1309))
                /// @src 0:2607:2715  "if (x & 0x800000000000000000000000000000 > 0) result = (result * 0x10058C86DA1C09EA1FF19D294CF2F679C) >> 128"
                if expr_1310 {
                    /// @src 0:2663:2669  "result"
                    let _320 := var_result_1180
                    let expr_1312 := _320
                    /// @src 0:2672:2707  "0x10058C86DA1C09EA1FF19D294CF2F679C"
                    let expr_1313 := 0x010058c86da1c09ea1ff19d294cf2f679c
                    /// @src 0:2663:2707  "result * 0x10058C86DA1C09EA1FF19D294CF2F679C"
                    let expr_1314 := wrapping_mul_t_uint256(expr_1312, convert_t_rational_340743354212339922144397487283364652956_by_1_to_t_uint256(expr_1313))

                    /// @src 0:2662:2708  "(result * 0x10058C86DA1C09EA1FF19D294CF2F679C)"
                    let expr_1315 := expr_1314
                    /// @src 0:2712:2715  "128"
                    let expr_1316 := 0x80
                    /// @src 0:2662:2715  "(result * 0x10058C86DA1C09EA1FF19D294CF2F679C) >> 128"
                    let _321 := convert_t_rational_128_by_1_to_t_uint8(expr_1316)
                    let expr_1317 :=
                    shift_right_t_uint256_t_uint8(expr_1315, _321)

                    /// @src 0:2653:2715  "result = (result * 0x10058C86DA1C09EA1FF19D294CF2F679C) >> 128"
                    var_result_1180 := expr_1317
                    let expr_1318 := expr_1317
                    /// @src 0:2607:2715  "if (x & 0x800000000000000000000000000000 > 0) result = (result * 0x10058C86DA1C09EA1FF19D294CF2F679C) >> 128"
                }
                /// @src 0:2733:2734  "x"
                let _322 := var_x_1177
                let expr_1321 := _322
                /// @src 0:2737:2769  "0x400000000000000000000000000000"
                let expr_1322 := 0x400000000000000000000000000000
                /// @src 0:2733:2769  "x & 0x400000000000000000000000000000"
                let expr_1323 := and(expr_1321, convert_t_rational_332306998946228968225951765070086144_by_1_to_t_uint256(expr_1322))

                /// @src 0:2772:2773  "0"
                let expr_1324 := 0x00
                /// @src 0:2733:2773  "x & 0x400000000000000000000000000000 > 0"
                let expr_1325 := gt(cleanup_t_uint256(expr_1323), convert_t_rational_0_by_1_to_t_uint256(expr_1324))
                /// @src 0:2729:2837  "if (x & 0x400000000000000000000000000000 > 0) result = (result * 0x1002C605E2E8CEC506D21BFC89A23A011) >> 128"
                if expr_1325 {
                    /// @src 0:2785:2791  "result"
                    let _323 := var_result_1180
                    let expr_1327 := _323
                    /// @src 0:2794:2829  "0x1002C605E2E8CEC506D21BFC89A23A011"
                    let expr_1328 := 0x01002c605e2e8cec506d21bfc89a23a011
                    /// @src 0:2785:2829  "result * 0x1002C605E2E8CEC506D21BFC89A23A011"
                    let expr_1329 := wrapping_mul_t_uint256(expr_1327, convert_t_rational_340512782555889898808859563671008026641_by_1_to_t_uint256(expr_1328))

                    /// @src 0:2784:2830  "(result * 0x1002C605E2E8CEC506D21BFC89A23A011)"
                    let expr_1330 := expr_1329
                    /// @src 0:2834:2837  "128"
                    let expr_1331 := 0x80
                    /// @src 0:2784:2837  "(result * 0x1002C605E2E8CEC506D21BFC89A23A011) >> 128"
                    let _324 := convert_t_rational_128_by_1_to_t_uint8(expr_1331)
                    let expr_1332 :=
                    shift_right_t_uint256_t_uint8(expr_1330, _324)

                    /// @src 0:2775:2837  "result = (result * 0x1002C605E2E8CEC506D21BFC89A23A011) >> 128"
                    var_result_1180 := expr_1332
                    let expr_1333 := expr_1332
                    /// @src 0:2729:2837  "if (x & 0x400000000000000000000000000000 > 0) result = (result * 0x1002C605E2E8CEC506D21BFC89A23A011) >> 128"
                }
                /// @src 0:2855:2856  "x"
                let _325 := var_x_1177
                let expr_1336 := _325
                /// @src 0:2859:2891  "0x200000000000000000000000000000"
                let expr_1337 := 0x200000000000000000000000000000
                /// @src 0:2855:2891  "x & 0x200000000000000000000000000000"
                let expr_1338 := and(expr_1336, convert_t_rational_166153499473114484112975882535043072_by_1_to_t_uint256(expr_1337))

                /// @src 0:2894:2895  "0"
                let expr_1339 := 0x00
                /// @src 0:2855:2895  "x & 0x200000000000000000000000000000 > 0"
                let expr_1340 := gt(cleanup_t_uint256(expr_1338), convert_t_rational_0_by_1_to_t_uint256(expr_1339))
                /// @src 0:2851:2959  "if (x & 0x200000000000000000000000000000 > 0) result = (result * 0x100162F3904051FA128BCA9C55C31E5E0) >> 128"
                if expr_1340 {
                    /// @src 0:2907:2913  "result"
                    let _326 := var_result_1180
                    let expr_1342 := _326
                    /// @src 0:2916:2951  "0x100162F3904051FA128BCA9C55C31E5E0"
                    let expr_1343 := 0x0100162f3904051fa128bca9c55c31e5e0
                    /// @src 0:2907:2951  "result * 0x100162F3904051FA128BCA9C55C31E5E0"
                    let expr_1344 := wrapping_mul_t_uint256(expr_1342, convert_t_rational_340397555242326998647385072673097901536_by_1_to_t_uint256(expr_1343))

                    /// @src 0:2906:2952  "(result * 0x100162F3904051FA128BCA9C55C31E5E0)"
                    let expr_1345 := expr_1344
                    /// @src 0:2956:2959  "128"
                    let expr_1346 := 0x80
                    /// @src 0:2906:2959  "(result * 0x100162F3904051FA128BCA9C55C31E5E0) >> 128"
                    let _327 := convert_t_rational_128_by_1_to_t_uint8(expr_1346)
                    let expr_1347 :=
                    shift_right_t_uint256_t_uint8(expr_1345, _327)

                    /// @src 0:2897:2959  "result = (result * 0x100162F3904051FA128BCA9C55C31E5E0) >> 128"
                    var_result_1180 := expr_1347
                    let expr_1348 := expr_1347
                    /// @src 0:2851:2959  "if (x & 0x200000000000000000000000000000 > 0) result = (result * 0x100162F3904051FA128BCA9C55C31E5E0) >> 128"
                }
                /// @src 0:2977:2978  "x"
                let _328 := var_x_1177
                let expr_1351 := _328
                /// @src 0:2981:3013  "0x100000000000000000000000000000"
                let expr_1352 := 0x100000000000000000000000000000
                /// @src 0:2977:3013  "x & 0x100000000000000000000000000000"
                let expr_1353 := and(expr_1351, convert_t_rational_83076749736557242056487941267521536_by_1_to_t_uint256(expr_1352))

                /// @src 0:3016:3017  "0"
                let expr_1354 := 0x00
                /// @src 0:2977:3017  "x & 0x100000000000000000000000000000 > 0"
                let expr_1355 := gt(cleanup_t_uint256(expr_1353), convert_t_rational_0_by_1_to_t_uint256(expr_1354))
                /// @src 0:2973:3081  "if (x & 0x100000000000000000000000000000 > 0) result = (result * 0x1000B175EFFDC76BA38E31671CA939726) >> 128"
                if expr_1355 {
                    /// @src 0:3029:3035  "result"
                    let _329 := var_result_1180
                    let expr_1357 := _329
                    /// @src 0:3038:3073  "0x1000B175EFFDC76BA38E31671CA939726"
                    let expr_1358 := 0x01000b175effdc76ba38e31671ca939726
                    /// @src 0:3029:3073  "result * 0x1000B175EFFDC76BA38E31671CA939726"
                    let expr_1359 := wrapping_mul_t_uint256(expr_1357, convert_t_rational_340339956208435708755752659506489956134_by_1_to_t_uint256(expr_1358))

                    /// @src 0:3028:3074  "(result * 0x1000B175EFFDC76BA38E31671CA939726)"
                    let expr_1360 := expr_1359
                    /// @src 0:3078:3081  "128"
                    let expr_1361 := 0x80
                    /// @src 0:3028:3081  "(result * 0x1000B175EFFDC76BA38E31671CA939726) >> 128"
                    let _330 := convert_t_rational_128_by_1_to_t_uint8(expr_1361)
                    let expr_1362 :=
                    shift_right_t_uint256_t_uint8(expr_1360, _330)

                    /// @src 0:3019:3081  "result = (result * 0x1000B175EFFDC76BA38E31671CA939726) >> 128"
                    var_result_1180 := expr_1362
                    let expr_1363 := expr_1362
                    /// @src 0:2973:3081  "if (x & 0x100000000000000000000000000000 > 0) result = (result * 0x1000B175EFFDC76BA38E31671CA939726) >> 128"
                }
                /// @src 0:3099:3100  "x"
                let _331 := var_x_1177
                let expr_1366 := _331
                /// @src 0:3103:3134  "0x80000000000000000000000000000"
                let expr_1367 := 0x080000000000000000000000000000
                /// @src 0:3099:3134  "x & 0x80000000000000000000000000000"
                let expr_1368 := and(expr_1366, convert_t_rational_41538374868278621028243970633760768_by_1_to_t_uint256(expr_1367))

                /// @src 0:3137:3138  "0"
                let expr_1369 := 0x00
                /// @src 0:3099:3138  "x & 0x80000000000000000000000000000 > 0"
                let expr_1370 := gt(cleanup_t_uint256(expr_1368), convert_t_rational_0_by_1_to_t_uint256(expr_1369))
                /// @src 0:3095:3202  "if (x & 0x80000000000000000000000000000 > 0) result = (result * 0x100058BA01FB9F96D6CACD4B180917C3E) >> 128"
                if expr_1370 {
                    /// @src 0:3150:3156  "result"
                    let _332 := var_result_1180
                    let expr_1372 := _332
                    /// @src 0:3159:3194  "0x100058BA01FB9F96D6CACD4B180917C3E"
                    let expr_1373 := 0x0100058ba01fb9f96d6cacd4b180917c3e
                    /// @src 0:3150:3194  "result * 0x100058BA01FB9F96D6CACD4B180917C3E"
                    let expr_1374 := wrapping_mul_t_uint256(expr_1372, convert_t_rational_340311160346490911934870813363085081662_by_1_to_t_uint256(expr_1373))

                    /// @src 0:3149:3195  "(result * 0x100058BA01FB9F96D6CACD4B180917C3E)"
                    let expr_1375 := expr_1374
                    /// @src 0:3199:3202  "128"
                    let expr_1376 := 0x80
                    /// @src 0:3149:3202  "(result * 0x100058BA01FB9F96D6CACD4B180917C3E) >> 128"
                    let _333 := convert_t_rational_128_by_1_to_t_uint8(expr_1376)
                    let expr_1377 :=
                    shift_right_t_uint256_t_uint8(expr_1375, _333)

                    /// @src 0:3140:3202  "result = (result * 0x100058BA01FB9F96D6CACD4B180917C3E) >> 128"
                    var_result_1180 := expr_1377
                    let expr_1378 := expr_1377
                    /// @src 0:3095:3202  "if (x & 0x80000000000000000000000000000 > 0) result = (result * 0x100058BA01FB9F96D6CACD4B180917C3E) >> 128"
                }
                /// @src 0:3220:3221  "x"
                let _334 := var_x_1177
                let expr_1381 := _334
                /// @src 0:3224:3255  "0x40000000000000000000000000000"
                let expr_1382 := 0x040000000000000000000000000000
                /// @src 0:3220:3255  "x & 0x40000000000000000000000000000"
                let expr_1383 := and(expr_1381, convert_t_rational_20769187434139310514121985316880384_by_1_to_t_uint256(expr_1382))

                /// @src 0:3258:3259  "0"
                let expr_1384 := 0x00
                /// @src 0:3220:3259  "x & 0x40000000000000000000000000000 > 0"
                let expr_1385 := gt(cleanup_t_uint256(expr_1383), convert_t_rational_0_by_1_to_t_uint256(expr_1384))
                /// @src 0:3216:3323  "if (x & 0x40000000000000000000000000000 > 0) result = (result * 0x10002C5CC37DA9491D0985C348C68E7B4) >> 128"
                if expr_1385 {
                    /// @src 0:3271:3277  "result"
                    let _335 := var_result_1180
                    let expr_1387 := _335
                    /// @src 0:3280:3315  "0x10002C5CC37DA9491D0985C348C68E7B4"
                    let expr_1388 := 0x010002c5cc37da9491d0985c348c68e7b4
                    /// @src 0:3271:3315  "result * 0x10002C5CC37DA9491D0985C348C68E7B4"
                    let expr_1389 := wrapping_mul_t_uint256(expr_1387, convert_t_rational_340296763329178528376528243588334151604_by_1_to_t_uint256(expr_1388))

                    /// @src 0:3270:3316  "(result * 0x10002C5CC37DA9491D0985C348C68E7B4)"
                    let expr_1390 := expr_1389
                    /// @src 0:3320:3323  "128"
                    let expr_1391 := 0x80
                    /// @src 0:3270:3323  "(result * 0x10002C5CC37DA9491D0985C348C68E7B4) >> 128"
                    let _336 := convert_t_rational_128_by_1_to_t_uint8(expr_1391)
                    let expr_1392 :=
                    shift_right_t_uint256_t_uint8(expr_1390, _336)

                    /// @src 0:3261:3323  "result = (result * 0x10002C5CC37DA9491D0985C348C68E7B4) >> 128"
                    var_result_1180 := expr_1392
                    let expr_1393 := expr_1392
                    /// @src 0:3216:3323  "if (x & 0x40000000000000000000000000000 > 0) result = (result * 0x10002C5CC37DA9491D0985C348C68E7B4) >> 128"
                }
                /// @src 0:3341:3342  "x"
                let _337 := var_x_1177
                let expr_1396 := _337
                /// @src 0:3345:3376  "0x20000000000000000000000000000"
                let expr_1397 := 0x020000000000000000000000000000
                /// @src 0:3341:3376  "x & 0x20000000000000000000000000000"
                let expr_1398 := and(expr_1396, convert_t_rational_10384593717069655257060992658440192_by_1_to_t_uint256(expr_1397))

                /// @src 0:3379:3380  "0"
                let expr_1399 := 0x00
                /// @src 0:3341:3380  "x & 0x20000000000000000000000000000 > 0"
                let expr_1400 := gt(cleanup_t_uint256(expr_1398), convert_t_rational_0_by_1_to_t_uint256(expr_1399))
                /// @src 0:3337:3444  "if (x & 0x20000000000000000000000000000 > 0) result = (result * 0x1000162E525EE054754457D5995292027) >> 128"
                if expr_1400 {
                    /// @src 0:3392:3398  "result"
                    let _338 := var_result_1180
                    let expr_1402 := _338
                    /// @src 0:3401:3436  "0x1000162E525EE054754457D5995292027"
                    let expr_1403 := 0x01000162e525ee054754457d5995292027
                    /// @src 0:3392:3436  "result * 0x1000162E525EE054754457D5995292027"
                    let expr_1404 := wrapping_mul_t_uint256(expr_1402, convert_t_rational_340289565048926066557319684044576333863_by_1_to_t_uint256(expr_1403))

                    /// @src 0:3391:3437  "(result * 0x1000162E525EE054754457D5995292027)"
                    let expr_1405 := expr_1404
                    /// @src 0:3441:3444  "128"
                    let expr_1406 := 0x80
                    /// @src 0:3391:3444  "(result * 0x1000162E525EE054754457D5995292027) >> 128"
                    let _339 := convert_t_rational_128_by_1_to_t_uint8(expr_1406)
                    let expr_1407 :=
                    shift_right_t_uint256_t_uint8(expr_1405, _339)

                    /// @src 0:3382:3444  "result = (result * 0x1000162E525EE054754457D5995292027) >> 128"
                    var_result_1180 := expr_1407
                    let expr_1408 := expr_1407
                    /// @src 0:3337:3444  "if (x & 0x20000000000000000000000000000 > 0) result = (result * 0x1000162E525EE054754457D5995292027) >> 128"
                }
                /// @src 0:3462:3463  "x"
                let _340 := var_x_1177
                let expr_1411 := _340
                /// @src 0:3466:3497  "0x10000000000000000000000000000"
                let expr_1412 := 0x010000000000000000000000000000
                /// @src 0:3462:3497  "x & 0x10000000000000000000000000000"
                let expr_1413 := and(expr_1411, convert_t_rational_5192296858534827628530496329220096_by_1_to_t_uint256(expr_1412))

                /// @src 0:3500:3501  "0"
                let expr_1414 := 0x00
                /// @src 0:3462:3501  "x & 0x10000000000000000000000000000 > 0"
                let expr_1415 := gt(cleanup_t_uint256(expr_1413), convert_t_rational_0_by_1_to_t_uint256(expr_1414))
                /// @src 0:3458:3565  "if (x & 0x10000000000000000000000000000 > 0) result = (result * 0x10000B17255775C040618BF4A4ADE83FD) >> 128"
                if expr_1415 {
                    /// @src 0:3513:3519  "result"
                    let _341 := var_result_1180
                    let expr_1417 := _341
                    /// @src 0:3522:3557  "0x10000B17255775C040618BF4A4ADE83FD"
                    let expr_1418 := 0x010000b17255775c040618bf4a4ade83fd
                    /// @src 0:3513:3557  "result * 0x10000B17255775C040618BF4A4ADE83FD"
                    let expr_1419 := wrapping_mul_t_uint256(expr_1417, convert_t_rational_340285965965899358974465315064323671037_by_1_to_t_uint256(expr_1418))

                    /// @src 0:3512:3558  "(result * 0x10000B17255775C040618BF4A4ADE83FD)"
                    let expr_1420 := expr_1419
                    /// @src 0:3562:3565  "128"
                    let expr_1421 := 0x80
                    /// @src 0:3512:3565  "(result * 0x10000B17255775C040618BF4A4ADE83FD) >> 128"
                    let _342 := convert_t_rational_128_by_1_to_t_uint8(expr_1421)
                    let expr_1422 :=
                    shift_right_t_uint256_t_uint8(expr_1420, _342)

                    /// @src 0:3503:3565  "result = (result * 0x10000B17255775C040618BF4A4ADE83FD) >> 128"
                    var_result_1180 := expr_1422
                    let expr_1423 := expr_1422
                    /// @src 0:3458:3565  "if (x & 0x10000000000000000000000000000 > 0) result = (result * 0x10000B17255775C040618BF4A4ADE83FD) >> 128"
                }
                /// @src 0:3583:3584  "x"
                let _343 := var_x_1177
                let expr_1426 := _343
                /// @src 0:3587:3617  "0x8000000000000000000000000000"
                let expr_1427 := 0x8000000000000000000000000000
                /// @src 0:3583:3617  "x & 0x8000000000000000000000000000"
                let expr_1428 := and(expr_1426, convert_t_rational_2596148429267413814265248164610048_by_1_to_t_uint256(expr_1427))

                /// @src 0:3620:3621  "0"
                let expr_1429 := 0x00
                /// @src 0:3583:3621  "x & 0x8000000000000000000000000000 > 0"
                let expr_1430 := gt(cleanup_t_uint256(expr_1428), convert_t_rational_0_by_1_to_t_uint256(expr_1429))
                /// @src 0:3579:3685  "if (x & 0x8000000000000000000000000000 > 0) result = (result * 0x1000058B91B5BC9AE2EED81E9B7D4CFAC) >> 128"
                if expr_1430 {
                    /// @src 0:3633:3639  "result"
                    let _344 := var_result_1180
                    let expr_1432 := _344
                    /// @src 0:3642:3677  "0x1000058B91B5BC9AE2EED81E9B7D4CFAC"
                    let expr_1433 := 0x01000058b91b5bc9ae2eed81e9b7d4cfac
                    /// @src 0:3633:3677  "result * 0x1000058B91B5BC9AE2EED81E9B7D4CFAC"
                    let expr_1434 := wrapping_mul_t_uint256(expr_1432, convert_t_rational_340284166438660709872813645066166128556_by_1_to_t_uint256(expr_1433))

                    /// @src 0:3632:3678  "(result * 0x1000058B91B5BC9AE2EED81E9B7D4CFAC)"
                    let expr_1435 := expr_1434
                    /// @src 0:3682:3685  "128"
                    let expr_1436 := 0x80
                    /// @src 0:3632:3685  "(result * 0x1000058B91B5BC9AE2EED81E9B7D4CFAC) >> 128"
                    let _345 := convert_t_rational_128_by_1_to_t_uint8(expr_1436)
                    let expr_1437 :=
                    shift_right_t_uint256_t_uint8(expr_1435, _345)

                    /// @src 0:3623:3685  "result = (result * 0x1000058B91B5BC9AE2EED81E9B7D4CFAC) >> 128"
                    var_result_1180 := expr_1437
                    let expr_1438 := expr_1437
                    /// @src 0:3579:3685  "if (x & 0x8000000000000000000000000000 > 0) result = (result * 0x1000058B91B5BC9AE2EED81E9B7D4CFAC) >> 128"
                }
                /// @src 0:3703:3704  "x"
                let _346 := var_x_1177
                let expr_1441 := _346
                /// @src 0:3707:3737  "0x4000000000000000000000000000"
                let expr_1442 := 0x4000000000000000000000000000
                /// @src 0:3703:3737  "x & 0x4000000000000000000000000000"
                let expr_1443 := and(expr_1441, convert_t_rational_1298074214633706907132624082305024_by_1_to_t_uint256(expr_1442))

                /// @src 0:3740:3741  "0"
                let expr_1444 := 0x00
                /// @src 0:3703:3741  "x & 0x4000000000000000000000000000 > 0"
                let expr_1445 := gt(cleanup_t_uint256(expr_1443), convert_t_rational_0_by_1_to_t_uint256(expr_1444))
                /// @src 0:3699:3805  "if (x & 0x4000000000000000000000000000 > 0) result = (result * 0x100002C5C89D5EC6CA4D7C8ACC017B7CA) >> 128"
                if expr_1445 {
                    /// @src 0:3753:3759  "result"
                    let _347 := var_result_1180
                    let expr_1447 := _347
                    /// @src 0:3762:3797  "0x100002C5C89D5EC6CA4D7C8ACC017B7CA"
                    let expr_1448 := 0x0100002c5c89d5ec6ca4d7c8acc017b7ca
                    /// @src 0:3753:3797  "result * 0x100002C5C89D5EC6CA4D7C8ACC017B7CA"
                    let expr_1449 := wrapping_mul_t_uint256(expr_1447, convert_t_rational_340283266678610039476911010529773336522_by_1_to_t_uint256(expr_1448))

                    /// @src 0:3752:3798  "(result * 0x100002C5C89D5EC6CA4D7C8ACC017B7CA)"
                    let expr_1450 := expr_1449
                    /// @src 0:3802:3805  "128"
                    let expr_1451 := 0x80
                    /// @src 0:3752:3805  "(result * 0x100002C5C89D5EC6CA4D7C8ACC017B7CA) >> 128"
                    let _348 := convert_t_rational_128_by_1_to_t_uint8(expr_1451)
                    let expr_1452 :=
                    shift_right_t_uint256_t_uint8(expr_1450, _348)

                    /// @src 0:3743:3805  "result = (result * 0x100002C5C89D5EC6CA4D7C8ACC017B7CA) >> 128"
                    var_result_1180 := expr_1452
                    let expr_1453 := expr_1452
                    /// @src 0:3699:3805  "if (x & 0x4000000000000000000000000000 > 0) result = (result * 0x100002C5C89D5EC6CA4D7C8ACC017B7CA) >> 128"
                }
                /// @src 0:3823:3824  "x"
                let _349 := var_x_1177
                let expr_1456 := _349
                /// @src 0:3827:3857  "0x2000000000000000000000000000"
                let expr_1457 := 0x2000000000000000000000000000
                /// @src 0:3823:3857  "x & 0x2000000000000000000000000000"
                let expr_1458 := and(expr_1456, convert_t_rational_649037107316853453566312041152512_by_1_to_t_uint256(expr_1457))

                /// @src 0:3860:3861  "0"
                let expr_1459 := 0x00
                /// @src 0:3823:3861  "x & 0x2000000000000000000000000000 > 0"
                let expr_1460 := gt(cleanup_t_uint256(expr_1458), convert_t_rational_0_by_1_to_t_uint256(expr_1459))
                /// @src 0:3819:3925  "if (x & 0x2000000000000000000000000000 > 0) result = (result * 0x10000162E43F4F831060E02D839A9D16D) >> 128"
                if expr_1460 {
                    /// @src 0:3873:3879  "result"
                    let _350 := var_result_1180
                    let expr_1462 := _350
                    /// @src 0:3882:3917  "0x10000162E43F4F831060E02D839A9D16D"
                    let expr_1463 := 0x010000162e43f4f831060e02d839a9d16d
                    /// @src 0:3873:3917  "result * 0x10000162E43F4F831060E02D839A9D16D"
                    let expr_1464 := wrapping_mul_t_uint256(expr_1462, convert_t_rational_340282816799476865065514053322893021549_by_1_to_t_uint256(expr_1463))

                    /// @src 0:3872:3918  "(result * 0x10000162E43F4F831060E02D839A9D16D)"
                    let expr_1465 := expr_1464
                    /// @src 0:3922:3925  "128"
                    let expr_1466 := 0x80
                    /// @src 0:3872:3925  "(result * 0x10000162E43F4F831060E02D839A9D16D) >> 128"
                    let _351 := convert_t_rational_128_by_1_to_t_uint8(expr_1466)
                    let expr_1467 :=
                    shift_right_t_uint256_t_uint8(expr_1465, _351)

                    /// @src 0:3863:3925  "result = (result * 0x10000162E43F4F831060E02D839A9D16D) >> 128"
                    var_result_1180 := expr_1467
                    let expr_1468 := expr_1467
                    /// @src 0:3819:3925  "if (x & 0x2000000000000000000000000000 > 0) result = (result * 0x10000162E43F4F831060E02D839A9D16D) >> 128"
                }
                /// @src 0:3943:3944  "x"
                let _352 := var_x_1177
                let expr_1471 := _352
                /// @src 0:3947:3977  "0x1000000000000000000000000000"
                let expr_1472 := 0x1000000000000000000000000000
                /// @src 0:3943:3977  "x & 0x1000000000000000000000000000"
                let expr_1473 := and(expr_1471, convert_t_rational_324518553658426726783156020576256_by_1_to_t_uint256(expr_1472))

                /// @src 0:3980:3981  "0"
                let expr_1474 := 0x00
                /// @src 0:3943:3981  "x & 0x1000000000000000000000000000 > 0"
                let expr_1475 := gt(cleanup_t_uint256(expr_1473), convert_t_rational_0_by_1_to_t_uint256(expr_1474))
                /// @src 0:3939:4045  "if (x & 0x1000000000000000000000000000 > 0) result = (result * 0x100000B1721BCFC99D9F890EA06911763) >> 128"
                if expr_1475 {
                    /// @src 0:3993:3999  "result"
                    let _353 := var_result_1180
                    let expr_1477 := _353
                    /// @src 0:4002:4037  "0x100000B1721BCFC99D9F890EA06911763"
                    let expr_1478 := 0x0100000b1721bcfc99d9f890ea06911763
                    /// @src 0:3993:4037  "result * 0x100000B1721BCFC99D9F890EA06911763"
                    let expr_1479 := wrapping_mul_t_uint256(expr_1477, convert_t_rational_340282591860133317712432962519222523747_by_1_to_t_uint256(expr_1478))

                    /// @src 0:3992:4038  "(result * 0x100000B1721BCFC99D9F890EA06911763)"
                    let expr_1480 := expr_1479
                    /// @src 0:4042:4045  "128"
                    let expr_1481 := 0x80
                    /// @src 0:3992:4045  "(result * 0x100000B1721BCFC99D9F890EA06911763) >> 128"
                    let _354 := convert_t_rational_128_by_1_to_t_uint8(expr_1481)
                    let expr_1482 :=
                    shift_right_t_uint256_t_uint8(expr_1480, _354)

                    /// @src 0:3983:4045  "result = (result * 0x100000B1721BCFC99D9F890EA06911763) >> 128"
                    var_result_1180 := expr_1482
                    let expr_1483 := expr_1482
                    /// @src 0:3939:4045  "if (x & 0x1000000000000000000000000000 > 0) result = (result * 0x100000B1721BCFC99D9F890EA06911763) >> 128"
                }
                /// @src 0:4063:4064  "x"
                let _355 := var_x_1177
                let expr_1486 := _355
                /// @src 0:4067:4096  "0x800000000000000000000000000"
                let expr_1487 := 0x0800000000000000000000000000
                /// @src 0:4063:4096  "x & 0x800000000000000000000000000"
                let expr_1488 := and(expr_1486, convert_t_rational_162259276829213363391578010288128_by_1_to_t_uint256(expr_1487))

                /// @src 0:4099:4100  "0"
                let expr_1489 := 0x00
                /// @src 0:4063:4100  "x & 0x800000000000000000000000000 > 0"
                let expr_1490 := gt(cleanup_t_uint256(expr_1488), convert_t_rational_0_by_1_to_t_uint256(expr_1489))
                /// @src 0:4059:4164  "if (x & 0x800000000000000000000000000 > 0) result = (result * 0x10000058B90CF1E6D97F9CA14DBCC1629) >> 128"
                if expr_1490 {
                    /// @src 0:4112:4118  "result"
                    let _356 := var_result_1180
                    let expr_1492 := _356
                    /// @src 0:4121:4156  "0x10000058B90CF1E6D97F9CA14DBCC1629"
                    let expr_1493 := 0x010000058b90cf1e6d97f9ca14dbcc1629
                    /// @src 0:4112:4156  "result * 0x10000058B90CF1E6D97F9CA14DBCC1629"
                    let expr_1494 := wrapping_mul_t_uint256(expr_1492, convert_t_rational_340282479390517303956044167089727739433_by_1_to_t_uint256(expr_1493))

                    /// @src 0:4111:4157  "(result * 0x10000058B90CF1E6D97F9CA14DBCC1629)"
                    let expr_1495 := expr_1494
                    /// @src 0:4161:4164  "128"
                    let expr_1496 := 0x80
                    /// @src 0:4111:4164  "(result * 0x10000058B90CF1E6D97F9CA14DBCC1629) >> 128"
                    let _357 := convert_t_rational_128_by_1_to_t_uint8(expr_1496)
                    let expr_1497 :=
                    shift_right_t_uint256_t_uint8(expr_1495, _357)

                    /// @src 0:4102:4164  "result = (result * 0x10000058B90CF1E6D97F9CA14DBCC1629) >> 128"
                    var_result_1180 := expr_1497
                    let expr_1498 := expr_1497
                    /// @src 0:4059:4164  "if (x & 0x800000000000000000000000000 > 0) result = (result * 0x10000058B90CF1E6D97F9CA14DBCC1629) >> 128"
                }
                /// @src 0:4182:4183  "x"
                let _358 := var_x_1177
                let expr_1501 := _358
                /// @src 0:4186:4215  "0x400000000000000000000000000"
                let expr_1502 := 0x0400000000000000000000000000
                /// @src 0:4182:4215  "x & 0x400000000000000000000000000"
                let expr_1503 := and(expr_1501, convert_t_rational_81129638414606681695789005144064_by_1_to_t_uint256(expr_1502))

                /// @src 0:4218:4219  "0"
                let expr_1504 := 0x00
                /// @src 0:4182:4219  "x & 0x400000000000000000000000000 > 0"
                let expr_1505 := gt(cleanup_t_uint256(expr_1503), convert_t_rational_0_by_1_to_t_uint256(expr_1504))
                /// @src 0:4178:4283  "if (x & 0x400000000000000000000000000 > 0) result = (result * 0x1000002C5C863B73F016468F6BAC5CA2C) >> 128"
                if expr_1505 {
                    /// @src 0:4231:4237  "result"
                    let _359 := var_result_1180
                    let expr_1507 := _359
                    /// @src 0:4240:4275  "0x1000002C5C863B73F016468F6BAC5CA2C"
                    let expr_1508 := 0x01000002c5c863b73f016468f6bac5ca2c
                    /// @src 0:4231:4275  "result * 0x1000002C5C863B73F016468F6BAC5CA2C"
                    let expr_1509 := wrapping_mul_t_uint256(expr_1507, convert_t_rational_340282423155723237052512385577070742060_by_1_to_t_uint256(expr_1508))

                    /// @src 0:4230:4276  "(result * 0x1000002C5C863B73F016468F6BAC5CA2C)"
                    let expr_1510 := expr_1509
                    /// @src 0:4280:4283  "128"
                    let expr_1511 := 0x80
                    /// @src 0:4230:4283  "(result * 0x1000002C5C863B73F016468F6BAC5CA2C) >> 128"
                    let _360 := convert_t_rational_128_by_1_to_t_uint8(expr_1511)
                    let expr_1512 :=
                    shift_right_t_uint256_t_uint8(expr_1510, _360)

                    /// @src 0:4221:4283  "result = (result * 0x1000002C5C863B73F016468F6BAC5CA2C) >> 128"
                    var_result_1180 := expr_1512
                    let expr_1513 := expr_1512
                    /// @src 0:4178:4283  "if (x & 0x400000000000000000000000000 > 0) result = (result * 0x1000002C5C863B73F016468F6BAC5CA2C) >> 128"
                }
                /// @src 0:4301:4302  "x"
                let _361 := var_x_1177
                let expr_1516 := _361
                /// @src 0:4305:4334  "0x200000000000000000000000000"
                let expr_1517 := 0x0200000000000000000000000000
                /// @src 0:4301:4334  "x & 0x200000000000000000000000000"
                let expr_1518 := and(expr_1516, convert_t_rational_40564819207303340847894502572032_by_1_to_t_uint256(expr_1517))

                /// @src 0:4337:4338  "0"
                let expr_1519 := 0x00
                /// @src 0:4301:4338  "x & 0x200000000000000000000000000 > 0"
                let expr_1520 := gt(cleanup_t_uint256(expr_1518), convert_t_rational_0_by_1_to_t_uint256(expr_1519))
                /// @src 0:4297:4402  "if (x & 0x200000000000000000000000000 > 0) result = (result * 0x100000162E430E5A18F6119E3C02282A6) >> 128"
                if expr_1520 {
                    /// @src 0:4350:4356  "result"
                    let _362 := var_result_1180
                    let expr_1522 := _362
                    /// @src 0:4359:4394  "0x100000162E430E5A18F6119E3C02282A6"
                    let expr_1523 := 0x0100000162e430e5a18f6119e3c02282a6
                    /// @src 0:4350:4394  "result * 0x100000162E430E5A18F6119E3C02282A6"
                    let expr_1524 := wrapping_mul_t_uint256(expr_1522, convert_t_rational_340282395038329688593740233918090740390_by_1_to_t_uint256(expr_1523))

                    /// @src 0:4349:4395  "(result * 0x100000162E430E5A18F6119E3C02282A6)"
                    let expr_1525 := expr_1524
                    /// @src 0:4399:4402  "128"
                    let expr_1526 := 0x80
                    /// @src 0:4349:4402  "(result * 0x100000162E430E5A18F6119E3C02282A6) >> 128"
                    let _363 := convert_t_rational_128_by_1_to_t_uint8(expr_1526)
                    let expr_1527 :=
                    shift_right_t_uint256_t_uint8(expr_1525, _363)

                    /// @src 0:4340:4402  "result = (result * 0x100000162E430E5A18F6119E3C02282A6) >> 128"
                    var_result_1180 := expr_1527
                    let expr_1528 := expr_1527
                    /// @src 0:4297:4402  "if (x & 0x200000000000000000000000000 > 0) result = (result * 0x100000162E430E5A18F6119E3C02282A6) >> 128"
                }
                /// @src 0:4420:4421  "x"
                let _364 := var_x_1177
                let expr_1531 := _364
                /// @src 0:4424:4453  "0x100000000000000000000000000"
                let expr_1532 := 0x0100000000000000000000000000
                /// @src 0:4420:4453  "x & 0x100000000000000000000000000"
                let expr_1533 := and(expr_1531, convert_t_rational_20282409603651670423947251286016_by_1_to_t_uint256(expr_1532))

                /// @src 0:4456:4457  "0"
                let expr_1534 := 0x00
                /// @src 0:4420:4457  "x & 0x100000000000000000000000000 > 0"
                let expr_1535 := gt(cleanup_t_uint256(expr_1533), convert_t_rational_0_by_1_to_t_uint256(expr_1534))
                /// @src 0:4416:4521  "if (x & 0x100000000000000000000000000 > 0) result = (result * 0x1000000B1721835514B86E6D96EFD1BFF) >> 128"
                if expr_1535 {
                    /// @src 0:4469:4475  "result"
                    let _365 := var_result_1180
                    let expr_1537 := _365
                    /// @src 0:4478:4513  "0x1000000B1721835514B86E6D96EFD1BFF"
                    let expr_1538 := 0x01000000b1721835514b86e6d96efd1bff
                    /// @src 0:4469:4513  "result * 0x1000000B1721835514B86E6D96EFD1BFF"
                    let expr_1539 := wrapping_mul_t_uint256(expr_1537, convert_t_rational_340282380979633785612518603506803612671_by_1_to_t_uint256(expr_1538))

                    /// @src 0:4468:4514  "(result * 0x1000000B1721835514B86E6D96EFD1BFF)"
                    let expr_1540 := expr_1539
                    /// @src 0:4518:4521  "128"
                    let expr_1541 := 0x80
                    /// @src 0:4468:4521  "(result * 0x1000000B1721835514B86E6D96EFD1BFF) >> 128"
                    let _366 := convert_t_rational_128_by_1_to_t_uint8(expr_1541)
                    let expr_1542 :=
                    shift_right_t_uint256_t_uint8(expr_1540, _366)

                    /// @src 0:4459:4521  "result = (result * 0x1000000B1721835514B86E6D96EFD1BFF) >> 128"
                    var_result_1180 := expr_1542
                    let expr_1543 := expr_1542
                    /// @src 0:4416:4521  "if (x & 0x100000000000000000000000000 > 0) result = (result * 0x1000000B1721835514B86E6D96EFD1BFF) >> 128"
                }
                /// @src 0:4539:4540  "x"
                let _367 := var_x_1177
                let expr_1546 := _367
                /// @src 0:4543:4571  "0x80000000000000000000000000"
                let expr_1547 := 0x80000000000000000000000000
                /// @src 0:4539:4571  "x & 0x80000000000000000000000000"
                let expr_1548 := and(expr_1546, convert_t_rational_10141204801825835211973625643008_by_1_to_t_uint256(expr_1547))

                /// @src 0:4574:4575  "0"
                let expr_1549 := 0x00
                /// @src 0:4539:4575  "x & 0x80000000000000000000000000 > 0"
                let expr_1550 := gt(cleanup_t_uint256(expr_1548), convert_t_rational_0_by_1_to_t_uint256(expr_1549))
                /// @src 0:4535:4639  "if (x & 0x80000000000000000000000000 > 0) result = (result * 0x100000058B90C0B48C6BE5DF846C5B2F0) >> 128"
                if expr_1550 {
                    /// @src 0:4587:4593  "result"
                    let _368 := var_result_1180
                    let expr_1552 := _368
                    /// @src 0:4596:4631  "0x100000058B90C0B48C6BE5DF846C5B2F0"
                    let expr_1553 := 0x0100000058b90c0b48c6be5df846c5b2f0
                    /// @src 0:4587:4631  "result * 0x100000058B90C0B48C6BE5DF846C5B2F0"
                    let expr_1554 := wrapping_mul_t_uint256(expr_1552, convert_t_rational_340282373950286051933938400987007267568_by_1_to_t_uint256(expr_1553))

                    /// @src 0:4586:4632  "(result * 0x100000058B90C0B48C6BE5DF846C5B2F0)"
                    let expr_1555 := expr_1554
                    /// @src 0:4636:4639  "128"
                    let expr_1556 := 0x80
                    /// @src 0:4586:4639  "(result * 0x100000058B90C0B48C6BE5DF846C5B2F0) >> 128"
                    let _369 := convert_t_rational_128_by_1_to_t_uint8(expr_1556)
                    let expr_1557 :=
                    shift_right_t_uint256_t_uint8(expr_1555, _369)

                    /// @src 0:4577:4639  "result = (result * 0x100000058B90C0B48C6BE5DF846C5B2F0) >> 128"
                    var_result_1180 := expr_1557
                    let expr_1558 := expr_1557
                    /// @src 0:4535:4639  "if (x & 0x80000000000000000000000000 > 0) result = (result * 0x100000058B90C0B48C6BE5DF846C5B2F0) >> 128"
                }
                /// @src 0:4657:4658  "x"
                let _370 := var_x_1177
                let expr_1561 := _370
                /// @src 0:4661:4689  "0x40000000000000000000000000"
                let expr_1562 := 0x40000000000000000000000000
                /// @src 0:4657:4689  "x & 0x40000000000000000000000000"
                let expr_1563 := and(expr_1561, convert_t_rational_5070602400912917605986812821504_by_1_to_t_uint256(expr_1562))

                /// @src 0:4692:4693  "0"
                let expr_1564 := 0x00
                /// @src 0:4657:4693  "x & 0x40000000000000000000000000 > 0"
                let expr_1565 := gt(cleanup_t_uint256(expr_1563), convert_t_rational_0_by_1_to_t_uint256(expr_1564))
                /// @src 0:4653:4757  "if (x & 0x40000000000000000000000000 > 0) result = (result * 0x10000002C5C8601CC6B9E94213C72737B) >> 128"
                if expr_1565 {
                    /// @src 0:4705:4711  "result"
                    let _371 := var_result_1180
                    let expr_1567 := _371
                    /// @src 0:4714:4749  "0x10000002C5C8601CC6B9E94213C72737B"
                    let expr_1568 := 0x010000002c5c8601cc6b9e94213c72737b
                    /// @src 0:4705:4749  "result * 0x10000002C5C8601CC6B9E94213C72737B"
                    let expr_1569 := wrapping_mul_t_uint256(expr_1567, convert_t_rational_340282370435612239547654640565033792379_by_1_to_t_uint256(expr_1568))

                    /// @src 0:4704:4750  "(result * 0x10000002C5C8601CC6B9E94213C72737B)"
                    let expr_1570 := expr_1569
                    /// @src 0:4754:4757  "128"
                    let expr_1571 := 0x80
                    /// @src 0:4704:4757  "(result * 0x10000002C5C8601CC6B9E94213C72737B) >> 128"
                    let _372 := convert_t_rational_128_by_1_to_t_uint8(expr_1571)
                    let expr_1572 :=
                    shift_right_t_uint256_t_uint8(expr_1570, _372)

                    /// @src 0:4695:4757  "result = (result * 0x10000002C5C8601CC6B9E94213C72737B) >> 128"
                    var_result_1180 := expr_1572
                    let expr_1573 := expr_1572
                    /// @src 0:4653:4757  "if (x & 0x40000000000000000000000000 > 0) result = (result * 0x10000002C5C8601CC6B9E94213C72737B) >> 128"
                }
                /// @src 0:4775:4776  "x"
                let _373 := var_x_1177
                let expr_1576 := _373
                /// @src 0:4779:4807  "0x20000000000000000000000000"
                let expr_1577 := 0x20000000000000000000000000
                /// @src 0:4775:4807  "x & 0x20000000000000000000000000"
                let expr_1578 := and(expr_1576, convert_t_rational_2535301200456458802993406410752_by_1_to_t_uint256(expr_1577))

                /// @src 0:4810:4811  "0"
                let expr_1579 := 0x00
                /// @src 0:4775:4811  "x & 0x20000000000000000000000000 > 0"
                let expr_1580 := gt(cleanup_t_uint256(expr_1578), convert_t_rational_0_by_1_to_t_uint256(expr_1579))
                /// @src 0:4771:4875  "if (x & 0x20000000000000000000000000 > 0) result = (result * 0x1000000162E42FFF037DF38AA2B219F07) >> 128"
                if expr_1580 {
                    /// @src 0:4823:4829  "result"
                    let _374 := var_result_1180
                    let expr_1582 := _374
                    /// @src 0:4832:4867  "0x1000000162E42FFF037DF38AA2B219F07"
                    let expr_1583 := 0x01000000162e42fff037df38aa2b219f07
                    /// @src 0:4823:4867  "result * 0x1000000162E42FFF037DF38AA2B219F07"
                    let expr_1584 := wrapping_mul_t_uint256(expr_1582, convert_t_rational_340282368678275346967764181521839267591_by_1_to_t_uint256(expr_1583))

                    /// @src 0:4822:4868  "(result * 0x1000000162E42FFF037DF38AA2B219F07)"
                    let expr_1585 := expr_1584
                    /// @src 0:4872:4875  "128"
                    let expr_1586 := 0x80
                    /// @src 0:4822:4875  "(result * 0x1000000162E42FFF037DF38AA2B219F07) >> 128"
                    let _375 := convert_t_rational_128_by_1_to_t_uint8(expr_1586)
                    let expr_1587 :=
                    shift_right_t_uint256_t_uint8(expr_1585, _375)

                    /// @src 0:4813:4875  "result = (result * 0x1000000162E42FFF037DF38AA2B219F07) >> 128"
                    var_result_1180 := expr_1587
                    let expr_1588 := expr_1587
                    /// @src 0:4771:4875  "if (x & 0x20000000000000000000000000 > 0) result = (result * 0x1000000162E42FFF037DF38AA2B219F07) >> 128"
                }
                /// @src 0:4893:4894  "x"
                let _376 := var_x_1177
                let expr_1591 := _376
                /// @src 0:4897:4925  "0x10000000000000000000000000"
                let expr_1592 := 0x10000000000000000000000000
                /// @src 0:4893:4925  "x & 0x10000000000000000000000000"
                let expr_1593 := and(expr_1591, convert_t_rational_1267650600228229401496703205376_by_1_to_t_uint256(expr_1592))

                /// @src 0:4928:4929  "0"
                let expr_1594 := 0x00
                /// @src 0:4893:4929  "x & 0x10000000000000000000000000 > 0"
                let expr_1595 := gt(cleanup_t_uint256(expr_1593), convert_t_rational_0_by_1_to_t_uint256(expr_1594))
                /// @src 0:4889:4993  "if (x & 0x10000000000000000000000000 > 0) result = (result * 0x10000000B17217FBA9C739AA5819F44FA) >> 128"
                if expr_1595 {
                    /// @src 0:4941:4947  "result"
                    let _377 := var_result_1180
                    let expr_1597 := _377
                    /// @src 0:4950:4985  "0x10000000B17217FBA9C739AA5819F44FA"
                    let expr_1598 := 0x010000000b17217fba9c739aa5819f44fa
                    /// @src 0:4941:4985  "result * 0x10000000B17217FBA9C739AA5819F44FA"
                    let expr_1599 := wrapping_mul_t_uint256(expr_1597, convert_t_rational_340282367799606904081131786786979136762_by_1_to_t_uint256(expr_1598))

                    /// @src 0:4940:4986  "(result * 0x10000000B17217FBA9C739AA5819F44FA)"
                    let expr_1600 := expr_1599
                    /// @src 0:4990:4993  "128"
                    let expr_1601 := 0x80
                    /// @src 0:4940:4993  "(result * 0x10000000B17217FBA9C739AA5819F44FA) >> 128"
                    let _378 := convert_t_rational_128_by_1_to_t_uint8(expr_1601)
                    let expr_1602 :=
                    shift_right_t_uint256_t_uint8(expr_1600, _378)

                    /// @src 0:4931:4993  "result = (result * 0x10000000B17217FBA9C739AA5819F44FA) >> 128"
                    var_result_1180 := expr_1602
                    let expr_1603 := expr_1602
                    /// @src 0:4889:4993  "if (x & 0x10000000000000000000000000 > 0) result = (result * 0x10000000B17217FBA9C739AA5819F44FA) >> 128"
                }
                /// @src 0:5011:5012  "x"
                let _379 := var_x_1177
                let expr_1606 := _379
                /// @src 0:5015:5042  "0x8000000000000000000000000"
                let expr_1607 := 0x08000000000000000000000000
                /// @src 0:5011:5042  "x & 0x8000000000000000000000000"
                let expr_1608 := and(expr_1606, convert_t_rational_633825300114114700748351602688_by_1_to_t_uint256(expr_1607))

                /// @src 0:5045:5046  "0"
                let expr_1609 := 0x00
                /// @src 0:5011:5046  "x & 0x8000000000000000000000000 > 0"
                let expr_1610 := gt(cleanup_t_uint256(expr_1608), convert_t_rational_0_by_1_to_t_uint256(expr_1609))
                /// @src 0:5007:5110  "if (x & 0x8000000000000000000000000 > 0) result = (result * 0x1000000058B90BFCDEE5ACD3C1CEDC824) >> 128"
                if expr_1610 {
                    /// @src 0:5058:5064  "result"
                    let _380 := var_result_1180
                    let expr_1612 := _380
                    /// @src 0:5067:5102  "0x1000000058B90BFCDEE5ACD3C1CEDC824"
                    let expr_1613 := 0x01000000058b90bfcdee5acd3c1cedc824
                    /// @src 0:5058:5102  "result * 0x1000000058B90BFCDEE5ACD3C1CEDC824"
                    let expr_1614 := wrapping_mul_t_uint256(expr_1612, convert_t_rational_340282367360272683488643795553082001444_by_1_to_t_uint256(expr_1613))

                    /// @src 0:5057:5103  "(result * 0x1000000058B90BFCDEE5ACD3C1CEDC824)"
                    let expr_1615 := expr_1614
                    /// @src 0:5107:5110  "128"
                    let expr_1616 := 0x80
                    /// @src 0:5057:5110  "(result * 0x1000000058B90BFCDEE5ACD3C1CEDC824) >> 128"
                    let _381 := convert_t_rational_128_by_1_to_t_uint8(expr_1616)
                    let expr_1617 :=
                    shift_right_t_uint256_t_uint8(expr_1615, _381)

                    /// @src 0:5048:5110  "result = (result * 0x1000000058B90BFCDEE5ACD3C1CEDC824) >> 128"
                    var_result_1180 := expr_1617
                    let expr_1618 := expr_1617
                    /// @src 0:5007:5110  "if (x & 0x8000000000000000000000000 > 0) result = (result * 0x1000000058B90BFCDEE5ACD3C1CEDC824) >> 128"
                }
                /// @src 0:5128:5129  "x"
                let _382 := var_x_1177
                let expr_1621 := _382
                /// @src 0:5132:5159  "0x4000000000000000000000000"
                let expr_1622 := 0x04000000000000000000000000
                /// @src 0:5128:5159  "x & 0x4000000000000000000000000"
                let expr_1623 := and(expr_1621, convert_t_rational_316912650057057350374175801344_by_1_to_t_uint256(expr_1622))

                /// @src 0:5162:5163  "0"
                let expr_1624 := 0x00
                /// @src 0:5128:5163  "x & 0x4000000000000000000000000 > 0"
                let expr_1625 := gt(cleanup_t_uint256(expr_1623), convert_t_rational_0_by_1_to_t_uint256(expr_1624))
                /// @src 0:5124:5227  "if (x & 0x4000000000000000000000000 > 0) result = (result * 0x100000002C5C85FE31F35A6A30DA1BE51) >> 128"
                if expr_1625 {
                    /// @src 0:5175:5181  "result"
                    let _383 := var_result_1180
                    let expr_1627 := _383
                    /// @src 0:5184:5219  "0x100000002C5C85FE31F35A6A30DA1BE51"
                    let expr_1628 := 0x0100000002c5c85fe31f35a6a30da1be51
                    /// @src 0:5175:5219  "result * 0x100000002C5C85FE31F35A6A30DA1BE51"
                    let expr_1629 := wrapping_mul_t_uint256(expr_1627, convert_t_rational_340282367140605573405106851149122747985_by_1_to_t_uint256(expr_1628))

                    /// @src 0:5174:5220  "(result * 0x100000002C5C85FE31F35A6A30DA1BE51)"
                    let expr_1630 := expr_1629
                    /// @src 0:5224:5227  "128"
                    let expr_1631 := 0x80
                    /// @src 0:5174:5227  "(result * 0x100000002C5C85FE31F35A6A30DA1BE51) >> 128"
                    let _384 := convert_t_rational_128_by_1_to_t_uint8(expr_1631)
                    let expr_1632 :=
                    shift_right_t_uint256_t_uint8(expr_1630, _384)

                    /// @src 0:5165:5227  "result = (result * 0x100000002C5C85FE31F35A6A30DA1BE51) >> 128"
                    var_result_1180 := expr_1632
                    let expr_1633 := expr_1632
                    /// @src 0:5124:5227  "if (x & 0x4000000000000000000000000 > 0) result = (result * 0x100000002C5C85FE31F35A6A30DA1BE51) >> 128"
                }
                /// @src 0:5245:5246  "x"
                let _385 := var_x_1177
                let expr_1636 := _385
                /// @src 0:5249:5276  "0x2000000000000000000000000"
                let expr_1637 := 0x02000000000000000000000000
                /// @src 0:5245:5276  "x & 0x2000000000000000000000000"
                let expr_1638 := and(expr_1636, convert_t_rational_158456325028528675187087900672_by_1_to_t_uint256(expr_1637))

                /// @src 0:5279:5280  "0"
                let expr_1639 := 0x00
                /// @src 0:5245:5280  "x & 0x2000000000000000000000000 > 0"
                let expr_1640 := gt(cleanup_t_uint256(expr_1638), convert_t_rational_0_by_1_to_t_uint256(expr_1639))
                /// @src 0:5241:5344  "if (x & 0x2000000000000000000000000 > 0) result = (result * 0x10000000162E42FF0999CE3541B9FFFD0) >> 128"
                if expr_1640 {
                    /// @src 0:5292:5298  "result"
                    let _386 := var_result_1180
                    let expr_1642 := _386
                    /// @src 0:5301:5336  "0x10000000162E42FF0999CE3541B9FFFD0"
                    let expr_1643 := 0x010000000162e42ff0999ce3541b9fffd0
                    /// @src 0:5292:5336  "result * 0x10000000162E42FF0999CE3541B9FFFD0"
                    let expr_1644 := wrapping_mul_t_uint256(expr_1642, convert_t_rational_340282367030772018416515141710341210064_by_1_to_t_uint256(expr_1643))

                    /// @src 0:5291:5337  "(result * 0x10000000162E42FF0999CE3541B9FFFD0)"
                    let expr_1645 := expr_1644
                    /// @src 0:5341:5344  "128"
                    let expr_1646 := 0x80
                    /// @src 0:5291:5344  "(result * 0x10000000162E42FF0999CE3541B9FFFD0) >> 128"
                    let _387 := convert_t_rational_128_by_1_to_t_uint8(expr_1646)
                    let expr_1647 :=
                    shift_right_t_uint256_t_uint8(expr_1645, _387)

                    /// @src 0:5282:5344  "result = (result * 0x10000000162E42FF0999CE3541B9FFFD0) >> 128"
                    var_result_1180 := expr_1647
                    let expr_1648 := expr_1647
                    /// @src 0:5241:5344  "if (x & 0x2000000000000000000000000 > 0) result = (result * 0x10000000162E42FF0999CE3541B9FFFD0) >> 128"
                }
                /// @src 0:5362:5363  "x"
                let _388 := var_x_1177
                let expr_1651 := _388
                /// @src 0:5366:5393  "0x1000000000000000000000000"
                let expr_1652 := 0x01000000000000000000000000
                /// @src 0:5362:5393  "x & 0x1000000000000000000000000"
                let expr_1653 := and(expr_1651, convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_1652))

                /// @src 0:5396:5397  "0"
                let expr_1654 := 0x00
                /// @src 0:5362:5397  "x & 0x1000000000000000000000000 > 0"
                let expr_1655 := gt(cleanup_t_uint256(expr_1653), convert_t_rational_0_by_1_to_t_uint256(expr_1654))
                /// @src 0:5358:5461  "if (x & 0x1000000000000000000000000 > 0) result = (result * 0x100000000B17217F80F4EF5AADDA45554) >> 128"
                if expr_1655 {
                    /// @src 0:5409:5415  "result"
                    let _389 := var_result_1180
                    let expr_1657 := _389
                    /// @src 0:5418:5453  "0x100000000B17217F80F4EF5AADDA45554"
                    let expr_1658 := 0x0100000000b17217f80f4ef5aadda45554
                    /// @src 0:5409:5453  "result * 0x100000000B17217F80F4EF5AADDA45554"
                    let expr_1659 := wrapping_mul_t_uint256(expr_1657, convert_t_rational_340282366975855240935513477676743808340_by_1_to_t_uint256(expr_1658))

                    /// @src 0:5408:5454  "(result * 0x100000000B17217F80F4EF5AADDA45554)"
                    let expr_1660 := expr_1659
                    /// @src 0:5458:5461  "128"
                    let expr_1661 := 0x80
                    /// @src 0:5408:5461  "(result * 0x100000000B17217F80F4EF5AADDA45554) >> 128"
                    let _390 := convert_t_rational_128_by_1_to_t_uint8(expr_1661)
                    let expr_1662 :=
                    shift_right_t_uint256_t_uint8(expr_1660, _390)

                    /// @src 0:5399:5461  "result = (result * 0x100000000B17217F80F4EF5AADDA45554) >> 128"
                    var_result_1180 := expr_1662
                    let expr_1663 := expr_1662
                    /// @src 0:5358:5461  "if (x & 0x1000000000000000000000000 > 0) result = (result * 0x100000000B17217F80F4EF5AADDA45554) >> 128"
                }
                /// @src 0:5479:5480  "x"
                let _391 := var_x_1177
                let expr_1666 := _391
                /// @src 0:5483:5509  "0x800000000000000000000000"
                let expr_1667 := 0x800000000000000000000000
                /// @src 0:5479:5509  "x & 0x800000000000000000000000"
                let expr_1668 := and(expr_1666, convert_t_rational_39614081257132168796771975168_by_1_to_t_uint256(expr_1667))

                /// @src 0:5512:5513  "0"
                let expr_1669 := 0x00
                /// @src 0:5479:5513  "x & 0x800000000000000000000000 > 0"
                let expr_1670 := gt(cleanup_t_uint256(expr_1668), convert_t_rational_0_by_1_to_t_uint256(expr_1669))
                /// @src 0:5475:5577  "if (x & 0x800000000000000000000000 > 0) result = (result * 0x10000000058B90BFBF8479BD5A81B51AE) >> 128"
                if expr_1670 {
                    /// @src 0:5525:5531  "result"
                    let _392 := var_result_1180
                    let expr_1672 := _392
                    /// @src 0:5534:5569  "0x10000000058B90BFBF8479BD5A81B51AE"
                    let expr_1673 := 0x010000000058b90bfbf8479bd5a81b51ae
                    /// @src 0:5525:5569  "result * 0x10000000058B90BFBF8479BD5A81B51AE"
                    let expr_1674 := wrapping_mul_t_uint256(expr_1672, convert_t_rational_340282366948396852198336193330767679918_by_1_to_t_uint256(expr_1673))

                    /// @src 0:5524:5570  "(result * 0x10000000058B90BFBF8479BD5A81B51AE)"
                    let expr_1675 := expr_1674
                    /// @src 0:5574:5577  "128"
                    let expr_1676 := 0x80
                    /// @src 0:5524:5577  "(result * 0x10000000058B90BFBF8479BD5A81B51AE) >> 128"
                    let _393 := convert_t_rational_128_by_1_to_t_uint8(expr_1676)
                    let expr_1677 :=
                    shift_right_t_uint256_t_uint8(expr_1675, _393)

                    /// @src 0:5515:5577  "result = (result * 0x10000000058B90BFBF8479BD5A81B51AE) >> 128"
                    var_result_1180 := expr_1677
                    let expr_1678 := expr_1677
                    /// @src 0:5475:5577  "if (x & 0x800000000000000000000000 > 0) result = (result * 0x10000000058B90BFBF8479BD5A81B51AE) >> 128"
                }
                /// @src 0:5595:5596  "x"
                let _394 := var_x_1177
                let expr_1681 := _394
                /// @src 0:5599:5625  "0x400000000000000000000000"
                let expr_1682 := 0x400000000000000000000000
                /// @src 0:5595:5625  "x & 0x400000000000000000000000"
                let expr_1683 := and(expr_1681, convert_t_rational_19807040628566084398385987584_by_1_to_t_uint256(expr_1682))

                /// @src 0:5628:5629  "0"
                let expr_1684 := 0x00
                /// @src 0:5595:5629  "x & 0x400000000000000000000000 > 0"
                let expr_1685 := gt(cleanup_t_uint256(expr_1683), convert_t_rational_0_by_1_to_t_uint256(expr_1684))
                /// @src 0:5591:5693  "if (x & 0x400000000000000000000000 > 0) result = (result * 0x1000000002C5C85FDF84BD62AE30A74CD) >> 128"
                if expr_1685 {
                    /// @src 0:5641:5647  "result"
                    let _395 := var_result_1180
                    let expr_1687 := _395
                    /// @src 0:5650:5685  "0x1000000002C5C85FDF84BD62AE30A74CD"
                    let expr_1688 := 0x01000000002c5c85fdf84bd62ae30a74cd
                    /// @src 0:5641:5685  "result * 0x1000000002C5C85FDF84BD62AE30A74CD"
                    let expr_1689 := wrapping_mul_t_uint256(expr_1687, convert_t_rational_340282366934667657830578438075407037645_by_1_to_t_uint256(expr_1688))

                    /// @src 0:5640:5686  "(result * 0x1000000002C5C85FDF84BD62AE30A74CD)"
                    let expr_1690 := expr_1689
                    /// @src 0:5690:5693  "128"
                    let expr_1691 := 0x80
                    /// @src 0:5640:5693  "(result * 0x1000000002C5C85FDF84BD62AE30A74CD) >> 128"
                    let _396 := convert_t_rational_128_by_1_to_t_uint8(expr_1691)
                    let expr_1692 :=
                    shift_right_t_uint256_t_uint8(expr_1690, _396)

                    /// @src 0:5631:5693  "result = (result * 0x1000000002C5C85FDF84BD62AE30A74CD) >> 128"
                    var_result_1180 := expr_1692
                    let expr_1693 := expr_1692
                    /// @src 0:5591:5693  "if (x & 0x400000000000000000000000 > 0) result = (result * 0x1000000002C5C85FDF84BD62AE30A74CD) >> 128"
                }
                /// @src 0:5711:5712  "x"
                let _397 := var_x_1177
                let expr_1696 := _397
                /// @src 0:5715:5741  "0x200000000000000000000000"
                let expr_1697 := 0x200000000000000000000000
                /// @src 0:5711:5741  "x & 0x200000000000000000000000"
                let expr_1698 := and(expr_1696, convert_t_rational_9903520314283042199192993792_by_1_to_t_uint256(expr_1697))

                /// @src 0:5744:5745  "0"
                let expr_1699 := 0x00
                /// @src 0:5711:5745  "x & 0x200000000000000000000000 > 0"
                let expr_1700 := gt(cleanup_t_uint256(expr_1698), convert_t_rational_0_by_1_to_t_uint256(expr_1699))
                /// @src 0:5707:5809  "if (x & 0x200000000000000000000000 > 0) result = (result * 0x100000000162E42FEFB2FED257559BDAA) >> 128"
                if expr_1700 {
                    /// @src 0:5757:5763  "result"
                    let _398 := var_result_1180
                    let expr_1702 := _398
                    /// @src 0:5766:5801  "0x100000000162E42FEFB2FED257559BDAA"
                    let expr_1703 := 0x0100000000162e42fefb2fed257559bdaa
                    /// @src 0:5757:5801  "result * 0x100000000162E42FEFB2FED257559BDAA"
                    let expr_1704 := wrapping_mul_t_uint256(expr_1702, convert_t_rational_340282366927803060646907282177123794346_by_1_to_t_uint256(expr_1703))

                    /// @src 0:5756:5802  "(result * 0x100000000162E42FEFB2FED257559BDAA)"
                    let expr_1705 := expr_1704
                    /// @src 0:5806:5809  "128"
                    let expr_1706 := 0x80
                    /// @src 0:5756:5809  "(result * 0x100000000162E42FEFB2FED257559BDAA) >> 128"
                    let _399 := convert_t_rational_128_by_1_to_t_uint8(expr_1706)
                    let expr_1707 :=
                    shift_right_t_uint256_t_uint8(expr_1705, _399)

                    /// @src 0:5747:5809  "result = (result * 0x100000000162E42FEFB2FED257559BDAA) >> 128"
                    var_result_1180 := expr_1707
                    let expr_1708 := expr_1707
                    /// @src 0:5707:5809  "if (x & 0x200000000000000000000000 > 0) result = (result * 0x100000000162E42FEFB2FED257559BDAA) >> 128"
                }
                /// @src 0:5827:5828  "x"
                let _400 := var_x_1177
                let expr_1711 := _400
                /// @src 0:5831:5857  "0x100000000000000000000000"
                let expr_1712 := 0x100000000000000000000000
                /// @src 0:5827:5857  "x & 0x100000000000000000000000"
                let expr_1713 := and(expr_1711, convert_t_rational_4951760157141521099596496896_by_1_to_t_uint256(expr_1712))

                /// @src 0:5860:5861  "0"
                let expr_1714 := 0x00
                /// @src 0:5827:5861  "x & 0x100000000000000000000000 > 0"
                let expr_1715 := gt(cleanup_t_uint256(expr_1713), convert_t_rational_0_by_1_to_t_uint256(expr_1714))
                /// @src 0:5823:5925  "if (x & 0x100000000000000000000000 > 0) result = (result * 0x1000000000B17217F7D5A7716BBA4A9AF) >> 128"
                if expr_1715 {
                    /// @src 0:5873:5879  "result"
                    let _401 := var_result_1180
                    let expr_1717 := _401
                    /// @src 0:5882:5917  "0x1000000000B17217F7D5A7716BBA4A9AF"
                    let expr_1718 := 0x01000000000b17217f7d5a7716bba4a9af
                    /// @src 0:5873:5917  "result * 0x1000000000B17217F7D5A7716BBA4A9AF"
                    let expr_1719 := wrapping_mul_t_uint256(expr_1717, convert_t_rational_340282366924370762055123634660330219951_by_1_to_t_uint256(expr_1718))

                    /// @src 0:5872:5918  "(result * 0x1000000000B17217F7D5A7716BBA4A9AF)"
                    let expr_1720 := expr_1719
                    /// @src 0:5922:5925  "128"
                    let expr_1721 := 0x80
                    /// @src 0:5872:5925  "(result * 0x1000000000B17217F7D5A7716BBA4A9AF) >> 128"
                    let _402 := convert_t_rational_128_by_1_to_t_uint8(expr_1721)
                    let expr_1722 :=
                    shift_right_t_uint256_t_uint8(expr_1720, _402)

                    /// @src 0:5863:5925  "result = (result * 0x1000000000B17217F7D5A7716BBA4A9AF) >> 128"
                    var_result_1180 := expr_1722
                    let expr_1723 := expr_1722
                    /// @src 0:5823:5925  "if (x & 0x100000000000000000000000 > 0) result = (result * 0x1000000000B17217F7D5A7716BBA4A9AF) >> 128"
                }
                /// @src 0:5943:5944  "x"
                let _403 := var_x_1177
                let expr_1726 := _403
                /// @src 0:5947:5972  "0x80000000000000000000000"
                let expr_1727 := 0x080000000000000000000000
                /// @src 0:5943:5972  "x & 0x80000000000000000000000"
                let expr_1728 := and(expr_1726, convert_t_rational_2475880078570760549798248448_by_1_to_t_uint256(expr_1727))

                /// @src 0:5975:5976  "0"
                let expr_1729 := 0x00
                /// @src 0:5943:5976  "x & 0x80000000000000000000000 > 0"
                let expr_1730 := gt(cleanup_t_uint256(expr_1728), convert_t_rational_0_by_1_to_t_uint256(expr_1729))
                /// @src 0:5939:6040  "if (x & 0x80000000000000000000000 > 0) result = (result * 0x100000000058B90BFBE9DDBAC5E109CCF) >> 128"
                if expr_1730 {
                    /// @src 0:5988:5994  "result"
                    let _404 := var_result_1180
                    let expr_1732 := _404
                    /// @src 0:5997:6032  "0x100000000058B90BFBE9DDBAC5E109CCF"
                    let expr_1733 := 0x0100000000058b90bfbe9ddbac5e109ccf
                    /// @src 0:5988:6032  "result * 0x100000000058B90BFBE9DDBAC5E109CCF"
                    let expr_1734 := wrapping_mul_t_uint256(expr_1732, convert_t_rational_340282366922654612759244793510020291791_by_1_to_t_uint256(expr_1733))

                    /// @src 0:5987:6033  "(result * 0x100000000058B90BFBE9DDBAC5E109CCF)"
                    let expr_1735 := expr_1734
                    /// @src 0:6037:6040  "128"
                    let expr_1736 := 0x80
                    /// @src 0:5987:6040  "(result * 0x100000000058B90BFBE9DDBAC5E109CCF) >> 128"
                    let _405 := convert_t_rational_128_by_1_to_t_uint8(expr_1736)
                    let expr_1737 :=
                    shift_right_t_uint256_t_uint8(expr_1735, _405)

                    /// @src 0:5978:6040  "result = (result * 0x100000000058B90BFBE9DDBAC5E109CCF) >> 128"
                    var_result_1180 := expr_1737
                    let expr_1738 := expr_1737
                    /// @src 0:5939:6040  "if (x & 0x80000000000000000000000 > 0) result = (result * 0x100000000058B90BFBE9DDBAC5E109CCF) >> 128"
                }
                /// @src 0:6058:6059  "x"
                let _406 := var_x_1177
                let expr_1741 := _406
                /// @src 0:6062:6087  "0x40000000000000000000000"
                let expr_1742 := 0x040000000000000000000000
                /// @src 0:6058:6087  "x & 0x40000000000000000000000"
                let expr_1743 := and(expr_1741, convert_t_rational_1237940039285380274899124224_by_1_to_t_uint256(expr_1742))

                /// @src 0:6090:6091  "0"
                let expr_1744 := 0x00
                /// @src 0:6058:6091  "x & 0x40000000000000000000000 > 0"
                let expr_1745 := gt(cleanup_t_uint256(expr_1743), convert_t_rational_0_by_1_to_t_uint256(expr_1744))
                /// @src 0:6054:6155  "if (x & 0x40000000000000000000000 > 0) result = (result * 0x10000000002C5C85FDF4B15DE6F17EB0E) >> 128"
                if expr_1745 {
                    /// @src 0:6103:6109  "result"
                    let _407 := var_result_1180
                    let expr_1747 := _407
                    /// @src 0:6112:6147  "0x10000000002C5C85FDF4B15DE6F17EB0E"
                    let expr_1748 := 0x010000000002c5c85fdf4b15de6f17eb0e
                    /// @src 0:6103:6147  "result * 0x10000000002C5C85FDF4B15DE6F17EB0E"
                    let expr_1749 := wrapping_mul_t_uint256(expr_1747, convert_t_rational_340282366921796538111308618586887023374_by_1_to_t_uint256(expr_1748))

                    /// @src 0:6102:6148  "(result * 0x10000000002C5C85FDF4B15DE6F17EB0E)"
                    let expr_1750 := expr_1749
                    /// @src 0:6152:6155  "128"
                    let expr_1751 := 0x80
                    /// @src 0:6102:6155  "(result * 0x10000000002C5C85FDF4B15DE6F17EB0E) >> 128"
                    let _408 := convert_t_rational_128_by_1_to_t_uint8(expr_1751)
                    let expr_1752 :=
                    shift_right_t_uint256_t_uint8(expr_1750, _408)

                    /// @src 0:6093:6155  "result = (result * 0x10000000002C5C85FDF4B15DE6F17EB0E) >> 128"
                    var_result_1180 := expr_1752
                    let expr_1753 := expr_1752
                    /// @src 0:6054:6155  "if (x & 0x40000000000000000000000 > 0) result = (result * 0x10000000002C5C85FDF4B15DE6F17EB0E) >> 128"
                }
                /// @src 0:6173:6174  "x"
                let _409 := var_x_1177
                let expr_1756 := _409
                /// @src 0:6177:6202  "0x20000000000000000000000"
                let expr_1757 := 0x020000000000000000000000
                /// @src 0:6173:6202  "x & 0x20000000000000000000000"
                let expr_1758 := and(expr_1756, convert_t_rational_618970019642690137449562112_by_1_to_t_uint256(expr_1757))

                /// @src 0:6205:6206  "0"
                let expr_1759 := 0x00
                /// @src 0:6173:6206  "x & 0x20000000000000000000000 > 0"
                let expr_1760 := gt(cleanup_t_uint256(expr_1758), convert_t_rational_0_by_1_to_t_uint256(expr_1759))
                /// @src 0:6169:6270  "if (x & 0x20000000000000000000000 > 0) result = (result * 0x1000000000162E42FEFA494F1478FDE05) >> 128"
                if expr_1760 {
                    /// @src 0:6218:6224  "result"
                    let _410 := var_result_1180
                    let expr_1762 := _410
                    /// @src 0:6227:6262  "0x1000000000162E42FEFA494F1478FDE05"
                    let expr_1763 := 0x01000000000162e42fefa494f1478fde05
                    /// @src 0:6218:6262  "result * 0x1000000000162E42FEFA494F1478FDE05"
                    let expr_1764 := wrapping_mul_t_uint256(expr_1762, convert_t_rational_340282366921367500787341342538325810693_by_1_to_t_uint256(expr_1763))

                    /// @src 0:6217:6263  "(result * 0x1000000000162E42FEFA494F1478FDE05)"
                    let expr_1765 := expr_1764
                    /// @src 0:6267:6270  "128"
                    let expr_1766 := 0x80
                    /// @src 0:6217:6270  "(result * 0x1000000000162E42FEFA494F1478FDE05) >> 128"
                    let _411 := convert_t_rational_128_by_1_to_t_uint8(expr_1766)
                    let expr_1767 :=
                    shift_right_t_uint256_t_uint8(expr_1765, _411)

                    /// @src 0:6208:6270  "result = (result * 0x1000000000162E42FEFA494F1478FDE05) >> 128"
                    var_result_1180 := expr_1767
                    let expr_1768 := expr_1767
                    /// @src 0:6169:6270  "if (x & 0x20000000000000000000000 > 0) result = (result * 0x1000000000162E42FEFA494F1478FDE05) >> 128"
                }
                /// @src 0:6288:6289  "x"
                let _412 := var_x_1177
                let expr_1771 := _412
                /// @src 0:6292:6317  "0x10000000000000000000000"
                let expr_1772 := 0x010000000000000000000000
                /// @src 0:6288:6317  "x & 0x10000000000000000000000"
                let expr_1773 := and(expr_1771, convert_t_rational_309485009821345068724781056_by_1_to_t_uint256(expr_1772))

                /// @src 0:6320:6321  "0"
                let expr_1774 := 0x00
                /// @src 0:6288:6321  "x & 0x10000000000000000000000 > 0"
                let expr_1775 := gt(cleanup_t_uint256(expr_1773), convert_t_rational_0_by_1_to_t_uint256(expr_1774))
                /// @src 0:6284:6385  "if (x & 0x10000000000000000000000 > 0) result = (result * 0x10000000000B17217F7D20CF927C8E94D) >> 128"
                if expr_1775 {
                    /// @src 0:6333:6339  "result"
                    let _413 := var_result_1180
                    let expr_1777 := _413
                    /// @src 0:6342:6377  "0x10000000000B17217F7D20CF927C8E94D"
                    let expr_1778 := 0x010000000000b17217f7d20cf927c8e94d
                    /// @src 0:6333:6377  "result * 0x10000000000B17217F7D20CF927C8E94D"
                    let expr_1779 := wrapping_mul_t_uint256(expr_1777, convert_t_rational_340282366921152982125357907367296559437_by_1_to_t_uint256(expr_1778))

                    /// @src 0:6332:6378  "(result * 0x10000000000B17217F7D20CF927C8E94D)"
                    let expr_1780 := expr_1779
                    /// @src 0:6382:6385  "128"
                    let expr_1781 := 0x80
                    /// @src 0:6332:6385  "(result * 0x10000000000B17217F7D20CF927C8E94D) >> 128"
                    let _414 := convert_t_rational_128_by_1_to_t_uint8(expr_1781)
                    let expr_1782 :=
                    shift_right_t_uint256_t_uint8(expr_1780, _414)

                    /// @src 0:6323:6385  "result = (result * 0x10000000000B17217F7D20CF927C8E94D) >> 128"
                    var_result_1180 := expr_1782
                    let expr_1783 := expr_1782
                    /// @src 0:6284:6385  "if (x & 0x10000000000000000000000 > 0) result = (result * 0x10000000000B17217F7D20CF927C8E94D) >> 128"
                }
                /// @src 0:6403:6404  "x"
                let _415 := var_x_1177
                let expr_1786 := _415
                /// @src 0:6407:6431  "0x8000000000000000000000"
                let expr_1787 := 0x8000000000000000000000
                /// @src 0:6403:6431  "x & 0x8000000000000000000000"
                let expr_1788 := and(expr_1786, convert_t_rational_154742504910672534362390528_by_1_to_t_uint256(expr_1787))

                /// @src 0:6434:6435  "0"
                let expr_1789 := 0x00
                /// @src 0:6403:6435  "x & 0x8000000000000000000000 > 0"
                let expr_1790 := gt(cleanup_t_uint256(expr_1788), convert_t_rational_0_by_1_to_t_uint256(expr_1789))
                /// @src 0:6399:6499  "if (x & 0x8000000000000000000000 > 0) result = (result * 0x1000000000058B90BFBE8F71CB4E4B33E) >> 128"
                if expr_1790 {
                    /// @src 0:6447:6453  "result"
                    let _416 := var_result_1180
                    let expr_1792 := _416
                    /// @src 0:6456:6491  "0x1000000000058B90BFBE8F71CB4E4B33E"
                    let expr_1793 := 0x01000000000058b90bfbe8f71cb4e4b33e
                    /// @src 0:6447:6491  "result * 0x1000000000058B90BFBE8F71CB4E4B33E"
                    let expr_1794 := wrapping_mul_t_uint256(expr_1792, convert_t_rational_340282366921045722794366240495094772542_by_1_to_t_uint256(expr_1793))

                    /// @src 0:6446:6492  "(result * 0x1000000000058B90BFBE8F71CB4E4B33E)"
                    let expr_1795 := expr_1794
                    /// @src 0:6496:6499  "128"
                    let expr_1796 := 0x80
                    /// @src 0:6446:6499  "(result * 0x1000000000058B90BFBE8F71CB4E4B33E) >> 128"
                    let _417 := convert_t_rational_128_by_1_to_t_uint8(expr_1796)
                    let expr_1797 :=
                    shift_right_t_uint256_t_uint8(expr_1795, _417)

                    /// @src 0:6437:6499  "result = (result * 0x1000000000058B90BFBE8F71CB4E4B33E) >> 128"
                    var_result_1180 := expr_1797
                    let expr_1798 := expr_1797
                    /// @src 0:6399:6499  "if (x & 0x8000000000000000000000 > 0) result = (result * 0x1000000000058B90BFBE8F71CB4E4B33E) >> 128"
                }
                /// @src 0:6517:6518  "x"
                let _418 := var_x_1177
                let expr_1801 := _418
                /// @src 0:6521:6545  "0x4000000000000000000000"
                let expr_1802 := 0x4000000000000000000000
                /// @src 0:6517:6545  "x & 0x4000000000000000000000"
                let expr_1803 := and(expr_1801, convert_t_rational_77371252455336267181195264_by_1_to_t_uint256(expr_1802))

                /// @src 0:6548:6549  "0"
                let expr_1804 := 0x00
                /// @src 0:6517:6549  "x & 0x4000000000000000000000 > 0"
                let expr_1805 := gt(cleanup_t_uint256(expr_1803), convert_t_rational_0_by_1_to_t_uint256(expr_1804))
                /// @src 0:6513:6613  "if (x & 0x4000000000000000000000 > 0) result = (result * 0x100000000002C5C85FDF477B662B26946) >> 128"
                if expr_1805 {
                    /// @src 0:6561:6567  "result"
                    let _419 := var_result_1180
                    let expr_1807 := _419
                    /// @src 0:6570:6605  "0x100000000002C5C85FDF477B662B26946"
                    let expr_1808 := 0x0100000000002c5c85fdf477b662b26946
                    /// @src 0:6561:6605  "result * 0x100000000002C5C85FDF477B662B26946"
                    let expr_1809 := wrapping_mul_t_uint256(expr_1807, convert_t_rational_340282366920992093128870419737322088774_by_1_to_t_uint256(expr_1808))

                    /// @src 0:6560:6606  "(result * 0x100000000002C5C85FDF477B662B26946)"
                    let expr_1810 := expr_1809
                    /// @src 0:6610:6613  "128"
                    let expr_1811 := 0x80
                    /// @src 0:6560:6613  "(result * 0x100000000002C5C85FDF477B662B26946) >> 128"
                    let _420 := convert_t_rational_128_by_1_to_t_uint8(expr_1811)
                    let expr_1812 :=
                    shift_right_t_uint256_t_uint8(expr_1810, _420)

                    /// @src 0:6551:6613  "result = (result * 0x100000000002C5C85FDF477B662B26946) >> 128"
                    var_result_1180 := expr_1812
                    let expr_1813 := expr_1812
                    /// @src 0:6513:6613  "if (x & 0x4000000000000000000000 > 0) result = (result * 0x100000000002C5C85FDF477B662B26946) >> 128"
                }
                /// @src 0:6631:6632  "x"
                let _421 := var_x_1177
                let expr_1816 := _421
                /// @src 0:6635:6659  "0x2000000000000000000000"
                let expr_1817 := 0x2000000000000000000000
                /// @src 0:6631:6659  "x & 0x2000000000000000000000"
                let expr_1818 := and(expr_1816, convert_t_rational_38685626227668133590597632_by_1_to_t_uint256(expr_1817))

                /// @src 0:6662:6663  "0"
                let expr_1819 := 0x00
                /// @src 0:6631:6663  "x & 0x2000000000000000000000 > 0"
                let expr_1820 := gt(cleanup_t_uint256(expr_1818), convert_t_rational_0_by_1_to_t_uint256(expr_1819))
                /// @src 0:6627:6727  "if (x & 0x2000000000000000000000 > 0) result = (result * 0x10000000000162E42FEFA3AE53369388D) >> 128"
                if expr_1820 {
                    /// @src 0:6675:6681  "result"
                    let _422 := var_result_1180
                    let expr_1822 := _422
                    /// @src 0:6684:6719  "0x10000000000162E42FEFA3AE53369388D"
                    let expr_1823 := 0x010000000000162e42fefa3ae53369388d
                    /// @src 0:6675:6719  "result * 0x10000000000162E42FEFA3AE53369388D"
                    let expr_1824 := wrapping_mul_t_uint256(expr_1822, convert_t_rational_340282366920965278296122512528017799309_by_1_to_t_uint256(expr_1823))

                    /// @src 0:6674:6720  "(result * 0x10000000000162E42FEFA3AE53369388D)"
                    let expr_1825 := expr_1824
                    /// @src 0:6724:6727  "128"
                    let expr_1826 := 0x80
                    /// @src 0:6674:6727  "(result * 0x10000000000162E42FEFA3AE53369388D) >> 128"
                    let _423 := convert_t_rational_128_by_1_to_t_uint8(expr_1826)
                    let expr_1827 :=
                    shift_right_t_uint256_t_uint8(expr_1825, _423)

                    /// @src 0:6665:6727  "result = (result * 0x10000000000162E42FEFA3AE53369388D) >> 128"
                    var_result_1180 := expr_1827
                    let expr_1828 := expr_1827
                    /// @src 0:6627:6727  "if (x & 0x2000000000000000000000 > 0) result = (result * 0x10000000000162E42FEFA3AE53369388D) >> 128"
                }
                /// @src 0:6745:6746  "x"
                let _424 := var_x_1177
                let expr_1831 := _424
                /// @src 0:6749:6773  "0x1000000000000000000000"
                let expr_1832 := 0x1000000000000000000000
                /// @src 0:6745:6773  "x & 0x1000000000000000000000"
                let expr_1833 := and(expr_1831, convert_t_rational_19342813113834066795298816_by_1_to_t_uint256(expr_1832))

                /// @src 0:6776:6777  "0"
                let expr_1834 := 0x00
                /// @src 0:6745:6777  "x & 0x1000000000000000000000 > 0"
                let expr_1835 := gt(cleanup_t_uint256(expr_1833), convert_t_rational_0_by_1_to_t_uint256(expr_1834))
                /// @src 0:6741:6841  "if (x & 0x1000000000000000000000 > 0) result = (result * 0x100000000000B17217F7D1D351A389D41) >> 128"
                if expr_1835 {
                    /// @src 0:6789:6795  "result"
                    let _425 := var_result_1180
                    let expr_1837 := _425
                    /// @src 0:6798:6833  "0x100000000000B17217F7D1D351A389D41"
                    let expr_1838 := 0x0100000000000b17217f7d1d351a389d41
                    /// @src 0:6789:6833  "result * 0x100000000000B17217F7D1D351A389D41"
                    let expr_1839 := wrapping_mul_t_uint256(expr_1837, convert_t_rational_340282366920951870879748559715761167681_by_1_to_t_uint256(expr_1838))

                    /// @src 0:6788:6834  "(result * 0x100000000000B17217F7D1D351A389D41)"
                    let expr_1840 := expr_1839
                    /// @src 0:6838:6841  "128"
                    let expr_1841 := 0x80
                    /// @src 0:6788:6841  "(result * 0x100000000000B17217F7D1D351A389D41) >> 128"
                    let _426 := convert_t_rational_128_by_1_to_t_uint8(expr_1841)
                    let expr_1842 :=
                    shift_right_t_uint256_t_uint8(expr_1840, _426)

                    /// @src 0:6779:6841  "result = (result * 0x100000000000B17217F7D1D351A389D41) >> 128"
                    var_result_1180 := expr_1842
                    let expr_1843 := expr_1842
                    /// @src 0:6741:6841  "if (x & 0x1000000000000000000000 > 0) result = (result * 0x100000000000B17217F7D1D351A389D41) >> 128"
                }
                /// @src 0:6859:6860  "x"
                let _427 := var_x_1177
                let expr_1846 := _427
                /// @src 0:6863:6886  "0x800000000000000000000"
                let expr_1847 := 0x0800000000000000000000
                /// @src 0:6859:6886  "x & 0x800000000000000000000"
                let expr_1848 := and(expr_1846, convert_t_rational_9671406556917033397649408_by_1_to_t_uint256(expr_1847))

                /// @src 0:6889:6890  "0"
                let expr_1849 := 0x00
                /// @src 0:6859:6890  "x & 0x800000000000000000000 > 0"
                let expr_1850 := gt(cleanup_t_uint256(expr_1848), convert_t_rational_0_by_1_to_t_uint256(expr_1849))
                /// @src 0:6855:6954  "if (x & 0x800000000000000000000 > 0) result = (result * 0x10000000000058B90BFBE8E8B2D3D4EDF) >> 128"
                if expr_1850 {
                    /// @src 0:6902:6908  "result"
                    let _428 := var_result_1180
                    let expr_1852 := _428
                    /// @src 0:6911:6946  "0x10000000000058B90BFBE8E8B2D3D4EDF"
                    let expr_1853 := 0x010000000000058b90bfbe8e8b2d3d4edf
                    /// @src 0:6902:6946  "result * 0x10000000000058B90BFBE8E8B2D3D4EDF"
                    let expr_1854 := wrapping_mul_t_uint256(expr_1852, convert_t_rational_340282366920945167171561583507731730143_by_1_to_t_uint256(expr_1853))

                    /// @src 0:6901:6947  "(result * 0x10000000000058B90BFBE8E8B2D3D4EDF)"
                    let expr_1855 := expr_1854
                    /// @src 0:6951:6954  "128"
                    let expr_1856 := 0x80
                    /// @src 0:6901:6954  "(result * 0x10000000000058B90BFBE8E8B2D3D4EDF) >> 128"
                    let _429 := convert_t_rational_128_by_1_to_t_uint8(expr_1856)
                    let expr_1857 :=
                    shift_right_t_uint256_t_uint8(expr_1855, _429)

                    /// @src 0:6892:6954  "result = (result * 0x10000000000058B90BFBE8E8B2D3D4EDF) >> 128"
                    var_result_1180 := expr_1857
                    let expr_1858 := expr_1857
                    /// @src 0:6855:6954  "if (x & 0x800000000000000000000 > 0) result = (result * 0x10000000000058B90BFBE8E8B2D3D4EDF) >> 128"
                }
                /// @src 0:6972:6973  "x"
                let _430 := var_x_1177
                let expr_1861 := _430
                /// @src 0:6976:6999  "0x400000000000000000000"
                let expr_1862 := 0x0400000000000000000000
                /// @src 0:6972:6999  "x & 0x400000000000000000000"
                let expr_1863 := and(expr_1861, convert_t_rational_4835703278458516698824704_by_1_to_t_uint256(expr_1862))

                /// @src 0:7002:7003  "0"
                let expr_1864 := 0x00
                /// @src 0:6972:7003  "x & 0x400000000000000000000 > 0"
                let expr_1865 := gt(cleanup_t_uint256(expr_1863), convert_t_rational_0_by_1_to_t_uint256(expr_1864))
                /// @src 0:6968:7067  "if (x & 0x400000000000000000000 > 0) result = (result * 0x1000000000002C5C85FDF4741BEA6E77F) >> 128"
                if expr_1865 {
                    /// @src 0:7015:7021  "result"
                    let _431 := var_result_1180
                    let expr_1867 := _431
                    /// @src 0:7024:7059  "0x1000000000002C5C85FDF4741BEA6E77F"
                    let expr_1868 := 0x01000000000002c5c85fdf4741bea6e77f
                    /// @src 0:7015:7059  "result * 0x1000000000002C5C85FDF4741BEA6E77F"
                    let expr_1869 := wrapping_mul_t_uint256(expr_1867, convert_t_rational_340282366920941815317468095453241730943_by_1_to_t_uint256(expr_1868))

                    /// @src 0:7014:7060  "(result * 0x1000000000002C5C85FDF4741BEA6E77F)"
                    let expr_1870 := expr_1869
                    /// @src 0:7064:7067  "128"
                    let expr_1871 := 0x80
                    /// @src 0:7014:7067  "(result * 0x1000000000002C5C85FDF4741BEA6E77F) >> 128"
                    let _432 := convert_t_rational_128_by_1_to_t_uint8(expr_1871)
                    let expr_1872 :=
                    shift_right_t_uint256_t_uint8(expr_1870, _432)

                    /// @src 0:7005:7067  "result = (result * 0x1000000000002C5C85FDF4741BEA6E77F) >> 128"
                    var_result_1180 := expr_1872
                    let expr_1873 := expr_1872
                    /// @src 0:6968:7067  "if (x & 0x400000000000000000000 > 0) result = (result * 0x1000000000002C5C85FDF4741BEA6E77F) >> 128"
                }
                /// @src 0:7085:7086  "x"
                let _433 := var_x_1177
                let expr_1876 := _433
                /// @src 0:7089:7112  "0x200000000000000000000"
                let expr_1877 := 0x0200000000000000000000
                /// @src 0:7085:7112  "x & 0x200000000000000000000"
                let expr_1878 := and(expr_1876, convert_t_rational_2417851639229258349412352_by_1_to_t_uint256(expr_1877))

                /// @src 0:7115:7116  "0"
                let expr_1879 := 0x00
                /// @src 0:7085:7116  "x & 0x200000000000000000000 > 0"
                let expr_1880 := gt(cleanup_t_uint256(expr_1878), convert_t_rational_0_by_1_to_t_uint256(expr_1879))
                /// @src 0:7081:7180  "if (x & 0x200000000000000000000 > 0) result = (result * 0x100000000000162E42FEFA39FE95583C3) >> 128"
                if expr_1880 {
                    /// @src 0:7128:7134  "result"
                    let _434 := var_result_1180
                    let expr_1882 := _434
                    /// @src 0:7137:7172  "0x100000000000162E42FEFA39FE95583C3"
                    let expr_1883 := 0x0100000000000162e42fefa39fe95583c3
                    /// @src 0:7128:7172  "result * 0x100000000000162E42FEFA39FE95583C3"
                    let expr_1884 := wrapping_mul_t_uint256(expr_1882, convert_t_rational_340282366920940139390421351438377911235_by_1_to_t_uint256(expr_1883))

                    /// @src 0:7127:7173  "(result * 0x100000000000162E42FEFA39FE95583C3)"
                    let expr_1885 := expr_1884
                    /// @src 0:7177:7180  "128"
                    let expr_1886 := 0x80
                    /// @src 0:7127:7180  "(result * 0x100000000000162E42FEFA39FE95583C3) >> 128"
                    let _435 := convert_t_rational_128_by_1_to_t_uint8(expr_1886)
                    let expr_1887 :=
                    shift_right_t_uint256_t_uint8(expr_1885, _435)

                    /// @src 0:7118:7180  "result = (result * 0x100000000000162E42FEFA39FE95583C3) >> 128"
                    var_result_1180 := expr_1887
                    let expr_1888 := expr_1887
                    /// @src 0:7081:7180  "if (x & 0x200000000000000000000 > 0) result = (result * 0x100000000000162E42FEFA39FE95583C3) >> 128"
                }
                /// @src 0:7198:7199  "x"
                let _436 := var_x_1177
                let expr_1891 := _436
                /// @src 0:7202:7225  "0x100000000000000000000"
                let expr_1892 := 0x0100000000000000000000
                /// @src 0:7198:7225  "x & 0x100000000000000000000"
                let expr_1893 := and(expr_1891, convert_t_rational_1208925819614629174706176_by_1_to_t_uint256(expr_1892))

                /// @src 0:7228:7229  "0"
                let expr_1894 := 0x00
                /// @src 0:7198:7229  "x & 0x100000000000000000000 > 0"
                let expr_1895 := gt(cleanup_t_uint256(expr_1893), convert_t_rational_0_by_1_to_t_uint256(expr_1894))
                /// @src 0:7194:7293  "if (x & 0x100000000000000000000 > 0) result = (result * 0x1000000000000B17217F7D1CFB72B45E3) >> 128"
                if expr_1895 {
                    /// @src 0:7241:7247  "result"
                    let _437 := var_result_1180
                    let expr_1897 := _437
                    /// @src 0:7250:7285  "0x1000000000000B17217F7D1CFB72B45E3"
                    let expr_1898 := 0x01000000000000b17217f7d1cfb72b45e3
                    /// @src 0:7241:7285  "result * 0x1000000000000B17217F7D1CFB72B45E3"
                    let expr_1899 := wrapping_mul_t_uint256(expr_1897, convert_t_rational_340282366920939301426897979434041296355_by_1_to_t_uint256(expr_1898))

                    /// @src 0:7240:7286  "(result * 0x1000000000000B17217F7D1CFB72B45E3)"
                    let expr_1900 := expr_1899
                    /// @src 0:7290:7293  "128"
                    let expr_1901 := 0x80
                    /// @src 0:7240:7293  "(result * 0x1000000000000B17217F7D1CFB72B45E3) >> 128"
                    let _438 := convert_t_rational_128_by_1_to_t_uint8(expr_1901)
                    let expr_1902 :=
                    shift_right_t_uint256_t_uint8(expr_1900, _438)

                    /// @src 0:7231:7293  "result = (result * 0x1000000000000B17217F7D1CFB72B45E3) >> 128"
                    var_result_1180 := expr_1902
                    let expr_1903 := expr_1902
                    /// @src 0:7194:7293  "if (x & 0x100000000000000000000 > 0) result = (result * 0x1000000000000B17217F7D1CFB72B45E3) >> 128"
                }
                /// @src 0:7311:7312  "x"
                let _439 := var_x_1177
                let expr_1906 := _439
                /// @src 0:7315:7337  "0x80000000000000000000"
                let expr_1907 := 0x80000000000000000000
                /// @src 0:7311:7337  "x & 0x80000000000000000000"
                let expr_1908 := and(expr_1906, convert_t_rational_604462909807314587353088_by_1_to_t_uint256(expr_1907))

                /// @src 0:7340:7341  "0"
                let expr_1909 := 0x00
                /// @src 0:7311:7341  "x & 0x80000000000000000000 > 0"
                let expr_1910 := gt(cleanup_t_uint256(expr_1908), convert_t_rational_0_by_1_to_t_uint256(expr_1909))
                /// @src 0:7307:7405  "if (x & 0x80000000000000000000 > 0) result = (result * 0x100000000000058B90BFBE8E7CC35C3F2) >> 128"
                if expr_1910 {
                    /// @src 0:7353:7359  "result"
                    let _440 := var_result_1180
                    let expr_1912 := _440
                    /// @src 0:7362:7397  "0x100000000000058B90BFBE8E7CC35C3F2"
                    let expr_1913 := 0x0100000000000058b90bfbe8e7cc35c3f2
                    /// @src 0:7353:7397  "result * 0x100000000000058B90BFBE8E7CC35C3F2"
                    let expr_1914 := wrapping_mul_t_uint256(expr_1912, convert_t_rational_340282366920938882445136293432646812658_by_1_to_t_uint256(expr_1913))

                    /// @src 0:7352:7398  "(result * 0x100000000000058B90BFBE8E7CC35C3F2)"
                    let expr_1915 := expr_1914
                    /// @src 0:7402:7405  "128"
                    let expr_1916 := 0x80
                    /// @src 0:7352:7405  "(result * 0x100000000000058B90BFBE8E7CC35C3F2) >> 128"
                    let _441 := convert_t_rational_128_by_1_to_t_uint8(expr_1916)
                    let expr_1917 :=
                    shift_right_t_uint256_t_uint8(expr_1915, _441)

                    /// @src 0:7343:7405  "result = (result * 0x100000000000058B90BFBE8E7CC35C3F2) >> 128"
                    var_result_1180 := expr_1917
                    let expr_1918 := expr_1917
                    /// @src 0:7307:7405  "if (x & 0x80000000000000000000 > 0) result = (result * 0x100000000000058B90BFBE8E7CC35C3F2) >> 128"
                }
                /// @src 0:7423:7424  "x"
                let _442 := var_x_1177
                let expr_1921 := _442
                /// @src 0:7427:7449  "0x40000000000000000000"
                let expr_1922 := 0x40000000000000000000
                /// @src 0:7423:7449  "x & 0x40000000000000000000"
                let expr_1923 := and(expr_1921, convert_t_rational_302231454903657293676544_by_1_to_t_uint256(expr_1922))

                /// @src 0:7452:7453  "0"
                let expr_1924 := 0x00
                /// @src 0:7423:7453  "x & 0x40000000000000000000 > 0"
                let expr_1925 := gt(cleanup_t_uint256(expr_1923), convert_t_rational_0_by_1_to_t_uint256(expr_1924))
                /// @src 0:7419:7517  "if (x & 0x40000000000000000000 > 0) result = (result * 0x10000000000002C5C85FDF473E242EA39) >> 128"
                if expr_1925 {
                    /// @src 0:7465:7471  "result"
                    let _443 := var_result_1180
                    let expr_1927 := _443
                    /// @src 0:7474:7509  "0x10000000000002C5C85FDF473E242EA39"
                    let expr_1928 := 0x010000000000002c5c85fdf473e242ea39
                    /// @src 0:7465:7509  "result * 0x10000000000002C5C85FDF473E242EA39"
                    let expr_1929 := wrapping_mul_t_uint256(expr_1927, convert_t_rational_340282366920938672954255450432143026745_by_1_to_t_uint256(expr_1928))

                    /// @src 0:7464:7510  "(result * 0x10000000000002C5C85FDF473E242EA39)"
                    let expr_1930 := expr_1929
                    /// @src 0:7514:7517  "128"
                    let expr_1931 := 0x80
                    /// @src 0:7464:7517  "(result * 0x10000000000002C5C85FDF473E242EA39) >> 128"
                    let _444 := convert_t_rational_128_by_1_to_t_uint8(expr_1931)
                    let expr_1932 :=
                    shift_right_t_uint256_t_uint8(expr_1930, _444)

                    /// @src 0:7455:7517  "result = (result * 0x10000000000002C5C85FDF473E242EA39) >> 128"
                    var_result_1180 := expr_1932
                    let expr_1933 := expr_1932
                    /// @src 0:7419:7517  "if (x & 0x40000000000000000000 > 0) result = (result * 0x10000000000002C5C85FDF473E242EA39) >> 128"
                }
                /// @src 0:7535:7536  "x"
                let _445 := var_x_1177
                let expr_1936 := _445
                /// @src 0:7539:7561  "0x20000000000000000000"
                let expr_1937 := 0x20000000000000000000
                /// @src 0:7535:7561  "x & 0x20000000000000000000"
                let expr_1938 := and(expr_1936, convert_t_rational_151115727451828646838272_by_1_to_t_uint256(expr_1937))

                /// @src 0:7564:7565  "0"
                let expr_1939 := 0x00
                /// @src 0:7535:7565  "x & 0x20000000000000000000 > 0"
                let expr_1940 := gt(cleanup_t_uint256(expr_1938), convert_t_rational_0_by_1_to_t_uint256(expr_1939))
                /// @src 0:7531:7629  "if (x & 0x20000000000000000000 > 0) result = (result * 0x1000000000000162E42FEFA39F02B772C) >> 128"
                if expr_1940 {
                    /// @src 0:7577:7583  "result"
                    let _446 := var_result_1180
                    let expr_1942 := _446
                    /// @src 0:7586:7621  "0x1000000000000162E42FEFA39F02B772C"
                    let expr_1943 := 0x01000000000000162e42fefa39f02b772c
                    /// @src 0:7577:7621  "result * 0x1000000000000162E42FEFA39F02B772C"
                    let expr_1944 := wrapping_mul_t_uint256(expr_1942, convert_t_rational_340282366920938568208815028931939497772_by_1_to_t_uint256(expr_1943))

                    /// @src 0:7576:7622  "(result * 0x1000000000000162E42FEFA39F02B772C)"
                    let expr_1945 := expr_1944
                    /// @src 0:7626:7629  "128"
                    let expr_1946 := 0x80
                    /// @src 0:7576:7629  "(result * 0x1000000000000162E42FEFA39F02B772C) >> 128"
                    let _447 := convert_t_rational_128_by_1_to_t_uint8(expr_1946)
                    let expr_1947 :=
                    shift_right_t_uint256_t_uint8(expr_1945, _447)

                    /// @src 0:7567:7629  "result = (result * 0x1000000000000162E42FEFA39F02B772C) >> 128"
                    var_result_1180 := expr_1947
                    let expr_1948 := expr_1947
                    /// @src 0:7531:7629  "if (x & 0x20000000000000000000 > 0) result = (result * 0x1000000000000162E42FEFA39F02B772C) >> 128"
                }
                /// @src 0:7647:7648  "x"
                let _448 := var_x_1177
                let expr_1951 := _448
                /// @src 0:7651:7673  "0x10000000000000000000"
                let expr_1952 := 0x10000000000000000000
                /// @src 0:7647:7673  "x & 0x10000000000000000000"
                let expr_1953 := and(expr_1951, convert_t_rational_75557863725914323419136_by_1_to_t_uint256(expr_1952))

                /// @src 0:7676:7677  "0"
                let expr_1954 := 0x00
                /// @src 0:7647:7677  "x & 0x10000000000000000000 > 0"
                let expr_1955 := gt(cleanup_t_uint256(expr_1953), convert_t_rational_0_by_1_to_t_uint256(expr_1954))
                /// @src 0:7643:7741  "if (x & 0x10000000000000000000 > 0) result = (result * 0x10000000000000B17217F7D1CF7D83C1A) >> 128"
                if expr_1955 {
                    /// @src 0:7689:7695  "result"
                    let _449 := var_result_1180
                    let expr_1957 := _449
                    /// @src 0:7698:7733  "0x10000000000000B17217F7D1CF7D83C1A"
                    let expr_1958 := 0x010000000000000b17217f7d1cf7d83c1a
                    /// @src 0:7689:7733  "result * 0x10000000000000B17217F7D1CF7D83C1A"
                    let expr_1959 := wrapping_mul_t_uint256(expr_1957, convert_t_rational_340282366920938515836094818181849824282_by_1_to_t_uint256(expr_1958))

                    /// @src 0:7688:7734  "(result * 0x10000000000000B17217F7D1CF7D83C1A)"
                    let expr_1960 := expr_1959
                    /// @src 0:7738:7741  "128"
                    let expr_1961 := 0x80
                    /// @src 0:7688:7741  "(result * 0x10000000000000B17217F7D1CF7D83C1A) >> 128"
                    let _450 := convert_t_rational_128_by_1_to_t_uint8(expr_1961)
                    let expr_1962 :=
                    shift_right_t_uint256_t_uint8(expr_1960, _450)

                    /// @src 0:7679:7741  "result = (result * 0x10000000000000B17217F7D1CF7D83C1A) >> 128"
                    var_result_1180 := expr_1962
                    let expr_1963 := expr_1962
                    /// @src 0:7643:7741  "if (x & 0x10000000000000000000 > 0) result = (result * 0x10000000000000B17217F7D1CF7D83C1A) >> 128"
                }
                /// @src 0:7759:7760  "x"
                let _451 := var_x_1177
                let expr_1966 := _451
                /// @src 0:7763:7784  "0x8000000000000000000"
                let expr_1967 := 0x08000000000000000000
                /// @src 0:7759:7784  "x & 0x8000000000000000000"
                let expr_1968 := and(expr_1966, convert_t_rational_37778931862957161709568_by_1_to_t_uint256(expr_1967))

                /// @src 0:7787:7788  "0"
                let expr_1969 := 0x00
                /// @src 0:7759:7788  "x & 0x8000000000000000000 > 0"
                let expr_1970 := gt(cleanup_t_uint256(expr_1968), convert_t_rational_0_by_1_to_t_uint256(expr_1969))
                /// @src 0:7755:7852  "if (x & 0x8000000000000000000 > 0) result = (result * 0x1000000000000058B90BFBE8E7BDCBE2E) >> 128"
                if expr_1970 {
                    /// @src 0:7800:7806  "result"
                    let _452 := var_result_1180
                    let expr_1972 := _452
                    /// @src 0:7809:7844  "0x1000000000000058B90BFBE8E7BDCBE2E"
                    let expr_1973 := 0x01000000000000058b90bfbe8e7bdcbe2e
                    /// @src 0:7800:7844  "result * 0x1000000000000058B90BFBE8E7BDCBE2E"
                    let expr_1974 := wrapping_mul_t_uint256(expr_1972, convert_t_rational_340282366920938489649734712806808010286_by_1_to_t_uint256(expr_1973))

                    /// @src 0:7799:7845  "(result * 0x1000000000000058B90BFBE8E7BDCBE2E)"
                    let expr_1975 := expr_1974
                    /// @src 0:7849:7852  "128"
                    let expr_1976 := 0x80
                    /// @src 0:7799:7852  "(result * 0x1000000000000058B90BFBE8E7BDCBE2E) >> 128"
                    let _453 := convert_t_rational_128_by_1_to_t_uint8(expr_1976)
                    let expr_1977 :=
                    shift_right_t_uint256_t_uint8(expr_1975, _453)

                    /// @src 0:7790:7852  "result = (result * 0x1000000000000058B90BFBE8E7BDCBE2E) >> 128"
                    var_result_1180 := expr_1977
                    let expr_1978 := expr_1977
                    /// @src 0:7755:7852  "if (x & 0x8000000000000000000 > 0) result = (result * 0x1000000000000058B90BFBE8E7BDCBE2E) >> 128"
                }
                /// @src 0:7870:7871  "x"
                let _454 := var_x_1177
                let expr_1981 := _454
                /// @src 0:7874:7895  "0x4000000000000000000"
                let expr_1982 := 0x04000000000000000000
                /// @src 0:7870:7895  "x & 0x4000000000000000000"
                let expr_1983 := and(expr_1981, convert_t_rational_18889465931478580854784_by_1_to_t_uint256(expr_1982))

                /// @src 0:7898:7899  "0"
                let expr_1984 := 0x00
                /// @src 0:7870:7899  "x & 0x4000000000000000000 > 0"
                let expr_1985 := gt(cleanup_t_uint256(expr_1983), convert_t_rational_0_by_1_to_t_uint256(expr_1984))
                /// @src 0:7866:7963  "if (x & 0x4000000000000000000 > 0) result = (result * 0x100000000000002C5C85FDF473DEA871F) >> 128"
                if expr_1985 {
                    /// @src 0:7911:7917  "result"
                    let _455 := var_result_1180
                    let expr_1987 := _455
                    /// @src 0:7920:7955  "0x100000000000002C5C85FDF473DEA871F"
                    let expr_1988 := 0x0100000000000002c5c85fdf473dea871f
                    /// @src 0:7911:7955  "result * 0x100000000000002C5C85FDF473DEA871F"
                    let expr_1989 := wrapping_mul_t_uint256(expr_1987, convert_t_rational_340282366920938476556554660119287858975_by_1_to_t_uint256(expr_1988))

                    /// @src 0:7910:7956  "(result * 0x100000000000002C5C85FDF473DEA871F)"
                    let expr_1990 := expr_1989
                    /// @src 0:7960:7963  "128"
                    let expr_1991 := 0x80
                    /// @src 0:7910:7963  "(result * 0x100000000000002C5C85FDF473DEA871F) >> 128"
                    let _456 := convert_t_rational_128_by_1_to_t_uint8(expr_1991)
                    let expr_1992 :=
                    shift_right_t_uint256_t_uint8(expr_1990, _456)

                    /// @src 0:7901:7963  "result = (result * 0x100000000000002C5C85FDF473DEA871F) >> 128"
                    var_result_1180 := expr_1992
                    let expr_1993 := expr_1992
                    /// @src 0:7866:7963  "if (x & 0x4000000000000000000 > 0) result = (result * 0x100000000000002C5C85FDF473DEA871F) >> 128"
                }
                /// @src 0:7981:7982  "x"
                let _457 := var_x_1177
                let expr_1996 := _457
                /// @src 0:7985:8006  "0x2000000000000000000"
                let expr_1997 := 0x02000000000000000000
                /// @src 0:7981:8006  "x & 0x2000000000000000000"
                let expr_1998 := and(expr_1996, convert_t_rational_9444732965739290427392_by_1_to_t_uint256(expr_1997))

                /// @src 0:8009:8010  "0"
                let expr_1999 := 0x00
                /// @src 0:7981:8010  "x & 0x2000000000000000000 > 0"
                let expr_2000 := gt(cleanup_t_uint256(expr_1998), convert_t_rational_0_by_1_to_t_uint256(expr_1999))
                /// @src 0:7977:8074  "if (x & 0x2000000000000000000 > 0) result = (result * 0x10000000000000162E42FEFA39EF44D92) >> 128"
                if expr_2000 {
                    /// @src 0:8022:8028  "result"
                    let _458 := var_result_1180
                    let expr_2002 := _458
                    /// @src 0:8031:8066  "0x10000000000000162E42FEFA39EF44D92"
                    let expr_2003 := 0x010000000000000162e42fefa39ef44d92
                    /// @src 0:8022:8066  "result * 0x10000000000000162E42FEFA39EF44D92"
                    let expr_2004 := wrapping_mul_t_uint256(expr_2002, convert_t_rational_340282366920938470009964633775527972242_by_1_to_t_uint256(expr_2003))

                    /// @src 0:8021:8067  "(result * 0x10000000000000162E42FEFA39EF44D92)"
                    let expr_2005 := expr_2004
                    /// @src 0:8071:8074  "128"
                    let expr_2006 := 0x80
                    /// @src 0:8021:8074  "(result * 0x10000000000000162E42FEFA39EF44D92) >> 128"
                    let _459 := convert_t_rational_128_by_1_to_t_uint8(expr_2006)
                    let expr_2007 :=
                    shift_right_t_uint256_t_uint8(expr_2005, _459)

                    /// @src 0:8012:8074  "result = (result * 0x10000000000000162E42FEFA39EF44D92) >> 128"
                    var_result_1180 := expr_2007
                    let expr_2008 := expr_2007
                    /// @src 0:7977:8074  "if (x & 0x2000000000000000000 > 0) result = (result * 0x10000000000000162E42FEFA39EF44D92) >> 128"
                }
                /// @src 0:8092:8093  "x"
                let _460 := var_x_1177
                let expr_2011 := _460
                /// @src 0:8096:8117  "0x1000000000000000000"
                let expr_2012 := 0x01000000000000000000
                /// @src 0:8092:8117  "x & 0x1000000000000000000"
                let expr_2013 := and(expr_2011, convert_t_rational_4722366482869645213696_by_1_to_t_uint256(expr_2012))

                /// @src 0:8120:8121  "0"
                let expr_2014 := 0x00
                /// @src 0:8092:8121  "x & 0x1000000000000000000 > 0"
                let expr_2015 := gt(cleanup_t_uint256(expr_2013), convert_t_rational_0_by_1_to_t_uint256(expr_2014))
                /// @src 0:8088:8185  "if (x & 0x1000000000000000000 > 0) result = (result * 0x100000000000000B17217F7D1CF79E949) >> 128"
                if expr_2015 {
                    /// @src 0:8133:8139  "result"
                    let _461 := var_result_1180
                    let expr_2017 := _461
                    /// @src 0:8142:8177  "0x100000000000000B17217F7D1CF79E949"
                    let expr_2018 := 0x0100000000000000b17217f7d1cf79e949
                    /// @src 0:8133:8177  "result * 0x100000000000000B17217F7D1CF79E949"
                    let expr_2019 := wrapping_mul_t_uint256(expr_2017, convert_t_rational_340282366920938466736669620603648076105_by_1_to_t_uint256(expr_2018))

                    /// @src 0:8132:8178  "(result * 0x100000000000000B17217F7D1CF79E949)"
                    let expr_2020 := expr_2019
                    /// @src 0:8182:8185  "128"
                    let expr_2021 := 0x80
                    /// @src 0:8132:8185  "(result * 0x100000000000000B17217F7D1CF79E949) >> 128"
                    let _462 := convert_t_rational_128_by_1_to_t_uint8(expr_2021)
                    let expr_2022 :=
                    shift_right_t_uint256_t_uint8(expr_2020, _462)

                    /// @src 0:8123:8185  "result = (result * 0x100000000000000B17217F7D1CF79E949) >> 128"
                    var_result_1180 := expr_2022
                    let expr_2023 := expr_2022
                    /// @src 0:8088:8185  "if (x & 0x1000000000000000000 > 0) result = (result * 0x100000000000000B17217F7D1CF79E949) >> 128"
                }
                /// @src 0:8203:8204  "x"
                let _463 := var_x_1177
                let expr_2026 := _463
                /// @src 0:8207:8227  "0x800000000000000000"
                let expr_2027 := 0x800000000000000000
                /// @src 0:8203:8227  "x & 0x800000000000000000"
                let expr_2028 := and(expr_2026, convert_t_rational_2361183241434822606848_by_1_to_t_uint256(expr_2027))

                /// @src 0:8230:8231  "0"
                let expr_2029 := 0x00
                /// @src 0:8203:8231  "x & 0x800000000000000000 > 0"
                let expr_2030 := gt(cleanup_t_uint256(expr_2028), convert_t_rational_0_by_1_to_t_uint256(expr_2029))
                /// @src 0:8199:8295  "if (x & 0x800000000000000000 > 0) result = (result * 0x10000000000000058B90BFBE8E7BCE545) >> 128"
                if expr_2030 {
                    /// @src 0:8243:8249  "result"
                    let _464 := var_result_1180
                    let expr_2032 := _464
                    /// @src 0:8252:8287  "0x10000000000000058B90BFBE8E7BCE545"
                    let expr_2033 := 0x010000000000000058b90bfbe8e7bce545
                    /// @src 0:8243:8287  "result * 0x10000000000000058B90BFBE8E7BCE545"
                    let expr_2034 := wrapping_mul_t_uint256(expr_2032, convert_t_rational_340282366920938465100022114017708139845_by_1_to_t_uint256(expr_2033))

                    /// @src 0:8242:8288  "(result * 0x10000000000000058B90BFBE8E7BCE545)"
                    let expr_2035 := expr_2034
                    /// @src 0:8292:8295  "128"
                    let expr_2036 := 0x80
                    /// @src 0:8242:8295  "(result * 0x10000000000000058B90BFBE8E7BCE545) >> 128"
                    let _465 := convert_t_rational_128_by_1_to_t_uint8(expr_2036)
                    let expr_2037 :=
                    shift_right_t_uint256_t_uint8(expr_2035, _465)

                    /// @src 0:8233:8295  "result = (result * 0x10000000000000058B90BFBE8E7BCE545) >> 128"
                    var_result_1180 := expr_2037
                    let expr_2038 := expr_2037
                    /// @src 0:8199:8295  "if (x & 0x800000000000000000 > 0) result = (result * 0x10000000000000058B90BFBE8E7BCE545) >> 128"
                }
                /// @src 0:8313:8314  "x"
                let _466 := var_x_1177
                let expr_2041 := _466
                /// @src 0:8317:8337  "0x400000000000000000"
                let expr_2042 := 0x400000000000000000
                /// @src 0:8313:8337  "x & 0x400000000000000000"
                let expr_2043 := and(expr_2041, convert_t_rational_1180591620717411303424_by_1_to_t_uint256(expr_2042))

                /// @src 0:8340:8341  "0"
                let expr_2044 := 0x00
                /// @src 0:8313:8341  "x & 0x400000000000000000 > 0"
                let expr_2045 := gt(cleanup_t_uint256(expr_2043), convert_t_rational_0_by_1_to_t_uint256(expr_2044))
                /// @src 0:8309:8405  "if (x & 0x400000000000000000 > 0) result = (result * 0x1000000000000002C5C85FDF473DE6ECA) >> 128"
                if expr_2045 {
                    /// @src 0:8353:8359  "result"
                    let _467 := var_result_1180
                    let expr_2047 := _467
                    /// @src 0:8362:8397  "0x1000000000000002C5C85FDF473DE6ECA"
                    let expr_2048 := 0x01000000000000002c5c85fdf473de6eca
                    /// @src 0:8353:8397  "result * 0x1000000000000002C5C85FDF473DE6ECA"
                    let expr_2049 := wrapping_mul_t_uint256(expr_2047, convert_t_rational_340282366920938464281698360724738174666_by_1_to_t_uint256(expr_2048))

                    /// @src 0:8352:8398  "(result * 0x1000000000000002C5C85FDF473DE6ECA)"
                    let expr_2050 := expr_2049
                    /// @src 0:8402:8405  "128"
                    let expr_2051 := 0x80
                    /// @src 0:8352:8405  "(result * 0x1000000000000002C5C85FDF473DE6ECA) >> 128"
                    let _468 := convert_t_rational_128_by_1_to_t_uint8(expr_2051)
                    let expr_2052 :=
                    shift_right_t_uint256_t_uint8(expr_2050, _468)

                    /// @src 0:8343:8405  "result = (result * 0x1000000000000002C5C85FDF473DE6ECA) >> 128"
                    var_result_1180 := expr_2052
                    let expr_2053 := expr_2052
                    /// @src 0:8309:8405  "if (x & 0x400000000000000000 > 0) result = (result * 0x1000000000000002C5C85FDF473DE6ECA) >> 128"
                }
                /// @src 0:8423:8424  "x"
                let _469 := var_x_1177
                let expr_2056 := _469
                /// @src 0:8427:8447  "0x200000000000000000"
                let expr_2057 := 0x200000000000000000
                /// @src 0:8423:8447  "x & 0x200000000000000000"
                let expr_2058 := and(expr_2056, convert_t_rational_590295810358705651712_by_1_to_t_uint256(expr_2057))

                /// @src 0:8450:8451  "0"
                let expr_2059 := 0x00
                /// @src 0:8423:8451  "x & 0x200000000000000000 > 0"
                let expr_2060 := gt(cleanup_t_uint256(expr_2058), convert_t_rational_0_by_1_to_t_uint256(expr_2059))
                /// @src 0:8419:8515  "if (x & 0x200000000000000000 > 0) result = (result * 0x100000000000000162E42FEFA39EF366F) >> 128"
                if expr_2060 {
                    /// @src 0:8463:8469  "result"
                    let _470 := var_result_1180
                    let expr_2062 := _470
                    /// @src 0:8472:8507  "0x100000000000000162E42FEFA39EF366F"
                    let expr_2063 := 0x0100000000000000162e42fefa39ef366f
                    /// @src 0:8463:8507  "result * 0x100000000000000162E42FEFA39EF366F"
                    let expr_2064 := wrapping_mul_t_uint256(expr_2062, convert_t_rational_340282366920938463872536484078253192815_by_1_to_t_uint256(expr_2063))

                    /// @src 0:8462:8508  "(result * 0x100000000000000162E42FEFA39EF366F)"
                    let expr_2065 := expr_2064
                    /// @src 0:8512:8515  "128"
                    let expr_2066 := 0x80
                    /// @src 0:8462:8515  "(result * 0x100000000000000162E42FEFA39EF366F) >> 128"
                    let _471 := convert_t_rational_128_by_1_to_t_uint8(expr_2066)
                    let expr_2067 :=
                    shift_right_t_uint256_t_uint8(expr_2065, _471)

                    /// @src 0:8453:8515  "result = (result * 0x100000000000000162E42FEFA39EF366F) >> 128"
                    var_result_1180 := expr_2067
                    let expr_2068 := expr_2067
                    /// @src 0:8419:8515  "if (x & 0x200000000000000000 > 0) result = (result * 0x100000000000000162E42FEFA39EF366F) >> 128"
                }
                /// @src 0:8533:8534  "x"
                let _472 := var_x_1177
                let expr_2071 := _472
                /// @src 0:8537:8557  "0x100000000000000000"
                let expr_2072 := 0x100000000000000000
                /// @src 0:8533:8557  "x & 0x100000000000000000"
                let expr_2073 := and(expr_2071, convert_t_rational_295147905179352825856_by_1_to_t_uint256(expr_2072))

                /// @src 0:8560:8561  "0"
                let expr_2074 := 0x00
                /// @src 0:8533:8561  "x & 0x100000000000000000 > 0"
                let expr_2075 := gt(cleanup_t_uint256(expr_2073), convert_t_rational_0_by_1_to_t_uint256(expr_2074))
                /// @src 0:8529:8625  "if (x & 0x100000000000000000 > 0) result = (result * 0x1000000000000000B17217F7D1CF79AFA) >> 128"
                if expr_2075 {
                    /// @src 0:8573:8579  "result"
                    let _473 := var_result_1180
                    let expr_2077 := _473
                    /// @src 0:8582:8617  "0x1000000000000000B17217F7D1CF79AFA"
                    let expr_2078 := 0x01000000000000000b17217f7d1cf79afa
                    /// @src 0:8573:8617  "result * 0x1000000000000000B17217F7D1CF79AFA"
                    let expr_2079 := wrapping_mul_t_uint256(expr_2077, convert_t_rational_340282366920938463667955545755010702074_by_1_to_t_uint256(expr_2078))

                    /// @src 0:8572:8618  "(result * 0x1000000000000000B17217F7D1CF79AFA)"
                    let expr_2080 := expr_2079
                    /// @src 0:8622:8625  "128"
                    let expr_2081 := 0x80
                    /// @src 0:8572:8625  "(result * 0x1000000000000000B17217F7D1CF79AFA) >> 128"
                    let _474 := convert_t_rational_128_by_1_to_t_uint8(expr_2081)
                    let expr_2082 :=
                    shift_right_t_uint256_t_uint8(expr_2080, _474)

                    /// @src 0:8563:8625  "result = (result * 0x1000000000000000B17217F7D1CF79AFA) >> 128"
                    var_result_1180 := expr_2082
                    let expr_2083 := expr_2082
                    /// @src 0:8529:8625  "if (x & 0x100000000000000000 > 0) result = (result * 0x1000000000000000B17217F7D1CF79AFA) >> 128"
                }
                /// @src 0:8643:8644  "x"
                let _475 := var_x_1177
                let expr_2086 := _475
                /// @src 0:8647:8666  "0x80000000000000000"
                let expr_2087 := 0x080000000000000000
                /// @src 0:8643:8666  "x & 0x80000000000000000"
                let expr_2088 := and(expr_2086, convert_t_rational_147573952589676412928_by_1_to_t_uint256(expr_2087))

                /// @src 0:8669:8670  "0"
                let expr_2089 := 0x00
                /// @src 0:8643:8670  "x & 0x80000000000000000 > 0"
                let expr_2090 := gt(cleanup_t_uint256(expr_2088), convert_t_rational_0_by_1_to_t_uint256(expr_2089))
                /// @src 0:8639:8734  "if (x & 0x80000000000000000 > 0) result = (result * 0x100000000000000058B90BFBE8E7BCD6E) >> 128"
                if expr_2090 {
                    /// @src 0:8682:8688  "result"
                    let _476 := var_result_1180
                    let expr_2092 := _476
                    /// @src 0:8691:8726  "0x100000000000000058B90BFBE8E7BCD6E"
                    let expr_2093 := 0x0100000000000000058b90bfbe8e7bcd6e
                    /// @src 0:8682:8726  "result * 0x100000000000000058B90BFBE8E7BCD6E"
                    let expr_2094 := wrapping_mul_t_uint256(expr_2092, convert_t_rational_340282366920938463565665076593389456750_by_1_to_t_uint256(expr_2093))

                    /// @src 0:8681:8727  "(result * 0x100000000000000058B90BFBE8E7BCD6E)"
                    let expr_2095 := expr_2094
                    /// @src 0:8731:8734  "128"
                    let expr_2096 := 0x80
                    /// @src 0:8681:8734  "(result * 0x100000000000000058B90BFBE8E7BCD6E) >> 128"
                    let _477 := convert_t_rational_128_by_1_to_t_uint8(expr_2096)
                    let expr_2097 :=
                    shift_right_t_uint256_t_uint8(expr_2095, _477)

                    /// @src 0:8672:8734  "result = (result * 0x100000000000000058B90BFBE8E7BCD6E) >> 128"
                    var_result_1180 := expr_2097
                    let expr_2098 := expr_2097
                    /// @src 0:8639:8734  "if (x & 0x80000000000000000 > 0) result = (result * 0x100000000000000058B90BFBE8E7BCD6E) >> 128"
                }
                /// @src 0:8752:8753  "x"
                let _478 := var_x_1177
                let expr_2101 := _478
                /// @src 0:8756:8775  "0x40000000000000000"
                let expr_2102 := 0x040000000000000000
                /// @src 0:8752:8775  "x & 0x40000000000000000"
                let expr_2103 := and(expr_2101, convert_t_rational_73786976294838206464_by_1_to_t_uint256(expr_2102))

                /// @src 0:8778:8779  "0"
                let expr_2104 := 0x00
                /// @src 0:8752:8779  "x & 0x40000000000000000 > 0"
                let expr_2105 := gt(cleanup_t_uint256(expr_2103), convert_t_rational_0_by_1_to_t_uint256(expr_2104))
                /// @src 0:8748:8843  "if (x & 0x40000000000000000 > 0) result = (result * 0x10000000000000002C5C85FDF473DE6B3) >> 128"
                if expr_2105 {
                    /// @src 0:8791:8797  "result"
                    let _479 := var_result_1180
                    let expr_2107 := _479
                    /// @src 0:8800:8835  "0x10000000000000002C5C85FDF473DE6B3"
                    let expr_2108 := 0x010000000000000002c5c85fdf473de6b3
                    /// @src 0:8791:8835  "result * 0x10000000000000002C5C85FDF473DE6B3"
                    let expr_2109 := wrapping_mul_t_uint256(expr_2107, convert_t_rational_340282366920938463514519842012578834099_by_1_to_t_uint256(expr_2108))

                    /// @src 0:8790:8836  "(result * 0x10000000000000002C5C85FDF473DE6B3)"
                    let expr_2110 := expr_2109
                    /// @src 0:8840:8843  "128"
                    let expr_2111 := 0x80
                    /// @src 0:8790:8843  "(result * 0x10000000000000002C5C85FDF473DE6B3) >> 128"
                    let _480 := convert_t_rational_128_by_1_to_t_uint8(expr_2111)
                    let expr_2112 :=
                    shift_right_t_uint256_t_uint8(expr_2110, _480)

                    /// @src 0:8781:8843  "result = (result * 0x10000000000000002C5C85FDF473DE6B3) >> 128"
                    var_result_1180 := expr_2112
                    let expr_2113 := expr_2112
                    /// @src 0:8748:8843  "if (x & 0x40000000000000000 > 0) result = (result * 0x10000000000000002C5C85FDF473DE6B3) >> 128"
                }
                /// @src 0:8861:8862  "x"
                let _481 := var_x_1177
                let expr_2116 := _481
                /// @src 0:8865:8884  "0x20000000000000000"
                let expr_2117 := 0x020000000000000000
                /// @src 0:8861:8884  "x & 0x20000000000000000"
                let expr_2118 := and(expr_2116, convert_t_rational_36893488147419103232_by_1_to_t_uint256(expr_2117))

                /// @src 0:8887:8888  "0"
                let expr_2119 := 0x00
                /// @src 0:8861:8888  "x & 0x20000000000000000 > 0"
                let expr_2120 := gt(cleanup_t_uint256(expr_2118), convert_t_rational_0_by_1_to_t_uint256(expr_2119))
                /// @src 0:8857:8952  "if (x & 0x20000000000000000 > 0) result = (result * 0x1000000000000000162E42FEFA39EF359) >> 128"
                if expr_2120 {
                    /// @src 0:8900:8906  "result"
                    let _482 := var_result_1180
                    let expr_2122 := _482
                    /// @src 0:8909:8944  "0x1000000000000000162E42FEFA39EF359"
                    let expr_2123 := 0x01000000000000000162e42fefa39ef359
                    /// @src 0:8900:8944  "result * 0x1000000000000000162E42FEFA39EF359"
                    let expr_2124 := wrapping_mul_t_uint256(expr_2122, convert_t_rational_340282366920938463488947224722173522777_by_1_to_t_uint256(expr_2123))

                    /// @src 0:8899:8945  "(result * 0x1000000000000000162E42FEFA39EF359)"
                    let expr_2125 := expr_2124
                    /// @src 0:8949:8952  "128"
                    let expr_2126 := 0x80
                    /// @src 0:8899:8952  "(result * 0x1000000000000000162E42FEFA39EF359) >> 128"
                    let _483 := convert_t_rational_128_by_1_to_t_uint8(expr_2126)
                    let expr_2127 :=
                    shift_right_t_uint256_t_uint8(expr_2125, _483)

                    /// @src 0:8890:8952  "result = (result * 0x1000000000000000162E42FEFA39EF359) >> 128"
                    var_result_1180 := expr_2127
                    let expr_2128 := expr_2127
                    /// @src 0:8857:8952  "if (x & 0x20000000000000000 > 0) result = (result * 0x1000000000000000162E42FEFA39EF359) >> 128"
                }
                /// @src 0:8970:8971  "x"
                let _484 := var_x_1177
                let expr_2131 := _484
                /// @src 0:8974:8993  "0x10000000000000000"
                let expr_2132 := 0x010000000000000000
                /// @src 0:8970:8993  "x & 0x10000000000000000"
                let expr_2133 := and(expr_2131, convert_t_rational_18446744073709551616_by_1_to_t_uint256(expr_2132))

                /// @src 0:8996:8997  "0"
                let expr_2134 := 0x00
                /// @src 0:8970:8997  "x & 0x10000000000000000 > 0"
                let expr_2135 := gt(cleanup_t_uint256(expr_2133), convert_t_rational_0_by_1_to_t_uint256(expr_2134))
                /// @src 0:8966:9061  "if (x & 0x10000000000000000 > 0) result = (result * 0x10000000000000000B17217F7D1CF79AC) >> 128"
                if expr_2135 {
                    /// @src 0:9009:9015  "result"
                    let _485 := var_result_1180
                    let expr_2137 := _485
                    /// @src 0:9018:9053  "0x10000000000000000B17217F7D1CF79AC"
                    let expr_2138 := 0x010000000000000000b17217f7d1cf79ac
                    /// @src 0:9009:9053  "result * 0x10000000000000000B17217F7D1CF79AC"
                    let expr_2139 := wrapping_mul_t_uint256(expr_2137, convert_t_rational_340282366920938463476160916076970867116_by_1_to_t_uint256(expr_2138))

                    /// @src 0:9008:9054  "(result * 0x10000000000000000B17217F7D1CF79AC)"
                    let expr_2140 := expr_2139
                    /// @src 0:9058:9061  "128"
                    let expr_2141 := 0x80
                    /// @src 0:9008:9061  "(result * 0x10000000000000000B17217F7D1CF79AC) >> 128"
                    let _486 := convert_t_rational_128_by_1_to_t_uint8(expr_2141)
                    let expr_2142 :=
                    shift_right_t_uint256_t_uint8(expr_2140, _486)

                    /// @src 0:8999:9061  "result = (result * 0x10000000000000000B17217F7D1CF79AC) >> 128"
                    var_result_1180 := expr_2142
                    let expr_2143 := expr_2142
                    /// @src 0:8966:9061  "if (x & 0x10000000000000000 > 0) result = (result * 0x10000000000000000B17217F7D1CF79AC) >> 128"
                }
                /// @src 0:9758:9763  "SCALE"
                let expr_2147 := constant_SCALE_1166()
                /// @src 0:9748:9763  "result *= SCALE"
                let _487 := var_result_1180
                let expr_2148 := wrapping_mul_t_uint256(_487, expr_2147)

                var_result_1180 := expr_2148
                /// @src 0:9789:9792  "127"
                let expr_2151 := 0x7f
                /// @src 0:9796:9797  "x"
                let _488 := var_x_1177
                let expr_2152 := _488
                /// @src 0:9801:9804  "128"
                let expr_2153 := 0x80
                /// @src 0:9796:9804  "x >> 128"
                let _489 := convert_t_rational_128_by_1_to_t_uint8(expr_2153)
                let expr_2154 :=
                shift_right_t_uint256_t_uint8(expr_2152, _489)

                /// @src 0:9795:9805  "(x >> 128)"
                let expr_2155 := expr_2154
                /// @src 0:9789:9805  "127 - (x >> 128)"
                let expr_2156 := wrapping_sub_t_uint256(convert_t_rational_127_by_1_to_t_uint256(expr_2151), expr_2155)

                /// @src 0:9788:9806  "(127 - (x >> 128))"
                let expr_2157 := expr_2156
                /// @src 0:9777:9806  "result >>= (127 - (x >> 128))"
                let _490 := var_result_1180
                let expr_2158 :=
                shift_right_t_uint256_t_uint256(_490, expr_2157)

                var_result_1180 := expr_2158

            }
            /// @src 2:39:1342  "contract test {..."

            function convert_t_rational_128_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_128_by_1(value)))
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function convert_t_rational_64_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_64_by_1(value)))
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            /// @ast-id 2287
            /// @src 0:10210:10954  "function mostSignificantBit(uint256 x) internal pure returns (uint256 msb) {..."
            function fun_mostSignificantBit_2287(var_x_2165) -> var_msb_2168 {
                /// @src 0:10272:10283  "uint256 msb"
                let zero_t_uint256_491 := zero_value_for_split_t_uint256()
                var_msb_2168 := zero_t_uint256_491

                /// @src 0:10299:10300  "x"
                let _492 := var_x_2165
                let expr_2170 := _492
                /// @src 0:10304:10310  "2**128"
                let expr_2173 := 0x0100000000000000000000000000000000
                /// @src 0:10299:10310  "x >= 2**128"
                let expr_2174 := iszero(lt(cleanup_t_uint256(expr_2170), convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_2173)))
                /// @src 0:10295:10370  "if (x >= 2**128) {..."
                if expr_2174 {
                    /// @src 0:10332:10335  "128"
                    let expr_2176 := 0x80
                    /// @src 0:10326:10335  "x >>= 128"
                    let _493 := convert_t_rational_128_by_1_to_t_uint8(expr_2176)
                    let _494 := var_x_2165
                    let expr_2177 :=
                    shift_right_t_uint256_t_uint8(_494, _493)

                    var_x_2165 := expr_2177
                    /// @src 0:10356:10359  "128"
                    let expr_2180 := 0x80
                    /// @src 0:10349:10359  "msb += 128"
                    let _495 := convert_t_rational_128_by_1_to_t_uint256(expr_2180)
                    let _496 := var_msb_2168
                    let expr_2181 := checked_add_t_uint256(_496, _495)

                    var_msb_2168 := expr_2181
                    /// @src 0:10295:10370  "if (x >= 2**128) {..."
                }
                /// @src 0:10383:10384  "x"
                let _497 := var_x_2165
                let expr_2185 := _497
                /// @src 0:10388:10393  "2**64"
                let expr_2188 := 0x010000000000000000
                /// @src 0:10383:10393  "x >= 2**64"
                let expr_2189 := iszero(lt(cleanup_t_uint256(expr_2185), convert_t_rational_18446744073709551616_by_1_to_t_uint256(expr_2188)))
                /// @src 0:10379:10451  "if (x >= 2**64) {..."
                if expr_2189 {
                    /// @src 0:10415:10417  "64"
                    let expr_2191 := 0x40
                    /// @src 0:10409:10417  "x >>= 64"
                    let _498 := convert_t_rational_64_by_1_to_t_uint8(expr_2191)
                    let _499 := var_x_2165
                    let expr_2192 :=
                    shift_right_t_uint256_t_uint8(_499, _498)

                    var_x_2165 := expr_2192
                    /// @src 0:10438:10440  "64"
                    let expr_2195 := 0x40
                    /// @src 0:10431:10440  "msb += 64"
                    let _500 := convert_t_rational_64_by_1_to_t_uint256(expr_2195)
                    let _501 := var_msb_2168
                    let expr_2196 := checked_add_t_uint256(_501, _500)

                    var_msb_2168 := expr_2196
                    /// @src 0:10379:10451  "if (x >= 2**64) {..."
                }
                /// @src 0:10464:10465  "x"
                let _502 := var_x_2165
                let expr_2200 := _502
                /// @src 0:10469:10474  "2**32"
                let expr_2203 := 0x0100000000
                /// @src 0:10464:10474  "x >= 2**32"
                let expr_2204 := iszero(lt(cleanup_t_uint256(expr_2200), convert_t_rational_4294967296_by_1_to_t_uint256(expr_2203)))
                /// @src 0:10460:10532  "if (x >= 2**32) {..."
                if expr_2204 {
                    /// @src 0:10496:10498  "32"
                    let expr_2206 := 0x20
                    /// @src 0:10490:10498  "x >>= 32"
                    let _503 := convert_t_rational_32_by_1_to_t_uint8(expr_2206)
                    let _504 := var_x_2165
                    let expr_2207 :=
                    shift_right_t_uint256_t_uint8(_504, _503)

                    var_x_2165 := expr_2207
                    /// @src 0:10519:10521  "32"
                    let expr_2210 := 0x20
                    /// @src 0:10512:10521  "msb += 32"
                    let _505 := convert_t_rational_32_by_1_to_t_uint256(expr_2210)
                    let _506 := var_msb_2168
                    let expr_2211 := checked_add_t_uint256(_506, _505)

                    var_msb_2168 := expr_2211
                    /// @src 0:10460:10532  "if (x >= 2**32) {..."
                }
                /// @src 0:10545:10546  "x"
                let _507 := var_x_2165
                let expr_2215 := _507
                /// @src 0:10550:10555  "2**16"
                let expr_2218 := 0x010000
                /// @src 0:10545:10555  "x >= 2**16"
                let expr_2219 := iszero(lt(cleanup_t_uint256(expr_2215), convert_t_rational_65536_by_1_to_t_uint256(expr_2218)))
                /// @src 0:10541:10613  "if (x >= 2**16) {..."
                if expr_2219 {
                    /// @src 0:10577:10579  "16"
                    let expr_2221 := 0x10
                    /// @src 0:10571:10579  "x >>= 16"
                    let _508 := convert_t_rational_16_by_1_to_t_uint8(expr_2221)
                    let _509 := var_x_2165
                    let expr_2222 :=
                    shift_right_t_uint256_t_uint8(_509, _508)

                    var_x_2165 := expr_2222
                    /// @src 0:10600:10602  "16"
                    let expr_2225 := 0x10
                    /// @src 0:10593:10602  "msb += 16"
                    let _510 := convert_t_rational_16_by_1_to_t_uint256(expr_2225)
                    let _511 := var_msb_2168
                    let expr_2226 := checked_add_t_uint256(_511, _510)

                    var_msb_2168 := expr_2226
                    /// @src 0:10541:10613  "if (x >= 2**16) {..."
                }
                /// @src 0:10626:10627  "x"
                let _512 := var_x_2165
                let expr_2230 := _512
                /// @src 0:10631:10635  "2**8"
                let expr_2233 := 0x0100
                /// @src 0:10626:10635  "x >= 2**8"
                let expr_2234 := iszero(lt(cleanup_t_uint256(expr_2230), convert_t_rational_256_by_1_to_t_uint256(expr_2233)))
                /// @src 0:10622:10691  "if (x >= 2**8) {..."
                if expr_2234 {
                    /// @src 0:10657:10658  "8"
                    let expr_2236 := 0x08
                    /// @src 0:10651:10658  "x >>= 8"
                    let _513 := convert_t_rational_8_by_1_to_t_uint8(expr_2236)
                    let _514 := var_x_2165
                    let expr_2237 :=
                    shift_right_t_uint256_t_uint8(_514, _513)

                    var_x_2165 := expr_2237
                    /// @src 0:10679:10680  "8"
                    let expr_2240 := 0x08
                    /// @src 0:10672:10680  "msb += 8"
                    let _515 := convert_t_rational_8_by_1_to_t_uint256(expr_2240)
                    let _516 := var_msb_2168
                    let expr_2241 := checked_add_t_uint256(_516, _515)

                    var_msb_2168 := expr_2241
                    /// @src 0:10622:10691  "if (x >= 2**8) {..."
                }
                /// @src 0:10704:10705  "x"
                let _517 := var_x_2165
                let expr_2245 := _517
                /// @src 0:10709:10713  "2**4"
                let expr_2248 := 0x10
                /// @src 0:10704:10713  "x >= 2**4"
                let expr_2249 := iszero(lt(cleanup_t_uint256(expr_2245), convert_t_rational_16_by_1_to_t_uint256(expr_2248)))
                /// @src 0:10700:10769  "if (x >= 2**4) {..."
                if expr_2249 {
                    /// @src 0:10735:10736  "4"
                    let expr_2251 := 0x04
                    /// @src 0:10729:10736  "x >>= 4"
                    let _518 := convert_t_rational_4_by_1_to_t_uint8(expr_2251)
                    let _519 := var_x_2165
                    let expr_2252 :=
                    shift_right_t_uint256_t_uint8(_519, _518)

                    var_x_2165 := expr_2252
                    /// @src 0:10757:10758  "4"
                    let expr_2255 := 0x04
                    /// @src 0:10750:10758  "msb += 4"
                    let _520 := convert_t_rational_4_by_1_to_t_uint256(expr_2255)
                    let _521 := var_msb_2168
                    let expr_2256 := checked_add_t_uint256(_521, _520)

                    var_msb_2168 := expr_2256
                    /// @src 0:10700:10769  "if (x >= 2**4) {..."
                }
                /// @src 0:10782:10783  "x"
                let _522 := var_x_2165
                let expr_2260 := _522
                /// @src 0:10787:10791  "2**2"
                let expr_2263 := 0x04
                /// @src 0:10782:10791  "x >= 2**2"
                let expr_2264 := iszero(lt(cleanup_t_uint256(expr_2260), convert_t_rational_4_by_1_to_t_uint256(expr_2263)))
                /// @src 0:10778:10847  "if (x >= 2**2) {..."
                if expr_2264 {
                    /// @src 0:10813:10814  "2"
                    let expr_2266 := 0x02
                    /// @src 0:10807:10814  "x >>= 2"
                    let _523 := convert_t_rational_2_by_1_to_t_uint8(expr_2266)
                    let _524 := var_x_2165
                    let expr_2267 :=
                    shift_right_t_uint256_t_uint8(_524, _523)

                    var_x_2165 := expr_2267
                    /// @src 0:10835:10836  "2"
                    let expr_2270 := 0x02
                    /// @src 0:10828:10836  "msb += 2"
                    let _525 := convert_t_rational_2_by_1_to_t_uint256(expr_2270)
                    let _526 := var_msb_2168
                    let expr_2271 := checked_add_t_uint256(_526, _525)

                    var_msb_2168 := expr_2271
                    /// @src 0:10778:10847  "if (x >= 2**2) {..."
                }
                /// @src 0:10860:10861  "x"
                let _527 := var_x_2165
                let expr_2275 := _527
                /// @src 0:10865:10869  "2**1"
                let expr_2278 := 0x02
                /// @src 0:10860:10869  "x >= 2**1"
                let expr_2279 := iszero(lt(cleanup_t_uint256(expr_2275), convert_t_rational_2_by_1_to_t_uint256(expr_2278)))
                /// @src 0:10856:10948  "if (x >= 2**1) {..."
                if expr_2279 {
                    /// @src 0:10936:10937  "1"
                    let expr_2281 := 0x01
                    /// @src 0:10929:10937  "msb += 1"
                    let _528 := convert_t_rational_1_by_1_to_t_uint256(expr_2281)
                    let _529 := var_msb_2168
                    let expr_2282 := checked_add_t_uint256(_529, _528)

                    var_msb_2168 := expr_2282
                    /// @src 0:10856:10948  "if (x >= 2**1) {..."
                }

            }
            /// @src 2:39:1342  "contract test {..."

        }

        data ".metadata" hex"a264697066735822122019292bdf2cd1851903d2e60f910c4f0ff4d0be6c9bf7f827d8236c7fa9eefbf864736f6c634300081b0033"
    }

}


