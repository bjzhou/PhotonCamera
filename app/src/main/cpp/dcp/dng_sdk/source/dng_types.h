/*****************************************************************************/
// Copyright 2006-2022 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_types__
#define __dng_types__

/*****************************************************************************/

#include "dng_flags.h"

/*****************************************************************************/

// Standard integer types.

#ifdef _MSC_VER
#include <stddef.h>
#endif

#ifdef __cplusplus
#include <cstdint>
#else
#include <stdint.h>
#endif

/*****************************************************************************/

#if qDNGUseCustomIntegralTypes

#include "dng_custom_integral_types.h"

#else

#ifdef __cplusplus

typedef std::int8_t  int8;
typedef std::int16_t int16;
typedef std::int32_t int32;
typedef std::int64_t int64;

typedef std::uint8_t  uint8;
typedef std::uint16_t uint16;
typedef std::uint32_t uint32;
typedef std::uint64_t uint64;

#else

typedef int8_t  int8;
typedef int16_t int16;
typedef int32_t int32;
typedef int64_t int64;

typedef uint8_t  uint8;
typedef uint16_t uint16;
typedef uint32_t uint32;
typedef uint64_t uint64;

#endif	// __cplusplus

#endif	// qDNGUseCustomIntegralTypes

typedef uintptr_t uintptr;

/*****************************************************************************/

typedef float  real32;
typedef double real64;

/*****************************************************************************/

/// \def Build a Macintosh style four-character constant in a compiler safe way.

#define DNG_CHAR4(a,b,c,d)	((((uint32) a) << 24) |\
							 (((uint32) b) << 16) |\
							 (((uint32) c) <<  8) |\
							 (((uint32) d)		))

/*****************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

/*****************************************************************************/

// Visual Studio now prefers _hypot to hypot
// Note: since Visual Studio 2010, there is a definition of hypot (in math.h),
// we only define hypot here for the older Visual Studio versions.

#if defined(_MSC_VER) && _MSC_VER < 1600

#ifdef hypot
#undef hypot
#endif

#define hypot _hypot

#endif

/*****************************************************************************/

#endif
	
/*****************************************************************************/
