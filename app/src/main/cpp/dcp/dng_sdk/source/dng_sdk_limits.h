/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Collection of constants detailing maximum values used in processing in the DNG SDK.
 */

/*****************************************************************************/

#ifndef __dng_sdk_limits__
#define __dng_sdk_limits__

/*****************************************************************************/

#include "dng_flags.h"
#include "dng_types.h"

/*****************************************************************************/

/// The maximum number of previews (in addition to the main IFD's thumbnail)
/// that we support embedded in a DNG.

const uint32 kMaxDNGPreviews = 20;

/// Maximum supported number of semantic masks.

const uint32 kMaxSemanticMasks = 100;

/// The maximum number of SubIFDs that will be parsed.

const uint32 kMaxSubIFDs = kMaxDNGPreviews + kMaxSemanticMasks + 5;

/// The maximum number of chained IFDs that will be parsed.

const uint32 kMaxChainedIFDs = 10;

/// The maximum number of samples per pixel.  (CMYK + transparency needs 5)

const uint32 kMaxSamplesPerPixel = 5;

/// Maximum number of color planes.

const uint32 kMaxColorPlanes = 4;

/// The maximum size of a CFA repeating pattern.

const uint32 kMaxCFAPattern = 8;

/// The maximum size of a black level repeating pattern.

const uint32 kMaxBlackPattern = 8;

/// The maximum number of masked area rectangles.

const uint32 kMaxMaskedAreas = 4;

/// The maximum image size supported (pixels per side).

#if qDNGBigImage
const uint32 kMaxImageSide = 300000;
#else
const uint32 kMaxImageSide = 65000;
#endif

/// The maximum number of tone curve points supported.

const uint32 kMaxToneCurvePoints = 8192;

/// Maximum number of MP threads for dng_area_task operations.

#if qDNG64Bit
const uint32 kMaxMPThreads = 128; // EP! Needs much larger max!
#else
const uint32 kMaxMPThreads = 8;
#endif

/// Maximum supported value of Stage3BlackLevelNormalized.

const real64 kMaxStage3BlackLevelNormalized = 0.2;

/// Maximum supported number of points in a ProfileGainTableMap. Currently set
/// to 64 megabytes.

const uint32 kMaxProfileGainTableMapPoints = 16777216;

/// Minimum and maximum gain values in a ProfileGainTableMap. The
/// specification only requires that values be positive, but this SDK
/// implementation assumes that values outside the following range are errors.

const real32 kProfileGainTableMap_MinGainValue = 0.000244140625f; // 1 / 4096
const real32 kProfileGainTableMap_MaxGainValue = 4096.0f;

/// Minimum and maximum gamma parameter value in a ProfileGainTableMap2.

const real32 kProfileGainTableMap_MinGamma = 0.125f;
const real32 kProfileGainTableMap_MaxGamma = 8.000f;

const uint32 kMinSpectrumSamples = 2;

/// The maximum number of spectral power samples for an illuminant.
/// A sampling that covers 360 to 730 nm in 1 nm steps is just 371 samples,
/// so 1000 seems more than enough.

const uint32 kMaxSpectrumSamples = 1000;

/*****************************************************************************/

/// Maximum recursion depth when parsing IFDs in dng_info.

const uint32 kMaxParseDepth = 10;

/*****************************************************************************/

#endif	// __dng_sdk_limits__
	
/*****************************************************************************/
