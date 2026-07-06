/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_ifd.h"

#include "dng_big_table.h"
#include "dng_exceptions.h"
#include "dng_flags.h"
#include "dng_gain_map.h"
#include "dng_globals.h"
#include "dng_host.h"
#include "dng_ifd.h"
#include "dng_types.h"
#include "dng_parse_utils.h"
#include "dng_read_image.h"
#include "dng_stream.h"
#include "dng_tag_codes.h"
#include "dng_tag_types.h"
#include "dng_tag_values.h"
#include "dng_utils.h"

/*****************************************************************************/

dng_preview_info::dng_preview_info ()
	
	:	fIsPrimary			(true)
	,	fApplicationName	()
	,	fApplicationVersion ()
	,	fSettingsName		()
	,	fSettingsDigest		()
	,	fColorSpace			(previewColorSpace_MaxEnum)
	,	fDateTime			()
	,	fRawToPreviewGain	(1.0)
	,	fCacheVersion		(0)
	
	{
	
	}

/*****************************************************************************/

dng_preview_info::~dng_preview_info ()
	{
	
	}

/*****************************************************************************/

dng_ifd::dng_ifd ()

	:	fUsesNewSubFileType (false)
	,	fNewSubFileType		(0)

	,	fImageWidth	 (0)
	,	fImageLength (0)

	,	fCompression (ccUncompressed)
	,	fPredictor	 (cpNullPredictor)

	,	fPhotometricInterpretation (0xFFFFFFFF)

	,	fFillOrder (1)

	,	fOrientation		  (0)
	,	fOrientationType	  (0)
	,	fOrientationOffset	  (kDNGStreamInvalidOffset)
	,	fOrientationBigEndian (false)

	,	fSamplesPerPixel (1)

	,	fPlanarConfiguration (pcInterleaved)

	,	fXResolution	(0.0)
	,	fYResolution	(0.0)
	,	fResolutionUnit (0)
		
	,	fUsesStrips (false)
	,	fUsesTiles	(false)
	
	,	fTileWidth	(0)
	,	fTileLength (0)
	
	,	fTileOffsetsType   (0)
	,	fTileOffsetsCount  (0)
	,	fTileOffsetsOffset (0)
	
	,	fTileByteCountsType	  (0)
	,	fTileByteCountsCount  (0)
	,	fTileByteCountsOffset (0)
	
	,	fSubIFDsType   (0)
	,	fSubIFDsCount  (0)
	,	fSubIFDsOffset (0)
	
	,	fExtraSamplesCount (0)
	
	,	fJPEGTablesCount  (0)
	,	fJPEGTablesOffset (0)
		
	,	fJPEGInterchangeFormat		 (0)
	,	fJPEGInterchangeFormatLength (0)

	,	fYCbCrCoefficientR (0.0)
	,	fYCbCrCoefficientG (0.0)
	,	fYCbCrCoefficientB (0.0)
	
	,	fYCbCrSubSampleH (0)
	,	fYCbCrSubSampleV (0)
	
	,	fYCbCrPositioning (0)
	
	,	fCFARepeatPatternRows (0)
	,	fCFARepeatPatternCols (0)
	
	,	fCFALayout (1)
	
	,	fLinearizationTableType	  (0)
	,	fLinearizationTableCount  (0)
	,	fLinearizationTableOffset (0)

	,	fBlackLevelRepeatRows (1)
	,	fBlackLevelRepeatCols (1)
	
	,	fBlackLevelDeltaHType	(0)
	,	fBlackLevelDeltaHCount	(0)
	,	fBlackLevelDeltaHOffset (0)

	,	fBlackLevelDeltaVType	(0)
	,	fBlackLevelDeltaVCount	(0)
	,	fBlackLevelDeltaVOffset (0)
	
	,	fDefaultScaleH (1, 1)
	,	fDefaultScaleV (1, 1)
	
	,	fBestQualityScale (1, 1)
	
	,	fDefaultCropOriginH (0, 1)
	,	fDefaultCropOriginV (0, 1)
	
	,	fDefaultCropSizeH ()
	,	fDefaultCropSizeV ()
	
	,	fDefaultUserCropT (0, 1)
	,	fDefaultUserCropL (0, 1)
	,	fDefaultUserCropB (1, 1)
	,	fDefaultUserCropR (1, 1)
	
	,	fBayerGreenSplit (0)
	
	,	fChromaBlurRadius ()
	
	,	fAntiAliasStrength (1, 1)
	
	,	fActiveArea ()
	
	,	fMaskedAreaCount (0)
	
	,	fRowInterleaveFactor (1)
	,	fColumnInterleaveFactor (1)
	
	,	fSubTileBlockRows (1)
	,	fSubTileBlockCols (1)
	
	,	fPreviewInfo ()
	
	,	fOpcodeList1Count  (0)
	,	fOpcodeList1Offset (0)
	
	,	fOpcodeList2Count  (0)
	,	fOpcodeList2Offset (0)
	
	,	fOpcodeList3Count  (0)
	,	fOpcodeList3Offset (0)

	,	fNoiseProfile ()

	,	fEnhanceParams ()

	,	fBaselineSharpness (0, 0)

	,	fNoiseReductionApplied (0, 0)

	,	fLosslessJPEGBug16 (false)
	
	,	fSampleBitShift (0)
		
	,	fThisIFD (0)
	,	fNextIFD (0)
	
	,	fCompressionQuality (-1)
	
	,	fPatchFirstJPEGByte (false)

	{
	
	uint32 j;
	uint32 k;
	uint32 n;
	
	for (j = 0; j < kMaxSamplesPerPixel; j++)
		{
		fBitsPerSample [j] = 0;
		}
	
	for (j = 0; j < kMaxTileInfo; j++)
		{
		fTileOffset	   [j] = 0;
		fTileByteCount [j] = 0;
		}
	
	for (j = 0; j < kMaxSamplesPerPixel; j++)
		{
		fExtraSamples [j] = esUnspecified;
		}
	
	for (j = 0; j < kMaxSamplesPerPixel; j++)
		{
		fSampleFormat [j] = sfUnsignedInteger;
		}
		
	for (j = 0; j < 6; j++)
		{
		fReferenceBlackWhite [j] = 0.0;
		}
	
	for (j = 0; j < kMaxCFAPattern; j++)
		for (k = 0; k < kMaxCFAPattern; k++)
			{
			fCFAPattern [j] [k] = 255;
			}
			
	for (j = 0; j < kMaxColorPlanes; j++)
		{
		fCFAPlaneColor [j] = (uint8) (j < 3 ? j : 255);
		}
		
	for (j = 0; j < kMaxBlackPattern; j++)
		for (k = 0; k < kMaxBlackPattern; k++)
			for (n = 0; n < kMaxColorPlanes; n++)
				{
				fBlackLevel [j] [k] [n] = 0.0;
				}
			
	for (j = 0; j < kMaxColorPlanes; j++)
		{
		fWhiteLevel [j] = -1.0;		// Don't know real default yet.
		}

	memset (fMaskSubArea, 0, sizeof (fMaskSubArea));
	
	}
	
/*****************************************************************************/

dng_ifd::~dng_ifd ()
	{
	
	}
	
/*****************************************************************************/

dng_ifd * dng_ifd::Clone () const
	{
	
	return new dng_ifd (*this);
	
	}

/*****************************************************************************/

// Parses tags that should only appear in IFDs that contain images.

