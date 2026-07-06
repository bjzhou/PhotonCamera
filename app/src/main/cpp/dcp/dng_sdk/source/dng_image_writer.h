/*****************************************************************************/
// Copyright 2006-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Support for writing DNG images to files.
 */

/*****************************************************************************/

#ifndef __dng_image_writer__
#define __dng_image_writer__

/*****************************************************************************/

#include "dng_area_task.h"
#include "dng_auto_ptr.h"
#include "dng_classes.h"
#include "dng_fingerprint.h"
#include "dng_memory.h"
#include "dng_mutex.h"
#include "dng_point.h"
#include "dng_rational.h"
#include "dng_safe_arithmetic.h"
#include "dng_sdk_limits.h"
#include "dng_string.h"
#include "dng_tag_types.h"
#include "dng_tag_values.h"
#include "dng_types.h"
#include "dng_uncopyable.h"

#include <atomic>

/*****************************************************************************/

/// \brief Image resolution.

class dng_resolution
	{
	
	public:
	
		dng_urational fXResolution;
		dng_urational fYResolution;
		
		uint16 fResolutionUnit;
		
	public:
	
		dng_resolution ();
		
	};

/*****************************************************************************/

class tiff_tag: private dng_uncopyable
	{
	
	protected:
	
		uint16 fCode;
	
		uint16 fType;
		
		uint32 fCount;
		
	protected:
	
		tiff_tag (uint16 code,
				  uint16 type,
				  uint32 count)
				
			:	fCode  (code)
			,	fType  (type)
			,	fCount (count)
			
			{
			}
			
	public:
	
		virtual ~tiff_tag ()
			{
			}
			
		uint16 Code () const
			{
			return fCode;
			}
			
		uint16 Type () const
			{
			return fType;
			}
			
		uint32 Count () const
			{
			return fCount;
			}
			
		void SetCount (uint32 count)
			{
			fCount = count;
			}
		
		uint32 Size () const
			{
			return SafeUint32Mult (TagTypeSize (Type ()), Count ());
			}
	
		virtual void SetBigTIFF (bool /* isBigTIFF */)
			{
			}
	
		virtual void Put (dng_stream &stream) const = 0;
	
	};

/******************************************************************************/

class tag_data_ptr: public tiff_tag
	{
	
	protected:
	
		const void *fData;
		
	public:
	
		tag_data_ptr (uint16 code,
					  uint16 type,
					  uint32 count,
					  const void *data)
				
			:	tiff_tag (code, type, count)
			
			,	fData (data)
			
			{
			}
			
		void SetData (const void *data)
			{
			fData = data;
			}
			
		virtual void Put (dng_stream &stream) const;
		
	};
		
/******************************************************************************/

class tag_owned_data_ptr: public tag_data_ptr
	{
	
	protected:
	
		const_dng_memory_block_sptr fBlock;
		
	public:
	
		tag_owned_data_ptr (uint16 code,
							uint16 type,
							uint32 count,
							const_dng_memory_block_sptr block)
				
			:	tag_data_ptr (code,
							  type,
							  count,
							  block ? block->Buffer () : nullptr)
			
			,	fBlock (block)
			
			{
			}
			
		void SetBlock (const_dng_memory_block_sptr block)
			{
			fBlock = block;
			SetData (block ? block->Buffer () : nullptr);
			}
			
	};
		
/******************************************************************************/

class tag_string: public tiff_tag
	{
	
	protected:
	
		dng_string fString;
		
	public:
	
		tag_string (uint16 code,
					const dng_string &s,
					bool forceASCII = true);

		virtual void Put (dng_stream &stream) const;
	
	};
		
/******************************************************************************/

class tag_encoded_text: public tiff_tag
	{
	
	private:
	
		dng_string fText;
		
		dng_memory_data fUTF16;
		
	public:
	
		tag_encoded_text (uint16 code,
						  const dng_string &text);

		virtual void Put (dng_stream &stream) const;

	};

/******************************************************************************/

class tag_uint8: public tag_data_ptr
	{
	
	private:
	
		uint8 fValue;
		
	public:
	
		tag_uint8 (uint16 code,
				   uint8 value = 0)
			
			:	tag_data_ptr (code, ttByte, 1, &fValue)
			
			,	fValue (value)
			
			{
			}
			
		void Set (uint8 value)
			{
			fValue = value;
			}
		
	};

/******************************************************************************/

class tag_uint8_ptr: public tag_data_ptr
	{
	
	public:
	
		tag_uint8_ptr (uint16 code,
					   const uint8 *data,
					   uint32 count = 1)
			
			:	tag_data_ptr (code, ttByte, count, data)
			
			{
			}
			
	};

/******************************************************************************/

