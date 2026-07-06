/*****************************************************************************/
// Copyright 2006-2020 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_bottlenecks.h"
#include "dng_lossless_jpeg.h"
#include "dng_lossless_jpeg_shared.cpp"

/*****************************************************************************/

#if qDNGIntelCompiler || defined(__clang__)

template EncodeLosslessJPEGProc EncodeLosslessJPEG<Scalar>;
template DecodeLosslessJPEGProc DecodeLosslessJPEG<Scalar>;

#else

template
void DecodeLosslessJPEG<Scalar> (dng_stream &stream,
								 dng_spooler &spooler,
								 uint32 minDecodedSize,
								 uint32 maxDecodedSize,
								 bool bug16,
								 uint64 endOfData);

template
void EncodeLosslessJPEG<Scalar> (const uint16 *srcData,
								 uint32 srcRows,
								 uint32 srcCols,
								 uint32 srcChannels,
								 uint32 srcBitDepth,
								 int32 srcRowStep,
								 int32 srcColStep,
								 dng_stream &stream);

#endif

/*****************************************************************************/
