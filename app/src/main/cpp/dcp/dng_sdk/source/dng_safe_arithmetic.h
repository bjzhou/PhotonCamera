/*****************************************************************************/
// Copyright 2015-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/*
 *
 * Copyright (C) 2015 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *		http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Functions for safe arithmetic (guarded against overflow) on integer types.

#ifndef __dng_safe_arithmetic__
#define __dng_safe_arithmetic__

#include <cstddef>
//#include <cstdint>
#include <limits>

#include "dng_exceptions.h"
#include "dng_flags.h"
#include "dng_types.h"

#ifndef __has_builtin
#define __has_builtin(x) 0	// Compatibility with non-Clang compilers.
#endif

#if !defined(DNG_HAS_INT128) && defined(__SIZEOF_INT128__)
#define DNG_HAS_INT128
#endif

// If the result of adding arg1 and arg2 will fit in an int32_t (without
// under-/overflow), stores this result in *result and returns true. Otherwise,
// returns false and leaves *result unchanged.
bool SafeInt32Add(int32 arg1, int32 arg2, int32 *result);

// Returns the result of adding arg1 and arg2 if it will fit in the result type
// (without under-/overflow). Otherwise, throws a dng_exception with error code
// dng_error_unknown.
int32 SafeInt32Add(int32 arg1, int32 arg2);
int64 SafeInt64Add(int64 arg1, int64 arg2);

// Returns the result of adding arg1 and arg2 and arg3 if it will fit in the
// result type (without under-/overflow). Otherwise, throws a dng_exception with
// error code dng_error_unknown.
int32 SafeInt32Add(int32 arg1, int32 arg2, int32 arg3);
int64 SafeInt64Add(int64 arg1, int64 arg2, int64 arg3);

// If the result of adding arg1 and arg2 will fit in a uint32_t (without
// wraparound), stores this result in *result and returns true. Otherwise,
// returns false and leaves *result unchanged.
bool SafeUint32Add(uint32 arg1, uint32 arg2,
				   uint32 *result);

// Returns the result of adding arg1 and arg2 if it will fit in the result type
// (without wraparound). Otherwise, throws a dng_exception with error code
// dng_error_unknown.
uint32 SafeUint32Add(uint32 arg1, uint32 arg2);
uint64 SafeUint64Add(uint64 arg1, uint64 arg2);

// Returns the result of adding arg1 and arg2 and arg3 if it will fit in the
// result type (without wraparound). Otherwise, throws a dng_exception with
// error code dng_error_unknown.
uint32 SafeUint32Add(uint32 arg1, uint32 arg2, uint32 arg3);
uint64 SafeUint64Add(uint64 arg1, uint64 arg2, uint64 arg3);

// If the subtraction of arg2 from arg1 will not result in an int32_t under- or
// overflow, stores this result in *result and returns true. Otherwise,
// returns false and leaves *result unchanged.
bool SafeInt32Sub(int32 arg1, int32 arg2, int32 *result);

// Returns the result of subtracting arg2 from arg1 if this operation will not
// result in an int32_t under- or overflow. Otherwise, throws a dng_exception
// with error code dng_error_unknown.
int32 SafeInt32Sub(int32 arg1, int32 arg2);

// Returns the result of subtracting arg2 from arg1 if this operation will not
// result in wraparound. Otherwise, throws a dng_exception with error code
// dng_error_unknown.
uint32 SafeUint32Sub(uint32 arg1, uint32 arg2);

// Returns the result of multiplying arg1 and arg2 if it will fit in a int32_t
// (without overflow). Otherwise, throws a dng_exception with error code
// dng_error_unknown.
int32 SafeInt32Mult(int32 arg1, int32 arg2);
bool SafeInt32Mult(int32 arg1, int32 arg2, int32 *result);

// If the result of multiplying arg1, ..., argn will fit in a uint32_t (without
// wraparound), stores this result in *result and returns true. Otherwise,
// returns false and leaves *result unchanged.
bool SafeUint32Mult(uint32 arg1, uint32 arg2,
					uint32 *result);
bool SafeUint32Mult(uint32 arg1, uint32 arg2, uint32 arg3,
					uint32 *result);
