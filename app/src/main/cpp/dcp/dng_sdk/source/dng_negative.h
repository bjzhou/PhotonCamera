/*****************************************************************************/
// Copyright 2006-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Functions and classes for working with a digital negative (image data and
 * corresponding metadata).
 */

/*****************************************************************************/

#ifndef __dng_negative__
#define __dng_negative__

/*****************************************************************************/

#include "dng_1d_function.h"
#include "dng_auto_ptr.h"
#include "dng_big_table.h"
#include "dng_classes.h"
#include "dng_fingerprint.h"
#include "dng_image.h"
#include "dng_jpeg_image.h"
#include "dng_linearization_info.h"
#include "dng_matrix.h"
#include "dng_memory.h"
#include "dng_mosaic_info.h"
#include "dng_mutex.h"
#include "dng_opcode_list.h"
#include "dng_orientation.h"
#include "dng_rational.h"
#include "dng_sdk_limits.h"
#include "dng_semantic_mask.h"
#include "dng_string.h"
#include "dng_tag_types.h"
#include "dng_tag_values.h"
#include "dng_types.h"
#include "dng_utils.h"
#include "dng_xy_coord.h"

#include <memory>
#include <vector>

/*****************************************************************************/

// To prevent using the internal metadata when we meant to use override
// metadata, the following definitions allow us to only allow access to
// the internal metadata on non-const negatives. This allows the old API
// to keep working essentially unchanged provided one does not use const
// negatives, but will prevent access to the embedded data on const
// negatives.

#if 1

#define qMetadataOnConst 0
#define METACONST

#else

#define qMetadataOnConst 1
#define METACONST const

#endif

/*****************************************************************************/

typedef std::vector<dng_camera_profile_metadata> dng_profile_metadata_list;

/*****************************************************************************/

/// \brief Noise model for photon and sensor read noise, assuming that they are
/// independent random variables and spatially invariant.
///
/// The noise model is N (x) = sqrt (scale*x + offset), where x represents a linear
/// signal value in the range [0,1], and N (x) is the standard deviation (i.e.,
/// noise). The parameters scale and offset are both sensor-dependent and
/// ISO-dependent. scale must be positive, and offset must be non-negative.

class dng_noise_function: public dng_1d_function
	{
		
	protected:

		real64 fScale;
		real64 fOffset;

	public:

		/// Create empty and invalid noise function.

		dng_noise_function ()

			:	fScale	(0.0)
			,	fOffset (0.0)

			{

			}

		/// Create noise function with the specified scale and offset.

		dng_noise_function (real64 scale,
							real64 offset)

			:	fScale	(scale)
			,	fOffset (offset)

			{

			}

		/// Compute noise (standard deviation) at the specified average signal level
		/// x.

		virtual real64 Evaluate (real64 x) const
			{
			return sqrt (fScale * x + fOffset);
			}

		/// The scale (slope, gain) of the noise function.

		real64 Scale () const 
			{ 
			return fScale; 
			}

		/// The offset (square of the noise floor) of the noise function.

		real64 Offset () const 
			{ 
			return fOffset; 
			}

		/// Set the scale (slope, gain) of the noise function.

		void SetScale (real64 scale)
			{
			fScale = scale;
			}

		/// Set the offset (square of the noise floor) of the noise function.

		void SetOffset (real64 offset)
			{
			fOffset = offset;
			}

		/// Is the noise function valid?

		bool IsValid () const
			{
			return (fScale > 0.0 && fOffset >= 0.0);
			}
		
	};

/*****************************************************************************/

/// \brief Noise profile for a negative.
///
/// For mosaiced negatives, the noise profile describes the approximate noise
/// characteristics of a mosaic negative after linearization, but prior to
/// demosaicing. For demosaiced negatives (i.e., linear DNGs), the noise profile
/// describes the approximate noise characteristics of the image data immediately
/// following the demosaic step, prior to the processing of opcode list 3.
///
/// A noise profile may contain 1 or N noise functions, where N is the number of
/// color planes for the negative. Otherwise the noise profile is considered to be
/// invalid for that negative. If the noise profile contains 1 noise function, then
/// it is assumed that this single noise function applies to all color planes of the
/// negative. Otherwise, the N noise functions map to the N planes of the negative in
/// order specified in the CFAPlaneColor tag.

class dng_noise_profile
	{
		
	protected:

		dng_std_vector<dng_noise_function> fNoiseFunctions;

	public:

		/// Create empty (invalid) noise profile.

		dng_noise_profile ();

		/// Create noise profile with the specified noise functions (1 per plane).

		explicit dng_noise_profile (const dng_std_vector<dng_noise_function> &functions);

		/// Is the noise profile valid?

		bool IsValid () const;

		/// Is the noise profile valid for the specified negative?

		bool IsValidForNegative (const dng_negative &negative) const;

		/// The noise function for the specified plane.

		const dng_noise_function & NoiseFunction (uint32 plane) const;

		/// The number of noise functions in this profile.

		uint32 NumFunctions () const;
  
		/// Equality test.
		
		bool operator== (const dng_noise_profile &profile) const;

		bool operator!= (const dng_noise_profile &profile) const
			{
			return !(*this == profile);
			}

	};

/*****************************************************************************/

/// \brief Main class for holding metadata.

class dng_metadata
	{
	
	private:
		
		// Base orientation of both the thumbnail and raw data. This is
		// generally based on the EXIF values.
		
		bool fHasBaseOrientation;
	
		dng_orientation fBaseOrientation;
		
		// Is the maker note safe to copy from file to file? Defaults to false
		// because many maker notes are not safe.
		
		bool fIsMakerNoteSafe;
		
		// MakerNote binary data block.
		
		AutoPtr<dng_memory_block> fMakerNote;
		
		// EXIF data.
		
		AutoPtr<dng_exif> fExif;
		
		// A copy of the EXIF data before is was synchronized with other metadata sources.
		
		AutoPtr<dng_exif> fOriginalExif;
		
		// IPTC binary data block and offset in original file.
		
		AutoPtr<dng_memory_block> fIPTCBlock;
		
		uint64 fIPTCOffset;
		
		// XMP data.
		
		#if qDNGUseXMP
		AutoPtr<dng_xmp> fXMP;
		#endif
		
		// If there a valid embedded XMP block, has is its digest?	NULL if no valid
		// embedded XMP.
		
		dng_fingerprint fEmbeddedXMPDigest;
		
		// Is the XMP data from a sidecar file?
		
		bool fXMPinSidecar;
		
		// If the XMP data is from a sidecar file, is the sidecar file newer
		// than the raw file?
		
		bool fXMPisNewer;
		
		// Source file mime-type, if known.
		
		dng_string fSourceMIME;
		
		// Big table dictionary for storing binary blocks in memory.
		
		dng_big_table_dictionary fBigTableDictionary;
		
		// Big table index for binary blocks embedded in original raw file.
		
		dng_big_table_index fBigTableIndex;

		// Big table group index for storing association between group digests
		// and instance digests.

		dng_big_table_group_index fBigTableGroupIndex;

		// Image sequence info.

		dng_image_sequence_info fImageSequenceInfo;
		
		// Image stats.

		dng_image_stats fImageStats;
		
	public:

		dng_metadata (dng_host &host);
		
		dng_metadata (const dng_metadata &rhs,
					  dng_memory_allocator &allocator);
		
		virtual ~dng_metadata ();

		/// Copy this metadata.
		
		virtual dng_metadata * Clone (dng_memory_allocator &allocator) const;
		
		/// Setter for BaseOrientation.
			
		void SetBaseOrientation (const dng_orientation &orientation);
		
		/// Has BaseOrientation been set?

		bool HasBaseOrientation () const
			{
			return fHasBaseOrientation;
			}
		
		/// Getter for BaseOrientation.
			
		const dng_orientation & BaseOrientation () const
			{
			return fBaseOrientation;
			}
			
		/// Logically rotates the image by changing the orientation values.
		/// This will also update the XMP data.
		
		void ApplyOrientation (const dng_orientation &orientation);

		// API for IPTC metadata:
			
		void SetIPTC (AutoPtr<dng_memory_block> &block,
					  uint64 offset);
		
		void SetIPTC (AutoPtr<dng_memory_block> &block);
		
		void ClearIPTC ();
		
		const void * IPTCData () const;
		
		uint32 IPTCLength () const;
		
		const dng_memory_block & IPTCBlock () const
			{
			return *fIPTCBlock;
			}
		
		uint64 IPTCOffset () const;
		
		dng_fingerprint IPTCDigest (bool includePadding = true) const;
		
		void RebuildIPTC (dng_memory_allocator &allocator,
						  bool padForTIFF);
		
		// API for MakerNote data:
		
		void SetMakerNoteSafety (bool safe)
			{
			fIsMakerNoteSafe = safe;
			}
		
		bool IsMakerNoteSafe () const
			{
			return fIsMakerNoteSafe;
			}
		
		void SetMakerNote (AutoPtr<dng_memory_block> &block)
			{
			fMakerNote.Reset (block.Release ());
			}
		
		void ClearMakerNote ()
			{
			fIsMakerNoteSafe = false;
			fMakerNote.Reset ();
			}
		
		const void * MakerNoteData () const
			{
			return fMakerNote.Get () ? fMakerNote->Buffer ()
									 : NULL;
			}
		
		uint32 MakerNoteLength () const
			{
			return fMakerNote.Get () ? fMakerNote->LogicalSize ()
									 : 0;
			}
		
		// API for EXIF metadata:
		
		dng_exif * GetExif ()
			{
			return fExif.Get ();
			}
			
		const dng_exif * GetExif () const
			{
			return fExif.Get ();
			}
			
		template< class E >
		E & Exif ();
			
		template< class E >
		const E & Exif () const;
					
		void ResetExif (dng_exif * newExif);
			
		dng_memory_block * BuildExifBlock (dng_memory_allocator &allocator,
										   const dng_resolution *resolution = NULL,
										   bool includeIPTC = false,
										   const dng_jpeg_preview *thumbnail = NULL,
										   uint32 numLeadingZeroBytes = 0) const;
												   
		// API for original EXIF metadata.
		
		dng_exif * GetOriginalExif ()
			{
			return fOriginalExif.Get ();
			}
			
		const dng_exif * GetOriginalExif () const
			{
			return fOriginalExif.Get ();
			}
			
		// API for XMP metadata:
		
		#if qDNGUseXMP
		
		bool SetXMP (dng_host &host,
					 const void *buffer,
					 uint32 count,
					 bool xmpInSidecar = false,
					 bool xmpIsNewer = false);
					 
		void SetEmbeddedXMP (dng_host &host,
							 const void *buffer,
							 uint32 count);
					 
		dng_xmp * GetXMP ()
			{
			return fXMP.Get ();
			}
			
		const dng_xmp * GetXMP () const
			{
			return fXMP.Get ();
			}

		template< class X >
		X & XMP ();

		template< class X >
		const X & XMP () const;

		bool XMPinSidecar () const
			{
			return fXMPinSidecar;
			}
			
		const dng_fingerprint & EmbeddedXMPDigest () const
			{
			return fEmbeddedXMPDigest;
			}
						
		bool HaveValidEmbeddedXMP () const
			{
			return fEmbeddedXMPDigest.IsValid ();
			}
		
		void ResetXMP (dng_xmp * newXMP);
	
		void ResetXMPSidecarNewer (dng_xmp * newXMP, bool inSidecar, bool isNewer );
			
		#endif	// qDNGUseXMP
		
		// Synchronize metadata sources.
		
		void SynchronizeMetadata ();
		
		// Routines to update the date/time field in the EXIF and XMP
		// metadata.
		
		void UpdateDateTime (const dng_date_time_info &dt);
							 
		void UpdateDateTimeToNow ();
		
		void UpdateMetadataDateTimeToNow ();
		
		// Routines to set and get the source file MIME type.
		
		void SetSourceMIME (const char *s)
			{
			fSourceMIME.Set (s);
			}
			
		const dng_string & SourceMIME () const
			{
			return fSourceMIME;
			}
			
		// Routines to access the big table dictionary.
		
		void SetBigTableDictionary (const dng_big_table_dictionary &dictionary)
			{
			fBigTableDictionary = dictionary;
			}
			
		const dng_big_table_dictionary & BigTableDictionary () const
			{
			return fBigTableDictionary;
			}
			
		// Routines to access the big table index.
		
		void SetBigTableIndex (const dng_big_table_index &index)
			{
			fBigTableIndex = index;
			}
			
		const dng_big_table_index & BigTableIndex () const
			{
			return fBigTableIndex;
			}
			
		// Routines to access the big table group index.
		
		void SetBigTableGroupIndex (const dng_big_table_group_index &index)
			{
			fBigTableGroupIndex = index;
			}
			
		const dng_big_table_group_index & BigTableGroupIndex () const
			{
			return fBigTableGroupIndex;
			}
			
		// Routines to access image sequence info.

		void SetImageSequenceInfo (const dng_image_sequence_info &info)
			{
			fImageSequenceInfo = info;
			}

		const dng_image_sequence_info & ImageSequenceInfo () const
			{
			return fImageSequenceInfo;
			}
		
		// Routines to access image stats.

		void SetImageStats (const dng_image_stats &stats)
			{
			fImageStats = stats;
			}

		const dng_image_stats & ImageStats () const
			{
			return fImageStats;
			}
		
	};