class tag_uint16: public tag_data_ptr
	{
	
	private:
	
		uint16 fValue;
		
	public:
	
		tag_uint16 (uint16 code,
					uint16 value = 0)
			
			:	tag_data_ptr (code, ttShort, 1, &fValue)
			
			,	fValue (value)
			
			{
			}
			
		void Set (uint16 value)
			{
			fValue = value;
			}
			
		uint16 Get () const
			{
			return fValue;
			}
		
	};

/******************************************************************************/

class tag_int16_ptr: public tag_data_ptr
	{
	
	public:
	
		tag_int16_ptr (uint16 code,
					   const int16 *data,
					   uint32 count = 1)
			
			:	tag_data_ptr (code, ttSShort, count, data)
			
			{
			}
			
	};

/******************************************************************************/

class tag_uint16_ptr: public tag_data_ptr
	{
	
	public:
	
		tag_uint16_ptr (uint16 code,
						const uint16 *data,
						uint32 count = 1)
			
			:	tag_data_ptr (code, ttShort, count, data)
			
			{
			}
			
	};

/******************************************************************************/

class tag_uint32: public tag_data_ptr
	{
	
	private:
	
		uint32 fValue;
		
	public:
	
		tag_uint32 (uint16 code,
					uint32 value = 0)
			
			:	tag_data_ptr (code, ttLong, 1, &fValue)
			
			,	fValue (value)
			
			{
			}
			
		void Set (uint32 value)
			{
			fValue = value;
			}
		
	};

/******************************************************************************/

class tag_uint32_ptr: public tag_data_ptr
	{
	
	public:
	
		tag_uint32_ptr (uint16 code,
						const uint32 *data,
						uint32 count = 1)
			
			:	tag_data_ptr (code, ttLong, count, data)
			
			{
			}
			
	};

/******************************************************************************/

class tag_big_uint: public tiff_tag
	{
	
	private:
	
		uint64 fValue;

	public:
	
		tag_big_uint (uint16 code,
					  uint64 value = 0)
					  
			:	tiff_tag (code, ttLong, 1)
			
			,	fValue (value)
			
			{
			}
			
		void Set (uint64 value)
			{
			fValue = value;
			}
	
		virtual void SetBigTIFF (bool isBigTIFF)
			{
			fType = (uint16)(isBigTIFF ? ttLong8 : ttLong);
			}
	
		virtual void Put (dng_stream &stream) const;

	};

/******************************************************************************/

class tag_big_uints: public tiff_tag
	{
	
	private:
	
		dng_memory_data fData;
		
		bool fAlways32;

	public:
	
		tag_big_uints (uint16 code,
					   uint32 count = 1,
					   bool always32 = false)
							  
			:	tiff_tag (code, ttLong, count)
			
			,	fData (count, 8)
			
			,	fAlways32 (always32)
			
			{
			}

		void Set (uint32 index,
				  uint64 value)
			{
			DNG_REQUIRE (index < Count (),
						 "tag_big_uints::Set index out of range");
			fData.Buffer_uint64 () [index] = value;
			}
	
		virtual void SetBigTIFF (bool isBigTIFF)
			{
			fType = (uint16)(isBigTIFF && !fAlways32 ? ttLong8 : ttLong);
			}
	
		virtual void Put (dng_stream &stream) const;

	};

/******************************************************************************/

class tag_urational: public tag_data_ptr
	{
	
	private:
	
		const dng_urational fValue;
		
	public:
	
		tag_urational (uint16 code,
					   const dng_urational &value)
			
			:	tag_data_ptr (code, ttRational, 1, &fValue)
			
			,	fValue (value)
			
			{
			}
			
	};

/******************************************************************************/

class tag_urational_ptr: public tag_data_ptr
	{
	
	public:
	
		tag_urational_ptr (uint16 code,
						   const dng_urational *data = NULL,
						   uint32 count = 1)
			
			:	tag_data_ptr (code, ttRational, count, data)
			
			{
			}
			
	};

/******************************************************************************/

class tag_srational: public tag_data_ptr
	{
	
	private:
	
		const dng_srational fValue;
		
	public:
	
		tag_srational (uint16 code,
					   const dng_srational &value)
			
			:	tag_data_ptr (code, ttSRational, 1, &fValue)
			
			,	fValue (value)
			
			{
			}
			
	};

/******************************************************************************/

class tag_srational_ptr: public tag_data_ptr
	{
	
	public:
	
		tag_srational_ptr (uint16 code,
						   const dng_srational *data = NULL,
						   uint32 count = 1)
			
			:	tag_data_ptr (code, ttSRational, count, data)
			
			{
			}
			
	};

/******************************************************************************/

class tag_real32: public tag_data_ptr
	{
	
	private:
	
		real32 fValue;
		
	public:
	
		tag_real32 (uint16 code,
					real32 value = 0.0f)
			
			:	tag_data_ptr (code, ttFloat, 1, &fValue)
			
			,	fValue (value)
			
			{
			}
			
		void Set (real32 value)
			{
			fValue = value;
			}
		
	};