bool SafeUint32Mult(uint32 arg1, uint32 arg2, uint32 arg3,
					uint32 arg4, uint32 *result);

// Returns the result of multiplying arg1, ..., argn if it will fit in a
// uint32_t (without wraparound). Otherwise, throws a dng_exception with error
// code dng_error_unknown.
uint32 SafeUint32Mult(uint32 arg1, uint32 arg2);
uint32 SafeUint32Mult(uint32 arg1, uint32 arg2,
							 uint32 arg3);
uint32 SafeUint32Mult(uint32 arg1, uint32 arg2,
							 uint32 arg3, uint32 arg4);

// Returns the result of multiplying arg1 and arg2 if it will fit in a size_t
// (without overflow). Otherwise, throws a dng_exception with error code
// dng_error_unknown.
std::size_t SafeSizetMult(std::size_t arg1, std::size_t arg2);

namespace dng_internal {

// Internal function used as fallback for SafeInt64Mult() if other optimized
// computation is not supported. Don't call this function directly.
int64 SafeInt64MultSlow(int64 arg1, int64 arg2);

#if !qWinOS
#ifdef __clang__
#define __USE_BUILTIN_SMULL_OVERFLOW __has_builtin(__builtin_smull_overflow)
#endif // __clang__
#endif // !qWinOS

#ifndef __USE_BUILTIN_SMULL_OVERFLOW
#define __USE_BUILTIN_SMULL_OVERFLOW 0
#endif

// Internal function used as optimization for SafeInt64Mult() if Clang
// __builtin_smull_overflow is supported. Don't call this function directly.
#if __USE_BUILTIN_SMULL_OVERFLOW
inline int64 SafeInt64MultByClang(int64 arg1, int64 arg2) {
	int64 result;
	bool failed;
	// sizeof() is a compile time constant so this compiles efficiently.
	if (sizeof(long) >= 8) {
	  long temp_result;
	  failed = __builtin_smull_overflow((long)arg1, (long)arg2, &temp_result);
	  if (sizeof(long) > 8 && !failed) {
		  failed = (temp_result > std::numeric_limits<int64>::max() ||
				temp_result < std::numeric_limits<int64>::min());
	  }
	  result = (int64)temp_result;
	} else if (sizeof(long long) >= 8) {
	  long long temp_result;
	  failed = __builtin_smulll_overflow((long long)arg1, (long long)arg2, &temp_result);
	  if (sizeof(long long) > 8 && !failed) {
		  failed = (temp_result > std::numeric_limits<int64>::max() ||
				temp_result < std::numeric_limits<int64>::min());
	  }
	  result = (int64)temp_result;
	} else {
	  ThrowNotYetImplemented("No 64-bit capable multiply with overflow builtin.");
	}
	if (failed) {
	  ThrowProgramError("Arithmetic overflow");
	  abort();	// Never reached.
	}
	return result;
}
#endif

// Internal function used as optimization for SafeInt64Mult() if __int128 type
// is supported. Don't call this function directly.
#ifdef DNG_HAS_INT128
inline int64 SafeInt64MultByInt128(int64 arg1,
									  int64 arg2) {
	const __int128 kInt64Max =
		static_cast<__int128>(std::numeric_limits<int64>::max());
	const __int128 kInt64Min =
		static_cast<__int128>(std::numeric_limits<int64>::min());
	__int128 result = static_cast<__int128>(arg1) * static_cast<__int128>(arg2);
	if (result > kInt64Max || result < kInt64Min) {
		ThrowProgramError("Arithmetic overflow");
	}
	return static_cast<int64>(result);
}
#endif

}  // namespace dng_internal

// Returns the result of multiplying arg1 and arg2 if it will fit in an int64_t
// (without overflow). Otherwise, throws a dng_exception with error code
// dng_error_unknown.
inline int64 SafeInt64Mult(int64 arg1, int64 arg2) {
#if __USE_BUILTIN_SMULL_OVERFLOW
	return dng_internal::SafeInt64MultByClang(arg1, arg2);
#elif defined(DNG_HAS_INT128)
	return dng_internal::SafeInt64MultByInt128(arg1, arg2);
#else
	return dng_internal::SafeInt64MultSlow(arg1, arg2);
#endif
}

