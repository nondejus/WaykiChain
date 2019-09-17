
C_DEFINES = -DSOFTFLOAT_FAST_INT64 -DSOFTFLOAT_ROUND_EVEN -DINLINE_LEVEL=5 -DSOFTFLOAT_FAST_DIV32TO16 -DSOFTFLOAT_FAST_DIV64TO32
C_FLAGS =  -Wall -Werror-implicit-function-declaration -Wno-conversion ${C_DEFINES}


BERKELEY_SOFTFLOAT = eos-vm/external/softfloat

SOFTFLOAT_SOURCE = \
	${BERKELEY_SOFTFLOAT}/source/s_eq128.c \
	${BERKELEY_SOFTFLOAT}/source/s_le128.c \
	${BERKELEY_SOFTFLOAT}/source/s_lt128.c \
	${BERKELEY_SOFTFLOAT}/source/s_shortShiftLeft128.c \
	${BERKELEY_SOFTFLOAT}/source/s_shortShiftRight128.c \
	${BERKELEY_SOFTFLOAT}/source/s_shortShiftRightJam64.c \
	${BERKELEY_SOFTFLOAT}/source/s_shortShiftRightJam64Extra.c \
	${BERKELEY_SOFTFLOAT}/source/s_shortShiftRightJam128.c \
	${BERKELEY_SOFTFLOAT}/source/s_shortShiftRightJam128Extra.c \
	${BERKELEY_SOFTFLOAT}/source/s_shiftRightJam32.c \
	${BERKELEY_SOFTFLOAT}/source/s_shiftRightJam64.c \
	${BERKELEY_SOFTFLOAT}/source/s_shiftRightJam64Extra.c \
	${BERKELEY_SOFTFLOAT}/source/s_shiftRightJam128.c \
	${BERKELEY_SOFTFLOAT}/source/s_shiftRightJam128Extra.c \
	${BERKELEY_SOFTFLOAT}/source/s_shiftRightJam256M.c \
	${BERKELEY_SOFTFLOAT}/source/s_countLeadingZeros8.c \
	${BERKELEY_SOFTFLOAT}/source/s_countLeadingZeros16.c \
	${BERKELEY_SOFTFLOAT}/source/s_countLeadingZeros32.c \
	${BERKELEY_SOFTFLOAT}/source/s_countLeadingZeros64.c \
	${BERKELEY_SOFTFLOAT}/source/s_add128.c \
	${BERKELEY_SOFTFLOAT}/source/s_add256M.c \
	${BERKELEY_SOFTFLOAT}/source/s_sub128.c \
	${BERKELEY_SOFTFLOAT}/source/s_sub256M.c \
	${BERKELEY_SOFTFLOAT}/source/s_mul64ByShifted32To128.c \
	${BERKELEY_SOFTFLOAT}/source/s_mul64To128.c \
	${BERKELEY_SOFTFLOAT}/source/s_mul128By32.c \
	${BERKELEY_SOFTFLOAT}/source/s_mul128To256M.c \
	${BERKELEY_SOFTFLOAT}/source/s_approxRecip_1Ks.c \
	${BERKELEY_SOFTFLOAT}/source/s_approxRecip32_1.c \
	${BERKELEY_SOFTFLOAT}/source/s_approxRecipSqrt_1Ks.c \
	${BERKELEY_SOFTFLOAT}/source/s_approxRecipSqrt32_1.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/softfloat_raiseFlags.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_f16UIToCommonNaN.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_commonNaNToF16UI.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_propagateNaNF16UI.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_f32UIToCommonNaN.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_commonNaNToF32UI.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_propagateNaNF32UI.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_f64UIToCommonNaN.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_commonNaNToF64UI.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_propagateNaNF64UI.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/extF80M_isSignalingNaN.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_extF80UIToCommonNaN.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_commonNaNToExtF80UI.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_propagateNaNExtF80UI.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/f128M_isSignalingNaN.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_f128UIToCommonNaN.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_commonNaNToF128UI.c \
	${BERKELEY_SOFTFLOAT}/source/8086-SSE/s_propagateNaNF128UI.c \
	${BERKELEY_SOFTFLOAT}/source/s_roundToUI32.c \
	${BERKELEY_SOFTFLOAT}/source/s_roundToUI64.c \
	${BERKELEY_SOFTFLOAT}/source/s_roundToI32.c \
	${BERKELEY_SOFTFLOAT}/source/s_roundToI64.c \
	${BERKELEY_SOFTFLOAT}/source/s_normSubnormalF16Sig.c \
	${BERKELEY_SOFTFLOAT}/source/s_roundPackToF16.c \
	${BERKELEY_SOFTFLOAT}/source/s_normRoundPackToF16.c \
	${BERKELEY_SOFTFLOAT}/source/s_addMagsF16.c \
	${BERKELEY_SOFTFLOAT}/source/s_subMagsF16.c \
	${BERKELEY_SOFTFLOAT}/source/s_mulAddF16.c \
	${BERKELEY_SOFTFLOAT}/source/s_normSubnormalF32Sig.c \
	${BERKELEY_SOFTFLOAT}/source/s_roundPackToF32.c \
	${BERKELEY_SOFTFLOAT}/source/s_normRoundPackToF32.c \
	${BERKELEY_SOFTFLOAT}/source/s_addMagsF32.c \
	${BERKELEY_SOFTFLOAT}/source/s_subMagsF32.c \
	${BERKELEY_SOFTFLOAT}/source/s_mulAddF32.c \
	${BERKELEY_SOFTFLOAT}/source/s_normSubnormalF64Sig.c \
	${BERKELEY_SOFTFLOAT}/source/s_roundPackToF64.c \
	${BERKELEY_SOFTFLOAT}/source/s_normRoundPackToF64.c \
	${BERKELEY_SOFTFLOAT}/source/s_addMagsF64.c \
	${BERKELEY_SOFTFLOAT}/source/s_subMagsF64.c \
	${BERKELEY_SOFTFLOAT}/source/s_mulAddF64.c \
	${BERKELEY_SOFTFLOAT}/source/s_normSubnormalExtF80Sig.c \
	${BERKELEY_SOFTFLOAT}/source/s_roundPackToExtF80.c \
	${BERKELEY_SOFTFLOAT}/source/s_normRoundPackToExtF80.c \
	${BERKELEY_SOFTFLOAT}/source/s_addMagsExtF80.c \
	${BERKELEY_SOFTFLOAT}/source/s_subMagsExtF80.c \
	${BERKELEY_SOFTFLOAT}/source/s_normSubnormalF128Sig.c \
	${BERKELEY_SOFTFLOAT}/source/s_roundPackToF128.c \
	${BERKELEY_SOFTFLOAT}/source/s_normRoundPackToF128.c \
	${BERKELEY_SOFTFLOAT}/source/s_addMagsF128.c \
	${BERKELEY_SOFTFLOAT}/source/s_subMagsF128.c \
	${BERKELEY_SOFTFLOAT}/source/s_mulAddF128.c \
	${BERKELEY_SOFTFLOAT}/source/softfloat_state.c \
	${BERKELEY_SOFTFLOAT}/source/ui32_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/ui32_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/ui32_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/ui32_to_extF80.c \
	${BERKELEY_SOFTFLOAT}/source/ui32_to_extF80M.c \
	${BERKELEY_SOFTFLOAT}/source/ui32_to_f128.c \
	${BERKELEY_SOFTFLOAT}/source/ui32_to_f128M.c \
	${BERKELEY_SOFTFLOAT}/source/ui64_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/ui64_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/ui64_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/ui64_to_extF80.c \
	${BERKELEY_SOFTFLOAT}/source/ui64_to_extF80M.c \
	${BERKELEY_SOFTFLOAT}/source/ui64_to_f128.c \
	${BERKELEY_SOFTFLOAT}/source/ui64_to_f128M.c \
	${BERKELEY_SOFTFLOAT}/source/i32_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/i32_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/i32_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/i32_to_extF80.c \
	${BERKELEY_SOFTFLOAT}/source/i32_to_extF80M.c \
	${BERKELEY_SOFTFLOAT}/source/i32_to_f128.c \
	${BERKELEY_SOFTFLOAT}/source/i32_to_f128M.c \
	${BERKELEY_SOFTFLOAT}/source/i64_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/i64_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/i64_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/i64_to_extF80.c \
	${BERKELEY_SOFTFLOAT}/source/i64_to_extF80M.c \
	${BERKELEY_SOFTFLOAT}/source/i64_to_f128.c \
	${BERKELEY_SOFTFLOAT}/source/i64_to_f128M.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_ui32.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_ui64.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_i32.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_i64.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_ui32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_ui64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_i32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_i64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_extF80.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_extF80M.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_f128.c \
	${BERKELEY_SOFTFLOAT}/source/f16_to_f128M.c \
	${BERKELEY_SOFTFLOAT}/source/f16_roundToInt.c \
	${BERKELEY_SOFTFLOAT}/source/f16_add.c \
	${BERKELEY_SOFTFLOAT}/source/f16_sub.c \
	${BERKELEY_SOFTFLOAT}/source/f16_mul.c \
	${BERKELEY_SOFTFLOAT}/source/f16_mulAdd.c \
	${BERKELEY_SOFTFLOAT}/source/f16_div.c \
	${BERKELEY_SOFTFLOAT}/source/f16_rem.c \
	${BERKELEY_SOFTFLOAT}/source/f16_sqrt.c \
	${BERKELEY_SOFTFLOAT}/source/f16_eq.c \
	${BERKELEY_SOFTFLOAT}/source/f16_le.c \
	${BERKELEY_SOFTFLOAT}/source/f16_lt.c \
	${BERKELEY_SOFTFLOAT}/source/f16_eq_signaling.c \
	${BERKELEY_SOFTFLOAT}/source/f16_le_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f16_lt_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f16_isSignalingNaN.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_ui32.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_ui64.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_i32.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_i64.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_ui32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_ui64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_i32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_i64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_extF80.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_extF80M.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_f128.c \
	${BERKELEY_SOFTFLOAT}/source/f32_to_f128M.c \
	${BERKELEY_SOFTFLOAT}/source/f32_roundToInt.c \
	${BERKELEY_SOFTFLOAT}/source/f32_add.c \
	${BERKELEY_SOFTFLOAT}/source/f32_sub.c \
	${BERKELEY_SOFTFLOAT}/source/f32_mul.c \
	${BERKELEY_SOFTFLOAT}/source/f32_mulAdd.c \
	${BERKELEY_SOFTFLOAT}/source/f32_div.c \
	${BERKELEY_SOFTFLOAT}/source/f32_rem.c \
	${BERKELEY_SOFTFLOAT}/source/f32_sqrt.c \
	${BERKELEY_SOFTFLOAT}/source/f32_eq.c \
	${BERKELEY_SOFTFLOAT}/source/f32_le.c \
	${BERKELEY_SOFTFLOAT}/source/f32_lt.c \
	${BERKELEY_SOFTFLOAT}/source/f32_eq_signaling.c \
	${BERKELEY_SOFTFLOAT}/source/f32_le_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f32_lt_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f32_isSignalingNaN.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_ui32.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_ui64.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_i32.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_i64.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_ui32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_ui64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_i32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_i64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_extF80.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_extF80M.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_f128.c \
	${BERKELEY_SOFTFLOAT}/source/f64_to_f128M.c \
	${BERKELEY_SOFTFLOAT}/source/f64_roundToInt.c \
	${BERKELEY_SOFTFLOAT}/source/f64_add.c \
	${BERKELEY_SOFTFLOAT}/source/f64_sub.c \
	${BERKELEY_SOFTFLOAT}/source/f64_mul.c \
	${BERKELEY_SOFTFLOAT}/source/f64_mulAdd.c \
	${BERKELEY_SOFTFLOAT}/source/f64_div.c \
	${BERKELEY_SOFTFLOAT}/source/f64_rem.c \
	${BERKELEY_SOFTFLOAT}/source/f64_sqrt.c \
	${BERKELEY_SOFTFLOAT}/source/f64_eq.c \
	${BERKELEY_SOFTFLOAT}/source/f64_le.c \
	${BERKELEY_SOFTFLOAT}/source/f64_lt.c \
	${BERKELEY_SOFTFLOAT}/source/f64_eq_signaling.c \
	${BERKELEY_SOFTFLOAT}/source/f64_le_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f64_lt_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f64_isSignalingNaN.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_ui32.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_ui64.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_i32.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_i64.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_ui32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_ui64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_i32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_i64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_to_f128.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_roundToInt.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_add.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_sub.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_mul.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_div.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_rem.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_sqrt.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_eq.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_le.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_lt.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_eq_signaling.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_le_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_lt_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/extF80_isSignalingNaN.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_ui32.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_ui64.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_i32.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_i64.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_ui32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_ui64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_i32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_i64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_to_f128M.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_roundToInt.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_add.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_sub.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_mul.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_div.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_rem.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_sqrt.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_eq.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_le.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_lt.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_eq_signaling.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_le_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/extF80M_lt_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_ui32.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_ui64.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_i32.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_i64.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_ui32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_ui64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_i32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_i64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_extF80.c \
	${BERKELEY_SOFTFLOAT}/source/f128_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/f128_roundToInt.c \
	${BERKELEY_SOFTFLOAT}/source/f128_add.c \
	${BERKELEY_SOFTFLOAT}/source/f128_sub.c \
	${BERKELEY_SOFTFLOAT}/source/f128_mul.c \
	${BERKELEY_SOFTFLOAT}/source/f128_mulAdd.c \
	${BERKELEY_SOFTFLOAT}/source/f128_div.c \
	${BERKELEY_SOFTFLOAT}/source/f128_rem.c \
	${BERKELEY_SOFTFLOAT}/source/f128_sqrt.c \
	${BERKELEY_SOFTFLOAT}/source/f128_eq.c \
	${BERKELEY_SOFTFLOAT}/source/f128_le.c \
	${BERKELEY_SOFTFLOAT}/source/f128_lt.c \
	${BERKELEY_SOFTFLOAT}/source/f128_eq_signaling.c \
	${BERKELEY_SOFTFLOAT}/source/f128_le_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f128_lt_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f128_isSignalingNaN.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_ui32.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_ui64.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_i32.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_i64.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_ui32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_ui64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_i32_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_i64_r_minMag.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_f16.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_f32.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_extF80M.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_to_f64.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_roundToInt.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_add.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_sub.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_mul.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_mulAdd.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_div.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_rem.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_sqrt.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_eq.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_le.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_lt.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_eq_signaling.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_le_quiet.c \
	${BERKELEY_SOFTFLOAT}/source/f128M_lt_quiet.c \