bool dng_ifd::ParseTag (dng_host &host,
						dng_stream &stream,
						uint32 parentCode,
						uint32 tagCode,
						uint32 tagType,
						uint32 tagCount,
						uint64 tagOffset)
	{

	uint32 j;
	uint32 k;
	uint32 n;
	
	switch (tagCode)
		{
		
		case tcNewSubFileType:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fUsesNewSubFileType = true;
			
			fNewSubFileType = stream.TagValue_uint32 (tagType);
			
			fPreviewInfo.fIsPrimary = (fNewSubFileType == sfPreviewImage);
			
			if (fNewSubFileType == sfEnhancedImage)
				{
				
				// Enhanced IFDs different defaults for some tags.
				
				fDefaultScaleH.Clear ();
				fDefaultScaleV.Clear ();
				
				fBestQualityScale.Clear ();
				
				fDefaultCropOriginH.Clear ();
				fDefaultCropOriginV.Clear ();
				
				}
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("NewSubFileType: %s\n",
						LookupNewSubFileType (fNewSubFileType));

				}
				
			#endif
				
			break;
			
			}

		case tcImageWidth:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fImageWidth = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("ImageWidth: %u\n", (unsigned) fImageWidth);
				}
				
			#endif
				
			break;
			
			}
		
		case tcImageLength:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fImageLength = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("ImageLength: %u\n", (unsigned) fImageLength);
				}
				
			#endif
				
			break;
			
			}
				
		case tcBitsPerSample:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 1, 0x0FFFF))
				return false;
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("BitsPerSample:");
				}
				
			#endif
			
			bool extrasMatch = true;
			
			for (j = 0; j < tagCount; j++)
				{
				
				uint32 x = stream.TagValue_uint32 (tagType);
				
				const uint32 maxBitsPerSample = 32;
				
				if (j < kMaxSamplesPerPixel)
					{

					if (x > maxBitsPerSample)
						{
						//ThrowBadFormat ("BitsPerSample out of bounds");
						DNG_REPORT ("BitsPerSample > 32");
						x = maxBitsPerSample;
						}
						
					fBitsPerSample [j] = x;

					}
					
				else if (x != fBitsPerSample [kMaxSamplesPerPixel - 1])
					{
					extrasMatch = false;
					}
					
				#if qDNGValidate
			
				if (gVerbose)
					{
					printf (" %u", (unsigned) x);
					}
					
				#endif
				
				}
					
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("\n");
				}
				
			#endif
			
			if (!extrasMatch)
				{
				
				#if qDNGValidate
			
				ReportError ("BitsPerSample not constant");
				
				#endif

				ThrowBadFormat ();
				
				}
			
			break;
			
			}
				
		case tcCompression:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fCompression = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("Compression: %s\n",
						LookupCompression (fCompression));
						
				}
				
			#endif
	
			// Correct a common TIFF writer mistake.
			
			if (fCompression == 0)
				{
				
				#if qDNGValidate
				
					{
						
					char message [256];
					
					snprintf (message,
							  256,
							  "%s has invalid zero compression code",
							  LookupParentCode (parentCode));
							 
					ReportWarning (message);
								 
					}
				
				#endif
				
				fCompression = ccUncompressed;
				
				}
				
			break;
			
			}
				
		case tcPhotometricInterpretation:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fPhotometricInterpretation = stream.TagValue_uint32 (tagType);
							
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("PhotometricInterpretation: %s\n",
						LookupPhotometricInterpretation (fPhotometricInterpretation));
				
				}
				
			#endif
				
			break;
			
			}
				
		case tcFillOrder:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fFillOrder = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("FillOrder: %u\n", (unsigned) fFillOrder);
				}
				
			#endif
			
			break;
			
			}

		case tcStripOffsets:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong, ttLong8);
			
			fUsesStrips = true;
			
			fTileOffsetsType   = tagType;
			fTileOffsetsCount  = tagCount;
			fTileOffsetsOffset = tagOffset;
			
			if (tagCount <= kMaxTileInfo)
				{
				
				for (j = 0; j < tagCount; j++)
					{
				
					fTileOffset [j] = stream.TagValue_uint64 (tagType);
					
					}
					
				}
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				stream.SetReadPosition (tagOffset);
				
				DumpTagValues (stream,
							   "Offset",
							   parentCode,
							   tagCode,
							   tagType,
							   tagCount);

				}
				
			#endif
			
			break;
			
			}
				
		case tcOrientation:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fOrientationType	  = tagType;
			fOrientationOffset	  = stream.PositionInOriginalFile ();
			fOrientationBigEndian = stream.BigEndian ();
			
			fOrientation = stream.TagValue_uint32 (tagType);
				
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("Orientation: %s\n",
						LookupOrientation (fOrientation));
				
				}
				
			#endif
				
			break;
			
			}
				
		case tcSamplesPerPixel:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fSamplesPerPixel = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("SamplesPerPixel: %u\n", (unsigned) fSamplesPerPixel);
				}
				
			#endif

			break;
			
			}

		case tcRowsPerStrip:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fUsesStrips = true;
			
			fTileLength = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("RowsPerStrip: %u\n", (unsigned) fTileLength);
				}
				
			#endif

			break;
			
			}
				
		case tcStripByteCounts:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong, ttLong8);
			
			fUsesStrips = true;
			
			fTileByteCountsType	  = tagType;
			fTileByteCountsCount  = tagCount;
			fTileByteCountsOffset = tagOffset;
			
			if (tagCount <= kMaxTileInfo)
				{

				for (j = 0; j < tagCount; j++)
					{
				
					fTileByteCount [j] = stream.TagValue_uint64 (tagType);

					}
					
				}
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				stream.SetReadPosition (tagOffset);
				
				DumpTagValues (stream,
							   "Count",
							   parentCode,
							   tagCode,
							   tagType,
							   tagCount);
							   
				stream.SetReadPosition (tagOffset);
				
				uint64 totalCount = 0ULL;
				
				for (j = 0; j < tagCount; j++)
					totalCount += stream.TagValue_uint64 (tagType);

				printf ("TotalByteCount %u: %llu\n",
						(unsigned) fNewSubFileType,
						(unsigned long long) totalCount);
					
				}
				
			#endif

			break;
			
			}
				
		case tcXResolution:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fXResolution = stream.TagValue_real64 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("XResolution: %0.2f\n", fXResolution);
				}
				
			#endif
			
			break;
			
			}
			
		case tcYResolution:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fYResolution = stream.TagValue_real64 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("YResolution: %0.2f\n", fYResolution);
				}
				
			#endif
				
			break;
			
			}
				
		case tcPlanarConfiguration:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fPlanarConfiguration = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("PlanarConfiguration: %u\n", (unsigned) fPlanarConfiguration);
				}
			
			#endif
				
			break;
			
			}

		case tcResolutionUnit:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fResolutionUnit = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("ResolutionUnit: %s\n",
						LookupResolutionUnit (fResolutionUnit));
				
				}
				
			#endif
				
			break;
			
			}
				
		case tcPredictor:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fPredictor = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("Predictor: %s\n",
						LookupPredictor (fPredictor));
						
				}
				
			#endif
				
			break;
			
			}
				
		case tcTileWidth:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fUsesTiles = true;
			
			fTileWidth = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("TileWidth: %u\n", (unsigned) fTileWidth);
				}
			
			#endif
				
			break;
			
			}
			
		case tcTileLength:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fUsesTiles = true;
			
			fTileLength = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("TileLength: %u\n", (unsigned) fTileLength);
				}
				
			#endif
			
			break;
			
			}
			
		case tcTileOffsets:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong, ttLong8);
			
			fUsesTiles = true;
			
			fTileOffsetsType   = tagType;
			fTileOffsetsCount  = tagCount;
			fTileOffsetsOffset = tagOffset;
			
			if (tagCount <= kMaxTileInfo)
				{
				
				for (j = 0; j < tagCount; j++)
					{
				
					fTileOffset [j] = stream.TagValue_uint64 (tagType);
					
					}
					
				}
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				stream.SetReadPosition (tagOffset);
				
				DumpTagValues (stream,
							   "Offset",
							   parentCode,
							   tagCode,
							   tagType,
							   tagCount);
							   
				}
				
			#endif
			
			break;
			
			}
			
		case tcTileByteCounts:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong, ttLong8);
			
			fUsesTiles = true;
			
			fTileByteCountsType	  = tagType;
			fTileByteCountsCount  = tagCount;
			fTileByteCountsOffset = tagOffset;
			
			if (tagCount <= kMaxTileInfo)
				{
				
				for (j = 0; j < tagCount; j++)
					{
				
					fTileByteCount [j] = stream.TagValue_uint64 (tagType);
					
					}
					
				}
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				stream.SetReadPosition (tagOffset);
				
				DumpTagValues (stream,
							   "Count",
							   parentCode,
							   tagCode,
							   tagType,
							   tagCount);
							   
				stream.SetReadPosition (tagOffset);
				
				uint64 totalCount = 0ULL;
				
				for (j = 0; j < tagCount; j++)
					totalCount += stream.TagValue_uint64 (tagType);

				printf ("TotalByteCount %u: %llu\n",
						(unsigned) fNewSubFileType,
						(unsigned long long) totalCount);
					
				}
				
			#endif
			
			break;
			
			}
				
		case tcSubIFDs:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong, ttIFD, ttLong8, ttIFD8);
			
			fSubIFDsType   = tagType;
			fSubIFDsCount  = tagCount;
			fSubIFDsOffset = tagOffset;
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				DumpTagValues (stream,
							   "IFD",
							   parentCode,
							   tagCode,
							   tagType,
							   tagCount);
				
				}
				
			#endif
			
			break;
			
			}
				
		case tcExtraSamples:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 1, fSamplesPerPixel))
				return false;
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("ExtraSamples:");
				}
				
			#endif
			
			fExtraSamplesCount = tagCount;
			
			for (j = 0; j < tagCount; j++)
				{
				
				uint32 x = stream.TagValue_uint32 (tagType);
				
				if (j < kMaxSamplesPerPixel)
					{
					fExtraSamples [j] = x;
					}
					
				#if qDNGValidate
			
				if (gVerbose)
					{
					printf (" %u", (unsigned) x);
					}
					
				#endif
				
				}
					
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("\n");
				}
				
			#endif
			
			break;
			
			}
				
		case tcSampleFormat:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, fSamplesPerPixel))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("SampleFormat:");
				}
				
			#endif
			
			bool extrasMatch = true;
			
			for (j = 0; j < tagCount; j++)
				{
				
				uint32 x = stream.TagValue_uint32 (tagType);
				
				if (j < kMaxSamplesPerPixel)
					{
					fSampleFormat [j] = x;
					}
					
				else if (x != fSampleFormat [kMaxSamplesPerPixel - 1])
					{
					extrasMatch = false;
					}
					
				#if qDNGValidate
			
				if (gVerbose)
					{
					printf (" %s", LookupSampleFormat (x));
					}
					
				#endif
				
				}
					
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("\n");
				}
				
			#endif
			
			if (!extrasMatch)
				{
				
				#if qDNGValidate
				
				ReportError ("SampleFormat not constant");
			
				#endif
				
				ThrowBadFormat ();
				
				}
			
			break;
			
			}
				
		case tcJPEGTables:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttUndefined);

			const uint32 kMaxJPEGTablesBytes = 64u * 1024u * 1024u;

			if (tagCount > kMaxJPEGTablesBytes)
				{
				ThrowBadFormat ("JPEGTables tag too large");
				}
			
			fJPEGTablesCount  = tagCount;
			fJPEGTablesOffset = tagOffset;
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("JPEGTables: count = %u, offset = %u\n",
						(unsigned) fJPEGTablesCount,
						(unsigned) fJPEGTablesOffset);
						
				}
				
			#endif
			
			break;
			
			}
			
		case tcJPEGInterchangeFormat:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fJPEGInterchangeFormat = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("JPEGInterchangeFormat: %u\n",
						(unsigned) fJPEGInterchangeFormat);
				}
				
			#endif
			
			break;
			
			}
			
		case tcJPEGInterchangeFormatLength:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fJPEGInterchangeFormatLength = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("JPEGInterchangeFormatLength: %u\n",
						(unsigned) fJPEGInterchangeFormatLength);
				}
				
			#endif
			
			break;
			
			}
			
		case tcYCbCrCoefficients:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 3))
				{
				return false;
				}
			
			fYCbCrCoefficientR = stream.TagValue_real64 (tagType);
			fYCbCrCoefficientG = stream.TagValue_real64 (tagType);
			fYCbCrCoefficientB = stream.TagValue_real64 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("YCbCrCoefficients: R = %0.3f, G = %0.3f, B = %0.3f\n",
						fYCbCrCoefficientR,
						fYCbCrCoefficientG,
						fYCbCrCoefficientB);
						
				}
				
			#endif
			
			break;
			
			}

		case tcYCbCrSubSampling:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				{
				return false;
				}
			
			fYCbCrSubSampleH = stream.TagValue_uint32 (tagType);
			fYCbCrSubSampleV = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("YCbCrSubSampling: H = %u, V = %u\n",
						(unsigned) fYCbCrSubSampleH,
						(unsigned) fYCbCrSubSampleV);
						
				}
				
			#endif
			
			break;
			
			}
			
		case tcYCbCrPositioning:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fYCbCrPositioning = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("YCbCrPositioning: %u\n",
						(unsigned) fYCbCrPositioning);
						
				}
				
			#endif
			
			break;
			
			}

		case tcReferenceBlackWhite:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 6))
				{
				return false;
				}
			
			for (j = 0; j < 6; j++)
				{
				fReferenceBlackWhite [j] = stream.TagValue_real64 (tagType);
				}
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("ReferenceBlackWhite: %0.1f %0.1f %0.1f %0.1f %0.1f %0.1f\n",
						fReferenceBlackWhite [0],
						fReferenceBlackWhite [1],
						fReferenceBlackWhite [2],
						fReferenceBlackWhite [3],
						fReferenceBlackWhite [4],
						fReferenceBlackWhite [5]);

				}
				
			#endif
			
			break;
			
			}
			
		case tcCFARepeatPatternDim:
			{
			
			CheckCFA (parentCode, tagCode, fPhotometricInterpretation);

			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				{
				return false;
				}
			
			fCFARepeatPatternRows = stream.TagValue_uint32 (tagType);
			fCFARepeatPatternCols = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("CFARepeatPatternDim: Rows = %u, Cols = %u\n",
						(unsigned) fCFARepeatPatternRows,
						(unsigned) fCFARepeatPatternCols);
				
				}
				
			#endif
				
			break;
		
			}
			
		case tcCFAPattern:
			{
			
			CheckCFA (parentCode, tagCode, fPhotometricInterpretation);

			if (!CheckTagType (parentCode, tagCode, tagType, ttByte))
				{
				return false;
				}
			
			if (!CheckTagCount (parentCode,
								tagCode,
								tagCount,
								SafeUint32Mult (fCFARepeatPatternRows,
												fCFARepeatPatternCols)))
				{
				return false;
				}
				
			if (fCFARepeatPatternRows < 1 || fCFARepeatPatternRows > kMaxCFAPattern ||
				fCFARepeatPatternCols < 1 || fCFARepeatPatternCols > kMaxCFAPattern)
				{
				return false;
				}
				
			// Note that the Exif spec stores this array in a different
			// scan order than the TIFF-EP spec.
			
			for (j = 0; j < fCFARepeatPatternRows; j++)
				for (k = 0; k < fCFARepeatPatternCols; k++)
					{
					
					fCFAPattern [j] [k] = stream.Get_uint8 ();
					
					}
					
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("CFAPattern:\n");
				
				for (j = 0; j < fCFARepeatPatternRows; j++)
					{
					
					int32 spaces = 4;
					
					for (k = 0; k < fCFARepeatPatternCols; k++)
						{
						
						while (spaces-- > 0)
							{
							printf (" ");
							}
							
						const char *name = LookupCFAColor (fCFAPattern [j] [k]);
						
						spaces = 9 - (int32) strlen (name);
						
						printf ("%s", name);
						
						}
						
					printf ("\n");
					
					}
					
				}
				
			#endif
			
			break;
			
			}
			
		case tcCFAPlaneColor:
			{
			
			CheckCFA (parentCode, tagCode, fPhotometricInterpretation);

			if (!CheckTagType (parentCode, tagCode, tagType, ttByte))
				{
				return false;
				}
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 3, kMaxColorPlanes))
				{
				return false;
				}
				
			for (j = 0; j < kMaxColorPlanes; j++)
				{
				
				if (j < tagCount)
					fCFAPlaneColor [j] = stream.Get_uint8 ();
					
				else
					fCFAPlaneColor [j] = 255;
					
				}
				
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("CFAPlaneColor:");
				
				for (j = 0; j < tagCount; j++)
					{
					
					printf (" %s", LookupCFAColor (fCFAPlaneColor [j]));
					
					}
					
				printf ("\n");
				
				}
				
			#endif
				
			break;
			
			}
				
		case tcCFALayout:
			{
			
			CheckCFA (parentCode, tagCode, fPhotometricInterpretation);

			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fCFALayout = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("CFALayout: %s\n",
						LookupCFALayout (fCFALayout));
				
				}
				
			#endif
				
			break;
			
			}
				
		case tcLinearizationTable:
			{
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);

			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			fLinearizationTableType	  = tagType;
			fLinearizationTableCount  = tagCount;
			fLinearizationTableOffset = tagOffset;
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				DumpTagValues (stream,
							   "Table",
							   parentCode,
							   tagCode,
							   tagType,
							   tagCount);

				}
				
			#endif
			
			break;
			
			}
				
		case tcBlackLevelRepeatDim:
			{

			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);

			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				{
				return false;
				}
			
			fBlackLevelRepeatRows = stream.TagValue_uint32 (tagType);
			fBlackLevelRepeatCols = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("BlackLevelRepeatDim: Rows = %u, Cols = %u\n",
						(unsigned) fBlackLevelRepeatRows,
						(unsigned) fBlackLevelRepeatCols);
				
				}
				
			#endif
				
			break;
		
			}
			
		case tcBlackLevel:
			{
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);

			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong, ttRational);

			if (!CheckTagCount (parentCode,
								tagCode,
								tagCount,
								SafeUint32Mult (fBlackLevelRepeatRows,
												fBlackLevelRepeatCols,
												fSamplesPerPixel)))
				{
				return false;
				}
			
			if (fBlackLevelRepeatRows < 1 || fBlackLevelRepeatRows > kMaxBlackPattern	||
				fBlackLevelRepeatCols < 1 || fBlackLevelRepeatCols > kMaxBlackPattern	||
				fSamplesPerPixel	  < 1 || fSamplesPerPixel	   > kMaxColorPlanes)
				{
				return false;
				}
				
			for (j = 0; j < fBlackLevelRepeatRows; j++)
				for (k = 0; k < fBlackLevelRepeatCols; k++)
					for (n = 0; n < fSamplesPerPixel; n++)
						{
						
						fBlackLevel [j] [k] [n] = stream.TagValue_real64 (tagType);
						
						}
						
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("BlackLevel:");
				
				if (fBlackLevelRepeatRows == 1 &&
					fBlackLevelRepeatCols == 1)
					{
					
					for (n = 0; n < fSamplesPerPixel; n++)
						{
						printf (" %0.2f", fBlackLevel [0] [0] [n]);
						}
						
					printf ("\n");
					
					}
					
				else
					{
					
					printf ("\n");
					
					for (n = 0; n < fSamplesPerPixel; n++)
						{
						
						if (fSamplesPerPixel > 1)
							{
							printf ("\tSample: %u\n", (unsigned) n);
							}
							
						for (j = 0; j < fBlackLevelRepeatRows; j++)
							{
							
							printf ("\t");
							
							for (k = 0; k < fBlackLevelRepeatCols; k++)
								{
								
								printf (" %8.2f", fBlackLevel [j] [k] [n]);
								
								}
								
							printf ("\n");
							
							}
						
						}
						
					}
				
				}
				
			#endif
				
			break;
			
			}

		case tcBlackLevelDeltaH:
			{
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);

			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			fBlackLevelDeltaHType	= tagType;
			fBlackLevelDeltaHCount	= tagCount;
			fBlackLevelDeltaHOffset = tagOffset;
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				DumpTagValues (stream,
							   "Delta",
							   parentCode,
							   tagCode,
							   tagType,
							   tagCount);

				}
				
			#endif
			
			break;
			
			}
				
		case tcBlackLevelDeltaV:
			{
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);

			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			fBlackLevelDeltaVType	= tagType;
			fBlackLevelDeltaVCount	= tagCount;
			fBlackLevelDeltaVOffset = tagOffset;
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				DumpTagValues (stream,
							   "Delta",
							   parentCode,
							   tagCode,
							   tagType,
							   tagCount);

				}
				
			#endif
			
			break;
			
			}
				
		case tcWhiteLevel:
			{
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);

			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, fSamplesPerPixel))
				return false;
				
			for (j = 0; j < tagCount && j < kMaxColorPlanes; j++)
				{

				fWhiteLevel [j] = stream.TagValue_real64 (tagType);

				}
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("WhiteLevel:");
				
				for (j = 0; j < tagCount && j < kMaxColorPlanes; j++)
					{

					printf (" %0.0f", fWhiteLevel [j]);

					}
					
				printf ("\n");
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcDefaultScale:
			{
			
			if (fNewSubFileType != sfEnhancedImage)
				{
				CheckMainIFD (parentCode, tagCode, fNewSubFileType);
				}
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				return false;
				
			fDefaultScaleH = stream.TagValue_urational (tagType);
			fDefaultScaleV = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("DefaultScale: H = %0.4f V = %0.4f\n",
						fDefaultScaleH.As_real64 (),
						fDefaultScaleV.As_real64 ());
						
				}
				
			#endif
			
			break;
			
			}
				
		case tcDefaultCropOrigin:
			{
			
			CheckMainOrEnhancedIFD (parentCode, tagCode, fNewSubFileType);
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong, ttRational);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				return false;
				
			fDefaultCropOriginH = stream.TagValue_urational (tagType);
			fDefaultCropOriginV = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("DefaultCropOrigin: H = %0.2f V = %0.2f\n",
						fDefaultCropOriginH.As_real64 (),
						fDefaultCropOriginV.As_real64 ());
						
				}
				
			#endif
			
			break;
			
			}
				
		case tcDefaultCropSize:
			{
			
			CheckMainOrEnhancedIFD (parentCode, tagCode, fNewSubFileType);
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong, ttRational);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				return false;
				
			fDefaultCropSizeH = stream.TagValue_urational (tagType);
			fDefaultCropSizeV = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("DefaultCropSize: H = %0.2f V = %0.2f\n",
						fDefaultCropSizeH.As_real64 (),
						fDefaultCropSizeV.As_real64 ());
						
				}
				
			#endif
			
			break;
			
			}
			
		case tcDefaultUserCrop:
			{
			
			CheckMainIFD (parentCode, tagCode, fNewSubFileType);
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 4))
				return false;
				
			fDefaultUserCropT = stream.TagValue_urational (tagType);
			fDefaultUserCropL = stream.TagValue_urational (tagType);
			fDefaultUserCropB = stream.TagValue_urational (tagType);
			fDefaultUserCropR = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("DefaultUserCrop: T = %0.2lf L = %0.2lf B = %0.2lf R = %0.2lf\n",
						(double) fDefaultUserCropT.As_real64 (),
						(double) fDefaultUserCropL.As_real64 (),
						(double) fDefaultUserCropB.As_real64 (),
						(double) fDefaultUserCropR.As_real64 ());
						
						
				}
				
			#endif	// qDNGValidate
			
			break;
			
			}
				
		case tcBayerGreenSplit:
			{
			
			CheckCFA (parentCode, tagCode, fPhotometricInterpretation);

			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fBayerGreenSplit = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				printf ("BayerGreenSplit: %u\n", (unsigned) fBayerGreenSplit);
				}
				
			#endif
				
			break;
			
			}
				
		case tcChromaBlurRadius:
			{
			
			CheckMainIFD (parentCode, tagCode, fNewSubFileType);
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
				
			fChromaBlurRadius = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("ChromaBlurRadius: %0.2f\n",
						fChromaBlurRadius.As_real64 ());
						
				}
				
			#endif
			
			break;
			
			}
				
		case tcAntiAliasStrength:
			{
			
			CheckMainIFD (parentCode, tagCode, fNewSubFileType);
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
				
			fAntiAliasStrength = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("AntiAliasStrength: %0.2f\n",
						fAntiAliasStrength.As_real64 ());
						
				}
				
			#endif
			
			break;
			
			}
				
		case tcBestQualityScale:
			{
			
			if (fNewSubFileType != sfEnhancedImage)
				{
				CheckMainIFD (parentCode, tagCode, fNewSubFileType);
				}
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
				
			fBestQualityScale = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("BestQualityScale: %0.4f\n",
						fBestQualityScale.As_real64 ());
						
				}
				
			#endif
			
			break;
			
			}
				
		case tcActiveArea:
			{
			
			CheckMainIFD (parentCode, tagCode, fNewSubFileType);
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 4))
				return false;
				
			fActiveArea.t = stream.TagValue_int32 (tagType);
			fActiveArea.l = stream.TagValue_int32 (tagType);
			fActiveArea.b = stream.TagValue_int32 (tagType);
			fActiveArea.r = stream.TagValue_int32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("ActiveArea: T = %d L = %d B = %d R = %d\n",
						(int) fActiveArea.t,
						(int) fActiveArea.l,
						(int) fActiveArea.b,
						(int) fActiveArea.r);
						
				}
				
			#endif
			
			break;
			
			}
				
		case tcMaskedAreas:
			{
			
			CheckMainIFD (parentCode, tagCode, fNewSubFileType);
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			uint32 rect_count = tagCount / 4;
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, rect_count * 4))
				return false;
				
			fMaskedAreaCount = rect_count;
				
			if (fMaskedAreaCount > kMaxMaskedAreas)
				fMaskedAreaCount = kMaxMaskedAreas;
				
			for (j = 0; j < fMaskedAreaCount; j++)
				{
				
				fMaskedArea [j].t = stream.TagValue_int32 (tagType);
				fMaskedArea [j].l = stream.TagValue_int32 (tagType);
				fMaskedArea [j].b = stream.TagValue_int32 (tagType);
				fMaskedArea [j].r = stream.TagValue_int32 (tagType);
				
				}
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("MaskedAreas: %u\n", (unsigned) fMaskedAreaCount);
				
				for (j = 0; j < fMaskedAreaCount; j++)
					{
				
					printf ("\tArea [%u]: T = %d L = %d B = %d R = %d\n",
							(unsigned) j,
							(int) fMaskedArea [j].t,
							(int) fMaskedArea [j].l,
							(int) fMaskedArea [j].b,
							(int) fMaskedArea [j].r);
							
					}
						
				}
				
			#endif
			
			break;
			
			}
			
		case tcPreviewApplicationName:
			{

			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fPreviewInfo.fApplicationName,
							false);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("PreviewApplicationName: ");
				
				DumpString (fPreviewInfo.fApplicationName);
				
				printf ("\n");
				
				}

			#endif
			
			break;
			
			}
				
		case tcPreviewApplicationVersion:
			{

			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fPreviewInfo.fApplicationVersion,
							false);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("PreviewApplicationVersion: ");
				
				DumpString (fPreviewInfo.fApplicationVersion);
				
				printf ("\n");
				
				}

			#endif
			
			break;
			
			}
				
		case tcPreviewSettingsName:
			{

			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fPreviewInfo.fSettingsName,
							false);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("PreviewSettingsName: ");
				
				DumpString (fPreviewInfo.fSettingsName);
				
				printf ("\n");
				
				}

			#endif
			
			break;
			
			}
				
		case tcPreviewSettingsDigest:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttByte))
				return false;
				
			if (!CheckTagCount (parentCode, tagCode, tagCount, 16))
				return false;
				
			stream.Get (fPreviewInfo.fSettingsDigest);
				
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("PreviewSettingsDigest: ");
				
				DumpFingerprint (fPreviewInfo.fSettingsDigest);
									
				printf ("\n");
				
				}
				
			#endif
				
			break;
			
			}
				
		case tcPreviewColorSpace:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong);
				
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fPreviewInfo.fColorSpace = (PreviewColorSpaceEnum)
									   stream.TagValue_uint32 (tagType);
				
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("PreviewColorSpace: %s\n",
						LookupPreviewColorSpace ((uint32) fPreviewInfo.fColorSpace));
				
				}
				
			#endif
				
			break;
			
			}
				
		case tcPreviewDateTime:
			{

			CheckTagType (parentCode, tagCode, tagType, ttAscii);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fPreviewInfo.fDateTime,
							false);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("PreviewDateTime: ");
				
				DumpString (fPreviewInfo.fDateTime);
				
				printf ("\n");
				
				}

			#endif
			
			break;
			
			}
				
		case tcRowInterleaveFactor:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 1))
				return false;
			
			fRowInterleaveFactor = stream.TagValue_uint32 (tagType);

			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("RowInterleaveFactor: %u\n",
						(unsigned) fRowInterleaveFactor);
				
				}

			#endif
			
			break;
			
			}

		case tcColumnInterleaveFactor:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 1))
				return false;
			
			fColumnInterleaveFactor = stream.TagValue_uint32 (tagType);

			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("ColumnInterleaveFactor: %u\n",
						(unsigned) fColumnInterleaveFactor);
				
				}

			#endif
			
			break;
			
			}

		case tcSubTileBlockSize:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				return false;
			
			fSubTileBlockRows = stream.TagValue_uint32 (tagType);
			fSubTileBlockCols = stream.TagValue_uint32 (tagType);

			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("SubTileBlockSize: rows = %u, cols = %u\n",
						(unsigned) fSubTileBlockRows,
						(unsigned) fSubTileBlockCols);
				
				}

			#endif
			
			break;
			
			}
			
		case tcOpcodeList1:
			{
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);
			
			CheckTagType (parentCode, tagCode, tagType, ttUndefined);
			
			fOpcodeList1Count  = tagCount;
			fOpcodeList1Offset = tagOffset;
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("OpcodeList1: count = %u, offset = %u\n",
						(unsigned) fOpcodeList1Count,
						(unsigned) fOpcodeList1Offset);
				
				}

			#endif
			
			break;
			
			}
				
		case tcOpcodeList2:
			{
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);
			
			CheckTagType (parentCode, tagCode, tagType, ttUndefined);
			
			fOpcodeList2Count  = tagCount;
			fOpcodeList2Offset = tagOffset;
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("OpcodeList2: count = %u, offset = %u\n",
						(unsigned) fOpcodeList2Count,
						(unsigned) fOpcodeList2Offset);
				
				}

			#endif
			
			break;
			
			}
				
		case tcOpcodeList3:
			{
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);
			
			CheckTagType (parentCode, tagCode, tagType, ttUndefined);
			
			fOpcodeList3Count  = tagCount;
			fOpcodeList3Offset = tagOffset;
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("OpcodeList3: count = %u, offset = %u\n",
						(unsigned) fOpcodeList3Count,
						(unsigned) fOpcodeList3Offset);
				
				}

			#endif
			
			break;
			
			}
			
		case tcRawToPreviewGain:
			{
			
			#if qDNGValidate
						
			if (fNewSubFileType != sfPreviewImage)
				{
						
				char message [256];
				
				snprintf (message,
						  256,
						  "%s %s is not allowed IFDs with NewSubFileType != PreviewImage",
						  LookupParentCode (parentCode),
						  LookupTagCode (parentCode, tagCode));
						 
				ReportWarning (message);
							 
				}
				
			#endif
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);
			
			CheckTagType (parentCode, tagCode, tagType, ttDouble);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 1))
				return false;
				
			fPreviewInfo.fRawToPreviewGain = stream.TagValue_real64 (tagType);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("RawToPreviewGain = %f\n",
						fPreviewInfo.fRawToPreviewGain);
				
				}

			#endif
			
			break;
			
			}

		case tcNoiseProfile:
			{

			if (!CheckTagType (parentCode, tagCode, tagType, ttDouble))
				return false;

			// This tag will be parsed even in non-raw IFDs (such as
			// thumbnails, previews, etc.) to support legacy DNGs that have
			// the tag in the wrong IFD, but we'll now issue a warning.
			// (Turn off the warning for IFD0 since we are writing it
			// there for backward compatibility).
			
			if (parentCode != 0)
				{

				CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);
	   
				}
			
			// Must be an even, positive number of doubles in a noise profile.
			
			if (!tagCount || (tagCount & 1))
				return false;

			// Determine number of planes (i.e., half the number of doubles).

			const uint32 numPlanes = Pin_uint32 (0, 
												 tagCount >> 1, 
												 kMaxColorPlanes);

			// Parse the noise function parameters.

			dng_std_vector<dng_noise_function> noiseFunctions;

			for (uint32 i = 0; i < numPlanes; i++)
				{

				const real64 scale	= stream.TagValue_real64 (tagType);
				const real64 offset = stream.TagValue_real64 (tagType);

				noiseFunctions.push_back (dng_noise_function (scale, offset));

				}

			// Store the noise profile.

			fNoiseProfile = dng_noise_profile (noiseFunctions);

			// Debug.

			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("NoiseProfile:\n");
				
				printf ("  Planes: %u\n", (unsigned) numPlanes);
					
				for (uint32 plane = 0; plane < numPlanes; plane++)
					{

					printf ("  Noise function for plane %u: scale = %.20lf, offset = %.20lf\n",
							(unsigned) plane,
							noiseFunctions [plane].Scale  (),
							noiseFunctions [plane].Offset ());

					}
				
				}

			#endif
			
			break;

			}
				
		case tcCacheVersion:
			{
			
			#if qDNGValidate
						
			if (fNewSubFileType != sfPreviewImage)
				{
						
				char message [256];
				
				snprintf (message,
						  256,
						  "%s %s is not allowed IFDs with NewSubFileType != PreviewImage",
						  LookupParentCode (parentCode),
						  LookupTagCode (parentCode, tagCode));
						 
				ReportWarning (message);
							 
				}
				
			#endif
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);
			
			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 1))
				return false;
				
			fPreviewInfo.fCacheVersion = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("CacheVersion = 0x%x\n",
						(unsigned) fPreviewInfo.fCacheVersion);
				
				}

			#endif
			
			break;
			
			}
   
		case tcEnhanceParams:
			{
			
			#if qDNGValidate
				
			if (fNewSubFileType != sfEnhancedImage)
				{
					
				char message [256];
				
				snprintf (message,
						  256,
						  "%s %s is not allowed IFDs with NewSubFileType != EnhancedImage",
						  LookupParentCode (parentCode),
						  LookupTagCode (parentCode, tagCode));
					
				ReportWarning (message);
					
				}
				
			#endif

			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fEnhanceParams,
							false);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("EnhanceParams: ");
				
				DumpString (fEnhanceParams);
				
				printf ("\n");
				
				}
				
			#endif
			
			break;

			}
		
		case tcBaselineSharpness:
			{
			
			if (fNewSubFileType != sfEnhancedImage)
				{
				return false;
				}

			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fBaselineSharpness = stream.TagValue_urational (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("BaselineSharpness (EnhancedImage): %0.2f\n",
						fBaselineSharpness.As_real64 ());
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcNoiseReductionApplied:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttRational))
				return false;
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 1))
				return false;
			
			// This tag will be parsed even in non-raw IFDs (such as
			// thumbnails, previews, etc.) to support legacy DNGs that have
			// the tag in the wrong IFD, but we'll now issue a warning.
			// (Turn off the warning for IFD0 since we are writing it
			// there for backward compatibility).
			
			if (parentCode != 0)
				{

				CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);
	   
				}
			
			fNoiseReductionApplied = stream.TagValue_urational (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("NoiseReductionApplied: %u/%u\n",
						(unsigned) fNoiseReductionApplied.n,
						(unsigned) fNoiseReductionApplied.d);
					
				}
				
			#endif
				
			break;
			
			}

		// ProfileGainTableMap is specified for Raw IFD.
		// 
		// ProfileGainTableMap2 is specified for IFD 0, but this implementation
		// supports reading the tag from Raw IFD, too.

		case tcProfileGainTableMap:
		case tcProfileGainTableMap2:
			{

			if (!CheckTagType (parentCode, tagCode, tagType, ttUndefined))
				return false;

			if (tagCode == tcProfileGainTableMap)
				CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);

			const bool useVersion2format = (tagCode == tcProfileGainTableMap2);

			std::shared_ptr<dng_gain_table_map> pgtm
				(dng_gain_table_map::GetStream (host,
												stream,
												useVersion2format,
												tagCount));

			// If both PGTM and PGTM2 tags are present, then the latter
			// supersedes the former.

			if (pgtm && (useVersion2format	   ||
						 !fProfileGainTableMap ||
						 fProfileGainTableMap_TagVersion == 1))
				{

				fProfileGainTableMap = pgtm;

				fProfileGainTableMap_TagVersion = useVersion2format ? 2 : 1;
				
				}

			#if qDNGValidate

			if (pgtm && gVerbose)
				{

				dng_md5_printer_le_stream printer;
				
				pgtm->AddDigest (printer);

				auto digest = printer.Result ();

				char str [2 * dng_fingerprint::kDNGFingerprintSize + 1];

				digest.ToUtf8HexString (str);

				printf ("%s (digest): %s\n", 
						useVersion2format ? "ProfileGainTableMap2"
										  : "ProfileGainTableMap",
						str);
				
				}

			#endif	// qDNGValidate
			
			if (stream.Position () > SafeUint64Add (tagOffset,
													(uint64) tagCount))
				{

				if (useVersion2format)
					ThrowBadFormat ("tcProfileGainTableMap2 parse error");

				else
					ThrowBadFormat ("tcProfileGainTableMap parse error");
				
				}
			
			break;
			
			}

		case tcSemanticName:
			{

			#if qDNGValidate
				
			if (fNewSubFileType != sfSemanticMask)
				{
					
				char message [256];
				
				snprintf (message,
						  256,
						  "%s %s is not allowed in IFDs with NewSubFileType != SemanticMask",
						  LookupParentCode (parentCode),
						  LookupTagCode (parentCode, tagCode));
					
				ReportWarning (message);
					
				}
				
			#endif

			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fSemanticName,
							false);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("SemanticName: ");
				
				DumpString (fSemanticName);
				
				printf ("\n");
				
				}
				
			#endif
			
			break;
			
			}

		case tcSemanticInstanceID:
			{

			#if qDNGValidate
				
			if (fNewSubFileType != sfSemanticMask)
				{
					
				char message [256];
				
				snprintf (message,
						  256,
						  "%s %s is not allowed in IFDs with NewSubFileType != SemanticMask",
						  LookupParentCode (parentCode),
						  LookupTagCode (parentCode, tagCode));
					
				ReportWarning (message);
					
				}
				
			#endif

			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fSemanticInstanceID,
							false);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("SemanticInstanceID: ");
				
				DumpString (fSemanticInstanceID);
				
				printf ("\n");
				
				}
				
			#endif
			
			break;
			
			}

		case tcXMP:
			{

			if (fNewSubFileType == sfSemanticMask)
				{
					
				const uint32 bytes = tagCount;

				// Fuzz: Limit to some reasonable size.

				const uint32 kMaxBytes = 16 * 1024 * 1024;

				if (bytes <= kMaxBytes)
					{

					AutoPtr<dng_memory_block> block (host.Allocate (bytes));

					stream.Get (block->Buffer (),
								bytes);

					fSemanticXMP.reset (block.Release ());

					#if qDNGValidate

					if (gVerbose)
						{

						uint64 offset = bytes ? tagOffset : 0;

						printf ("SemanticMaskXMP: Count = %u, Offset = %u\n",
								(unsigned) bytes,
								(unsigned) offset);

						if (bytes)
							{

							stream.SetReadPosition (offset);

							DumpXMP (stream, bytes);

							}

						}

					#endif	// qDNGValidate

					return true;

					}

				}
				
			return false;
			
			}

		case tcMaskSubArea:
			{

			#if qDNGValidate
				
			if (fNewSubFileType != sfSemanticMask)
				{
					
				char message [256];
				
				snprintf (message,
						  256,
						  "%s %s is not allowed in IFDs with NewSubFileType != SemanticMask",
						  LookupParentCode (parentCode),
						  LookupTagCode (parentCode, tagCode));
					
				ReportWarning (message);
					
				}
				
			#endif

			CheckTagType (parentCode, tagCode, tagType, ttLong);

			// CR-4208475 K-M2: MaskSubArea is a fixed four-long tag.

			if (!CheckTagCount (parentCode, tagCode, tagCount, 4))
				return false;

			fMaskSubArea [0] = stream.TagValue_uint32 (tagType);
			fMaskSubArea [1] = stream.TagValue_uint32 (tagType);
			fMaskSubArea [2] = stream.TagValue_uint32 (tagType);
			fMaskSubArea [3] = stream.TagValue_uint32 (tagType);

			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("MaskSubArea: "
						"origin (t=%u, l=%u), "
						"whole size (w=%u, h=%u)\n",
						fMaskSubArea [0],
						fMaskSubArea [1],
						fMaskSubArea [2],
						fMaskSubArea [3]);

				}
				
			#endif	// qDNGValidate

			break;
			
			}

		case tcImageStats:
			{

			if (!CheckTagType (parentCode, tagCode, tagType, ttUndefined))
				return false;
			
			CheckRawIFD (parentCode, tagCode, fPhotometricInterpretation);

			fImageStats.Parse (stream,
							   tagCount);

			#if qDNGValidate

			if (gVerbose)
				fImageStats.Dump ();
				
			#endif	// qDNGValidate
			
			break;
			
			}
			
		case tcJXLDistance:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttFloat))
				return false;

			// CR-4208475 K-M2: JXL scalar tags must not borrow bytes from
			// neighboring tag data when malformed.

			if (!CheckTagCount (parentCode, tagCode, tagCount, 1))
				return false;
			
			fJXLDistance = (real32) stream.TagValue_real64 (tagType);

			if (!std::isfinite (fJXLDistance) || fJXLDistance < 0.0f)
				{
				ThrowBadFormat ("Invalid JXL distance");
				}
			
			#if qDNGValidate

			if (fCompression != ccJXL)
				{
				ReportWarning ("JXL compression expected");
				}
				
			if (gVerbose)
				{
				printf ("JXLDistance: %.2f\n", fJXLDistance);
				}
				
			#endif

			break;
			
			}
			
		case tcJXLEffort:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttLong))
				return false;

			// CR-4208475 K-M2: JXL scalar tags must not borrow bytes from
			// neighboring tag data when malformed.

			if (!CheckTagCount (parentCode, tagCode, tagCount, 1))
				return false;
			
			fJXLEffort = stream.TagValue_int32 (tagType);
			
			#if qDNGValidate

			if (fCompression != ccJXL)
				{
				ReportWarning ("JXL compression expected");
				}
				
			if (fJXLEffort < 1 || fJXLEffort > 9)
				{
				ReportWarning ("Invalid JXL effort");
				}
				
			if (gVerbose)
				{
				printf ("JXLEffort: %d\n", fJXLEffort);
				}
				
			#endif

			break;
			
			}

		case tcJXLDecodeSpeed:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttLong))
				return false;

			// CR-4208475 K-M2: JXL scalar tags must not borrow bytes from
			// neighboring tag data when malformed.

			if (!CheckTagCount (parentCode, tagCode, tagCount, 1))
				return false;
			
			fJXLDecodeSpeed = stream.TagValue_int32 (tagType);
			
			#if qDNGValidate

			if (fCompression != ccJXL)
				{
				ReportWarning ("JXL compression expected");
				}
				
			if (fJXLDecodeSpeed < 1 || fJXLDecodeSpeed > 4)
				{
				ReportWarning ("Invalid JXL decode speed");
				}
				
			if (gVerbose)
				{
				printf ("JXLDecodeSpeed: %d\n", fJXLDecodeSpeed);
				}
				
			#endif

			break;
			
			}

		case tcGainMapMetadata_ISO_21496_1:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttUndefined))
				return false;

			constexpr uint32 kMaxTagCount = 4 * 1024 * 1024;

			if (tagCount > kMaxTagCount)
				ThrowBadFormat ("Gain map metadata block too large");

			AutoPtr<dng_memory_block> block (host.Allocate (tagCount));
			
			stream.Get (block->Buffer (),
						tagCount);

			fGainMapMetadata.reset (block.Release ());
			
			#if qDNGValidate

			if (gVerbose)
				{
				printf ("GainMapMetadata: %u bytes\n",
						tagCount);
				}
				
			#endif

			break;
			
			}

		default:
			{
			
			return false;
			
			}

		}
	
	return true;
	
	}
							   