/******************************************************************************/

class tag_real64: public tag_data_ptr
	{
	
	private:
	
		real64 fValue;
		
	public:
	
		tag_real64 (uint16 code,
					real64 value = 0.0)
			
			:	tag_data_ptr (code, ttDouble, 1, &fValue)
			
			,	fValue (value)
			
			{
			}
			
		void Set (real64 value)
			{
			fValue = value;
			}
		
	};

/******************************************************************************/

class tag_matrix: public tag_srational_ptr
	{
	
	private:
	
		dng_srational fEntry [kMaxColorPlanes *
							  kMaxColorPlanes];
		
	public:
	
		tag_matrix (uint16 code,
					const dng_matrix &m);
						   
	};

/******************************************************************************/

class tag_icc_profile: public tag_data_ptr
	{
	
	public:
	
		tag_icc_profile (const void *profileData, uint32 profileSize);
			
	};

/******************************************************************************/

class tag_cfa_pattern: public tiff_tag
	{
	
	private:
	
		uint32 fRows;
		uint32 fCols;
		
		const uint8 *fPattern;
	
	public:
	
		tag_cfa_pattern (uint16 code,
						 uint32 rows,
						 uint32 cols,
						 const uint8 *pattern)
					   
			:	tiff_tag (code, ttUndefined,
						 SafeUint32Add (4, SafeUint32Mult (rows, cols)))
			
			,	fRows	 (rows	 )
			,	fCols	 (cols	 )
			,	fPattern (pattern)
			
			{
			}
			
		virtual void Put (dng_stream &stream) const;
			
	};
	
/******************************************************************************/

class tag_exif_date_time: public tag_data_ptr
	{
	
	private:
	
		char fData [20];
		
	public:
	
		tag_exif_date_time (uint16 code,
							const dng_date_time &dt);
			
	};

/******************************************************************************/

class tag_iptc: public tiff_tag
	{
	
	private:
	
		const void *fData;
		
		uint32 fLength;
		
	public:
	
		tag_iptc (const void *data,
				  uint32 length);
			
		virtual void Put (dng_stream &stream) const;

	};

/******************************************************************************/

class tag_xmp: public tag_uint8_ptr
	{
	
	private:
	
		AutoPtr<dng_memory_block> fBuffer;
		
	public:
		
		tag_xmp (const dng_xmp *xmp);
				 
	};

/******************************************************************************/

class dng_tiff_directory: private dng_uncopyable
	{
	
	private:
	
		std::vector<tiff_tag *> fTag;
		
		uint64 fChained;
		
		bool fBigTIFF;
		
	public:
	
		dng_tiff_directory ()
		
			:	fTag	 ()
			,	fChained (0)
			,	fBigTIFF (false)
			
			{
			}
			
		virtual ~dng_tiff_directory ()
			{
			}
			
		void Add (tiff_tag *tag);
		
		void SetChained (uint64 offset)
			{
			fChained = offset;
			}
		
		void SetBigTIFF (bool isBigTIFF);
			
		uint32 Size () const;
		
		enum OffsetsBase
			{
			offsetsRelativeToStream			= 0,
			offsetsRelativeToExplicitBase	= 1,
			offsetsRelativeToIFD			= 2
			};

		void Put (dng_stream &stream,
				  OffsetsBase offsetsBase = offsetsRelativeToStream,
				  uint64 explicitBase = 0) const;
	
	};

/******************************************************************************/

class dng_basic_tag_set: private dng_uncopyable
	{
	
	private:
	
		tag_uint32 fNewSubFileType;
		
		tag_uint32 fImageWidth;
		tag_uint32 fImageLength;
	
		tag_uint16 fPhotoInterpretation;
	
		tag_uint16 fFillOrder;
	
		tag_uint16 fSamplesPerPixel;
	
		std::vector<uint16> fBitsPerSampleData;
		
		tag_uint16_ptr fBitsPerSample;
		
		bool fStrips;
								 
		tag_uint32 fTileWidth;
		tag_uint32 fTileLength;
		
		tag_big_uints fTileOffsets;
		
		tag_big_uints fTileByteCounts;

		tag_uint16 fPlanarConfiguration;
	
		tag_uint16 fCompression;
		
		tag_uint16 fPredictor;
		
		std::vector<uint16> fExtraSamplesData;
		
		tag_uint16_ptr fExtraSamples;
		
		std::vector<uint16> fSampleFormatData;
		
		tag_uint16_ptr fSampleFormat;
		
		tag_uint16 fRowInterleaveFactor;
		tag_uint16 fColumnInterleaveFactor;
		
		uint16 fSubTileBlockSizeData [2];
		
		tag_uint16_ptr fSubTileBlockSize;
		
		tag_real32 fJXLDistance;
		tag_uint32 fJXLEffort;
		tag_uint32 fJXLDecodeSpeed;

	public:
	
		dng_basic_tag_set (dng_tiff_directory &directory,
						   const dng_ifd &info);
					   
		virtual ~dng_basic_tag_set ()
			{
			}
								
		void SetTileOffset (uint32 index,
							uint64 offset)
			{
			fTileOffsets.Set (index, offset);
			}
			
		void SetTileByteCount (uint32 index,
							   uint64 count)
			{
			fTileByteCounts.Set (index, count);
			}
			
		bool WritingStrips () const
			{
			return fStrips;
			}
			
		uint16 Compression () const
			{
			return fCompression.Get ();
			}
			
	};
	