# 	source/include/*.h \
# 	build/linux-x86_64-GCC/platform.h \
# 	source/8086-SSE/specialize.h
SOFTFLOAT_EMPTY =
SOFTFLOAT_PATH_SSE = $(BERKELEY_SOFTFLOAT)/source/8086-SSE/
SOFTFLOAT_PATH_SOURCE = $(BERKELEY_SOFTFLOAT)/source/
SOFTFLOAT_OBJECTS = $(subst $(SOFTFLOAT_PATH_SOURCE), $(SOFTFLOAT_EMPTY), $(subst $(SOFTFLOAT_PATH_SSE), $(SOFTFLOAT_EMPTY), $(SOFTFLOAT_SOURCE:.c=.o)))


CURRENT_SOFTFLOAT_SOURCE = eos-vm/external/softfloat

C_FLAGS += -fPIC -I. -I$(CURRENT_SOFTFLOAT_SOURCE) -I$(BERKELEY_SOFTFLOAT)/source/include -I$(BERKELEY_SOFTFLOAT)/build/linux-x86_64-GCC -I$(BERKELEY_SOFTFLOAT)/source/8086-SSE

libsoftfloat.a:$(SOFTFLOAT_SOURCE)
	@echo "building softfloat library"
	@$(CC) -c $(C_FLAGS) $^ 
	@$(AR) rcs $@ $(SOFTFLOAT_OBJECTS)
	@rm -rf $(SOFTFLOAT_OBJECTS)

# clean:
# 	rm -rf *.o *.a