// Returns the result of multiplying arg1, ..., argn if it will fit in a
// int64_t (without wraparound). Otherwise, throws a dng_exception with error
// code dng_error_unknown.
int64 SafeInt64Mult(int64 arg1, int64 arg2, int64 arg3);

// Returns the result of dividing arg1 by arg2; if the result is not an integer,
// rounds up to the next integer. If arg2 is zero, throws a dng_exception with
// error code dng_error_unknown.
// The function is safe against wraparound and will return the correct result
// for all combinations of arg1 and arg2.
uint32 SafeUint32DivideUp(uint32 arg1, uint32 arg2);

// Finds the smallest integer multiple of 'multiple_of' that is greater than or
// equal to 'val'. If this value will fit in a uint32_t, stores it in *result
// and returns true. Otherwise, or if 'multiple_of' is zero, returns false and
// leaves *result unchanged.
bool RoundUpUint32ToMultiple(uint32 val, uint32 multiple_of,
							 uint32 *result);

// Returns the smallest integer multiple of 'multiple_of' that is greater than
// or equal to 'val'. If the result will not fit in a uint32 or if
// 'multiple_of' is zero, throws a dng_exception with error code
// dng_error_unknown.
uint32 RoundUpUint32ToMultiple(uint32 val,
									  uint32 multiple_of);

// If the uint32_t value val will fit in a int32_t, converts it to a int32_t and
// stores it in *result. Otherwise, returns false and leaves *result unchanged.
bool ConvertUint32ToInt32(uint32 val, int32 *result);

// Returns the result of converting val to an int32_t if it can be converted
// without overflow. Otherwise, throws a dng_exception with error code
// dng_error_unknown.
int32 ConvertUint32ToInt32(uint32 val);

// Converts a value of the unsigned integer type TSrc to the unsigned integer
// type TDest. If the value in 'src' cannot be converted to the type TDest
// without truncation, throws a dng_exception with error code dng_error_unknown.
//
// Note: Though this function is typically used where TDest is a narrower type
// than TSrc, it is designed to work also if TDest is wider than from TSrc or
// identical to TSrc. This is useful in situations where the width of the types
// involved can change depending on the architecture -- for example, the
// conversion from size_t to uint32_t may either be narrowing, identical or even
// widening (though the latter admittedly happens only on architectures that
// aren't relevant to us).
template <class TSrc, class TDest>
static void ConvertUnsigned(TSrc src, TDest *dest) {
#if 0
	// sub-optimal run-time implementation pre-C++11
	if (!(std::numeric_limits<TSrc>::is_integer &&
		  !std::numeric_limits<TSrc>::is_signed &&
		  std::numeric_limits<TDest>::is_integer &&
		  !std::numeric_limits<TDest>::is_signed))
	{
	ThrowProgramError ("TSrc and TDest must be unsigned integer types");
	}
#else
	// preferred compile-time implementation; requires C++11
	static_assert(std::numeric_limits<TSrc>::is_integer &&
				  !std::numeric_limits<TSrc>::is_signed &&
				  std::numeric_limits<TDest>::is_integer &&
				  !std::numeric_limits<TDest>::is_signed,
				  "TSrc and TDest must be unsigned integer types");
#endif

	const TDest converted = static_cast<TDest>(src);

	// Convert back to TSrc to check whether truncation occurred in the
	// conversion to TDest.
	if (static_cast<TSrc>(converted) != src) {
		ThrowProgramError("Overflow in unsigned integer conversion");
	}

	*dest = converted;
}

// Returns the result of converting val to the result type using truncation if
// val is in range of the result type values. Otherwise, throws a dng_exception
// with error code dng_error_unknown.
int32 ConvertDoubleToInt32(double val);
uint32 ConvertDoubleToUint32(double val);

// Returns the result of converting val to float. If val is outside of
// [-FLT_MAX, FLT_MAX], -infinity and infinity is returned respectively. NaN is
// returned as NaN.
float ConvertDoubleToFloat(double val);

/*****************************************************************************/

class dng_safe_int32;
class dng_safe_uint32;

/*****************************************************************************/

