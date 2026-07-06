/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Functions for encoding and decoding lossless JPEG format.
 */

/*****************************************************************************/

#ifndef __dng_lossless_jpeg__
#define __dng_lossless_jpeg__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_simd_type.h"
#include "dng_types.h"

/*****************************************************************************/

class dng_spooler
	{
	
	protected:
	
		virtual ~dng_spooler ()
			{
			}
	
	public:
	
		virtual void Spool (const void *data,
							uint32 count) = 0;
	
	};
						   
/*****************************************************************************/

template<SIMDType simd>
void DecodeLosslessJPEG (dng_stream &stream,
						 dng_spooler &spooler,
						 uint32 minDecodedSize,
						 uint32 maxDecodedSize,
						 bool bug16,
						 uint64 endOfData);

template<SIMDType simd>
void EncodeLosslessJPEG (const uint16 *srcData,
						 uint32 srcRows,
						 uint32 srcCols,
						 uint32 srcChannels,
						 uint32 srcBitDepth,
						 int32 srcRowStep,
						 int32 srcColStep,
						 dng_stream &stream);

/*****************************************************************************/

#endif
	
/*****************************************************************************/