/*****************************************************************************/

template< class E >
E & dng_metadata::Exif ()
	{
	dng_exif * exif = GetExif ();
	if (!exif) ThrowProgramError ("EXIF object is NULL.");
	return dynamic_cast< E & > (*exif);
	}

/*****************************************************************************/

template< class E >
const E & dng_metadata::Exif () const
	{
	const dng_exif * exif = GetExif ();
	if (!exif) ThrowProgramError ("EXIF object is NULL.");
	return dynamic_cast< const E & > (*exif);
	}

/*****************************************************************************/

#if qDNGUseXMP

/*****************************************************************************/

template< class X >
X & dng_metadata::XMP ()
	{
	dng_xmp * xmp = GetXMP ();
	if (!xmp) ThrowProgramError ("XMP object is NULL.");
	return dynamic_cast< X & > (*xmp);
	}

/*****************************************************************************/

template< class X >
const X & dng_metadata::XMP () const
	{
	const dng_xmp * xmp = GetXMP ();
	if (!xmp) ThrowProgramError ("XMP object is NULL.");
	return dynamic_cast< const X & > (*xmp);
	}

/*****************************************************************************/

#endif	// qDNGUseXMP

/*****************************************************************************/

/// \brief Main class for holding DNG image data and associated metadata.

class dng_negative
	{
	
	public:
	
		enum RawImageStageEnum
			{
			rawImageStagePreOpcode1,
			rawImageStagePostOpcode1,
			rawImageStagePostOpcode2,
			rawImageStagePreOpcode3,
			rawImageStagePostOpcode3,
			rawImageStageNone
			};
			
	protected:
	
		// The negative stores an associated allocator. It does not do
		// anything to keep it alive or to release it when the object destructs.
		// Hence, clients will need to make sure that the allocator's lifespan
		// encompasses that of the dng_factory object which is generally
		// directly bound to the dng_negative object.
	
		dng_memory_allocator &fAllocator;
			
		// Non-localized ASCII model name.
		
		dng_string fModelName;
		
		// Localized UTF-8 model name.
		
		dng_string fLocalName;
		
		// The area of raw image that should be included in the final converted
		// image. This stems from extra pixels around the edges of the sensor
		// including both the black mask and some additional padding.
		
		// The default crop can be smaller than the "active" area which includes
		// the padding but not the black masked pixels.
		
		dng_urational fDefaultCropSizeH;
		dng_urational fDefaultCropSizeV;
		
		dng_urational fDefaultCropOriginH;
		dng_urational fDefaultCropOriginV;
		
		// Enhanced images can change the default crop, so we
		// need to keep around the original value.
		
		dng_urational fRawDefaultCropSizeH;
		dng_urational fRawDefaultCropSizeV;
		
		dng_urational fRawDefaultCropOriginH;
		dng_urational fRawDefaultCropOriginV;

		// Default user crop, in relative coordinates.

		dng_urational fDefaultUserCropT;
		dng_urational fDefaultUserCropL;
		dng_urational fDefaultUserCropB;
		dng_urational fDefaultUserCropR;
		
		// Default scale factors. Generally, 1.0 for square pixel cameras. They
		// can compensate for non-square pixels. The choice of exact values will
		// generally depend on what the camera does. These are particularly
		// interesting for the Nikon D1X and the Fuji diamond mosaic.
		
		dng_urational fDefaultScaleH;
		dng_urational fDefaultScaleV;
		
		// Enhanced images can change the default scale, so we
		// need to keep around the original value.
		
		dng_urational fRawDefaultScaleH;
		dng_urational fRawDefaultScaleV;
		
		// Best quality scale factor. Used for the Nikon D1X and Fuji cameras
		// to force everything to be a scale up rather than scale down. So,
		// generally this is 1.0 / min (fDefaultScaleH, fDefaultScaleV) but
		// this isn't used if the scale factors are only slightly different
		// from 1.0.
		
		dng_urational fBestQualityScale;
		
		// Enhanced images can change the best quality scale, so we
		// need to keep around the original value.
		
		dng_urational fRawBestQualityScale;

		// Proxy image support.	 Remember certain sizes for the original image
		// this proxy was derived from.
				
		dng_point fOriginalDefaultFinalSize;
		dng_point fOriginalBestQualityFinalSize;
		
		dng_urational fOriginalDefaultCropSizeH;
		dng_urational fOriginalDefaultCropSizeV;
		
		// Scale factors used in demosaic algorithm (calculated).
		// Maps raw image coordinates to full image coordinates -- i.e.,
		// original image coordinates on raw sensor data to coordinates
		// in fStage3Image which is the output of the interpolation step.
		// So, if we downsample when interpolating, these numbers get
		// smaller.
		
		real64 fRawToFullScaleH;
		real64 fRawToFullScaleV;
		
		// Relative amount of noise at ISO 100. This is measured per camera model
		// based on looking at flat areas of color.
		
		dng_urational fBaselineNoise;
		
		// How much noise reduction has already been applied (0.0 to 1.0) to the
		// the raw image data?	0.0 = none, 1.0 = "ideal" amount--i.e. don't apply any
		// more by default.	 0/0 for unknown.
		
		dng_urational fNoiseReductionApplied;

		// Enhanced images can change the applied noise reduction, so we
		// need to keep around the original value.
		
		dng_urational fRawNoiseReductionApplied;

		// Amount of noise for this negative (see dng_noise_profile for details).

		dng_noise_profile fNoiseProfile;
		
		// Enhanced images can change the noise profile, so we
		// need to keep around the original value.
		
		dng_noise_profile fRawNoiseProfile;
		
		// Zero point for the exposure compensation slider. This reflects how
		// the manufacturer sets up the camera and its conversions.
		
		dng_srational fBaselineExposure;
		
		// Relative amount of sharpening required. This is chosen per camera
		// model based on how strong the anti-alias filter is on the camera
		// and the quality of the lenses. This scales the sharpness slider
		// value.
	
		dng_urational fBaselineSharpness;
  
		// Enhanced images can change the baseline sharpness, so we
		// need to keep around the original value.
		
		dng_urational fRawBaselineSharpness;
		
		// Chroma blur radius (or 0/0 for auto). Set to 0/1 to disable
		// chroma blurring.
		
		dng_urational fChromaBlurRadius;
		
		// Anti-alias filter strength (0.0 to 1.0).	 Used as a hint
		// to the demosaic algorithms.
		
		dng_urational fAntiAliasStrength;
		
		// Linear response limit. The point at which the sensor goes
		// non-linear and color information becomes unreliable. Used in
		// the highlight-recovery logic.
		
		dng_urational fLinearResponseLimit;
		
		// Scale factor for shadows slider. The Fuji HDR cameras, for example,
		// need a more sensitive shadow slider.
		
		dng_urational fShadowScale;
		
		// Colormetric reference.
		
		uint32 fColorimetricReference;

		// Is the stage 3 image floating point?

		bool fFloatingPoint;
		
		// Number of color channels for this image (e.g. 1, 3, or 4).
		
		uint32 fColorChannels;
		
		// Amount by which each channel has already been scaled. Some cameras
		// have analog amplifiers on the color channels and these can result
		// in different scalings per channel. This provides some level of
		// analog white balancing. The Nikon D1 also did digital scaling but
		// this caused problems with highlight recovery. 
		
		dng_vector fAnalogBalance;
		
		// The "As Shot" neutral color coordinates in native camera space.
		// This overrides fCameraWhiteXY if both are specified. This
		// specifies the values per channel that would result in a neutral
		// color for the "As Shot" case. This is generally supplied by
		// the camera.
		
		dng_vector fCameraNeutral;
		
		// The "As Shot" white balance xy coordinates. Sometimes this is
		// supplied by the camera. Sometimes the camera just supplies a name
		// for the white balance.
		
		dng_xy_coord fCameraWhiteXY;
		
		// Individual camera calibrations.
		
		// Camera data --> camera calibration --> "inverse" of color matrix
		
		// This will be a 4x4 matrix for a 4-color camera. The defaults are
		// almost always the identity matrix and for the cases where they
		// aren't, they are diagonal matrices.
		
		dng_matrix fCameraCalibration1;
		dng_matrix fCameraCalibration2;
		dng_matrix fCameraCalibration3;
		
		// Signature which allows a profile to announce that it is compatible
		// with these calibration matrices.

		dng_string fCameraCalibrationSignature;
		
		// List of camera profiles.
		
		dng_std_vector<dng_camera_profile *> fCameraProfile;
		
		// "As shot" camera profile name.
		
		dng_string fAsShotProfileName;
		
		// Raw image data digests. These are MD5 fingerprints of the raw image data
		// in the file, computed using a specific algorithms.  They can be used
		// verify the raw data has not been corrupted.	The new version is faster
		// to compute on MP machines, and is used starting with DNG version 1.4. 
		
		mutable dng_fingerprint fRawImageDigest;
		
		mutable dng_fingerprint fNewRawImageDigest;

		// Raw data unique ID.	This is an unique identifier for the actual
		// raw image data in the file.	It can be used to index into caches
		// for this data.
		
		mutable dng_fingerprint fRawDataUniqueID;

		mutable dng_std_mutex fRawDataUniqueIDMutex;
		
		// Original raw file name.	Just the file name, not the full path.
		
		dng_string fOriginalRawFileName;
		
		// Is the original raw file data availaible?
		
		bool fHasOriginalRawFileData;
		
		// The compressed original raw file data.
		
		AutoPtr<dng_memory_block> fOriginalRawFileData;
		
		// MD5 digest of original raw file data block.
		
		mutable dng_fingerprint fOriginalRawFileDigest;
		
		// DNG private data block.
		
		AutoPtr<dng_memory_block> fDNGPrivateData;
		
		// Metadata information (XMP, IPTC, EXIF, orientation)
	
		dng_metadata fMetadata;
		
		// Information required to linearize and range map the raw data.
		
		AutoPtr<dng_linearization_info> fLinearizationInfo;
		
		// Information required to demoasic the raw data.
		
		AutoPtr<dng_mosaic_info> fMosaicInfo;
		
		// Opcode list 1. (Applied to stored data)
		
		dng_opcode_list fOpcodeList1;
		
		// Opcode list 2. (Applied to range mapped data)
		
		dng_opcode_list fOpcodeList2;
		
		// Opcode list 3. (Post demosaic)
		
		dng_opcode_list fOpcodeList3;
		
		// Stage 1 image, which is image data stored in a DNG file.
		
		AutoPtr<dng_image> fStage1Image;
		
		// Stage 2 image, which is the stage 1 image after it has been
		// linearized and range mapped.
		
		AutoPtr<dng_image> fStage2Image;
		
		// Stage 3 image, which is the stage 2 image after it has been
		// demosaiced.
		
		AutoPtr<dng_image> fStage3Image;
		
		// Additional gain applied when building the stage 3 image. 
		
		real64 fStage3Gain;

		// Optical black level of stage 3 image (in [0,65535]).

		uint16 fStage3BlackLevel;

		// Were any approximations (e.g. downsampling, etc.) applied
		// file reading this image?
		
		bool fIsPreview;
		
		// Does the file appear to be damaged?
		
		bool fIsDamaged;
		
		// At what processing stage did we grab a copy of raw image data?
		
		RawImageStageEnum fRawImageStage;
		
		// The raw image data that we grabbed, if any.
		
		AutoPtr<dng_image> fRawImage;
  
		// The black level of the raw image (if not encoded by linearization info).
		
		uint16 fRawImageBlackLevel;
		
		// The floating point bit depth of the raw file, if any.
		
		uint32 fRawFloatBitDepth;
		
		// The raw lossy compressed image that we grabbed, if any.
		
		AutoPtr<dng_lossy_compressed_image> fRawLossyCompressedImage;
		
		// Keep a separate digest for the (lossy) compressed general image
		// data, if any. This is used for JPEG and JPEG XL and possibly
		// for other lossy codecs in future.
		
		mutable dng_fingerprint fRawLossyCompressedImageDigest;
		
		// Transparency mask image, if any.
		
		AutoPtr<dng_image> fTransparencyMask;
		
		// Was the transparency mask lossy compressed?
		
		bool fTransparencyMaskWasLossyCompressed = false;
		
		// Grabbed transparency mask, if we are not saving the current mask.
		
		AutoPtr<dng_image> fRawTransparencyMask;
		
		// The bit depth for the raw transparency mask, if known.
		
		uint32 fRawTransparencyMaskBitDepth;
		
		// Lossy compressed transparency mask.
		
		AutoPtr<dng_lossy_compressed_image> fRawLossyCompressedTransparencyMask;
		
		// We sometimes need to keep of copy of the stage3 image before
		// flattening the transparency.
		
		AutoPtr<dng_image> fUnflattenedStage3Image;
		
		// Depth map.
		
		bool fHasDepthMap;
		
		AutoPtr<dng_image> fDepthMap;
		
		// Grabbed depth map, if we are not saving the current map.
		
		AutoPtr<dng_image> fRawDepthMap;
		
		// Lossy compressed depth map.
		
		AutoPtr<dng_lossy_compressed_image> fRawLossyCompressedDepthMap;
		
		// Depth metadata.
		
		uint32		  fDepthFormat;
		dng_urational fDepthNear;
		dng_urational fDepthFar;
		uint32		  fDepthUnits;
		uint32		  fDepthMeasureType;
		
		// Enhance metadata.
		
		dng_string fEnhanceParams;

		// The enhanced lossy compressed image that we grabbed, if any.
		
		AutoPtr<dng_lossy_compressed_image> fEnhancedLossyCompressedImage;
		
		// Semantic masks.

		std::vector<dng_semantic_mask> fSemanticMasks;

		// Profile Gain Table Map.

		std::shared_ptr<const dng_gain_table_map> fProfileGainTableMap;

	public:
	
		virtual ~dng_negative ();
		
		static dng_negative * Make (dng_host &host);
		
		/// Provide access to the memory allocator used for this object.
		
		dng_memory_allocator & Allocator () const
			{
			return fAllocator;
			}
			
		/// Getter for ModelName.
		
		void SetModelName (const char *name)
			{
			fModelName.Set_ASCII (name);
			}
		
		/// Setter for ModelName.

		const dng_string & ModelName () const
			{
			return fModelName;
			}

		/// Setter for LocalName.
			
		void SetLocalName (const char *name)
			{
			fLocalName.Set (name);
			}
	
		/// Getter for LocalName.

		const dng_string & LocalName () const
			{
			return fLocalName;
			}
			
		/// Getter for metadata
			
		dng_metadata & Metadata ()
			{
			return fMetadata;
			}
			
		/// Getter for embedded big table index.
		
		const dng_big_table_index & BigTableIndex () const
			{
			return fMetadata.BigTableIndex ();
			}
			
		/// Getter for embedded big table group index.
		
		const dng_big_table_group_index & BigTableGroupIndex () const
			{
			return fMetadata.BigTableGroupIndex ();
			}
			
		/// Getter for embedded big table dictionary.
		
		const dng_big_table_dictionary & BigTableDictionary () const
			{
			return fMetadata.BigTableDictionary ();
			}
			
		// Routines to access image sequence info.

		const dng_image_sequence_info & ImageSequenceInfo () const
			{
			return fMetadata.ImageSequenceInfo ();
			}
		
		// Routines to access image stats.

		const dng_image_stats & ImageStats () const
			{
			return fMetadata.ImageStats ();
			}
		
		#if qMetadataOnConst
			
		const dng_metadata & Metadata () const
			{
			return fMetadata;
			}
			
		#endif // qMetadataOnConst

		/// Make a copy of the internal metadata generally as a basis for further
		/// changes.

		dng_metadata * CloneInternalMetadata () const;
		
	protected:

		/// An accessor for the internal metadata that works even when we
		/// have general access turned off. This is needed to provide
		/// access to EXIF ISO information.

		const dng_metadata &InternalMetadata () const
			{
			return fMetadata;
			}
			
	public:
				
		/// Setter for BaseOrientation.
			
		void SetBaseOrientation (const dng_orientation &orientation)
			{
			Metadata ().SetBaseOrientation (orientation);
			}
		
		/// Has BaseOrientation been set?

		bool HasBaseOrientation () METACONST
			{
			return Metadata ().HasBaseOrientation ();
			}
		
		/// Getter for BaseOrientation.
			
		const dng_orientation & BaseOrientation () METACONST
			{
			return Metadata ().BaseOrientation ();
			}
			
		/// Hook to allow SDK host code to add additional rotations.
			
		virtual dng_orientation ComputeOrientation (const dng_metadata &metadata) const;
		
		/// For non-const negatives, we simply default to using the metadata attached to the negative.
		
		dng_orientation Orientation ()
			{
			return ComputeOrientation (Metadata ());
			}
		
		/// Logically rotates the image by changing the orientation values.
		/// This will also update the XMP data.
		
		void ApplyOrientation (const dng_orientation &orientation)
			{
			Metadata ().ApplyOrientation (orientation);
			}
		
		/// Setter for DefaultCropSize.
		
		void SetDefaultCropSize (const dng_urational &sizeH,
								 const dng_urational &sizeV)
			{
			fDefaultCropSizeH = sizeH;
			fDefaultCropSizeV = sizeV;
			}
						  
		/// Setter for DefaultCropSize.
		
		void SetDefaultCropSize (uint32 sizeH,
								 uint32 sizeV)
			{
			SetDefaultCropSize (dng_urational (sizeH, 1),
								dng_urational (sizeV, 1));
			}
						  
		/// Getter for DefaultCropSize horizontal.
		
		const dng_urational & DefaultCropSizeH () const
			{
			return fDefaultCropSizeH;
			}
		
		/// Getter for DefaultCropSize vertical.
		
		const dng_urational & DefaultCropSizeV () const
			{
			return fDefaultCropSizeV;
			}

		/// Setter for DefaultCropOrigin.
		
		void SetDefaultCropOrigin (const dng_urational &originH,
								   const dng_urational &originV)
			{
			fDefaultCropOriginH = originH;
			fDefaultCropOriginV = originV;
			}
		
		/// Setter for DefaultCropOrigin.

		void SetDefaultCropOrigin (uint32 originH,
								   uint32 originV)
			{
			SetDefaultCropOrigin (dng_urational (originH, 1),
								  dng_urational (originV, 1));
			}
			
		/// Set default crop around center of image.

		void SetDefaultCropCentered (const dng_point &rawSize)
			{
			
			uint32 sizeH = Round_uint32 (fDefaultCropSizeH.As_real64 ());
			uint32 sizeV = Round_uint32 (fDefaultCropSizeV.As_real64 ());
			
			SetDefaultCropOrigin ((rawSize.h - sizeH) >> 1,
								  (rawSize.v - sizeV) >> 1);
			
			}
										
		/// Get default crop origin horizontal value.

		const dng_urational & DefaultCropOriginH () const
			{
			return fDefaultCropOriginH;
			}
		
		/// Get default crop origin vertical value.

		const dng_urational & DefaultCropOriginV () const
			{
			return fDefaultCropOriginV;
			}

		// Sets raw default crop to be a copy of the
		// default crop, if not set yet.
		
		void SetRawDefaultCrop ()
			{
			
			if (!fRawDefaultCropSizeH.IsValid ())
				{
				
				fRawDefaultCropSizeH = fDefaultCropSizeH;
				fRawDefaultCropSizeV = fDefaultCropSizeV;
				
				fRawDefaultCropOriginH = fDefaultCropOriginH;
				fRawDefaultCropOriginV = fDefaultCropOriginV;

				}
				
			}
		
		/// Getter for fRawDefaultCropSizeH.
		
		const dng_urational & RawDefaultCropSizeH () const
			{
			return fRawDefaultCropSizeH;
			}
		
		/// Getter for fRawDefaultCropSizeV.
		
		const dng_urational & RawDefaultCropSizeV () const
			{
			return fRawDefaultCropSizeV;
			}

		/// Getter for fRawDefaultCropOriginH.

		const dng_urational & RawDefaultCropOriginH () const
			{
			return fRawDefaultCropOriginH;
			}
		
		/// Getter for fRawDefaultCropOriginV.

		const dng_urational & RawDefaultCropOriginV () const
			{
			return fRawDefaultCropOriginV;
			}

		/// Is there a default user crop?

		bool HasDefaultUserCrop () const
			{
			return (fDefaultUserCropT.As_real64 () != 0.0 ||
					fDefaultUserCropL.As_real64 () != 0.0 ||
					fDefaultUserCropB.As_real64 () != 1.0 ||
					fDefaultUserCropR.As_real64 () != 1.0);
			}
							  
		/// Getter for top coordinate of default user crop.

		const dng_urational & DefaultUserCropT () const
			{
			return fDefaultUserCropT;
			}
							  
		/// Getter for left coordinate of default user crop.

		const dng_urational & DefaultUserCropL () const
			{
			return fDefaultUserCropL;
			}
							  
		/// Getter for bottom coordinate of default user crop.

		const dng_urational & DefaultUserCropB () const
			{
			return fDefaultUserCropB;
			}
							  
		/// Getter for right coordinate of default user crop.

		const dng_urational & DefaultUserCropR () const
			{
			return fDefaultUserCropR;
			}

		/// Reset default user crop to default crop area.

		void ResetDefaultUserCrop ()
			{
			fDefaultUserCropT = dng_urational (0, 1);
			fDefaultUserCropL = dng_urational (0, 1);
			fDefaultUserCropB = dng_urational (1, 1);
			fDefaultUserCropR = dng_urational (1, 1);
			}

		/// Setter for all 4 coordinates of default user crop.
							  
		void SetDefaultUserCrop (const dng_urational &t,
								 const dng_urational &l,
								 const dng_urational &b,
								 const dng_urational &r)
			{
			fDefaultUserCropT = t;
			fDefaultUserCropL = l;
			fDefaultUserCropB = b;
			fDefaultUserCropR = r;
			}

		/// Setter for top coordinate of default user crop.
							  
		void SetDefaultUserCropT (const dng_urational &value)
			{
			fDefaultUserCropT = value;
			}

		/// Setter for left coordinate of default user crop.
							  
		void SetDefaultUserCropL (const dng_urational &value)
			{
			fDefaultUserCropL = value;
			}

		/// Setter for bottom coordinate of default user crop.
							  
		void SetDefaultUserCropB (const dng_urational &value)
			{
			fDefaultUserCropB = value;
			}

		/// Setter for right coordinate of default user crop.
							  
		void SetDefaultUserCropR (const dng_urational &value)
			{
			fDefaultUserCropR = value;
			}

		/// Setter for DefaultScale.
		
		void SetDefaultScale (const dng_urational &scaleH,
							  const dng_urational &scaleV)
			{
			fDefaultScaleH = scaleH;
			fDefaultScaleV = scaleV;
			}
							  
		/// Get default scale horizontal value.

		const dng_urational & DefaultScaleH () const
			{
			return fDefaultScaleH;
			}
		
		/// Get default scale vertical value.

		const dng_urational & DefaultScaleV () const
			{
			return fDefaultScaleV;
			}
		
		// Sets the raw best quality scale to be a copy of the
		// best quality scale, if not set yet.
		
		void SetRawDefaultScale ()
			{
			if (!fRawDefaultScaleH.IsValid ())
				{
				fRawDefaultScaleH = fDefaultScaleH;
				fRawDefaultScaleV = fDefaultScaleV;
				}
			}
		
		/// Get raw default scale horizontal value.

		const dng_urational & RawDefaultScaleH () const
			{
			return fRawDefaultScaleH;
			}
		
		/// Get raw default scale vertical value.

		const dng_urational & RawDefaultScaleV () const
			{
			return fRawDefaultScaleV;
			}
		
		/// Setter for BestQualityScale.
		
		void SetBestQualityScale (const dng_urational &scale)
			{
			fBestQualityScale = scale;
			}
							  
		/// Getter for BestQualityScale.
		
		const dng_urational & BestQualityScale () const
			{
			return fBestQualityScale;
			}
		
		/// Is the best quality scale different than the default scale?
		
		bool HasBestQualityScale () const
			{
			return fBestQualityScale.As_real64 () != 1.0;
			}
			
		// Sets the raw best quality scale to be a copy of the
		// best quality scale, if not set yet.
		
		void SetRawBestQualityScale ()
			{
			if (!fRawBestQualityScale.IsValid ())
				{
				fRawBestQualityScale = fBestQualityScale;
				}
			}
			
		/// Getter for RawBestQualityScale.
		
		const dng_urational & RawBestQualityScale () const
			{
			return fRawBestQualityScale;
			}
		
		/// API for raw to full image scaling factors horizontal.
		
		real64 RawToFullScaleH () const
			{
			return fRawToFullScaleH;
			}
			
		/// API for raw to full image scaling factors vertical.
		
		real64 RawToFullScaleV () const
			{
			return fRawToFullScaleV;
			}
			
		/// Setter for raw to full scales.
		
		void SetRawToFullScale (real64 scaleH,
								real64 scaleV)
			{
			fRawToFullScaleH = scaleH;
			fRawToFullScaleV = scaleV;
			}
			
		/// Get default scale factor.
		/// When specifing a single scale factor, we use the horizontal
		/// scale factor,  and let the vertical scale factor be calculated
		/// based on the pixel aspect ratio.
		
		real64 DefaultScale () const
			{
			return DefaultScaleH ().As_real64 ();
			}
		
		/// Default cropped image size (at scale == 1.0) width.
		
		real64 SquareWidth () const
			{
			return DefaultCropSizeH ().As_real64 ();
			}
		
		/// Default cropped image size (at scale == 1.0) height.
		
		real64 SquareHeight () const
			{
			return DefaultCropSizeV ().As_real64 () *
				   DefaultScaleV	().As_real64 () /
				   DefaultScaleH	().As_real64 ();
			}
		
		/// Default cropped image aspect ratio.
		
		real64 BaseAspectRatio () const
			{
			return SquareWidth	() /
				   SquareHeight ();
			}
			
		/// Pixel aspect ratio of stage 3 image.
		
		real64 PixelAspectRatio () const
			{
			return (DefaultScaleH ().As_real64 () / RawToFullScaleH ()) /
				   (DefaultScaleV ().As_real64 () / RawToFullScaleV ());
			}
		
		/// Default cropped image size at given scale factor width.
		
		uint32 FinalWidth (real64 scale) const
			{
			return Round_uint32 (SquareWidth () * scale);
			}
		
		/// Default cropped image size at given scale factor height.
		
		uint32 FinalHeight (real64 scale) const
			{
			return Round_uint32 (SquareHeight () * scale);
			}
		
		/// Default cropped image size at default scale factor width.
		
		uint32 DefaultFinalWidth () const
			{
			return FinalWidth (DefaultScale ());
			}
		
		/// Default cropped image size at default scale factor height.
		
		uint32 DefaultFinalHeight () const
			{
			return FinalHeight (DefaultScale ());
			}
		
		/// Get best quality width.
		/// For a naive conversion, one could use either the default size,
		/// or the best quality size.
		
		uint32 BestQualityFinalWidth () const
			{
			return FinalWidth (DefaultScale () * BestQualityScale ().As_real64 ());
			}
		
		/// Get best quality height.
		/// For a naive conversion, one could use either the default size,
		/// or the best quality size.
		
		uint32 BestQualityFinalHeight () const
			{
			return FinalHeight (DefaultScale () * BestQualityScale ().As_real64 ());
			}
			
		/// Default size of original (non-proxy) image.	 For non-proxy images, this
		/// is equal to DefaultFinalWidth/DefaultFinalHight.  For proxy images, this
		/// is equal to the DefaultFinalWidth/DefaultFinalHeight of the image this
		/// proxy was derived from.
		
		const dng_point & OriginalDefaultFinalSize () const
			{
			return fOriginalDefaultFinalSize;
			}
			
		/// Setter for OriginalDefaultFinalSize.
		
		void SetOriginalDefaultFinalSize (const dng_point &size)
			{
			fOriginalDefaultFinalSize = size;
			}
		
		/// Best quality size of original (non-proxy) image.  For non-proxy images, this
		/// is equal to BestQualityFinalWidth/BestQualityFinalHeight.  For proxy images, this
		/// is equal to the BestQualityFinalWidth/BestQualityFinalHeight of the image this
		/// proxy was derived from.
		
		const dng_point & OriginalBestQualityFinalSize () const
			{
			return fOriginalBestQualityFinalSize;
			}
			
		/// Setter for OriginalBestQualityFinalSize.
		
		void SetOriginalBestQualityFinalSize (const dng_point &size)
			{
			fOriginalBestQualityFinalSize = size;
			}
			
		/// DefaultCropSize for original (non-proxy) image.	 For non-proxy images,
		/// this is equal to the DefaultCropSize.  for proxy images, this is
		/// equal size of the DefaultCropSize of the image this proxy was derived from.
		
		const dng_urational & OriginalDefaultCropSizeH () const
			{
			return fOriginalDefaultCropSizeH;
			}
			
		const dng_urational & OriginalDefaultCropSizeV () const
			{
			return fOriginalDefaultCropSizeV;
			}
			
		/// Setter for OriginalDefaultCropSize.
		
		void SetOriginalDefaultCropSize (const dng_urational &sizeH,
										 const dng_urational &sizeV)
			{
			fOriginalDefaultCropSizeH = sizeH;
			fOriginalDefaultCropSizeV = sizeV;
			}
			
		/// Clears the original size fields.
		
		void ClearOriginalSizes ();
			
		/// If the original size fields are undefined, set them to the
		/// current sizes.
		
		void SetDefaultOriginalSizes ();

		/// Set all the original size fields to a specific size.
		
		void SetOriginalSizes (const dng_point &size);

		/// The default crop area in the stage 3 image coordinates.
							
		dng_rect DefaultCropArea () const;
								  
		/// Setter for BaselineNoise.
		
		void SetBaselineNoise (real64 noise)
			{
			fBaselineNoise.Set_real64 (noise, 100);
			}
					  
		/// Getter for BaselineNoise as dng_urational.

		const dng_urational & BaselineNoiseR () const
			{
			return fBaselineNoise;
			}
		
		/// Getter for BaselineNoise as real64.

		real64 BaselineNoise () const
			{
			return fBaselineNoise.As_real64 ();
			}
			
		/// Setter for NoiseReductionApplied.
		
		void SetNoiseReductionApplied (const dng_urational &value)
			{
			fNoiseReductionApplied = value;
			}
			
		/// Getter for NoiseReductionApplied.
		
		const dng_urational & NoiseReductionApplied () const
			{
			return fNoiseReductionApplied;
			}

		// Sets the raw noise reduction applied to be a copy of the unenhanced
		// noise reduction applied, if not set yet.
		
		void SetRawNoiseReductionApplied ()
			{
			if (fRawNoiseReductionApplied.NotValid ())
				{
				fRawNoiseReductionApplied = fNoiseReductionApplied;
				}
			}
		
		// Gets the raw NoiseReductionApplied value.
		
		const dng_urational & RawNoiseReductionApplied () const
			{
			return fRawNoiseReductionApplied;
			}
		
		/// Setter for noise profile.

		void SetNoiseProfile (const dng_noise_profile &noiseProfile)
			{
			fNoiseProfile = noiseProfile;
			}

		/// Does this negative have a valid noise profile?

		bool HasNoiseProfile () const
			{
			return fNoiseProfile.IsValidForNegative (*this);
			}

		/// Getter for noise profile.

		const dng_noise_profile & NoiseProfile () const
			{
			return fNoiseProfile;
			}
			
		// Does this negative have a valid raw noise profile?

		bool HasRawNoiseProfile () const
			{
			return fRawNoiseProfile.IsValidForNegative (*this);
			}

		// Sets the raw noise profile to be a copy of the unenhanced
		// noise profile, if not set yet.
		
		void SetRawNoiseProfile ()
			{
			if (!HasRawNoiseProfile ())
				{
				fRawNoiseProfile = fNoiseProfile;
				}
			}
		
		// Getter for raw noise profile.

		const dng_noise_profile & RawNoiseProfile () const
			{
			return fRawNoiseProfile;
			}
		
		/// Setter for BaselineExposure.
		
		void SetBaselineExposure (real64 exposure)
			{
			fBaselineExposure.Set_real64 (exposure, 100);
			}
					  
		/// Getter for BaselineExposure as dng_urational.

		const dng_srational & BaselineExposureR () const
			{
			return fBaselineExposure;
			}
		
		/// Getter for BaselineExposure as real64.

		real64 BaselineExposure () const
			{
			return BaselineExposureR ().As_real64 ();
			}

		/// Compute total baseline exposure (sum of negative's BaselineExposure and
		/// profile's BaselineExposureOffset).

		real64 TotalBaselineExposure (const dng_camera_profile_id &profileID) const;

		/// Setter for BaselineSharpness.
		
		void SetBaselineSharpness (real64 sharpness)
			{
			fBaselineSharpness.Set_real64 (sharpness, 100);
			}
		
		/// Getter for BaselineSharpness as dng_urational.

		const dng_urational & BaselineSharpnessR () const
			{
			return fBaselineSharpness;
			}
		
		/// Getter for BaselineSharpness as real64.

		real64 BaselineSharpness () const
			{
			return BaselineSharpnessR ().As_real64 ();
			}
   
		// Sets the raw baseline sharpness to be a copy of the baseline
		// sharpness, if not set yet.
		
		void SetRawBaselineSharpness ()
			{
			if (fRawBaselineSharpness.d == 0)
				{
				fRawBaselineSharpness = fBaselineSharpness;
				}
			}
		
		// Gets the raw baseline sharpness value.
		
		const dng_urational & RawBaselineSharpness () const
			{
			if (fRawBaselineSharpness.d != 0)
				{
				return fRawBaselineSharpness;
				}
			return fBaselineSharpness;
			}
		
		/// Setter for ChromaBlurRadius.
		
		void SetChromaBlurRadius (const dng_urational &radius)
			{
			fChromaBlurRadius = radius;
			}
		
		/// Getter for ChromaBlurRadius as dng_urational.

		const dng_urational & ChromaBlurRadius () const
			{
			return fChromaBlurRadius;
			}
		
		/// Setter for AntiAliasStrength.
		
		void SetAntiAliasStrength (const dng_urational &strength)
			{
			fAntiAliasStrength = strength;
			}
					  
		/// Getter for AntiAliasStrength as dng_urational.

		const dng_urational & AntiAliasStrength () const
			{
			return fAntiAliasStrength;
			}
		
		/// Setter for LinearResponseLimit.
		
		void SetLinearResponseLimit (real64 limit)
			{
			fLinearResponseLimit.Set_real64 (limit, 100);
			}
		
		/// Getter for LinearResponseLimit as dng_urational.

		const dng_urational & LinearResponseLimitR () const
			{
			return fLinearResponseLimit;
			}
		
		/// Getter for LinearResponseLimit as real64.

		real64 LinearResponseLimit () const
			{
			return LinearResponseLimitR ().As_real64 ();
			}
		
		/// Setter for ShadowScale.
		
		void SetShadowScale (const dng_urational &scale);
		
		/// Getter for ShadowScale as dng_urational.

		const dng_urational & ShadowScaleR () const
			{
			return fShadowScale;
			}
		
		/// Getter for ShadowScale as real64.

		real64 ShadowScale () const
			{
			return ShadowScaleR ().As_real64 ();
			}
			
		// API for ColorimetricReference.
		
		void SetColorimetricReference (uint32 ref)
			{
			fColorimetricReference = ref;
			}
			
		uint32 ColorimetricReference () const
			{
			return fColorimetricReference;
			}

		bool IsSceneReferred () const
			{
			return fColorimetricReference == crSceneReferred;
			}

		bool IsOutputReferred () const
			{
			return !IsSceneReferred ();
			}

		// Floating point flag.

		void SetFloatingPoint (bool isFloatingPoint)
			{
			fFloatingPoint = isFloatingPoint;
			}

		bool IsFloatingPoint () const
			{
			return fFloatingPoint;
			}

		// HDR/SDR. This SDK treats floating-point images as synonymous with
		// HDR.

		bool IsHighDynamicRange () const
			{
			return IsFloatingPoint ();
			}

		bool IsNormalDynamicRange () const
			{
			return !IsHighDynamicRange ();
			}
		
		/// Setter for ColorChannels.
			
		void SetColorChannels (uint32 channels)
			{
			fColorChannels = channels;
			}
		
		/// Getter for ColorChannels.
			
		uint32 ColorChannels () const
			{
			return fColorChannels;
			}
		
		/// Setter for Monochrome.
			
		void SetMonochrome ()
			{
			SetColorChannels (1);
			}

		/// Getter for Monochrome.
			
		bool IsMonochrome () const
			{
			return ColorChannels () == 1;
			}
		
		/// Setter for AnalogBalance.

		void SetAnalogBalance (const dng_vector &b);
		
		/// Getter for AnalogBalance as dng_urational.

		dng_urational AnalogBalanceR (uint32 channel) const;
		
		/// Getter for AnalogBalance as real64.

		real64 AnalogBalance (uint32 channel) const;
		
		/// Setter for CameraNeutral.

		void SetCameraNeutral (const dng_vector &n);
					  
		/// Clear CameraNeutral.

		void ClearCameraNeutral ()
			{
			fCameraNeutral.Clear ();
			}
		
		/// Determine if CameraNeutral has been set but not cleared.

		bool HasCameraNeutral () const
			{
			return fCameraNeutral.NotEmpty ();
			}
			
		/// Getter for CameraNeutral.

		const dng_vector & CameraNeutral () const
			{
			return fCameraNeutral;
			}
		
		dng_urational CameraNeutralR (uint32 channel) const;
		
		/// Setter for CameraWhiteXY.

		void SetCameraWhiteXY (const dng_xy_coord &coord);
		
		bool HasCameraWhiteXY () const
			{
			return fCameraWhiteXY.IsValid ();
			}
		
		const dng_xy_coord & CameraWhiteXY () const;
		
		void GetCameraWhiteXY (dng_urational &x,
							   dng_urational &y) const;
							   
		// API for camera calibration:
		
		/// Setter for first of up to three color matrices used for individual camera calibrations.
		/// 
		/// The sequence of matrix transforms is:
		/// Camera data --> camera calibration --> "inverse" of color matrix
		///
		/// This will be a 4x4 matrix for a four-color camera. The defaults are
		/// almost always the identity matrix, and for the cases where they
		/// aren't, they are diagonal matrices.

		void SetCameraCalibration1 (const dng_matrix &m);

		/// Setter for second of up to three color matrices used for individual camera calibrations.
		/// 
		/// The sequence of matrix transforms is:
		/// Camera data --> camera calibration --> "inverse" of color matrix
		///
		/// This will be a 4x4 matrix for a four-color camera. The defaults are
		/// almost always the identity matrix, and for the cases where they
		/// aren't, they are diagonal matrices.

		void SetCameraCalibration2 (const dng_matrix &m);
		
		/// Setter for third of up to three color matrices used for individual camera calibrations.
		/// 
		/// The sequence of matrix transforms is:
		/// Camera data --> camera calibration --> "inverse" of color matrix
		///
		/// This will be a 4x4 matrix for a four-color camera. The defaults are
		/// almost always the identity matrix, and for the cases where they
		/// aren't, they are diagonal matrices.

		void SetCameraCalibration3 (const dng_matrix &m);
		
		/// Getter for first of up to three color matrices used for individual camera calibrations.

		const dng_matrix & CameraCalibration1 () const
			{
			return fCameraCalibration1;
			}
	
		/// Getter for second of up to three color matrices used for individual camera calibrations.

		const dng_matrix & CameraCalibration2 () const
			{
			return fCameraCalibration2;
			}
		
		/// Getter for third of up to three color matrices used for individual camera calibrations.

		const dng_matrix & CameraCalibration3 () const
			{
			return fCameraCalibration3;
			}
		
		void SetCameraCalibrationSignature (const char *signature)
			{
			fCameraCalibrationSignature.Set (signature);
			}

		const dng_string & CameraCalibrationSignature () const
			{
			return fCameraCalibrationSignature;
			}
			
		// Camera Profile API for profiles attached to negative:
		
		virtual void AddProfile (AutoPtr<dng_camera_profile> &profile);
		
		virtual void ClearProfiles ();
			
		uint32 ProfileCount () const;
		
		const dng_camera_profile & ProfileByIndex (uint32 index) const;
		
		// Get a list a camera profile metadata.  This can be overridden to
		// add support for camera profiles not attached to the negative.
  
		virtual void GetProfileMetadataList (dng_profile_metadata_list &list) const;
		
		// Finds a camera profile to use for rendering.
  
		bool GetProfileByID (const dng_camera_profile_id &id,
							 dng_camera_profile &foundProfile,
							 bool useDefaultIfNoMatch = true,
							 const dng_camera_profile_group_selector *groupSelector = nullptr) const;
		
		// Returns the camera profile to embed when saving to DNG.
		
		bool GetProfileToEmbed (const dng_metadata &metadata,
								dng_camera_profile &foundProfile,
								bool skipAdobeStandard = false) const;
		
		// API for AsShotProfileName.
			
		void SetAsShotProfileName (const char *name)
			{
			fAsShotProfileName.Set (name);
			}

		const dng_string & AsShotProfileName () const
			{
			return fAsShotProfileName;
			}
			
		// Makes a dng_color_spec object for this negative.
		
		virtual dng_color_spec * MakeColorSpec (const dng_camera_profile_id &id,
												bool allowStubbed = false) const;
		
		// Compute a MD5 hash on an image, using a fixed algorithm.
		// The results must be stable across different hardware, OSes,
		// and software versions.
			
		static dng_fingerprint FindImageDigest (dng_host &host,
												const dng_image &image);
												
		// A more multi-process friendly hash on image.	 The results are also
		// stable across different hardware, OSes, and software versions.
			
		static dng_fingerprint FindFastImageDigest (dng_host &host,
													const dng_image &image,
													uint32 pixelType);
													
		// API for RawImageDigest and NewRawImageDigest:
		
		void SetRawImageDigest (const dng_fingerprint &digest)
			{
			fRawImageDigest = digest;
			}
			
		void SetNewRawImageDigest (const dng_fingerprint &digest)
			{
			fNewRawImageDigest = digest;
			}
			
		void ClearRawImageDigest () const
			{
			fRawImageDigest	  .Clear ();
			fNewRawImageDigest.Clear ();
			}
			
		const dng_fingerprint & RawImageDigest () const
			{
			return fRawImageDigest;
			}
			
		const dng_fingerprint & NewRawImageDigest () const
			{
			return fNewRawImageDigest;
			}
			
		void FindRawImageDigest (dng_host &host) const;
		
		void FindNewRawImageDigest (dng_host &host) const;
		
		void ValidateRawImageDigest (dng_host &host);
		
		// API for RawDataUniqueID:

		void SetRawDataUniqueID (const dng_fingerprint &id)
			{
			fRawDataUniqueID = id;
			}
			
		const dng_fingerprint & BaseRawDataUniqueID () const
			{
			return fRawDataUniqueID;
			}
		
		dng_fingerprint RawDataUniqueID () const;
		
		void FindRawDataUniqueID (dng_host &host) const;
		
		virtual void RecomputeRawDataUniqueID (dng_host &host);

		// API for original raw file name:
		
		void SetOriginalRawFileName (const char *name)
			{
			fOriginalRawFileName.Set (name);
			}
			
		bool HasOriginalRawFileName () const
			{
			return fOriginalRawFileName.NotEmpty ();
			}
		
		const dng_string & OriginalRawFileName () const
			{
			return fOriginalRawFileName;
			}
		
		// API for original raw file data:
		
		void SetHasOriginalRawFileData (bool hasData)
			{
			fHasOriginalRawFileData = hasData;
			}
		
		bool CanEmbedOriginalRaw () const
			{
			return fHasOriginalRawFileData && HasOriginalRawFileName ();
			}
		
		void SetOriginalRawFileData (AutoPtr<dng_memory_block> &data)
			{
			fOriginalRawFileData.Reset (data.Release ());
			}
		
		const void * OriginalRawFileData () const
			{
			return fOriginalRawFileData.Get () ? fOriginalRawFileData->Buffer ()
											   : NULL;
			}
		
		uint32 OriginalRawFileDataLength () const
			{
			return fOriginalRawFileData.Get () ? fOriginalRawFileData->LogicalSize ()
											   : 0;
			}
			
		// API for original raw file data digest.
		
		void SetOriginalRawFileDigest (const dng_fingerprint &digest)
			{
			fOriginalRawFileDigest = digest;
			}
			
		const dng_fingerprint & OriginalRawFileDigest () const
			{
			return fOriginalRawFileDigest;
			}
			
		void FindOriginalRawFileDigest () const;
		
		void ValidateOriginalRawFileDigest ();
		
		// API for DNG private data:
		
		void SetPrivateData (AutoPtr<dng_memory_block> &block)
			{
			fDNGPrivateData.Reset (block.Release ());
			}
		
		void ClearPrivateData ()
			{
			fDNGPrivateData.Reset ();
			}
		
		const uint8 * PrivateData () const
			{
			return fDNGPrivateData.Get () ? fDNGPrivateData->Buffer_uint8 ()
										  : NULL;
			}
		
		uint32 PrivateLength () const
			{
			return fDNGPrivateData.Get () ? fDNGPrivateData->LogicalSize ()
										  : 0;
			}
		
		// API for MakerNote data:
		
		void SetMakerNoteSafety (bool safe)
			{
			Metadata ().SetMakerNoteSafety (safe);
			}
		
		bool IsMakerNoteSafe () METACONST
			{
			return Metadata ().IsMakerNoteSafe ();
			}
		
		void SetMakerNote (AutoPtr<dng_memory_block> &block)
			{
			Metadata ().SetMakerNote (block);
			}
		
		void ClearMakerNote ()
			{
			Metadata ().ClearMakerNote ();
			}
		
		const void * MakerNoteData () METACONST
			{
			return Metadata ().MakerNoteData ();
			}
		
		uint32 MakerNoteLength () METACONST
			{
			return Metadata ().MakerNoteLength ();
			}
		
		// API for EXIF metadata:
		
		dng_exif * GetExif ()
			{
			return Metadata ().GetExif ();
			}
			
		#if qMetadataOnConst
			
		const dng_exif * GetExif () const
			{
			return Metadata ().GetExif ();
			}
			
		#endif // qMetadataOnConst
			
		void ResetExif (dng_exif * newExif)
			{
			Metadata ().ResetExif (newExif);
			}
			
		// API for original EXIF metadata.
		
		dng_exif * GetOriginalExif ()
			{
			return Metadata ().GetOriginalExif ();
			}
			
		#if qMetadataOnConst
			
		const dng_exif * GetOriginalExif () const
			{
			return Metadata ().GetOriginalExif ();
			}
			
		#endif // qMetadataOnConst
			
		// API for IPTC metadata:
			
		void SetIPTC (AutoPtr<dng_memory_block> &block,
					  uint64 offset)
			{
			Metadata ().SetIPTC (block, offset);
			}
		
		void SetIPTC (AutoPtr<dng_memory_block> &block)
			{
			Metadata ().SetIPTC (block);
			}
		
		void ClearIPTC ()
			{
			Metadata ().ClearIPTC ();
			}
		
		const void * IPTCData () METACONST
			{
			return Metadata ().IPTCData ();
			}
		
		uint32 IPTCLength () METACONST
			{
			return Metadata ().IPTCLength ();
			}
		
		uint64 IPTCOffset () METACONST
			{
			return Metadata ().IPTCOffset ();
			}
		
		dng_fingerprint IPTCDigest (bool includePadding = true) METACONST
			{
			return Metadata ().IPTCDigest (includePadding);
			}
		
		void RebuildIPTC (bool padForTIFF)
			{
			Metadata ().RebuildIPTC (Allocator (), padForTIFF);
			}
		
		// API for XMP metadata:
		
		#if qDNGUseXMP
		
		bool SetXMP (dng_host &host,
					 const void *buffer,
					 uint32 count,
					 bool xmpInSidecar = false,
					 bool xmpIsNewer = false)
			{
			return Metadata ().SetXMP (host,
									   buffer,
									   count,
									   xmpInSidecar,
									   xmpIsNewer);
			}
					 
		dng_xmp * GetXMP ()
			{
			return Metadata ().GetXMP ();
			}
			
		#if qMetadataOnConst
			
		const dng_xmp * GetXMP () const
			{
			return Metadata ().GetXMP ();
			}
			
		#endif // qMetadataOnConst
			
		bool XMPinSidecar () METACONST
			{
			return Metadata ().XMPinSidecar ();
			}
			
		void ResetXMP (dng_xmp * newXMP)
			{
			Metadata ().ResetXMP (newXMP);
			}
	
		void ResetXMPSidecarNewer (dng_xmp * newXMP, bool inSidecar, bool isNewer )
			{
			Metadata ().ResetXMPSidecarNewer (newXMP, inSidecar, isNewer);
			}
		
		bool HaveValidEmbeddedXMP () METACONST
			{
			return Metadata ().HaveValidEmbeddedXMP ();
			}
			
		#endif	// qDNGUseXMP
		
		// Routines to set and get the source file MIME type.
		
		void SetSourceMIME (const char *s)
			{
			Metadata ().SetSourceMIME (s);
			}
		
		const dng_string & SourceMIME () const
			{
			return fMetadata.SourceMIME ();
			}

		// API for linearization information:
			
		const dng_linearization_info * GetLinearizationInfo () const
			{
			return fLinearizationInfo.Get ();
			}
			
		void ClearLinearizationInfo ()
			{
			fLinearizationInfo.Reset ();
			}
			
		// Linearization curve.	 Usually used to increase compression ratios
		// by storing the compressed data in a more visually uniform space.
		// This is a 16-bit LUT that maps the stored data back to linear.
		
		void SetLinearization (AutoPtr<dng_memory_block> &curve);
		
		// Active area (non-black masked pixels).  These pixels are trimmed
		// during linearization step.
		
		void SetActiveArea (const dng_rect &area);
		
		// Areas that are known to contain black masked pixels that can
		// be used to estimate black levels.
		
		void SetMaskedAreas (uint32 count,
							 const dng_rect *area);
							 
		void SetMaskedArea (const dng_rect &area)
			{
			SetMaskedAreas (1, &area);
			}

		// Sensor black level information.
		
		void SetBlackLevel (real64 black,
							int32 plane = -1);
							
		void SetQuadBlacks (real64 black0,
							real64 black1,
							real64 black2,
							real64 black3,
							int32 plane = -1);
	
		void Set6x6Blacks (real64 blacks6x6 [36],
						   int32 plane = -1);
							
		void SetRowBlacks (const real64 *blacks,
						   uint32 count);
						   
		void SetColumnBlacks (const real64 *blacks,
							  uint32 count);
							  
		// Sensor white level information.
		
		uint32 WhiteLevel (uint32 plane = 0) const;
			
		void SetWhiteLevel (uint32 white,
							int32 plane = -1);

		// API for mosaic information:
		
		const dng_mosaic_info * GetMosaicInfo () const
			{
			return fMosaicInfo.Get ();
			}
			
		void ClearMosaicInfo ()
			{
			fMosaicInfo.Reset ();
			}
		
		// ColorKeys APIs:
							
		void SetColorKeys (ColorKeyCode color0,
						   ColorKeyCode color1,
						   ColorKeyCode color2,
						   ColorKeyCode color3 = colorKeyMaxEnum);

		void SetRGB ()
			{
			
			SetColorChannels (3);
			
			SetColorKeys (colorKeyRed,
						  colorKeyGreen,
						  colorKeyBlue);
						  
			}
			
		void SetCMY ()
			{
			
			SetColorChannels (3);
			
			SetColorKeys (colorKeyCyan,
						  colorKeyMagenta,
						  colorKeyYellow);
						  
			}
			
		void SetGMCY ()
			{
			
			SetColorChannels (4);
			
			SetColorKeys (colorKeyGreen,
						  colorKeyMagenta,
						  colorKeyCyan,
						  colorKeyYellow);
						  
			}
			
		// APIs to set mosaic patterns.
			
		void SetBayerMosaic (uint32 phase);

		void SetFujiMosaic (uint32 phase);

		void SetFujiMosaic6x6 (uint32 phase);

		void SetQuadMosaic (uint32 pattern);
			
		// BayerGreenSplit.
							
		void SetGreenSplit (uint32 split);
		
		// APIs for opcode lists.
		
		const dng_opcode_list & OpcodeList1 () const
			{
			return fOpcodeList1;
			}
			
		dng_opcode_list & OpcodeList1 ()
			{
			return fOpcodeList1;
			}
			
		const dng_opcode_list & OpcodeList2 () const
			{
			return fOpcodeList2;
			}
			
		dng_opcode_list & OpcodeList2 ()
			{
			return fOpcodeList2;
			}
			
		const dng_opcode_list & OpcodeList3 () const
			{
			return fOpcodeList3;
			}
			
		dng_opcode_list & OpcodeList3 ()
			{
			return fOpcodeList3;
			}
		
		// First part of parsing logic.
		
		virtual void Parse (dng_host &host,
							dng_stream &stream,
							dng_info &info);
							
		// Second part of parsing logic.  This is split off from the
		// first part because these operations are useful when extending
		// this sdk to support non-DNG raw formats.
							
		virtual void PostParse (dng_host &host,
								dng_stream &stream,
								dng_info &info);
								
		// Synchronize metadata sources.
		
		void SynchronizeMetadata ()
			{
			Metadata ().SynchronizeMetadata ();
			}
		
		// Routines to update the date/time field in the EXIF and XMP
		// metadata.
		
		void UpdateDateTime (const dng_date_time_info &dt)
			{
			Metadata ().UpdateDateTime (dt);
			}
							 
		void UpdateDateTimeToNow ()
			{
			Metadata ().UpdateDateTimeToNow ();
			}
		
		// Developer's utility function to switch to four color Bayer
		// interpolation.  This is useful for evaluating how much green
		// split a Bayer pattern sensor has.
			
		virtual bool SetFourColorBayer ();
		
		// Access routines for the image stages.
							
		const dng_image * Stage1Image () const
			{
			return fStage1Image.Get ();
			}
			
		const dng_image * Stage2Image () const
			{
			return fStage2Image.Get ();
			}
			
		const dng_image * Stage3Image () const
			{
			return fStage3Image.Get ();
			}
			
		// Returns the processing stage of the raw image data.
		
		RawImageStageEnum RawImageStage () const
			{
			return fRawImageStage;
			}
			
		// Returns the raw image data.
		
		const dng_image & RawImage () const;
		
		// Clears any saved raw image.
		
		void ClearRawImage ()
			{
			fRawImage.Reset ();
			}
  
		// Returns the raw image black level in 16-bit space.
		
		uint16 RawImageBlackLevel () const;
		
		// API for raw floating point bit depth.
		
		uint32 RawFloatBitDepth () const
			{
			return fRawFloatBitDepth;
			}
			
		void SetRawFloatBitDepth (uint32 bitDepth)
			{
			fRawFloatBitDepth = bitDepth;
			}
		
		// API for raw lossy compressed image.
		
		const dng_lossy_compressed_image * RawLossyCompressedImage () const;

		void SetRawLossyCompressedImage (AutoPtr<dng_lossy_compressed_image> &image);
			
		void ClearRawLossyCompressedImage ();
			
		// API for RawLossyCompressedImageDigest:
		
		void SetRawLossyCompressedImageDigest (const dng_fingerprint &digest)
			{
			fRawLossyCompressedImageDigest = digest;
			}
			
		void ClearRawLossyCompressedImageDigest () const
			{
			fRawLossyCompressedImageDigest.Clear ();
			}
			
		const dng_fingerprint & RawLossyCompressedImageDigest () const
			{
			return fRawLossyCompressedImageDigest;
			}
			
		void FindRawLossyCompressedImageDigest (dng_host &host) const;
		
		// Read the opcode lists.
		
		virtual void ReadOpcodeLists (dng_host &host,
									  dng_stream &stream,
									  dng_info &info);
		
		// Read the stage 1 image.
		
		virtual void ReadStage1Image (dng_host &host,
									  dng_stream &stream,
									  dng_info &info);
		
		// Read the enhanced image directly into the stage 3 image.
		
		virtual void ReadEnhancedImage (dng_host &host,
										dng_stream &stream,
										dng_info &info);
		
		// Assign the stage 1 image.
		
		void SetStage1Image (AutoPtr<dng_image> &image);
		
		// Clear the stage 1 image.
		
		void ClearStage1Image ();
		
		// Assign the stage 2 image.
		
		void SetStage2Image (AutoPtr<dng_image> &image);
									  
		// Assign the stage 3 image.
		
		void SetStage3Image (AutoPtr<dng_image> &image);
		
		// Build the stage 2 (linearized and range mapped) image.
		
		void BuildStage2Image (dng_host &host);
									   
		// Build the stage 3 (demosaiced) image.
									   
		void BuildStage3Image (dng_host &host,
							   int32 srcPlane = -1);
									   
		// Additional gain applied when building the stage 3 image.
		
		void SetStage3Gain (real64 gain)
			{
			fStage3Gain = gain;
			}
		
		real64 Stage3Gain () const
			{
			return fStage3Gain;
			}

		// Optical black level of stage 3 image (in [0,65535]).
  
		void SetStage3BlackLevel (uint16 level)
			{
			fStage3BlackLevel = level;
			}

		uint16 Stage3BlackLevel () const
			{
			return fStage3BlackLevel;
			}

		// Optical black level of stage 3 image (in [0,1]).
			
		real64 Stage3BlackLevelNormalized () const
			{
			return fStage3BlackLevel * (1.0 / 65535.0);
			}

		// Is this negative permitted to support deferred black subtraction
		// (by preserving offset or negative black values in the stage 3
		// image)?
		//
		// If false, then fStage3BlackLevel must be zero.
		// If true, then fStage3BlackLevel may or may not be zero.
		//
		// Default implementation return false.

		virtual bool SupportsPreservedBlackLevels (dng_host &host);
			
		// Do we need to lossy compression the mosaic data?

		bool NeedLossyCompressMosaicJXL (dng_host &host) const;
		
		// Lossy compress raw mosaic image using JXL, if possible.
		
		void LossyCompressMosaicJXL (dng_host &host,
									 dng_image_writer &writer);

		// Lossless compress images using JXL, if possible.
		
		virtual void LosslessCompressJXL (dng_host &host,
										  dng_image_writer &writer,
										  bool nearLosslessOK = false);
			
		// Adaptively encode a proxy image down to 8-bits or 16-bits
		// per channel.

		dng_image * EncodeRawProxy (dng_host &host,
									const dng_image &srcImage,
									dng_opcode_list &opcodeList,
									real64 *blackLevel) const;

		// Convert to a proxy negative.

		void ConvertToProxy (dng_host &host,
							 dng_image_writer &writer,
							 uint32 proxySize = 0,
							 uint64 proxyCount = 0);
		
		// IsProxy API:
		
		bool IsProxy () const;
	
		// IsPreview API:
			
		void SetIsPreview (bool preview)
			{
			fIsPreview = preview;
			}
		
		bool IsPreview () const
			{
			return fIsPreview;
			}
			
		// IsDamaged API:
		
		void SetIsDamaged (bool damaged)
			{
			fIsDamaged = damaged;
			}
			
		bool IsDamaged () const
			{
			return fIsDamaged;
			}
			
		// Transparancy Mask API:
		
		void SetTransparencyMask (AutoPtr<dng_image> &image,
								  uint32 bitDepth = 0);
		
		void ClearTransparencyMask ();
		
		const dng_image * TransparencyMask () const;
		
		const dng_image * RawTransparencyMask () const;
		
		uint32 RawTransparencyMaskBitDepth () const;
		
		const dng_lossy_compressed_image * RawLossyCompressedTransparencyMask () const
			{
			return fRawLossyCompressedTransparencyMask.Get ();
			}
		
		void ReadTransparencyMask (dng_host &host,
								   dng_stream &stream,
								   dng_info &info);
								   
		virtual void ResizeTransparencyToMatchStage3 (dng_host &host,
													  bool convertTo8Bit = false);
		
		virtual bool NeedFlattenTransparency (dng_host &host);
		
		virtual void FlattenTransparency (dng_host &host);
		
		const dng_image * UnflattenedStage3Image () const;
		
		// Depth map API:
		
		bool HasDepthMap () const
			{
			return fHasDepthMap;
			}
		
		void SetHasDepthMap (bool hasDepthMap)
			{
			fHasDepthMap = hasDepthMap;
			}
		
		const dng_image * DepthMap () const
			{
			return fDepthMap.Get ();
			}
		
		void SetDepthMap (AutoPtr<dng_image> &depthMap);
		
		bool HasDepthMapImage () const
			{
			return (fDepthMap.Get () != NULL);
			}
		
		const dng_image * RawDepthMap () const
			{
			if (fRawDepthMap.Get ())
				{
				return fRawDepthMap.Get ();
				}
			return DepthMap ();
			}
		
		const dng_lossy_compressed_image * RawLossyCompressedDepthMap () const
			{
			return fRawLossyCompressedDepthMap.Get ();
			}
		
		void ResetDepthMap ()
			{
			fDepthMap.Reset ();
			fRawDepthMap.Reset ();
			fRawLossyCompressedDepthMap.Reset ();
			}

		void ReadDepthMap (dng_host &host,
						   dng_stream &stream,
						   dng_info &info);
		
		virtual void ResizeDepthToMatchStage3 (dng_host &host);
		
		uint32 DepthFormat () const
			{
			return fDepthFormat;
			}
		
		void SetDepthFormat (uint32 format)
			{
			fDepthFormat = format;
			}
		
		const dng_urational & DepthNear () const
			{
			return fDepthNear;
			}
		
		void SetDepthNear (const dng_urational &dist)
			{
			fDepthNear = dist;
			}
		
		const dng_urational & DepthFar () const
			{
			return fDepthFar;
			}
		
		void SetDepthFar (const dng_urational &dist)
			{
			fDepthFar = dist;
			}
		
		uint32 DepthUnits () const
			{
			return fDepthUnits;
			}
		
		void SetDepthUnits (uint32 units)
			{
			fDepthUnits = units;
			}

		uint32 DepthMeasureType () const
			{
			return fDepthMeasureType;
			}
		
		void SetDepthMeasureType (uint32 measure)
			{
			fDepthMeasureType = measure;
			}

		 // EnhanceParams API:
		
		const dng_string & EnhanceParams () const
			{
			return fEnhanceParams;
			}
		
		void SetEnhanceParams (const dng_string &s)
			{
			fEnhanceParams = s;
			}
		
		void SetEnhanceParams (const char *s)
			{
			fEnhanceParams.Set (s);
			}
		
		// API for enhanced lossy compressed image.
		
		const dng_lossy_compressed_image * EnhancedLossyCompressedImage () const
			{
			return fEnhancedLossyCompressedImage.Get ();
			}
			
		void SetEnhancedLossyCompressedImage (dng_lossy_compressed_image *image)
			{
			fEnhancedLossyCompressedImage.Reset (image);
			}

		// SemanticMask API:

		bool HasSemanticMask () const;
		
		bool HasSemanticMask (uint32 index) const;

		uint32 NumSemanticMasks () const;

		const dng_semantic_mask & SemanticMask (uint32 index) const;

		const dng_semantic_mask & RawSemanticMask (uint32 index) const;
		
		void SetSemanticMask (uint32 index,
							  const dng_semantic_mask &mask);

		void AppendSemanticMask (const dng_semantic_mask &mask);
		
		void ReadSemanticMasks (dng_host &host,
								dng_stream &stream,
								dng_info &info);

		virtual void ResizeSemanticMasksToMatchStage3 (dng_host &host);

		// ProfileGainTableMap API:

		bool HasProfileGainTableMap () const;

		const dng_gain_table_map & ProfileGainTableMap () const;

		std::shared_ptr<const dng_gain_table_map> ShareProfileGainTableMap () const
			{
			return fProfileGainTableMap;
			}

		// Gives negative shared ownership of gainTableMap.
		
		void SetProfileGainTableMap
			(const std::shared_ptr<const dng_gain_table_map> &gainTableMap);

		// Transfer ownership of gainTableMap to negative. After return,
		// gainTableMap will be nullptr.
		
		void SetProfileGainTableMap
			(AutoPtr<dng_gain_table_map> &gainTableMap);

	protected:
	
		dng_negative (dng_host &host);
		
		virtual void Initialize ();
		
		virtual dng_linearization_info * MakeLinearizationInfo ();
		
		void NeedLinearizationInfo ();
		
		virtual dng_mosaic_info * MakeMosaicInfo ();
		
		void NeedMosaicInfo ();
		
		virtual void DoBuildStage2 (dng_host &host);
		
		virtual void DoPostOpcodeList2 (dng_host &host);
									   
		virtual bool NeedDefloatStage2 (dng_host &host);
		
		virtual void DefloatStage2 (dng_host &host);
		
		virtual void DoInterpolateStage3 (dng_host &host,
										  int32 srcPlane,
										  dng_matrix *scaleTransforms);
									
		virtual void DoMergeStage3 (dng_host &host,
									dng_matrix *scaleTransforms);
									   
		virtual void DoBuildStage3 (dng_host &host,
									int32 srcPlane,
									dng_matrix *scaleTransforms);
									   
		virtual void AdjustGainMapForStage3 (dng_host &host);
									  
		virtual void AdjustProfileForStage3 ();
									  
		virtual bool GetProfileByMetadata (const dng_camera_profile_metadata &metadata,
										   dng_camera_profile &foundProfile) const;
		
		virtual bool GetProfileByIDFromList (const dng_profile_metadata_list &list,
											 const dng_camera_profile_id &id,
											 dng_camera_profile &foundProfile,
											 bool useDefaultIfNoMatch,
											 const dng_camera_profile_group_selector *groupSelector) const;
		
		virtual bool GetProfileToEmbedFromList (const dng_profile_metadata_list &list,
												const dng_metadata &metadata,
												dng_camera_profile &foundProfile,
												bool skipAdobeStandard = false) const;

		void CompressTransparencyMaskJXL (dng_host &host,
										  dng_image_writer &writer,
										  bool nearLosslessOK);
								  
		void CompressDepthMapJXL (dng_host &host,
								  dng_image_writer &writer,
								  bool nearLosslessOK);
								  
		void CompressSemanticMasksJXL (dng_host &host,
									   dng_image_writer &writer,
									   bool nearLosslessOK);

		void AdjustSemanticMasksForProxy (dng_host &host,
										  dng_image_writer &writer,
										  const dng_rect &originalStage3Bounds,
										  const dng_rect &defaultCropArea);

	};

/*****************************************************************************/

dng_image * EncodeImageForCompression (dng_host &host,
									   const dng_image &srcImage,
									   const dng_rect &activeArea,
									   const bool isSceneReferred,
									   const bool use16bit,
									   const real64 srcBlackLevel,
									   real64 *dstBlackLevel,
									   dng_opcode_list &opcodeList);

/*****************************************************************************/

#endif	// __dng_negative__
	
/*****************************************************************************/
