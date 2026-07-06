/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_tag_types__
#define __dng_tag_types__

/*****************************************************************************/

#include "dng_types.h"

/*****************************************************************************/

enum
	{
	
	ttByte = 1,
	ttAscii,
	ttShort,
	ttLong,
	ttRational,
	ttSByte,
	ttUndefined,
	ttSShort,
	ttSLong,
	ttSRational,
	ttFloat,
	ttDouble,
	ttIFD,
	ttUnicode,
	ttComplex,
	
	// Tag types added by BigTIFF:

	ttLong8,
	ttSLong8,
	ttIFD8,
	
	// Note that this is not an official TIFF tag type, and should
	// not be used in TIFF/DNG files:
	
	ttHalfFloat
	
	};

/*****************************************************************************/

uint32 TagTypeSize (uint32 tagType);

/*****************************************************************************/

#endif
	
/*****************************************************************************/