/*****************************************************************************/

void dng_ifd::PostParse ()
	{
	
	uint32 j;
	uint32 k;
	
	// There is only one PlanarConfiguration for single sample imaages.
	
	if (fSamplesPerPixel == 1)
		{
		fPlanarConfiguration = pcInterleaved;
		}
		
	// Default tile size.
		
	if (fTileWidth == 0)
		{
		fTileWidth = fImageWidth;
		}
		
	if (fTileLength == 0)
		{
		fTileLength = fImageLength;
		}
		
	// Default ActiveArea.
		
	dng_rect imageArea (0, 0, fImageLength, fImageWidth);

	if (fActiveArea.IsZero ())
		{
		fActiveArea = imageArea;
		}
		
	// Default crop size.
	
	if (fNewSubFileType != sfEnhancedImage)
		{
		
		if (fDefaultCropSizeH.d == 0)
			{
			fDefaultCropSizeH = dng_urational (fActiveArea.W (), 1);
			}
			
		if (fDefaultCropSizeV.d == 0)
			{
			fDefaultCropSizeV = dng_urational (fActiveArea.H (), 1);
			}
			
		}
		
	// Default white level.
		
	uint32 defaultWhite = (fSampleFormat [0] == sfFloatingPoint) ?
						  1 :
						  (uint32) ((((uint64) 1) << fBitsPerSample [0]) - 1);
						
	for (j = 0; j < kMaxColorPlanes; j++)
		{
		
		if (fWhiteLevel [j] < 0.0)
			{
			fWhiteLevel [j] = (real64) defaultWhite;
			}
		
		}
		
	// Check AntiAliasStrength.

	if (fAntiAliasStrength.As_real64 () < 0.0 ||
		fAntiAliasStrength.As_real64 () > 1.0)
		{
		
		#if qDNGValidate
		
		ReportWarning ("Invalid AntiAliasStrength");
					 
		#endif
					 
		fAntiAliasStrength = dng_urational (1, 1);
					 
		}
		
	// Check MaskedAreas.
		
	for (j = 0; j < fMaskedAreaCount; j++)
		{
		
		const dng_rect &r = fMaskedArea [j];
		
		if (r.IsEmpty () || ((r & imageArea) != r))
			{
			
			#if qDNGValidate
		
			ReportWarning ("Invalid MaskedArea");
						 
			#endif
						 
			fMaskedAreaCount = 0;
			
			break;
					 
			}
		
		if ((r & fActiveArea).NotEmpty ())
			{
				
			#if qDNGValidate

			ReportWarning ("MaskedArea overlaps ActiveArea");
						 
			#endif
					 
			fMaskedAreaCount = 0;
			
			break;
					 
			}
		
		for (k = 0; k < j; k++)
			{
			
			if ((r & fMaskedArea [k]).NotEmpty ())
				{
				
				#if qDNGValidate

				ReportWarning ("MaskedAreas overlap each other");
							 
				#endif
						 
				fMaskedAreaCount = 0;
				
				break;
						 
				}

			}
		
		}

	// Check NoiseProfile.

	if (!fNoiseProfile.IsValid () && fNoiseProfile.NumFunctions () != 0)
		{
			
		#if qDNGValidate
			
		ReportWarning ("Invalid NoiseProfile");
						 
		#endif
			
		fNoiseProfile = dng_noise_profile ();
							 
		}
		
	}
							   
