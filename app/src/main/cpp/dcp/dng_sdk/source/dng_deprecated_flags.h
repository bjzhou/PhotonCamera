/*****************************************************************************/

#ifndef __dng_deprecated_flags__
#define __dng_deprecated_flags__

/*****************************************************************************/

// Define deprecated flags to @error.
// The key is the use of '@' which triggers failures in preprocessor
// directives and most likely any sources which may reference the flag.
// Originally '#error' was used which has the same effect, however
// non-standards-compliant preprocessors in certain tools do not
// accept a '#' in a non-function-like macro. To work around this,
// '@' is now used here rather than '#'.

/*****************************************************************************/

/// \def qDNGDepthSupport
/// 1 to add support for depth maps in DNG format.
/// Deprecated 2018-09-19.

#define qDNGDepthSupport @error

/// \def qDNGPreserveBlackPoint
/// 1 to add support for non-zero black point in early raw pipeline.
/// Deprecated 2018-09-19.

#define qDNGPreserveBlackPoint @error

/// \def qDNGEdgeWrap
/// 1 to add support for "edge wrap" options for dng_image::Get.
/// Deprecated 2019-11-1

#define qDNGEdgeWrap @error

// Support ColumnInterleaveFactor tag? Introduced in DNG 1.7.

#define qDNGSupportColumnInterleaveFactor @error

// Support AV1 image codec? When this flag is enabled, it enables the cr_aom
// module.

#define qDNGSupportAV1 @error

// Support ProfileGainTableMap2 tag? Introduced in DNG 1.7.

#define qDNGProfileGainTableMap2 @error

// Support JPEG XL as an image codec for DNG images?

// When this flag is enabled, it enables the dng_jxl module as well as the DNG
// read & write code that uses JPEG XL as the codec.

#define qDNGSupportJXL @error

/*****************************************************************************/

#endif /* __dng_deprecated_flags__ */

/*****************************************************************************/