/******************************************************************************/

class exif_tag_set: private dng_uncopyable
	{
	
	protected:
	
		dng_tiff_directory fExifIFD;
		dng_tiff_directory fGPSIFD;
		
	private:
		
		tag_big_uint fExifLink;
		tag_big_uint fGPSLink;
		
		bool fAddedExifLink;
		bool fAddedGPSLink;
		
		uint8 fExifVersionData [4];
		
		tag_data_ptr fExifVersion;
		
		tag_urational fExposureTime;
		tag_srational fShutterSpeedValue;
		
		tag_urational fFNumber;
		tag_urational fApertureValue;
		
		tag_srational fBrightnessValue;
		
		tag_srational fExposureBiasValue;
		
		tag_urational fMaxApertureValue;
		
		tag_urational fSubjectDistance;
		
		tag_urational fFocalLength;
		
		tag_uint16 fISOSpeedRatings;

		tag_uint16 fSensitivityType;
		tag_uint32 fStandardOutputSensitivity;
		tag_uint32 fRecommendedExposureIndex;
		tag_uint32 fISOSpeed;
		tag_uint32 fISOSpeedLatitudeyyy;
		tag_uint32 fISOSpeedLatitudezzz;
		
		tag_uint16 fFlash;
		
		tag_uint16 fExposureProgram;
		
		tag_uint16 fMeteringMode;
		
		tag_uint16 fLightSource;
		
		tag_uint16 fSensingMethod;
		
		tag_uint16 fFocalLength35mm;
		
		uint8 fFileSourceData;
		tag_data_ptr fFileSource;

		uint8 fSceneTypeData;
		tag_data_ptr fSceneType;
		
		tag_cfa_pattern fCFAPattern;
		
		tag_uint16 fCustomRendered;
		tag_uint16 fExposureMode;
		tag_uint16 fWhiteBalance;
		tag_uint16 fSceneCaptureType;
		tag_uint16 fGainControl;
		tag_uint16 fContrast;
		tag_uint16 fSaturation;
		tag_uint16 fSharpness;
		tag_uint16 fSubjectDistanceRange;
		
		tag_urational fDigitalZoomRatio;
		
		tag_urational fExposureIndex;
		
		tag_uint32 fImageNumber;
		
		tag_uint16 fSelfTimerMode;
		
		tag_string	  fBatteryLevelA;
		tag_urational fBatteryLevelR;
		
		tag_uint16	  fColorSpace;
		
		tag_urational fFocalPlaneXResolution;
		tag_urational fFocalPlaneYResolution;
		
		tag_uint16 fFocalPlaneResolutionUnit;
		
		uint16 fSubjectAreaData [4];
		
		tag_uint16_ptr fSubjectArea;
		
		dng_urational fLensInfoData [4];
		
		tag_urational_ptr fLensInfo;
		
		tag_exif_date_time fDateTime;
		tag_exif_date_time fDateTimeOriginal;
		tag_exif_date_time fDateTimeDigitized;
		
		tag_string fSubsecTime;
		tag_string fSubsecTimeOriginal;
		tag_string fSubsecTimeDigitized;
  
		tag_string fOffsetTime;
		tag_string fOffsetTimeOriginal;
		tag_string fOffsetTimeDigitized;

		tag_string fMake;
		tag_string fModel;
		tag_string fArtist;
		tag_string fSoftware;
		tag_string fCopyright;
		tag_string fImageDescription;
		
		tag_string fSerialNumber;
		
		tag_uint16 fMakerNoteSafety;

		tag_data_ptr fMakerNote;
		
		tag_encoded_text fUserComment;
		
		char fImageUniqueIDData [33];
		
		tag_data_ptr fImageUniqueID;

		// EXIF 2.3 tags.

		tag_string fCameraOwnerName;
		tag_string fBodySerialNumber;
		tag_urational_ptr fLensSpecification;
		tag_string fLensMake;
		tag_string fLensModel;
		tag_string fLensSerialNumber;
  
		// EXIF 2.3.1 tags.
		
		tag_srational fTemperature;
		tag_urational fHumidity;
		tag_urational fPressure;
		tag_srational fWaterDepth;
		tag_urational fAcceleration;
		tag_srational fCameraElevationAngle;
		
		uint8 fGPSVersionData [4];
		
		tag_uint8_ptr fGPSVersionID;
		
		tag_string		  fGPSLatitudeRef;
		tag_urational_ptr fGPSLatitude;
		
		tag_string		  fGPSLongitudeRef;
		tag_urational_ptr fGPSLongitude;
		
		tag_uint8	  fGPSAltitudeRef;
		tag_urational fGPSAltitude;
		
		tag_urational_ptr fGPSTimeStamp;
		
		tag_string fGPSSatellites;
		tag_string fGPSStatus;
		tag_string fGPSMeasureMode;
		
		tag_urational fGPSDOP;
		
		tag_string	  fGPSSpeedRef;
		tag_urational fGPSSpeed;
		
		tag_string	  fGPSTrackRef;
		tag_urational fGPSTrack;
		
		tag_string	  fGPSImgDirectionRef;
		tag_urational fGPSImgDirection;
		
		tag_string fGPSMapDatum;
		
		tag_string		  fGPSDestLatitudeRef;
		tag_urational_ptr fGPSDestLatitude;
		
		tag_string		  fGPSDestLongitudeRef;
		tag_urational_ptr fGPSDestLongitude;
		
		tag_string	  fGPSDestBearingRef;
		tag_urational fGPSDestBearing;
		
		tag_string	  fGPSDestDistanceRef;
		tag_urational fGPSDestDistance;
		
		tag_encoded_text fGPSProcessingMethod;
		tag_encoded_text fGPSAreaInformation;
		
		tag_string fGPSDateStamp;
		
		tag_uint16 fGPSDifferential;
		
		tag_urational fGPSHPositioningError;
		
	public:
	
		exif_tag_set (dng_tiff_directory &directory,
					  const dng_exif &exif,
					  bool makerNoteSafe = false,
					  const void *makerNoteData = NULL,
					  uint32 makerNoteLength = 0,
					  bool insideDNG = false);
					
		void SetBigTIFF (bool isBigTIFF)
			{
			fExifIFD.SetBigTIFF (isBigTIFF);
			fGPSIFD .SetBigTIFF (isBigTIFF);
			}
			
		void Locate (uint64 offset)
			{
			fExifLink.Set (offset);
			fGPSLink .Set (offset + fExifIFD.Size ());
			}
					
		uint32 Size () const
			{
			return fExifIFD.Size () +
				   fGPSIFD .Size ();
			}
			
		void Put (dng_stream &stream) const
			{
			fExifIFD.Put (stream);
			fGPSIFD .Put (stream);
			}
			
	protected:
	
		void AddLinks (dng_tiff_directory &directory);
	
	};

