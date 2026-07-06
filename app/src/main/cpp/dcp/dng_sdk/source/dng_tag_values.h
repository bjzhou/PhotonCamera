/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_tag_values__
#define __dng_tag_values__

/*****************************************************************************/

#include "dng_flags.h"

/*****************************************************************************/

// Values for NewSubFileType tag.

enum
	{
	
	// The main image data.
	
	sfMainImage					= 0,
	
	// Preview image for the primary settings.
	
	sfPreviewImage				= 1,
	
	// Transparency mask
	
	sfTransparencyMask			= 4,
		
	// Preview (reduced resolution raw) transparency mask.
	
	sfPreviewMask				= sfPreviewImage + sfTransparencyMask,
	
	// Depth map.
	
	sfDepthMap					= 8,
		
	// Preview (reduced resolution raw) depth map.
		
	sfPreviewDepthMap			= sfPreviewImage + sfDepthMap,
	
	// Enhanced image (processed stage 3).
	
	sfEnhancedImage				= 16,

	// Gain Map.

	sfGainMap					= 32,
		
	// Preview (reduced resolution) Gain Map.

	sfPreviewGainMap			= sfPreviewImage + sfGainMap,
		
	// Preview image for non-primary settings.
	
	sfAltPreviewImage			= 0x10001,

	// Semantic mask.

	sfSemanticMask				= 0x10004,	 // Added in DNG 1.6
	sfPreviewSemanticMask		= sfPreviewImage + sfSemanticMask,
	
	};

/******************************************************************************/

// Values for PhotometricInterpretation tag.

enum
	{

	piWhiteIsZero				= 0,
	piBlackIsZero				= 1,
	piRGB						= 2,
	piRGBPalette				= 3,
	piTransparencyMask			= 4,
	piCMYK						= 5,
	piYCbCr						= 6,
	piCIELab					= 8,
	piICCLab					= 9,

	piCFA						= 32803,		// TIFF-EP spec

	piLinearRaw					= 34892,

	piDepth						= 51177,

	piPhotometricMask			= 52527,		// Added in DNG 1.6
	
	piGainMap					= 52553,		// Added in DNG 1.7
	
	};

/******************************************************************************/

// Values for PlanarConfiguration tag.

enum
	{
	
	pcInterleaved				= 1,
	pcPlanar					= 2,
	
	// Ordering, using an RGB image as an example:
	//
	// RRRRRRRRRR
	// GGGGGGGGGG
	// BBBBBBBBBB
	// RRRRRRRRRR
	// GGGGGGGGGG
	// BBBBBBBBBB
	//
	// The "AlignSIMD" variant additionally ensures that the offset of each
	// plane's row is aligned to an integer multiple of SIMD vector width (16
	// or 32) bytes from the beginning of the buffer.
	pcRowInterleaved			= 100000,		// Internal use only
	pcRowInterleavedAlignSIMD	= 100001		// Internal use only
	
	};

/******************************************************************************/

// Values for ExtraSamples tag.

enum
	{
	
	esUnspecified				= 0,
	esAssociatedAlpha			= 1,
	esUnassociatedAlpha			= 2
	
	};

/******************************************************************************/

// Values for SampleFormat tag.

enum
	{
	
	sfUnsignedInteger			= 1,
	sfSignedInteger				= 2,
	sfFloatingPoint				= 3,
	sfUndefined					= 4
	
	};

/******************************************************************************/

// Values for Compression tag.

enum
	{
	
	ccUncompressed				= 1,
	ccLZW						= 5,
	ccOldJPEG					= 6,
	ccJPEG						= 7,
	ccDeflate					= 8,

	#if qDNGSupportVC5
	ccVc5						= 9,
	#endif	// qDNGSupportVC5

	ccPackBits					= 32773,
	ccOldDeflate				= 32946,
	
	// Used in DNG files in places that allow lossless JPEG.
	
	ccLossyJPEG					= 34892,

	ccJXL						= 52546,
	
	};

/******************************************************************************/

// Values for Predictor tag.

enum
	{
	
	cpNullPredictor				= 1,
	cpHorizontalDifference		= 2,
	cpFloatingPoint				= 3,
	
	cpHorizontalDifferenceX2	= 34892,
	cpHorizontalDifferenceX4	= 34893,
	cpFloatingPointX2			= 34894,
	cpFloatingPointX4			= 34895
	
	};

/******************************************************************************/

// Values for ResolutionUnit tag.

enum
	{
	
	ruNone						= 1,
	ruInch						= 2,
	ruCM						= 3,
	ruMM						= 4,
	ruMicroM					= 5
	
	};		

/******************************************************************************/

// Values for LightSource tag.