#define CHECK_SAFE_UINT32									\
	static_assert (std::numeric_limits<T>::is_integer &&	\
				   !std::numeric_limits<T>::is_signed &&	\
				   (sizeof (T) == 4),						\
				   "src must be unsigned 32-bit integer")

class dng_safe_uint32
	{

	private:

		uint32 fValue;
		
	public:

		template<typename T>
		dng_safe_uint32 (T x)
			{
			CHECK_SAFE_UINT32;
			fValue = x;
			}

		explicit dng_safe_uint32 (const dng_safe_int32 &x);

		inline uint32 Get () const
			{
			return fValue;
			}

		// Compound assignment operators.

		dng_safe_uint32 & operator+= (const dng_safe_uint32 &x)
			{
			fValue = SafeUint32Add (fValue, x.fValue);
			return *this;
			}
		
		template<typename T>
		dng_safe_uint32 & operator+= (T x)
			{
			CHECK_SAFE_UINT32;
			fValue = SafeUint32Add (fValue, x);
			return *this;
			}
		
		dng_safe_uint32 & operator*= (const dng_safe_uint32 &x)
			{
			fValue = SafeUint32Mult (fValue, x.fValue);
			return *this;
			}
		
		template<typename T>
		dng_safe_uint32 & operator*= (T x)
			{
			CHECK_SAFE_UINT32;
			fValue = SafeUint32Mult (fValue, x);
			return *this;
			}

		// Binary operators.
		
		const dng_safe_uint32 operator+ (const dng_safe_uint32 &x) const
			{
			return dng_safe_uint32 (*this) += x;
			}
		
		template<typename T>
		const dng_safe_uint32 operator+ (T x) const
			{
			CHECK_SAFE_UINT32;
			return dng_safe_uint32 (*this) += x;
			}
		
		const dng_safe_uint32 operator* (const dng_safe_uint32 &x) const
			{
			return dng_safe_uint32 (*this) *= x;
			}
		
		template<typename T>
		const dng_safe_uint32 operator* (T x) const
			{
			CHECK_SAFE_UINT32;
			return dng_safe_uint32 (*this) *= x;
			}
		
	};

#undef CHECK_SAFE_UINT32

/*****************************************************************************/

#define CHECK_SAFE_INT32									\
	static_assert (std::numeric_limits<T>::is_integer &&	\
				   std::numeric_limits<T>::is_signed &&		\
				   (sizeof (T) == 4),						\
				   "src must be signed 32-bit integer")

class dng_safe_int32
	{

	private:

		int32 fValue;
		
	public:

		template<typename T>
		dng_safe_int32 (T x)
			{
			CHECK_SAFE_INT32;
			fValue = x;
			}

		// Construct int32 from uint32. Throws exception dng_error_overflow if
		// source uint32 cannot be represented as int32.

		explicit dng_safe_int32 (const dng_safe_uint32 &x);

		inline int32 Get () const
			{
			return fValue;
			}

		// Assign from uint32. Throws exception dng_error_overflow if source
		// uint32 cannot be represented as int32.

		void Set_uint32 (uint32 x)
			{
			if (!ConvertUint32ToInt32 (x, &fValue))
				{
				ThrowProgramError ("Overflow in Set_uint32");
				}
			}

		// Compound assignment operators.

		dng_safe_int32 & operator+= (const dng_safe_int32 &x)
			{
			fValue = SafeInt32Add (fValue, x.fValue);
			return *this;
			}
		
		template<typename T>
		dng_safe_int32 & operator+= (T x)
			{
			CHECK_SAFE_INT32;
			fValue = SafeInt32Add (fValue, x);
			return *this;
			}
		
		dng_safe_int32 & operator-= (const dng_safe_int32 &x)
			{
			fValue = SafeInt32Sub (fValue, x.fValue);
			return *this;
			}
		
		template<typename T>
		dng_safe_int32 & operator-= (T x)
			{
			CHECK_SAFE_INT32;
			fValue = SafeInt32Sub (fValue, x);
			return *this;
			}
		
	};

#undef CHECK_SAFE_INT32

/*****************************************************************************/

#endif	// __dng_safe_arithmetic__