/******************************************************************************/

class profile_tag_set;

class tiff_dng_extended_color_profile: private dng_tiff_directory
	{

	protected:

		const dng_camera_profile &fProfile;
		
		AutoPtr<profile_tag_set> fProfileTagSet;

		tag_string fCameraModelTag;

	public:

		tiff_dng_extended_color_profile (const dng_camera_profile &profile,
										 bool includeModelRestriction = true);

		virtual ~tiff_dng_extended_color_profile ();

		void Put (dng_host &host,
				  dng_stream &stream);
				  
		uint64 DataSize ();

	};

/*****************************************************************************/

class tag_dng_noise_profile: public tag_data_ptr
	{
		
	protected:

		real64 fValues [2 * kMaxColorPlanes];

	public:

		explicit tag_dng_noise_profile (const dng_noise_profile &profile);
		
	};

/*****************************************************************************/

// Class to control the subset of metadata to save to a file.

class dng_metadata_subset
	{
	
	public:
	
		enum
			{

			kMask_Copyright	 = 0x00000001,
			kMask_Contact	 = 0x00000002,
			kMask_Location	 = 0x00000004,
			kMask_Exif		 = 0x00000008,
			kMask_Keywords	 = 0x00000010,
			kMask_CameraRaw	 = 0x00000020,
			kMask_Rating	 = 0x00000040,
			kMask_Label		 = 0x00000080,
			kMask_Caption	 = 0x00000100,
			kMask_Title		 = 0x00000200,
			kMask_Regions	 = 0x00000400,		// Includes face info
			kMask_ExifDate	 = 0x00000800,

			kMask_Other		 = 0x80000000,
			
			kMask_All		 = 0xFFFFFFFF

			};
	
	private:
	
		uint32 fMask;
		
	public:
	
		dng_metadata_subset (uint32 mask = kMask_All)
		
			:	fMask (mask)
			
			{
			}
			
		uint32 Mask () const
			{
			return fMask;
			}
			
		bool operator== (const dng_metadata_subset &subset) const
			{
			return fMask == subset.fMask;
			}

		bool operator!= (const dng_metadata_subset &subset) const
			{
			return !(*this == subset);
			}
			
		bool Includes (uint32 mask) const
			{
			return (fMask & mask) == mask;
			}

		bool Excludes (uint32 mask) const
			{
			return (fMask & mask) == 0;
			}

	};
	