enum
	{
	
	lsUnknown					=  0,
	
	lsDaylight					=  1,
	lsFluorescent				=  2,
	lsTungsten					=  3,
	lsFlash						=  4,
	lsFineWeather				=  9,
	lsCloudyWeather				= 10,
	lsShade						= 11,
	lsDaylightFluorescent		= 12,		// D  5700 - 7100K
	lsDayWhiteFluorescent		= 13,		// N  4600 - 5500K
	lsCoolWhiteFluorescent		= 14,		// W  3800 - 4500K
	lsWhiteFluorescent			= 15,		// WW 3250 - 3800K
	lsWarmWhiteFluorescent		= 16,		// L  2600 - 3250K
	lsStandardLightA			= 17,
	lsStandardLightB			= 18,
	lsStandardLightC			= 19,
	lsD55						= 20,
	lsD65						= 21,
	lsD75						= 22,
	lsD50						= 23,
	lsISOStudioTungsten			= 24,
	
	lsOther						= 255
	
	};

/******************************************************************************/

// Values for ExposureProgram tag.

enum
	{
	
	epUnidentified				= 0,
	epManual					= 1,
	epProgramNormal				= 2,
	epAperturePriority			= 3,
	epShutterPriority			= 4,
	epProgramCreative			= 5,
	epProgramAction				= 6,
	epPortraitMode				= 7,
	epLandscapeMode				= 8
	
	};		

/******************************************************************************/

// Values for MeteringMode tag.

enum
	{
	
	mmUnidentified				= 0,
	mmAverage					= 1,
	mmCenterWeightedAverage		= 2,
	mmSpot						= 3,
	mmMultiSpot					= 4,
	mmPattern					= 5,
	mmPartial					= 6,
	
	mmOther						= 255
	
	};		

/******************************************************************************/

// CFA color codes from the TIFF/EP specification.

enum ColorKeyCode
	{
	
	colorKeyRed					= 0,
	colorKeyGreen				= 1,
	colorKeyBlue				= 2,
	colorKeyCyan				= 3,
	colorKeyMagenta				= 4,
	colorKeyYellow				= 5,
	colorKeyWhite				= 6,
	
	colorKeyMaxEnum				= 0xFF
	
	};

/*****************************************************************************/

// Values for the SensitivityType tag.

enum
	{
		
	stUnknown					= 0,

	stStandardOutputSensitivity = 1,
	stRecommendedExposureIndex	= 2,
	stISOSpeed					= 3,
	stSOSandREI					= 4,
	stSOSandISOSpeed			= 5,
	stREIandISOSpeed			= 6,
	stSOSandREIandISOSpeed		= 7
		
	};
	
/*****************************************************************************/

// Values for the ColorimetricReference tag.  It specifies the colorimetric
// reference used for images with PhotometricInterpretation values of CFA
// or LinearRaw.

enum
	{
	
	// Scene referred (default).
	
	crSceneReferred				= 0,
	
	// Output referred using the parameters of the ICC profile PCS.
	
	crICCProfilePCS				= 1,
	
	// Output referred with High Dynamic Range (HDR).
	
	crOutputReferredHDR			= 2
	
	};

/*****************************************************************************/

// Values for the ProfileEmbedPolicy tag.

enum
	{
	
	// Freely embedable and copyable into installations that encounter this
	// profile, so long as the profile is only used to process DNG files.
	
	pepAllowCopying				= 0,
	
	// Can be embeded in a DNG for portable processing, but cannot be used
	// to process other files that the profile is not embedded in.
	
	pepEmbedIfUsed				= 1,
	
	// Can only be used if installed on the machine processing the file. 
	// Note that this only applies to stand-alone profiles.	 Profiles that
	// are already embedded inside a DNG file allowed to remain embedded 
	// in that DNG, even if the DNG is resaved.
	
	pepEmbedNever				= 2,
	
	// No restricts on profile use or embedding.
	
	pepNoRestrictions			= 3

	};

/*****************************************************************************/

// Values for the ProfileHueSatMapEncoding and ProfileLookTableEncoding tags.

enum
	{
	
	// 1. Convert linear ProPhoto RGB values to HSV.
	// 2. Use the HSV coordinates to index into the color table.
	// 3. Apply color table result to the original HSV values.
	// 4. Convert modified HSV values back to linear ProPhoto RGB.
	
	encoding_Linear				= 0,
	
	// 1. Convert linear ProPhoto RGB values to HSV.
	// 2. Encode V coordinate using sRGB encoding curve.
	// 3. Use the encoded HSV coordinates to index into the color table.
	// 4. Apply color table result to the encoded values from step 2.
	// 5. Decode V coordinate using sRGB decoding curve (inverse of step 2).
	// 6. Convert HSV values back to linear ProPhoto RGB (inverse of step 1).

	encoding_sRGB				= 1
	
	};

/*****************************************************************************/

// Values for the DefaultBlackRender tag.