/*****************************************************************************/

bool dng_ifd::IsValidCFA (dng_shared &shared,
						  uint32 parentCode)
	{
	
	uint32 j;
	uint32 k;
	uint32 n;
	
	#if !qDNGValidate
	
	(void) parentCode;			// Unused
	
	#endif
	
	if (fCFARepeatPatternRows < 1 || fCFARepeatPatternRows > kMaxCFAPattern ||
		fCFARepeatPatternCols < 1 || fCFARepeatPatternCols > kMaxCFAPattern)
		{
		
		#if qDNGValidate
		
		ReportError ("Missing or invalid CFAPatternRepeatDim",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
					 
		}
		
	uint32 count [kMaxColorPlanes];
	
	for (n = 0; n < shared.fCameraProfile.fColorPlanes; n++)
		{
		count [n] = 0;
		}
		
	for (j = 0; j < fCFARepeatPatternRows; j++)
		{
		
		for (k = 0; k < fCFARepeatPatternCols; k++)
			{
			
			bool found = false;
			
			for (n = 0; n < shared.fCameraProfile.fColorPlanes; n++)
				{
				
				if (fCFAPattern [j] [k] == fCFAPlaneColor [n])
					{
					found = true;
					count [n] ++;
					break;
					}
				
				}
				
			if (!found)
				{
				
				#if qDNGValidate
		
				ReportError ("CFAPattern contains colors not included in the CFAPlaneColor tag",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
					 
				}
			
			}
			
		}
	
	for (n = 0; n < shared.fCameraProfile.fColorPlanes; n++)
		{
		
		if (count [n] == 0)
			{
			
			#if qDNGValidate
		
			ReportError ("CFAPattern does not contain all the colors in the CFAPlaneColor tag",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;

			}
	
		}
		
	if (fCFALayout < 1 || fCFALayout > 9)
		{
		
		#if qDNGValidate
		
		ReportError ("Invalid CFALayout",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;

		}
		
	return true;
	
	}
	
/*****************************************************************************/

bool dng_ifd::IsValidDNG (dng_shared &shared,
						  uint32 parentCode)
	{
	
	uint32 j;
		
	bool isFloatingPoint = (fSampleFormat [0] == sfFloatingPoint);
	
	dng_rect imageArea (0, 0, fImageLength, fImageWidth);
	
	uint32 defaultWhite = isFloatingPoint ?
						  1 :
						  (uint32) ((((uint64) 1) << fBitsPerSample [0]) - 1);
						
	bool isMonochrome = (shared.fCameraProfile.fColorPlanes == 1);
	bool isColor	  = !isMonochrome;
		
	bool isMainIFD = (fNewSubFileType == sfMainImage);
	
	bool isEnhancedIFD = (fNewSubFileType == sfEnhancedImage);

	bool isMainOrEnhancedIFD = isMainIFD || isEnhancedIFD;

	bool isGainMapIFD = (fNewSubFileType == sfGainMap ||
						 fNewSubFileType == sfPreviewGainMap);
	
	// Check NewSubFileType.
	
	if (!fUsesNewSubFileType)
		{
		
		#if qDNGValidate
		
		ReportError ("Missing NewSubFileType",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	if (fNewSubFileType != sfMainImage		  &&
		fNewSubFileType != sfPreviewImage	  &&
		fNewSubFileType != sfTransparencyMask &&
		fNewSubFileType != sfPreviewMask	  &&
		fNewSubFileType != sfDepthMap		  &&
		fNewSubFileType != sfPreviewDepthMap  &&
		fNewSubFileType != sfEnhancedImage	  &&
		fNewSubFileType != sfAltPreviewImage  &&
		fNewSubFileType != sfGainMap		  &&
		fNewSubFileType != sfPreviewGainMap	  &&
		fNewSubFileType != sfSemanticMask)
		{
		
		#if qDNGValidate
		
		ReportError ("Unexpected NewSubFileType",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	// Check ImageWidth and ImageLength.
			
	if (fImageWidth < 1)
		{
		
		#if qDNGValidate
		
		ReportError ("Missing or invalid ImageWidth",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
	
	if (fImageLength < 1)
		{
		
		#if qDNGValidate
		
		ReportError ("Missing or invalid ImageLength",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	if (fImageWidth	 > kMaxImageSide ||
		fImageLength > kMaxImageSide)
		{
		
		#if qDNGValidate
		
		ReportWarning ("Image size is larger than supported");
					 
		#endif
					 
		return false;
		
		}
	
	// Check PhotometricInterpretation.
	
	if (fNewSubFileType == sfTransparencyMask ||
		fNewSubFileType == sfPreviewMask)
		{
		
		if (fPhotometricInterpretation != piTransparencyMask)
			{
			
			#if qDNGValidate
	
			ReportError ("NewSubFileType requires PhotometricInterpretation = TransparencyMask",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		}
  
	else if (fNewSubFileType == sfDepthMap ||
			 fNewSubFileType == sfPreviewDepthMap)
		{
		
		if (fPhotometricInterpretation != piDepth)
			{
			
			#if qDNGValidate
	
			ReportError ("NewSubFileType requires PhotometricInterpretation = Depth",
						 LookupParentCode (parentCode));
				
			#endif
				
			return false;
			
			}
		
		}

	else if (fNewSubFileType == sfSemanticMask)
		{

		if (fPhotometricInterpretation != piPhotometricMask)
			{
			
			#if qDNGValidate
	
			ReportError ("NewSubFileType requires PhotometricInterpretation = PhotometricMask",
						 LookupParentCode (parentCode));
				
			#endif
				
			return false;
			
			}

		if (fSamplesPerPixel != 1)
			{
			
			#if qDNGValidate
	
			ReportError ("NewSubFileType requires SamplesPerPixel = 1",
						 LookupParentCode (parentCode));
				
			#endif
				
			return false;
			
			}
		
		if (fBitsPerSample [0] != 8)
			{
			
			#if qDNGValidate
	
			ReportError ("NewSubFileType requires 8 bits per sample",
						 LookupParentCode (parentCode));
				
			#endif
				
			return false;
			
			}
		
		}

	else if (fNewSubFileType == sfGainMap ||
			 fNewSubFileType == sfPreviewGainMap)
		{
		
		if (fPhotometricInterpretation != piGainMap)
			{
			
			#if qDNGValidate
	
			ReportError ("NewSubFileType Gain Map requires PhotometricInterpretation "
						 "= Gain Map",
						 LookupParentCode (parentCode));
				
			#endif
				
			return false;
			
			}

		if (fSamplesPerPixel != 1 &&
			fSamplesPerPixel != 3)
			{
			
			#if qDNGValidate
	
			ReportError ("NewSubFileType requires SamplesPerPixel = 1 or 3",
						 LookupParentCode (parentCode));
				
			#endif
				
			return false;
			
			}
		
		}

	else
		{
		
		switch (fPhotometricInterpretation)
			{
			
			case piBlackIsZero:
			case piRGB:
			case piYCbCr:
				{
				
				if (isMainIFD)
					{
					
					#if qDNGValidate
			
					ReportError ("PhotometricInterpretation requires NewSubFileType = 1",
								 LookupParentCode (parentCode));
								 
					#endif
								 
					return false;
								 
					}
					
				break;
				
				}
				
			case piCFA:
				{
				
				if (!isMainIFD)
					{
					
					#if qDNGValidate
			
					ReportError ("PhotometricInterpretation requires NewSubFileType = 0",
								 LookupParentCode (parentCode));
								 
					#endif
								 
					return false;
								 
					}
					
				break;
				
				}

			case piLinearRaw:
				break;
				
			default:
				{
					
				#if qDNGValidate
			
				ReportError ("Missing or invalid PhotometricInterpretation",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;

				}
				
			}
			
		}
		
	switch (fPhotometricInterpretation)
		{
		
		case piBlackIsZero:
			{
			
			// Allow black in white previews even in color images since the
			// raw processing software may be converting to grayscale.
			
			if (isColor && isMainIFD)
				{
				
				#if qDNGValidate
		
				ReportError ("PhotometricInterpretation forbids use of ColorMatrix1 tag",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;

				}
				
			break;
			
			}
			
		case piRGB:
		case piYCbCr:
			{
			
			// Allow color previews even in monochrome DNG files, since the
			// raw procesing software may be adding color effects.
			
			break;
			
			}

		case piCFA:
			{
			
			if (isMonochrome)
				{
				
				#if qDNGValidate
		
				ReportError ("PhotometricInterpretation requires use of ColorMatrix1 tag",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;

				}
				
			break;
			
			}
			
		}

	// Check ColorimetricReference.

	if (isGainMapIFD &&
		(shared.fColorimetricReference == crSceneReferred) &&
		(fNewSubFileType != sfPreviewGainMap))
		{
		
		#if qDNGValidate
	
		ReportError ("Gain Maps can only be used in output-referred images",
					 LookupParentCode (parentCode));
						 
		#endif
						 
		return false;
		
		}

	// Check floating-point support.
		
	if (isFloatingPoint)
		{
		
		if (fPhotometricInterpretation != piCFA &&
			fPhotometricInterpretation != piLinearRaw &&
			fPhotometricInterpretation != piTransparencyMask)
			{
			
			#if qDNGValidate
	
			ReportError ("Floating point data requires PhotometricInterpretation "
						 "CFA or LinearRaw or TransparencyMask",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;

			}
		
		}
		
	// Check SamplesPerPixel and BitsPerSample.
		
	uint32 minSamplesPerPixel = 1;
	uint32 maxSamplesPerPixel = 1;
	
	uint32 minBitsPerSample = 8;
	uint32 maxBitsPerSample = 16;
	
	switch (fPhotometricInterpretation)
		{
		
		case piBlackIsZero:
			break;
			
		case piRGB:
		case piYCbCr:
			{
			minSamplesPerPixel = 3;
			maxSamplesPerPixel = 3;
			break;
			}
			
		case piCFA:
			{
			maxSamplesPerPixel = kMaxSamplesPerPixel;
			maxBitsPerSample   = 32;
			break;
			}
			
		case piGainMap:
			{
			minSamplesPerPixel = 1;
			maxSamplesPerPixel = 3;
			minBitsPerSample   = 8;
			maxBitsPerSample   = 32;
			break;
			}
			
		case piLinearRaw:
			{
			minSamplesPerPixel = shared.fCameraProfile.fColorPlanes;
			maxSamplesPerPixel = shared.fCameraProfile.fColorPlanes;
			maxBitsPerSample   = 32;
			break;
			}
			
		case piTransparencyMask:
			{
			minBitsPerSample = 8;
			maxBitsPerSample = 16;
			break;
			}
   
		case piDepth:
			{
			minBitsPerSample = 8;
			maxBitsPerSample = 16;
			break;
			}
   
		}
		
	if (isFloatingPoint)
		{
		minBitsPerSample = 16;
		maxBitsPerSample = 32;
		}

	if (fSamplesPerPixel < minSamplesPerPixel ||
		fSamplesPerPixel > maxSamplesPerPixel)
		{

		#if qDNGValidate
		
		ReportError ("Missing or invalid SamplesPerPixel",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;

		}
		
	for (j = 0; j < kMaxSamplesPerPixel; j++)
		{
		
		if (j < fSamplesPerPixel)
			{
			
			if (fBitsPerSample [j] < minBitsPerSample ||
				fBitsPerSample [j] > maxBitsPerSample)
				{
				
				#if qDNGValidate
		
				ReportError ("Missing or invalid BitsPerSample",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
							 
				}
				
			if (isFloatingPoint &&
				fBitsPerSample [j] != 16 &&
				fBitsPerSample [j] != 24 &&
				fBitsPerSample [j] != 32)
				{
				
				#if qDNGValidate
		
				ReportError ("Invalid BitsPerSample for floating point",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
							 
				}
				
			if (minBitsPerSample   ==  8 &&
				maxBitsPerSample   == 16 &&
				fBitsPerSample [j] !=  8 &&
				fBitsPerSample [j] != 16)
				{
				
				#if qDNGValidate
		
				ReportError ("Rendered previews and integer masks require 8 or 16 bits per sample",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
							 
				}
				
			if (j > 0 && fBitsPerSample [j] != fBitsPerSample [0])
				{
				
				#if qDNGValidate

				ReportError ("BitsPerSample not equal for all samples",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
		
				}
			
			}
			
		else
			{
			
			if (fBitsPerSample [j] != 0)
				{
				
				#if qDNGValidate

				ReportError ("Too many values specified in BitsPerSample",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
		
				}
			
			}
			
		}
		
	// Check Compression.
		
	switch (fCompression)
		{
		
		case ccUncompressed:
			break;

		#if qDNGSupportVC5

		case ccVc5:
			break;

		#endif	// qDNGSupportVC5
			
		case ccJPEG:
			{
			
			if (fPhotometricInterpretation == piRGB)
				{
				
				#if qDNGValidate

				ReportError ("JPEG previews should use PhotometricInterpretation = YCbYb",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
						 
				}
				
			if (fBitsPerSample [0] > 16)
				{
				
				#if qDNGValidate

				ReportError ("JPEG compression is limited to 16 bits/sample",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
						 
				}
			
			break;
			
			}
			
		case ccLossyJPEG:
			{
			
			if (fPhotometricInterpretation != piLinearRaw &&
				fPhotometricInterpretation != piPhotometricMask &&
				fPhotometricInterpretation != piGainMap)
				{
				
				#if qDNGValidate

				ReportError ("Lossy JPEG compression code requires PhotometricInterpretation = LinearRaw or PhotometricMask",
							 LookupParentCode (parentCode));
							 
				#endif

				return false;
				
				}
			
			if (fBitsPerSample [0] != 8)
				{
				
				#if qDNGValidate

				ReportError ("Lossy JPEG compression is limited to 8 bits/sample",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
						 
				}
				
			break;
			
			}
			
		case ccJXL:
			{
			
			if (fPhotometricInterpretation != piCFA &&
				fPhotometricInterpretation != piRGB &&
				fPhotometricInterpretation != piBlackIsZero &&
				fPhotometricInterpretation != piDepth &&
				fPhotometricInterpretation != piLinearRaw &&
				fPhotometricInterpretation != piGainMap &&
				fPhotometricInterpretation != piPhotometricMask &&
				fPhotometricInterpretation != piTransparencyMask)
				{
				
				#if qDNGValidate

				ReportError ("JXL compression code requires "
							 "PhotometricInterpretation = CFA, RGB, BlackIsZero, "
							 "Depth, LinearRaw, PhotometricMask, or "
							 "Transparency",
							 LookupParentCode (parentCode));
							 
				#endif

				return false;
				
				}
			
			if (fBitsPerSample [0] < 8 ||
				fBitsPerSample [0] > 16)
				{
				
				#if qDNGValidate

				ReportError ("JXL compression is limited to 8 to 16 bits/sample",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				return false;
						 
				}
				
			break;
			
			}

		case ccDeflate:
			{
			
			if (!isFloatingPoint &&
				!isGainMapIFD &&
				fBitsPerSample [0] != 32 &&
				fPhotometricInterpretation != piTransparencyMask &&
				fPhotometricInterpretation != piPhotometricMask &&
				fPhotometricInterpretation != piGainMap &&
				fPhotometricInterpretation != piDepth)
				{
				
				#if qDNGValidate

				ReportError ("ZIP compression is limited to floating point, 32-bit integer,"
							 " transparency masks, semantic masks, gain maps, and depth maps",
							 LookupParentCode (parentCode));
							 
				#endif
							 
				}
						
			break;
			
			}
			
		default:
			{
			
			#if qDNGValidate

			ReportError ("Unsupported Compression",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
		
			}
			
		}
		
	// Check Predictor.
	
	if (isFloatingPoint && fCompression == ccDeflate &&
				(fPredictor == cpFloatingPoint	 ||
				 fPredictor == cpFloatingPointX2 ||
				 fPredictor == cpFloatingPointX4))
		{
		
		// These combinations are supported.
		
		}
	
	else if (!isFloatingPoint && fCompression == ccDeflate &&
				(fPredictor == cpHorizontalDifference	||
				 fPredictor == cpHorizontalDifferenceX2 ||
				 fPredictor == cpHorizontalDifferenceX4))
		{
		
		// These combinations are supported.
		
		}
	
	else if (fPredictor != cpNullPredictor)
		{
		
		#if qDNGValidate

		ReportError ("Unsupported Predictor",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	// Check FillOrder.
		
	if (fFillOrder != 1)
		{
		
		#if qDNGValidate

		ReportError ("Unsupported FillOrder",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	// Check PlanarConfiguration.
		
	if (fPlanarConfiguration != pcInterleaved)
		{
		
		#if qDNGValidate

		ReportError ("Unsupported PlanarConfiguration",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	// Check ExtraSamples.
	
	if (fExtraSamplesCount != 0)
		{
		
		#if qDNGValidate

		ReportError ("Unsupported ExtraSamples",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	// Check SampleFormat.
	
	for (j = 0; j < fSamplesPerPixel; j++)
		{
	
		if (fSampleFormat [j] != (isFloatingPoint ? sfFloatingPoint : sfUnsignedInteger))
			{
			
			#if qDNGValidate

			ReportError ("Unsupported SampleFormat",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
			
		}
		
	// Check Orientation.
		
	if (fOrientation > 9)
		{
		
		#if qDNGValidate

		ReportError ("Unknown Orientation",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;

		}
		
	#if qDNGValidate

	if (fOrientation != 0 && parentCode != 0)
		{
		
		ReportWarning ("Unexpected Orientation tag",
					   LookupParentCode (parentCode));
		
		}
		
	if (fOrientation == 0 && parentCode == 0)
		{
		
		ReportWarning ("Missing Orientation tag",
					   LookupParentCode (parentCode));
		
		}
		
	#endif
	
	// Check Strips vs. Tiles.
		
	if (!fUsesStrips && !fUsesTiles)
		{
		
		#if qDNGValidate

		ReportError ("IFD uses neither strips nor tiles",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
	
	if (fUsesStrips && fUsesTiles)
		{
		
		#if qDNGValidate

		ReportError ("IFD uses both strips and tiles",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	// Check tile info.
		
	uint32 tilesWide = SafeUint32DivideUp (fImageWidth,	 fTileWidth);
	uint32 tilesHigh = SafeUint32DivideUp (fImageLength, fTileLength);
	
	uint32 tileCount = SafeUint32Mult (tilesWide, tilesHigh);
	
	if (fTileOffsetsCount != tileCount)
		{
		
		#if qDNGValidate

		ReportError ("Missing or invalid Strip/TileOffsets",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	if (fTileByteCountsCount != tileCount)
		{
		
		#if qDNGValidate

		ReportError ("Missing or invalid Strip/TileByteCounts",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
		
		}
		
	// Check CFA pattern.
		
	if (fPhotometricInterpretation == piCFA)
		{
		
		if (!IsValidCFA (shared, parentCode))
			{
			
			return false;
			
			}
		
		}
		
	// Check ActiveArea.
		
	if (((fActiveArea & imageArea) != fActiveArea) || fActiveArea.IsEmpty ())
		{
		
		#if qDNGValidate

		ReportError ("Invalid ActiveArea",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
			
		}
		
	if (fActiveArea != imageArea)
		{
		
		if (shared.fDNGBackwardVersion < dngVersion_1_1_0_0)
			{
			
			#if qDNGValidate

			ReportError ("Non-default ActiveArea tag not allowed in this DNG version",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		}
		
	// Check LinearizationTable.
		
	if (fLinearizationTableCount)
		{
		
		if (fLinearizationTableType != ttShort)
			{
			
			#if qDNGValidate

			ReportError ("Invalidate LinearizationTable type",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		if (fLinearizationTableCount < 2 ||
			fLinearizationTableCount > 65536)
			{
			
			#if qDNGValidate

			ReportError ("Invalidate LinearizationTable count",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
			
		if (isFloatingPoint || fBitsPerSample [0] > 16)
			{
			
			#if qDNGValidate

			ReportError ("Linearization table not allowed for this data type",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		}
		
	// Check BlackLevelRepeatDim.
		
	if (fBlackLevelRepeatRows < 1 || fBlackLevelRepeatRows > kMaxBlackPattern ||
		fBlackLevelRepeatCols < 1 || fBlackLevelRepeatCols > kMaxBlackPattern)
		{
		
		#if qDNGValidate

		ReportError ("Invalid BlackLevelRepeatDim",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
					 
		}
		
	// Check BlackLevelDeltaH.
		
	if (fBlackLevelDeltaHCount != 0 &&
		fBlackLevelDeltaHCount != fActiveArea.W ())
		{
		
		#if qDNGValidate

		ReportError ("Invalid BlackLevelDeltaH count",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
					 
		}
		
	// Check BlackLevelDeltaV.
		
	if (fBlackLevelDeltaVCount != 0 &&
		fBlackLevelDeltaVCount != fActiveArea.H ())
		{
		
		#if qDNGValidate

		ReportError ("Invalid BlackLevelDeltaV count",
					 LookupParentCode (parentCode));
					 
		#endif
					 
		return false;
					 
		}
		
	// Check WhiteLevel.
	
	real64 maxWhite = fLinearizationTableCount ? 65535.0
											   : (real64) defaultWhite;

	// Only validate planes that were stored; ParseTag caps fills at
	// kMaxColorPlanes so we must not read beyond that index.

	for (j = 0; j < fSamplesPerPixel && j < kMaxColorPlanes; j++)
		{
		
		if (fWhiteLevel [j] < 1.0 || (fWhiteLevel [j] > maxWhite && !isFloatingPoint))
			{
			
			#if qDNGValidate

			ReportError ("Invalid WhiteLevel",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
					 
			}
			
		}

	// Check BlackLevel.

	for (j = 0; j < kMaxBlackPattern; j++)
		{
		
		for (uint32 k = 0; k < kMaxBlackPattern; k++)
			{
			
			for (uint32 s = 0; s < kMaxColorPlanes; s++)
				{

				const real64 black = fBlackLevel [j][k][s];

				if (black >= fWhiteLevel [s])
					{
					
					#if qDNGValidate

					ReportError ("Invalid BlackLevel",
								 LookupParentCode (parentCode));

					#endif

					return false;
					
					}
				
				}
			
			}
		
		}
		
	// Check DefaultScaleH.	 Enhanced IFDs default to invalid, so allow that.
		
	if ((fNewSubFileType != sfEnhancedImage || fDefaultScaleH.IsValid ()) &&
		fDefaultScaleH.As_real64 () <= 0.0)
		{
			
		#if qDNGValidate

		ReportError ("Invalid DefaultScaleH");
					 
		#endif
					 
		return false;

		}
			
	// Check DefaultScaleV.	 Enhanced IFDs default to invalid, so allow that.
		
	if ((fNewSubFileType != sfEnhancedImage || fDefaultScaleV.IsValid ()) &&
		fDefaultScaleV.As_real64 () <= 0.0)
		{
			
		#if qDNGValidate

		ReportError ("Invalid DefaultScaleV");
					 
		#endif
					 
		return false;

		}
			
	// Check BestQualityScale.	Enhanced IFDs default to invalid, so allow that.
		
	if ((fNewSubFileType != sfEnhancedImage || fBestQualityScale.IsValid ()) &&
		fBestQualityScale.As_real64 () < 1.0)
		{
		
		#if qDNGValidate

		ReportError ("Invalid BestQualityScale");
					 
		#endif
					 
		return false;

		}
		
	// Check DefaultCropOrigin.
		
	if (fDefaultCropOriginH.As_real64 () < 0.0 ||
		fDefaultCropOriginV.As_real64 () < 0.0 ||
		fDefaultCropOriginH.As_real64 () >= (real64) fActiveArea.W () ||
		fDefaultCropOriginV.As_real64 () >= (real64) fActiveArea.H ())
		{
		
		#if qDNGValidate

		ReportError ("Invalid DefaultCropOrigin");
					 
		#endif
					 
		return false;

		}
		
	// Check DefaultCropSize.  Enhanced IFDs default to invalid, so allow that.
	
	if (fNewSubFileType != sfEnhancedImage ||
		fDefaultCropSizeH.IsValid () ||
		fDefaultCropSizeV.IsValid ())
		{
	
		if (fDefaultCropSizeH.As_real64 () <= 0.0					   ||
			fDefaultCropSizeV.As_real64 () <= 0.0					   ||
			fDefaultCropSizeH.As_real64 () > (real64) fActiveArea.W () ||
			fDefaultCropSizeV.As_real64 () > (real64) fActiveArea.H ())
			{
			
			#if qDNGValidate

			ReportError ("Invalid DefaultCropSize");
						 
			#endif
						 
			return false;

			}
			
		}
		
	// Check DefaultCrop area.
		
	if (fDefaultCropOriginH.As_real64 () +
		fDefaultCropSizeH  .As_real64 () > (real64) fActiveArea.W () ||
		fDefaultCropOriginV.As_real64 () +
		fDefaultCropSizeV  .As_real64 () > (real64) fActiveArea.H ())
		{
		
		#if qDNGValidate

		ReportError ("Default crop extends outside ActiveArea");
					 
		#endif
					 
		return false;

		}
		
	// Check DefaultUserCrop.
		
	if (fDefaultUserCropT.As_real64 () < 0.0 ||
		fDefaultUserCropL.As_real64 () < 0.0 ||
		fDefaultUserCropB.As_real64 () > 1.0 ||
		fDefaultUserCropR.As_real64 () > 1.0 ||
		fDefaultUserCropT.As_real64 () >= fDefaultUserCropB.As_real64 () ||
		fDefaultUserCropL.As_real64 () >= fDefaultUserCropR.As_real64 ())
		{
		
		#if qDNGValidate

		ReportError ("Invalid DefaultUserCrop");
					 
		#endif	// qDNGValidate
					 
		return false;

		}
		
	// The default crop tags are restricted to the main and enhanced IFDs. If
	// found elsewhere, at least require that they be NOPs.
	
	if (!isMainOrEnhancedIFD)
		{
		
		if (Round_int32 (fDefaultCropOriginH.As_real64 ()) != 0 ||
			Round_int32 (fDefaultCropOriginV.As_real64 ()) != 0)
			{
			
			#if qDNGValidate

			ReportError ("non-default DefaultCropOrigin on non-main image");
						 
			#endif
						 
			return false;

			}
		
		if (Round_int32 (fDefaultCropSizeH.As_real64 ()) != (int32) fImageWidth ||
			Round_int32 (fDefaultCropSizeV.As_real64 ()) != (int32) fImageLength)
			{
			
			#if qDNGValidate

			ReportError ("non-default DefaultCropSize on non-main image");
						 
			#endif
						 
			return false;

			}

		}

	// The default user crop tag is restricted to the main IFD. If found
	// elsewhere, at least require that it be a NOP.
	
	if (!isMainIFD)
		{

		if (fDefaultUserCropT.As_real64 () != 0.0 ||
			fDefaultUserCropL.As_real64 () != 0.0 ||
			fDefaultUserCropB.As_real64 () != 1.0 ||
			fDefaultUserCropR.As_real64 () != 1.0)
			{
			
			#if qDNGValidate

			ReportError ("non-default DefaultCUserCrop on non-main image");
						 
			#endif	// qDNGValidate
						 
			return false;
			
			}

		}
		
	// Warning if too little padding on CFA image.
	
	#if qDNGValidate
	
	if (fPhotometricInterpretation == piCFA)
		{
		
		const real64 kMinPad = 1.9;
		
		if (fDefaultCropOriginH.As_real64 () < kMinPad)
			{
			
			ReportWarning ("Too little padding on left edge of CFA image",
						   "possible interpolation artifacts");
					 
			}
		
		if (fDefaultCropOriginV.As_real64 () < kMinPad)
			{
			
			ReportWarning ("Too little padding on top edge of CFA image",
						   "possible interpolation artifacts");
					 
			}
		
		if (fDefaultCropOriginH.As_real64 () +
			fDefaultCropSizeH  .As_real64 () > (real64) fActiveArea.W () - kMinPad)
			{
			
			ReportWarning ("Too little padding on right edge of CFA image",
						   "possible interpolation artifacts");
					 
			}
		
		if (fDefaultCropOriginV.As_real64 () +
			fDefaultCropSizeV  .As_real64 () > (real64) fActiveArea.H () - kMinPad)
			{
			
			ReportWarning ("Too little padding on bottom edge of CFA image",
						   "possible interpolation artifacts");
					 
			}
		
		}
	
	#endif
	
	// Check RowInterleaveFactor
		
	if (fRowInterleaveFactor != 1)
		{
		
		if (fRowInterleaveFactor < 1 ||
			fRowInterleaveFactor > fImageLength)
			{

			#if qDNGValidate

			ReportError ("RowInterleaveFactor out of valid range",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		if (shared.fDNGBackwardVersion < dngVersion_1_2_0_0)
			{
			
			#if qDNGValidate

			ReportError ("Non-default RowInterleaveFactor tag not allowed in this DNG version",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		}

	// Check ColumnInterleaveFactor
		
	if (fColumnInterleaveFactor != 1)
		{
		
		if (fColumnInterleaveFactor < 1 ||
			fColumnInterleaveFactor > fImageWidth)
			{

			#if qDNGValidate

			ReportError ("ColumnInterleaveFactor out of valid range",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		if (shared.fDNGBackwardVersion < dngVersion_1_7_0_0)
			{
			
			#if qDNGValidate

			ReportError ("Non-default ColumnInterleaveFactor tag not allowed in this DNG version",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		#if qDNGValidate
		
		// Only warn if column interleave factor is used before DNG 1.7.1 since the
		// original published 1.7 spec allowed it.

		if (shared.fDNGBackwardVersion < dngVersion_1_7_1_0)
			{
			
			ReportWarning ("Non-default ColumnInterleaveFactor tag not allowed in this DNG version",
						   LookupParentCode (parentCode));
						 
			}
		
		#endif
						 
		}

	// Check SubTileBlockSize
	
	if (fSubTileBlockRows != 1 || fSubTileBlockCols != 1)
		{

		if (fSubTileBlockRows < 2 || fSubTileBlockRows > fTileLength ||
			fSubTileBlockCols < 1 || fSubTileBlockCols > fTileWidth)
			{
			
			#if qDNGValidate

			ReportError ("SubTileBlockSize out of valid range",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
			
		if ((fTileLength % fSubTileBlockRows) != 0 ||
			(fTileWidth	 % fSubTileBlockCols) != 0)
			{
			
			#if qDNGValidate

			ReportError ("TileSize not exact multiple of SubTileBlockSize",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		if (shared.fDNGBackwardVersion < dngVersion_1_2_0_0)
			{
			
			#if qDNGValidate

			ReportError ("Non-default SubTileBlockSize tag not allowed in this DNG version",
						 LookupParentCode (parentCode));
						 
			#endif
						 
			return false;
			
			}
		
		}
		
	return true;
	
	}
							   
/*****************************************************************************/

uint32 dng_ifd::TilesAcross () const
	{
	
	if (fTileWidth)
		{

		uint64 width64 = (uint64) fTileWidth;

		return (uint32) (((fImageWidth + width64) - 1) / width64);
		
		}
		
	return 0;

	}
		
/*****************************************************************************/

uint32 dng_ifd::TilesDown () const
	{
	
	if (fTileLength)
		{

		// Use 64-bit math to prevent overflow. RowsPerStrip (assigned to
		// fImageLength during parsing) may be 2^32 - 1, indicating a single
		// strip.

		uint64 length64 = (uint64) fTileLength;

		return (uint32) (((fImageLength + length64) - 1) / length64);
		
		}
		
	return 0;

	}
		
/*****************************************************************************/

uint32 dng_ifd::TilesPerImage () const
	{
	
	uint32 total = SafeUint32Mult (TilesAcross (),
								   TilesDown ());
	
	if (fPlanarConfiguration == pcPlanar)
		{
		
		total = SafeUint32Mult (total,
								fSamplesPerPixel);
		
		}
		
	return total;
	
	}
		
/*****************************************************************************/

dng_rect dng_ifd::TileArea (uint32 rowIndex,
							uint32 colIndex) const
	{
	
	dng_rect r;
	
	r.t = rowIndex * fTileLength;
	r.b = r.t	   + fTileLength;
	
	r.l = colIndex * fTileWidth;
	r.r = r.l	   + fTileWidth;
	
	// If this IFD is using strips rather than tiles, the last strip
	// is trimmed so it does not extend beyond the end of the image.
	
	if (fUsesStrips)
		{
		
		r.b = Min_uint32 (r.b, fImageLength);
		
		}
		
	return r;
	
	}
			
/*****************************************************************************/

uint32 dng_ifd::TileByteCount (const dng_rect &tile) const
	{
	
	if (fCompression == ccUncompressed)
		{
		
		uint32 bitsPerRow = SafeUint32Mult (tile.W (),
											fBitsPerSample [0]);
							
		if (fPlanarConfiguration == pcInterleaved)
			{
			
			bitsPerRow = SafeUint32Mult (bitsPerRow,
										 fSamplesPerPixel);
			
			}
							
		uint32 bytesPerRow = SafeUint32DivideUp (bitsPerRow, 8);
		
		if (fPlanarConfiguration == pcRowInterleaved)
			{
			
			bytesPerRow = SafeUint32Mult (bytesPerRow,
										  fSamplesPerPixel);
			
			}
		
		return SafeUint32Mult (bytesPerRow, tile.H ());
		
		}

	return 0;
	
	}
		
/*****************************************************************************/

uint64 dng_ifd::MaxImageDataByteCount () const
	{
	
	// CR-4208475 K-L3: Keep this conservative upper-bound estimate in
	// checked arithmetic so malformed geometry cannot wrap a smaller size.

	const auto safeMult = [] (uint64 lhs, uint64 rhs) -> uint64
		{

		if (lhs != 0 && rhs > ((uint64) -1) / lhs)
			{

			ThrowOverflow ();

			}

		return lhs * rhs;

		};

	uint64 bitsPerRow = safeMult (safeMult ((uint64) fTileWidth,
											(uint64) fSamplesPerPixel),
								  (uint64) fBitsPerSample [0]);
						
	uint64 bytesPerRow = SafeUint64Add (bitsPerRow, 7) >> 3;
	
	uint64 bytesPerTile = safeMult (bytesPerRow, fTileLength);
	
	// Round up for TIFF format tile data alignment.
	
	if (bytesPerTile & 1) bytesPerTile = SafeUint64Add (bytesPerTile, 1);
	
	// Deal with possible compression expansion.
	
	if (fCompression != ccUncompressed)
		{
	
		if (fCompression == ccDeflate)
			{
			
			// ZLib says maximum is source size + 0.1% + 12 bytes.
			
			bytesPerTile = SafeUint64Add (bytesPerTile,
										  bytesPerTile >> 8,
										  12);
			
			}
	
		else
			{
			
			// Add a slop factor for compression expansion.
		
			bytesPerTile = SafeUint64Add (bytesPerTile,
										  bytesPerTile >> 2,
										  1024);
			
			}
			
		}
		
	return safeMult (bytesPerTile, TilesPerImage ());
	
	}
		
/*****************************************************************************/

void dng_ifd::SetSingleStrip ()
	{
	
	fTileWidth	= fImageWidth;
	fTileLength = fImageLength;
	
	fUsesTiles	= false;
	fUsesStrips = true;
	
	}
		
/*****************************************************************************/

void dng_ifd::FindTileSize (uint32 bytesPerTile,
							uint32 cellH,
							uint32 cellV)
	{
	
	uint32 bytesPerSample =
		SafeUint32Mult (fSamplesPerPixel,
						((fBitsPerSample [0] + 7) >> 3));

	if (bytesPerSample == 0)
		{
		ThrowBadFormat ("zero bytesPerSample in FindTileSize");
		}

	uint32 samplesPerTile = bytesPerTile / bytesPerSample;
	
	uint32 tileSide = Round_uint32 (sqrt ((real64) samplesPerTile));
	
	fTileWidth = Min_uint32 (fImageWidth, tileSide);
		
	fTileWidth = Min_uint32 (fTileWidth, 32 * 1024);

	uint32 across = TilesAcross ();

	DNG_REQUIRE (across > 0, "Bad number of tiles across in dng_ifd::FindTileSize");
								 
	fTileWidth = (fImageWidth + across - 1) / across;
	
	fTileWidth = ((fTileWidth + cellH - 1) / cellH) * cellH;
		
	fTileWidth = Min_uint32 (fTileWidth, fImageWidth);
		
	fTileLength = Pin_uint32 (1,
							  samplesPerTile / fTileWidth,
							  fImageLength);
							  
	fTileLength = Min_uint32 (fTileLength, 32 * 1024);
								  
	uint32 down = TilesDown ();
								 
	fTileLength = (fImageLength + down - 1) / down;
		
	fTileLength = ((fTileLength + cellV - 1) / cellV) * cellV;
	
	fTileLength = Min_uint32 (fTileLength, fImageLength);
	
	fUsesTiles	= true;
	fUsesStrips = false;
		
	}
		
/*****************************************************************************/

void dng_ifd::FindStripSize (uint32 bytesPerStrip,
							 uint32 cellV)
	{

	// CR-4208475 M-M4: Mirror the validation pattern already used in
	// FindTileSize. The raw uint32 multiply and the chained divisions by
	// fTileWidth, TilesDown(), and cellV were all unchecked and could
	// produce division by zero or wrap on attacker-controlled IFD shape.

	uint32 bytesPerSample =
		SafeUint32Mult (fSamplesPerPixel,
						((fBitsPerSample [0] + 7) >> 3));

	if (bytesPerSample == 0)
		{
		ThrowBadFormat ("zero bytesPerSample in FindStripSize");
		}

	uint32 samplesPerStrip = bytesPerStrip / bytesPerSample;

	fTileWidth = fImageWidth;

	if (fTileWidth == 0)
		{
		ThrowBadFormat ("zero fTileWidth in FindStripSize");
		}

	fTileLength = Pin_uint32 (1,
							  samplesPerStrip / fTileWidth,
							  fImageLength);

	uint32 down = TilesDown ();

	DNG_REQUIRE (down > 0,
				 "Bad number of tiles down in dng_ifd::FindStripSize");

	DNG_REQUIRE (cellV > 0,
				 "Bad cellV in dng_ifd::FindStripSize");

	fTileLength = (fImageLength + down - 1) / down;

	fTileLength = ((fTileLength + cellV - 1) / cellV) * cellV;

	fTileLength = Min_uint32 (fTileLength, fImageLength);

	fUsesTiles	= false;
	fUsesStrips = true;

	}
		
/*****************************************************************************/

uint32 dng_ifd::PixelType () const
	{
	
	if (fSampleFormat [0] == sfFloatingPoint)
		{
		return ttFloat;
		}
	
	if (fBitsPerSample [0] <= 8)
		{
		return ttByte;
		}
		
	else if (fBitsPerSample [0] <= 16)
		{
		return ttShort;
		}
		
	return ttLong;
	
	}
		
/*****************************************************************************/

bool dng_ifd::IsBaselineJPEG () const
	{
	
	if (fBitsPerSample [0] != 8)
		{
		return false;
		}
		
	if (fSampleFormat [0] != sfUnsignedInteger)
		{
		return false;
		}

	if (fCompression == ccLossyJPEG)
		{
		return true;
		}
	
	if (fCompression != ccJPEG)
		{
		return false;
		}
		
	switch (fPhotometricInterpretation)
		{
		
		case piBlackIsZero:
			{
			return (fSamplesPerPixel == 1);
			}
			
		case piYCbCr:
			{
			return (fSamplesPerPixel	 == 3			 ) &&
				   (fPlanarConfiguration == pcInterleaved);
			}
			
		default:
			break;
			
		}

	// Some scanned TIFF files have JPEG + alpha channel. Treat these as
	// baseline for purposes of reading. See CR-4205789.

	if ((fCompression == ccJPEG) &&
		(fPhotometricInterpretation == piRGB) &&
		(fSamplesPerPixel == 3 ||
		 fSamplesPerPixel == 4))
		{
		return true;
		}
		
	return false;
	
	}
		
/*****************************************************************************/

bool dng_ifd::CanRead () const
	{
	
	dng_read_image reader;
	
	return reader.CanRead (*this);
	
	}
		
/*****************************************************************************/

void dng_ifd::ReadImage (dng_host &host,
						 dng_stream &stream,
						 dng_image &image,
						 dng_lossy_compressed_image *lossyImage,
						 dng_fingerprint *lossyDigest) const
	{
	
	dng_read_image reader;
	
	reader.Read (host,
				 *this,
				 stream,
				 image,
				 lossyImage,
				 lossyDigest);
					 
	}
			
/*****************************************************************************/