// Metadata subset mask values for legacy API:

enum
	{
	
	kMetadataSubset_CopyrightOnly =
		dng_metadata_subset::kMask_Copyright,
	
	kMetadataSubset_CopyrightAndContact =
		dng_metadata_subset::kMask_Copyright +
		dng_metadata_subset::kMask_Contact +
		dng_metadata_subset::kMask_Title,
										  
	kMetadataSubset_All =
		dng_metadata_subset::kMask_All,
	
	kMetadataSubset_AllExceptLocationInfo =
		dng_metadata_subset::kMask_All -
		dng_metadata_subset::kMask_Location,
											
	kMetadataSubset_AllExceptCameraInfo =
		dng_metadata_subset::kMask_All -
		dng_metadata_subset::kMask_Exif -
		dng_metadata_subset::kMask_CameraRaw,
										  
	kMetadataSubset_AllExceptCameraAndLocation =
		dng_metadata_subset::kMask_All -
		dng_metadata_subset::kMask_Exif -
		dng_metadata_subset::kMask_CameraRaw -
		dng_metadata_subset::kMask_Location,
		
	kMetadataSubset_AllExceptCameraRawInfo =
		dng_metadata_subset::kMask_All -
		dng_metadata_subset::kMask_CameraRaw,

	kMetadataSubset_AllExceptCameraRawInfoAndLocation =
		dng_metadata_subset::kMask_All -
		dng_metadata_subset::kMask_CameraRaw -
		dng_metadata_subset::kMask_Location,

	kMetadataSubset_ExifDate = dng_metadata_subset::kMask_ExifDate

	};
 
/*****************************************************************************/

/// \brief Support for writing dng_image or dng_negative instances to a
/// dng_stream in TIFF or DNG format.