enum
	{

	// By default, the renderer applies (possibly auto-calculated) black subtraction
	// prior to the look table.
	
	defaultBlackRender_Auto		= 0,
	
	// By default, the renderer does not apply any black subtraction prior to the
	// look table.
	
	defaultBlackRender_None		= 1
	
	};

/*****************************************************************************/

// Values for the ProfileToneMethod tag.

enum
	{

	// The algorithm for applying the tone curve is unspecified (default).
	
	profileToneMethod_Unspecified	= 0,
	
	// The algorithm for applying the tone curve is what Adobe uses for PV5
	// and older.
	
	profileToneMethod_AdobePV5		= 1,
	
	// The algorithm for applying the tone curve is what Adobe uses for PV6
	// and newer.
	
	profileToneMethod_AdobePV6		= 2
	
	};

/*****************************************************************************/

// Values for the PreviewColorSpace tag.

enum PreviewColorSpaceEnum
	{
	
	previewColorSpace_Unknown		= 0,
	previewColorSpace_GrayGamma22	= 1,
	previewColorSpace_sRGB			= 2,
	previewColorSpace_AdobeRGB		= 3,
	previewColorSpace_ProPhotoRGB	= 4,
	
	previewColorSpace_LastValid		= previewColorSpace_ProPhotoRGB,

	previewColorSpace_MaxEnum		= 0xFFFFFFFF
	
	};

/*****************************************************************************/

// Values for CacheVersion tag.

enum
	{
	
	// The low-16 bits are a rendering version number.
	
	cacheVersionMask				= 0x0FFFF,
	
	// Default cache version. 
	
	cacheVersionDefault				= 0x00100,
	
	// Is this an integer preview of a floating point image?
	
	cacheVersionDefloated			= 0x10000,
	
	// Is this an flattening preview of an image with tranparency?
	
	cacheVersionFlattened			= 0x20000,
	
	// Was this preview build using a the default baseline multi-channel
	// CFA merge (i.e. only using the first channel)?

	cacheVersionFakeMerge			= 0x40000,

	// Were the preview pixels written after an embedded-gain-map application
	// (ApplyGainMapToDNGStage3) at preview-build time? If yes, the cached
	// pixels already include the gain-map transform plus the
	// NormalizeFloatStage1 BaselineExposure normalization. On extract, the
	// gain map MUST NOT be re-applied or the gain map ends up applied twice.
	// Cache entries that do not carry this bit but whose source DNG has a
	// gain map are treated as stale and rebuilt. See cache-rebuild logic in
	// cr_negative::CacheVersionUsable / PickRawPreviewIFD.

	cacheVersionGainMapApplied		= 0x80000

	};

/*****************************************************************************/

// Values for the DepthFormat tag.

enum
	{
	depthFormatUnknown				= 0,
	depthFormatLinear				= 1,
	depthFormatInverse				= 2
	};

// Values for the DepthUnits tag.

enum
	{
	depthUnitsUnknown				= 0,
	depthUnitsMeters				= 1
	};

// Values for DepthMeasureType tag.

enum
	{
	depthMeasureUnknown				= 0,
	depthMeasureOpticalAxis			= 1,
	depthMeasureOpticalRay			= 2
	};

/*****************************************************************************/

// TIFF-style byte order markers.

enum
	{
	
	byteOrderII					= 0x4949,		// 'II'
	byteOrderMM					= 0x4D4D		// 'MM'
	
	};

/*****************************************************************************/

// "Magic" numbers.

enum
	{
	
	// DNG related.
	
	magicTIFF					= 42,			// TIFF (and DNG)
	magicBigTIFF				= 43,			// BigTIFF (and "BigDNG")
	magicExtendedProfile		= 0x4352,		// 'CR'
	magicRawCache				= 1022,			// Raw cache (fast load data)
	
	// Other raw formats - included here so the DNG SDK can parse them.
	
	magicPanasonic				= 85,
	magicOlympusA				= 0x4F52,
	magicOlympusB				= 0x5352
	
	};
	
/*****************************************************************************/

// DNG Version numbers

enum
	{
	
	dngVersion_None				= 0,
	
	dngVersion_1_0_0_0			= 0x01000000,
	dngVersion_1_1_0_0			= 0x01010000,
	dngVersion_1_2_0_0			= 0x01020000,
	dngVersion_1_3_0_0			= 0x01030000,
	dngVersion_1_4_0_0			= 0x01040000,
	dngVersion_1_5_0_0			= 0x01050000,
	dngVersion_1_6_0_0			= 0x01060000,
	dngVersion_1_7_0_0			= 0x01070000,
	dngVersion_1_7_1_0			= 0x01070100,

	dngVersion_Current			= dngVersion_1_7_1_0,

	dngVersion_SaveDefault		= dngVersion_1_7_1_0
	
	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