class dng_image_writer
	{
	
	friend class dng_compressed_image_encode_task;
	friend class dng_write_tiles_task;
	
	protected:
	
		enum
			{
			
			// Target size for buffer used to copy data to the image.
			
			kImageBufferSize = 128 * 1024
			
			};
	
	public:
	
		dng_image_writer ();
		
		virtual ~dng_image_writer ();
		
		virtual void EncodeJPEGPreview (dng_host &host,
										const dng_image &image,
										dng_jpeg_preview &preview,
										int32 quality = -1);

		virtual void WriteImage (dng_host &host,
								 const dng_ifd &ifd,
								 dng_basic_tag_set &basic,
								 dng_stream &stream,
								 const dng_image &image,
								 uint32 fakeChannels = 1,
								 dng_fingerprint *outDigest = nullptr);
							
		/// Write a dng_image to a dng_stream in TIFF format.
		/// \param host Host interface used for progress updates, abort testing, buffer allocation, etc.
		/// \param stream The dng_stream on which to write the TIFF.
		/// \param image The actual image data to be written.
		/// \param photometricInterpretation Either piBlackIsZero for monochrome or piRGB for RGB images.
		/// \param compression Must be ccUncompressed.
		/// \param metadata If non-NULL, EXIF, IPTC, and XMP metadata from this is written to TIFF.
		/// \param space If non-null and color space has an ICC profile, TIFF will be tagged with this
		/// profile. No color space conversion of image data occurs.
		/// \param resolution If non-NULL, TIFF will be tagged with this resolution.
		/// \param thumbnail If non-NULL, will be stored in TIFF as preview image.
		/// \param imageResources If non-NULL, will image resources be stored in TIFF as well.
		/// \param metadataSubset The subset of metadata (e.g., copyright only) to include in the TIFF.
		/// \param hasTransparency Does the image change a transparency channel?
		/// \param allowBigTIFF Automatically write BigTIFF format if required?

		void WriteTIFF (dng_host &host,
						dng_stream &stream,
						const dng_image &image,
						uint32 photometricInterpretation = piBlackIsZero,
						uint32 compression = ccUncompressed,
						const dng_metadata *metadata = NULL,
						const dng_color_space *space = NULL,
						const dng_resolution *resolution = NULL,
						const dng_jpeg_preview *thumbnail = NULL,
						const dng_memory_block *imageResources = NULL,
						dng_metadata_subset metadataSubset = kMetadataSubset_All,
						bool hasTransparency = false,
						bool allowBigTIFF = true,
						const dng_image *gainMapImage = nullptr,
						const const_dng_memory_block_sptr gainMapMetadataBlock = nullptr,
						bool useHalfFloat = false,
						const void *gainMapAltProfileData = nullptr,
						const uint32 gainMapAltProfileSize = 0);
								
		/// Write a dng_image to a dng_stream in TIFF format.
		/// \param host Host interface used for progress updates, abort testing, buffer allocation, etc.
		/// \param stream The dng_stream on which to write the TIFF.
		/// \param image The actual image data to be written.
		/// \param photometricInterpretation Either piBlackIsZero for monochrome or piRGB for RGB images.
		/// \param compression Must be ccUncompressed.
		/// \param metadata If non-NULL, EXIF, IPTC, and XMP metadata from this is written to TIFF.
		/// \param profileData If non-null, TIFF will be tagged with this profile. No color space conversion
		/// of image data occurs.
		/// \param profileSize The size for the profile data.
		/// \param resolution If non-NULL, TIFF will be tagged with this resolution.
		/// \param thumbnail If non-NULL, will be stored in TIFF as preview image.
		/// \param imageResources If non-NULL, will image resources be stored in TIFF as well.
		/// \param metadataSubset The subset of metadata (e.g., copyright only) to include in the TIFF.
		/// \param hasTransparency Does the image change a transparency channel?
		/// \param allowBigTIFF Automatically write BigTIFF format if required?

		virtual void WriteTIFFWithProfile (dng_host &host,
										   dng_stream &stream,
										   const dng_image &image,
										   uint32 photometricInterpretation = piBlackIsZero,
										   uint32 compression = ccUncompressed,
										   const dng_metadata *metadata = NULL,
										   const void *profileData = NULL,
										   uint32 profileSize = 0,
										   const dng_resolution *resolution = NULL,
										   const dng_jpeg_preview *thumbnail = NULL,
										   const dng_memory_block *imageResources = NULL,
										   dng_metadata_subset metadataSubset = kMetadataSubset_All,
										   bool hasTransparency = false,
										   bool allowBigTIFF = true,
										   const dng_image *gainMapImage = nullptr,
										   const const_dng_memory_block_sptr gainMapMetadataBlock = nullptr,
										   bool useHalfFloat = false,
										   const void *gainMapAltProfileData = nullptr,
										   const uint32 gainMapAltProfileSize = 0);
								
		/// Write a dng_image to a dng_stream in DNG format.
		/// \param host Host interface used for progress updates, abort testing, buffer allocation, etc.
		/// \param stream The dng_stream on which to write the TIFF.
		/// \param negative The image data and metadata (EXIF, IPTC, XMP) to be written.
		/// \param previewList List of previews (not counting thumbnail) to write to the file. Defaults to empty.
		/// \param maxBackwardVersion The DNG file should be readable by readers at least back to this version.
		/// \param uncompressed True to force uncompressed images. Otherwise use normal compression.
		/// \param gainMapImage Optional gain map image.
		/// \param gainMapLossyCompressed Optional lossy compressed gain map image.

		void WriteDNG (dng_host &host,
					   dng_stream &stream,
					   dng_negative &negative,
					   const dng_preview_list *previewList = NULL,
					   uint32 maxBackwardVersion = dngVersion_SaveDefault,
					   bool uncompressed = false,
					   bool allowBigTIFF = true,
					   const dng_image *gainMapImage = nullptr,
					   const dng_lossy_compressed_image *gainMapLossyCompressed = nullptr,
					   const const_dng_memory_block_sptr gainMapMetadataBlock = nullptr,
					   const void *gainMapAltProfileData = nullptr,
					   const uint32 gainMapAltProfileSize = 0);
							   
		/// Write a dng_image to a dng_stream in DNG format.
		/// \param host Host interface used for progress updates, abort testing, buffer allocation, etc.
		/// \param stream The dng_stream on which to write the TIFF.
		/// \param negative The image data to be written.
		/// \param metadata The metadata (EXIF, IPTC, XMP) to be written.
		/// \param previewList List of previews (not counting thumbnail) to write to the file. Defaults to empty.
		/// \param maxBackwardVersion The DNG file should be readable by readers at least back to this version.
		/// \param uncompressed True to force uncompressed images. Otherwise use normal compression.
		/// \param gainMapImage Optional gain map image.
		/// \param gainMapLossyCompressed Optional lossy compressed gain map image.

		virtual void WriteDNGWithMetadata (dng_host &host,
										   dng_stream &stream,
										   const dng_negative &negative,
										   const dng_metadata &metadata,
										   const dng_preview_list *previewList = NULL,
										   uint32 maxBackwardVersion = dngVersion_SaveDefault,
										   bool uncompressed = false,
										   bool allowBigTIFF = true,
										   const dng_image *gainMapImage = nullptr,
										   const dng_lossy_compressed_image *gainMapLossyCompressed = nullptr,
										   const const_dng_memory_block_sptr gainMapMetadataBlock = nullptr,
										   const void *gainMapAltProfileData = nullptr,
										   const uint32 gainMapAltProfileSize = 0);

		/// Resolve metadata conflicts and apply metadata policies in keeping
		/// with Metadata Working Group (MWG) guidelines.
							   
		virtual void CleanUpMetadata (dng_host &host,
									  dng_metadata &metadata,
									  dng_metadata_subset metadataSubset,
									  const char *dstMIME,
									  const char *software = NULL);
		
	protected:

		virtual void UpdateExifColorSpaceTag (dng_metadata &metadata,
											  const void *profileData,
											  const uint32 profileSize);
	
		virtual uint32 CompressedBufferSize (const dng_ifd &ifd,
											 uint32 uncompressedSize);
											 
		virtual void EncodePredictor (dng_host &host,
									  const dng_ifd &ifd,
									  dng_pixel_buffer &buffer,
									  AutoPtr<dng_memory_block> &tempBuffer);
									  
		virtual void ByteSwapBuffer (dng_host &host,
									 dng_pixel_buffer &buffer);
									 
		void ReorderSubTileBlocks (const dng_ifd &ifd,
								   dng_pixel_buffer &buffer,
								   AutoPtr<dng_memory_block> &uncompressedBuffer,
								   AutoPtr<dng_memory_block> &subTileBlockBuffer);
							
		virtual void WriteData (dng_host &host,
								const dng_ifd &ifd,
								dng_stream &stream,
								dng_pixel_buffer &buffer,
								AutoPtr<dng_memory_block> &compressedBuffer,
								bool usingMultipleThreads);
								
		virtual void WriteTile (dng_host &host,
								const dng_ifd &ifd,
								dng_stream &stream,
								const dng_image &image,
								const dng_rect &tileArea,
								uint32 fakeChannels,
								AutoPtr<dng_memory_block> &compressedBuffer,
								AutoPtr<dng_memory_block> &uncompressedBuffer,
								AutoPtr<dng_memory_block> &subTileBlockBuffer,
								AutoPtr<dng_memory_block> &tempBuffer,
								bool usingMultipleThreads);
	
		virtual void DoWriteTiles (dng_host &host,
								   const dng_ifd &ifd,
								   dng_basic_tag_set &basic,
								   dng_stream &stream,
								   const dng_image &image,
								   uint32 fakeChannels,
								   uint32 tilesDown,
								   uint32 tilesAcross,
								   uint32 compressedSize,
								   const dng_safe_uint32 &uncompressedSize,
								   dng_fingerprint *outDigest);

	};

/*****************************************************************************/

class dng_write_tiles_task : public dng_area_task,
							 private dng_uncopyable
	{
	
	protected:
	
		dng_image_writer &fImageWriter;
		
		dng_host &fHost;
		
		const dng_ifd &fIFD;
		
		dng_basic_tag_set &fBasic;
		
		dng_stream &fStream;
		
		const dng_image &fImage;
		
		uint32 fFakeChannels;
		
		uint32 fTilesDown;
		
		uint32 fTilesAcross;

		uint32 fTileCount;
		
		uint32 fCompressedSize;
		
		uint32 fUncompressedSize;
		
		std::atomic_uint fNextTileIndex;
		
		dng_mutex fMutex;
		
		dng_condition fCondition;
		
		bool fTaskFailed;

		uint32 fWriteTileIndex;

		const bool fNeedDigest;

		mutable dng_md5_direct_printer fOverallPrinter;
		
	public:
	
		dng_write_tiles_task (dng_image_writer &imageWriter,
							  dng_host &host,
							  const dng_ifd &ifd,
							  dng_basic_tag_set &basic,
							  dng_stream &stream,
							  const dng_image &image,
							  uint32 fakeChannels,
							  uint32 tilesDown,
							  uint32 tilesAcross,
							  uint32 compressedSize,
							  uint32 uncompressedSize,
							  bool needDigest);

		void Process (uint32 threadIndex,
					  const dng_rect &tile,
					  dng_abort_sniffer *sniffer);

		const dng_fingerprint & ResultDigest () const;

	protected:

		void ProcessTask (uint32 tileIndex,
						  AutoPtr<dng_memory_block> &compressedBuffer,
						  AutoPtr<dng_memory_block> &uncompressedBuffer,
						  AutoPtr<dng_memory_block> &subTileBlockBuffer,
						  AutoPtr<dng_memory_block> &tempBuffer,
						  uint32 &tileByteCount, // output
						  dng_memory_stream &tileStream, // output
						  dng_abort_sniffer *sniffer);

		void WriteTask (uint32 tileIndex,
						uint32 tileByteCount,
						dng_memory_stream &tileStream,
						dng_abort_sniffer *sniffer);
		
	};
	
/*****************************************************************************/

#endif
	
/*****************************************************************************/
