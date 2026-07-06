/*****************************************************************************/
// Copyright 2006-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_shared.h"

#include "dng_camera_profile.h"
#include "dng_exceptions.h"
#include "dng_gain_map.h"
#include "dng_globals.h"
#include "dng_host.h"
#include "dng_memory.h"
#include "dng_parse_utils.h"
#include "dng_safe_arithmetic.h"
#include "dng_sdk_limits.h"
#include "dng_tag_codes.h"
#include "dng_tag_types.h"
#include "dng_tag_values.h"
#include "dng_temperature.h"
#include "dng_utils.h"

#include <cstdio>
									 
/*****************************************************************************/

bool dng_camera_profile_dynamic_range::IsValid () const
	{
	
	if (fVersion != 1)
		return false;

	if (fDynamicRange >= 2)
		return false;

	if (IsSDR () && fHintMaxOutputValue > 1.0f)
		return false;

	return true;
	
	}

/*****************************************************************************/

void dng_camera_profile_dynamic_range::PutStream (dng_stream &stream) const
	{
	
	stream.Put_uint16 (fVersion);
	
	stream.Put_uint16 (fDynamicRange);

	stream.Put_real32 (fHintMaxOutputValue);
	
	}

/*****************************************************************************/

#if qDNGValidate

/*****************************************************************************/

void dng_camera_profile_dynamic_range::Dump () const
	{
	
	printf ("ProfileDynamicRange: version=%u, range=%s, hint_max=%g\n",
			unsigned (fVersion),
			IsHDR () ? "high" : "standard",
			float (fHintMaxOutputValue));
	
	}

/*****************************************************************************/

#endif	// qDNGValidate

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_camera_profile_info::dng_camera_profile_info ()

	:	fBigEndian (false)
	
	,	fColorPlanes (0)
	
	,	fCalibrationIlluminant1 (lsUnknown)
	,	fCalibrationIlluminant2 (lsUnknown)
	,	fCalibrationIlluminant3 (lsUnknown)

	,	fColorMatrix1 ()
	,	fColorMatrix2 ()
	,	fColorMatrix3 ()
		
	,	fForwardMatrix1 ()
	,	fForwardMatrix2 ()
	,	fForwardMatrix3 ()
		
	,	fReductionMatrix1 ()
	,	fReductionMatrix2 ()
	,	fReductionMatrix3 ()
		
	,	fProfileCalibrationSignature ()
	
	,	fProfileName ()
	
	,	fProfileCopyright ()

	,	fEmbedPolicy (pepAllowCopying)
	
	,	fProfileHues (0)
	,	fProfileSats (0)
	,	fProfileVals (0)

	,	fHueSatDeltas1Offset (0)
	,	fHueSatDeltas1Count	 (0)

	,	fHueSatDeltas2Offset (0)
	,	fHueSatDeltas2Count	 (0)

	,	fHueSatDeltas3Offset (0)
	,	fHueSatDeltas3Count	 (0)

	,	fHueSatMapEncoding (encoding_Linear)
	
	,	fLookTableHues (0)
	,	fLookTableSats (0)
	,	fLookTableVals (0)
		
	,	fLookTableOffset (0)
	,	fLookTableCount	 (0)

	,	fLookTableEncoding (encoding_Linear)

	,	fBaselineExposureOffset (0, 100)
	
	,	fDefaultBlackRender (defaultBlackRender_Auto)

	,	fToneCurveOffset	 (0)
	,	fToneCurveCount		 (0)
	
	,	fToneMethod (profileToneMethod_Unspecified)
	
	,	fUniqueCameraModel ()

	{
	
	}
									 
/*****************************************************************************/

dng_camera_profile_info::~dng_camera_profile_info ()
	{
	
	}
									 
/*****************************************************************************/

DNG_ATTRIB_NO_SANITIZE("unsigned-integer-overflow")
bool dng_camera_profile_info::ParseTag (dng_stream &stream,
										uint32 parentCode,
										uint32 tagCode,
										uint32 tagType,
										uint32 tagCount,
										uint64 tagOffset)
	{

	switch (tagCode)
		{
			
		case tcCalibrationIlluminant1:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fCalibrationIlluminant1 = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("CalibrationIlluminant1: %s\n",
						LookupLightSource (fCalibrationIlluminant1));
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcCalibrationIlluminant2:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fCalibrationIlluminant2 = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("CalibrationIlluminant2: %s\n",
						LookupLightSource (fCalibrationIlluminant2));
				
				}
				
			#endif
				
			break;
			
			}

		case tcCalibrationIlluminant3:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fCalibrationIlluminant3 = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("CalibrationIlluminant3: %s\n",
						LookupLightSource (fCalibrationIlluminant3));
				
				}
				
			#endif
				
			break;
			
			}

		case tcIlluminantData1:
		case tcIlluminantData2:
		case tcIlluminantData3:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttUndefined))
				{
				return false;
				}

			if (!CheckTagCount (parentCode, tagCode, tagCount, 2, 10000))
				{
				return false;
				}

			dng_illuminant_data *dstPtr = &fIlluminantData1;

			if (tagCode == tcIlluminantData2)
				{
				dstPtr = &fIlluminantData2;
				}

			else if (tagCode == tcIlluminantData3)
				{
				dstPtr = &fIlluminantData3;
				}

			#if qDNGValidate
			const char *tagName = LookupTagCode (parentCode, tagCode);
			#else
			const char *tagName = "";
			#endif
			
			dstPtr->Get (stream,
						 tagCount,
						 tagName);
				
			break;
			
			}

		case tcColorMatrix1:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (fColorPlanes == 0)
				{
			
				fColorPlanes = Pin_uint32 (0, tagCount / 3, kMaxColorPlanes);
									
				}
				
			if (!CheckColorImage (parentCode, tagCode, fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 fColorPlanes,
								 3,
								 fColorMatrix1))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ColorMatrix1:\n");
				
				DumpMatrix (fColorMatrix1);
								
				}
				
			#endif
				
			break;
			
			}

		case tcColorMatrix2:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			// Kludge - Hasselblad FFF files are very DNG-like, but sometimes
			// only have a ColorMatrix2 tag and no ColorMatrix1 tag.
			
			bool hasselbladHack = (fColorPlanes == 0);
			
			if (hasselbladHack)
				{
				
				fColorPlanes = Pin_uint32 (0, tagCount / 3, kMaxColorPlanes);
				
				#if qDNGValidate
				
				ReportWarning ("ColorMatrix2 without ColorMatrix1");
				
				#endif
			
				}
			
			if (!CheckColorImage (parentCode, tagCode, fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 fColorPlanes,
								 3,
								 fColorMatrix2))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ColorMatrix2:\n");
				
				DumpMatrix (fColorMatrix2);
								
				}
				
			#endif
				
			if (hasselbladHack)
				{
				
				fColorMatrix1 = fColorMatrix2;
				
				fColorMatrix2 = dng_matrix ();
				
				}
				
			break;
			
			}

		case tcColorMatrix3:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (fColorPlanes == 0)
				{
			
				fColorPlanes = Pin_uint32 (0, tagCount / 3, kMaxColorPlanes);
									
				}
				
			if (!CheckColorImage (parentCode, tagCode, fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 fColorPlanes,
								 3,
								 fColorMatrix3))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ColorMatrix3:\n");
				
				DumpMatrix (fColorMatrix3);
								
				}
				
			#endif
				
			break;
			
			}

		case tcForwardMatrix1:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 3,
								 fColorPlanes,
								 fForwardMatrix1))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ForwardMatrix1:\n");
				
				DumpMatrix (fForwardMatrix1);
								
				}
				
			#endif
				
			break;
			
			}

		case tcForwardMatrix2:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 3,
								 fColorPlanes,
								 fForwardMatrix2))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ForwardMatrix2:\n");
				
				DumpMatrix (fForwardMatrix2);
								
				}
				
			#endif
				
			break;
			
			}

		case tcForwardMatrix3:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 3,
								 fColorPlanes,
								 fForwardMatrix3))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ForwardMatrix3:\n");
				
				DumpMatrix (fForwardMatrix3);
								
				}
				
			#endif
				
			break;
			
			}

		case tcReductionMatrix1:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 3,
								 fColorPlanes,
								 fReductionMatrix1))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ReductionMatrix1:\n");
				
				DumpMatrix (fReductionMatrix1);
								
				}
				
			#endif
				
			break;
			
			}

		case tcReductionMatrix2:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 3,
								 fColorPlanes,
								 fReductionMatrix2))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ReductionMatrix2:\n");
				
				DumpMatrix (fReductionMatrix2);
								
				}
				
			#endif
				
			break;
			
			}

		case tcReductionMatrix3:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 3,
								 fColorPlanes,
								 fReductionMatrix3))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ReductionMatrix3:\n");
				
				DumpMatrix (fReductionMatrix3);
								
				}
				
			#endif
				
			break;
			
			}

		case tcProfileCalibrationSignature:
			{

			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fProfileCalibrationSignature,
							false);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("ProfileCalibrationSignature: ");
				
				DumpString (fProfileCalibrationSignature);
				
				printf ("\n");
				
				}

			#endif
			
			break;
			
			}
			
		case tcProfileName:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fProfileName,
							false);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("ProfileName: ");
				
				DumpString (fProfileName);
				
				printf ("\n");
				
				}
				
			#endif
			
			break;
			
			}
			
		case tcProfileCopyright:
			{

			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fProfileCopyright,
							false);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("ProfileCopyright: ");
				
				DumpString (fProfileCopyright);
				
				printf ("\n");
				
				}

			#endif
			
			break;
			
			}

		case tcProfileEmbedPolicy:
			{
				
			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fEmbedPolicy = stream.TagValue_uint32 (tagType);

			#if qDNGValidate

			if (gVerbose)
				{
				
				const char *policy;

				switch (fEmbedPolicy)
					{

					case pepAllowCopying:
						policy = "Allow copying";
						break;

					case pepEmbedIfUsed:
						policy = "Embed if used";
						break;

					case pepEmbedNever:
						policy = "Embed never";
						break;

					case pepNoRestrictions:
						policy = "No restrictions";
						break;

					default:
						policy = "INVALID VALUE";
	
					}

				printf ("ProfileEmbedPolicy: %s\n", policy);
								
				}

			#endif

			break;
			
			}

		case tcProfileHueSatMapDims:
			{
				
			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 2, 3);
			
			fProfileHues = stream.TagValue_uint32 (tagType);
			fProfileSats = stream.TagValue_uint32 (tagType);

			if (tagCount > 2)
				fProfileVals = stream.TagValue_uint32 (tagType);
			else
				fProfileVals = 1;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("ProfileHueSatMapDims: Hues = %u, Sats = %u, Vals = %u\n",
						(unsigned) fProfileHues,
						(unsigned) fProfileSats,
						(unsigned) fProfileVals);
								
				}
				
			#endif

			break;
			
			}

		case tcProfileHueSatMapData1:
			{

			if (!CheckTagType (parentCode, tagCode, tagType, ttFloat))
				return false;

			if (fProfileSats == 0)
				return false;

			dng_safe_uint32 hueCount (fProfileHues);
			dng_safe_uint32 valCount (fProfileVals);
				
			bool skipSat0 = (tagCount == (hueCount * 
										  (fProfileSats - 1) *
										  (valCount * 3u)).Get ());
			
			if (!skipSat0)
				{

				dng_safe_uint32 expected = hueCount * valCount * fProfileSats * 3u;
			
				if (!CheckTagCount (parentCode, 
									tagCode, 
									tagCount, 
									expected.Get ()))
					{
					return false;
					}
					
				}
				
			fBigEndian = stream.BigEndian ();
				
			fHueSatDeltas1Offset = tagOffset;
			fHueSatDeltas1Count	 = tagCount;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("ProfileHueSatMapData1:\n");
				
				DumpHueSatMap (stream,
							   fProfileHues,
							   fProfileSats,
							   fProfileVals,
							   skipSat0);
					
				}
				
			#endif

			break;
			
			}

		case tcProfileHueSatMapData2:
			{

			if (!CheckTagType (parentCode, tagCode, tagType, ttFloat))
				return false;
			
			if (fProfileSats == 0)
				return false;

			dng_safe_uint32 hueCount (fProfileHues);
			dng_safe_uint32 valCount (fProfileVals);
				
			bool skipSat0 = (tagCount == (hueCount * 
										  (fProfileSats - 1) *
										  (valCount * 3u)).Get ());
			
			if (!skipSat0)
				{
			
				dng_safe_uint32 expected = hueCount * valCount * fProfileSats * 3u;
			
				if (!CheckTagCount (parentCode, 
									tagCode, 
									tagCount, 
									expected.Get ()))
					{
					return false;
					}
					
				}
			
			fBigEndian = stream.BigEndian ();
				
			fHueSatDeltas2Offset = tagOffset;
			fHueSatDeltas2Count	 = tagCount;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("ProfileHueSatMapData2:\n");
				
				DumpHueSatMap (stream,
							   fProfileHues,
							   fProfileSats,
							   fProfileVals,
							   skipSat0);
					
				}
				
			#endif

			break;
			
			}

		case tcProfileHueSatMapData3:
			{

			if (!CheckTagType (parentCode, tagCode, tagType, ttFloat))
				return false;
			
			if (fProfileSats == 0)
				return false;

			dng_safe_uint32 hueCount (fProfileHues);
			dng_safe_uint32 valCount (fProfileVals);
				
			bool skipSat0 = (tagCount == (hueCount * 
										  (fProfileSats - 1) *
										  (valCount * 3u)).Get ());
			
			if (!skipSat0)
				{
			
				dng_safe_uint32 expected = hueCount * valCount * fProfileSats * 3u;
			
				if (!CheckTagCount (parentCode, 
									tagCode, 
									tagCount, 
									expected.Get ()))
					{
					return false;
					}
					
				}
			
			fBigEndian = stream.BigEndian ();
				
			fHueSatDeltas3Offset = tagOffset;
			fHueSatDeltas3Count	 = tagCount;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("ProfileHueSatMapData3:\n");
				
				DumpHueSatMap (stream,
							   fProfileHues,
							   fProfileSats,
							   fProfileVals,
							   skipSat0);
					
				}
				
			#endif

			break;
			
			}

		case tcProfileHueSatMapEncoding:
			{

			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fHueSatMapEncoding = stream.TagValue_uint32 (tagType);

			#if qDNGValidate

			if (gVerbose)
				{
				
				const char *encoding = NULL;

				switch (fHueSatMapEncoding)
					{

					case encoding_Linear:
						encoding = "Linear";
						break;

					case encoding_sRGB:
						encoding = "sRGB";
						break;

					default:
						encoding = "INVALID VALUE";
	
					}

				printf ("ProfileHueSatMapEncoding: %s\n", encoding);
								
				}

			#endif

			break;
			
			}

		case tcProfileLookTableDims:
			{
				
			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 2, 3);
			
			fLookTableHues = stream.TagValue_uint32 (tagType);
			fLookTableSats = stream.TagValue_uint32 (tagType);

			if (tagCount > 2)
				fLookTableVals = stream.TagValue_uint32 (tagType);
			else
				fLookTableVals = 1;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("ProfileLookTableDims: Hues = %u, Sats = %u, Vals = %u\n",
						(unsigned) fLookTableHues,
						(unsigned) fLookTableSats,
						(unsigned) fLookTableVals);
								
				}
				
			#endif

			break;
			
			}

		case tcProfileLookTableData:
			{

			if (!CheckTagType (parentCode, tagCode, tagType, ttFloat))
				return false;
			
			if (fLookTableSats == 0)
				return false;

			dng_safe_uint32 hueCount (fLookTableHues);
			dng_safe_uint32 valCount (fLookTableVals);
				
			bool skipSat0 = (tagCount == (hueCount *
										  (fLookTableSats - 1) * 
										  valCount * 3u).Get ());
			
			if (!skipSat0)
				{
			
				dng_safe_uint32 expected = hueCount * valCount * fLookTableSats * 3u;
			
				if (!CheckTagCount (parentCode, 
									tagCode, 
									tagCount, 
									expected.Get ()))
					{
					return false;
					}
					
				}
			
			fBigEndian = stream.BigEndian ();
				
			fLookTableOffset = tagOffset;
			fLookTableCount	 = tagCount;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("ProfileLookTableData:\n");
				
				DumpHueSatMap (stream,
							   fLookTableHues,
							   fLookTableSats,
							   fLookTableVals,
							   skipSat0);
					
				}
				
			#endif

			break;
			
			}

		case tcProfileLookTableEncoding:
			{

			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fLookTableEncoding = stream.TagValue_uint32 (tagType);

			#if qDNGValidate

			if (gVerbose)
				{
				
				const char *encoding = NULL;

				switch (fLookTableEncoding)
					{

					case encoding_Linear:
						encoding = "Linear";
						break;

					case encoding_sRGB:
						encoding = "sRGB";
						break;

					default:
						encoding = "INVALID VALUE";
	
					}

				printf ("ProfileLookTableEncoding: %s\n", encoding);
								
				}

			#endif

			break;
			
			}

		case tcBaselineExposureOffset:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fBaselineExposureOffset = stream.TagValue_srational (tagType);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("BaselineExposureOffset: %+0.2f\n",
						fBaselineExposureOffset.As_real64 ());
						
				}
				
			#endif
				
			break;
			
			}
			
		case tcDefaultBlackRender:
			{

			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fDefaultBlackRender = stream.TagValue_uint32 (tagType);

			#if qDNGValidate

			if (gVerbose)
				{
				
				const char *setting = NULL;

				switch (fDefaultBlackRender)
					{

					case defaultBlackRender_Auto:
						setting = "Auto";
						break;

					case defaultBlackRender_None:
						setting = "None";
						break;

					default:
						setting = "INVALID VALUE";
	
					}

				printf ("DefaultBlackRender: %s\n", 
						setting);
								
				}

			#endif

			break;
			
			}

		case tcProfileToneCurve:
			{
				
			if (!CheckTagType (parentCode, tagCode, tagType, ttFloat))
				return false;
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 4, tagCount))
				return false;
		
			if ((tagCount & 1) != 0)
				{
				
				#if qDNGValidate
				
					{
						
					char message [256];
					
					snprintf (message,
							  256,
							  "%s %s has odd count (%u)",
							  LookupParentCode (parentCode),
							  LookupTagCode (parentCode, tagCode),
							  (unsigned) tagCount);
							 
					ReportWarning (message);
								 
					}
					
				#endif
					
				return false;
				
				}
			
			fBigEndian = stream.BigEndian ();
				
			fToneCurveOffset = tagOffset;
			fToneCurveCount	 = tagCount;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				DumpTagValues (stream,
							   "Coord",
							   parentCode,
							   tagCode,
							   tagType,
							   tagCount);
					
								
				}
				
			#endif

			break;
			
			}

		case tcProfileToneMethod:
			{

			CheckTagType (parentCode, tagCode, tagType, ttLong);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fToneMethod = stream.TagValue_uint32 (tagType);

			#if qDNGValidate

			if (gVerbose)
				{
				
				const char *setting = NULL;

				switch (fToneMethod)
					{

					case profileToneMethod_Unspecified:
						setting = "Unspecified";
						break;

					case profileToneMethod_AdobePV5:
						setting = "Adobe PV5";
						break;

					case profileToneMethod_AdobePV6:
						setting = "Adobe PV6";
						break;

					default:
						setting = "INVALID VALUE";
	
					}

				printf ("ProfileToneMethod: %s\n",
						setting);
								
				}

			#endif

			break;
			
			}

		case tcUniqueCameraModel:
			{
			
			// Note: This code is only used when parsing stand-alone
			// profiles.  The embedded profiles are assumed to be restricted
			// to the model they are embedded in.
			
			CheckTagType (parentCode, tagCode, tagType, ttAscii);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fUniqueCameraModel,
							false);
							
			bool didTrim = fUniqueCameraModel.TrimTrailingBlanks ();
			
			#if qDNGValidate
			
			if (didTrim)
				{
				
				ReportWarning ("UniqueCameraModel string has trailing blanks");
				
				}
			
			if (gVerbose)
				{
				
				printf ("UniqueCameraModel: ");
				
				DumpString (fUniqueCameraModel);
				
				printf ("\n");
				
				}
				
			#else
			
			(void) didTrim;		// Unused
				
			#endif
			
			break;
			
			}

		case tcProfileGainTableMap2:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttUndefined))
				return false;

			// For Camera Profile IFD, only ProfileGainTableMap2 is permitted;
			// not the original ProfileGainTableMap.
			
			constexpr bool useVersion2format = true;

			dng_host host;					 // use default allocator

			fProfileGainTableMap.reset
				(dng_gain_table_map::GetStream (host,
												stream,
												useVersion2format,
												tagCount));

			auto pgtm = fProfileGainTableMap;
			
			#if qDNGValidate

			if (pgtm && gVerbose)
				{

				dng_md5_printer_le_stream printer;
				
				pgtm->AddDigest (printer);

				auto digest = printer.Result ();

				char str [2 * dng_fingerprint::kDNGFingerprintSize + 1];

				digest.ToUtf8HexString (str);

				printf ("ProfileGainTableMap2 (digest): %s\n", str);
				
				}

			#endif	// qDNGValidate
			
			if (stream.Position () > SafeUint64Add (tagOffset,
													(uint64) tagCount))
				ThrowBadFormat ("tcProfileGainTableMap2 parse error");
			
			break;
			
			}

		case tcProfileDynamicRange:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttUndefined))
				return false;

			if (!CheckTagCount (parentCode, tagCode, tagCount, 8))
				return false;

			uint16 version = stream.Get_uint16 ();

			if (version == 1)
				{
				
				fProfileDynamicRange.fVersion = version;
				
				fProfileDynamicRange.fDynamicRange = stream.Get_uint16 ();
				
				fProfileDynamicRange.fHintMaxOutputValue = stream.Get_real32 ();
				
				}

			else
				{
				
				ThrowBadFormat ("Unsupported version in ProfileDynamicRange");
				
				}
			
			#if qDNGValidate

			if (gVerbose)
				fProfileDynamicRange.Dump ();
			
			#endif

			break;

			}

		case tcProfileGroupName:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);

			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fProfileGroupName,
							false);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("ProfileGroupName: ");
				
				DumpString (fProfileGroupName);
				
				printf ("\n");
				
				}

			#endif	// qDNGValidate
			
			break;

			}

		case tcRGBTablesDraft:
		case tcRGBTables:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttUndefined))
				return false;

			const bool isDraft = (tagCode == tcRGBTablesDraft);

			dng_host host;

			fMaskedRGBTables.reset (dng_masked_rgb_tables::GetStream (host,
																	  stream,
																	  isDraft,
																	  tagCount));

			#if qDNGValidate

			if (gVerbose && fMaskedRGBTables)
				{

				dng_md5_printer_le_stream printer;
				
				fMaskedRGBTables->AddDigest (printer);

				const dng_fingerprint &digest = printer.Result ();

				dng_string str = digest.ToUtf8HexString ();

				const char *tagName = isDraft ? "RGBTablesDraft" : "RGBTables";

				printf ("%s (digest): %s\n", tagName, str.Get ());

				fMaskedRGBTables->Dump ();
				
				}

			#endif	// qDNGValidate
			
			if (stream.Position () > SafeUint64Add (tagOffset,
													(uint64) tagCount))
				{
				
				ThrowBadFormat ("tcRGBTables parse error");
				
				}
			
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

bool dng_camera_profile_info::ParseExtended (dng_stream &stream)
	{

	try
		{
		
		// Offsets are relative to the start of this structure, not the entire file.

		uint64 startPosition = stream.Position ();

		// Read header. Like a TIFF header, but with different magic number
		// Plus all offsets are relative to the start of the IFD, not to the
		// stream or file.

		uint16 byteOrder = stream.Get_uint16 ();

		if (byteOrder == byteOrderMM)
			fBigEndian = true;
			
		else if (byteOrder == byteOrderII)
			fBigEndian = false;
			
		else
			return false;

		TempBigEndian setEndianness (stream, fBigEndian);

		uint16 magicNumber = stream.Get_uint16 ();

		if (magicNumber != magicExtendedProfile)
			{
			return false;
			}

		uint32 offset = stream.Get_uint32 ();

		if (offset < 8)
			{
			return false;
			}

		const uint64 ifdOffset = SafeUint64Add (startPosition, offset);

		if (ifdOffset > stream.Length ())
			{
			return false;
			}

		stream.SetReadPosition (ifdOffset);

		// Start on IFD entries.

		uint32 ifdEntries = stream.Get_uint16 ();
	
		if (ifdEntries < 1)
			{
			return false;
			}

		const uint32 entryTableBytes = SafeUint32Mult (ifdEntries, 12u);

		if (SafeUint64Add (stream.Position (), entryTableBytes) > stream.Length ())
			{
			return false;
			}
		
		for (uint32 tag_index = 0; tag_index < ifdEntries; tag_index++)
			{
			
			const uint64 entryOffset =
				SafeUint64Add (ifdOffset,
							   2u,
							   SafeUint32Mult (tag_index, 12u));

			stream.SetReadPosition (entryOffset);
			
			uint16 tagCode	= stream.Get_uint16 ();
			uint32 tagType	= stream.Get_uint16 ();
			uint32 tagCount = stream.Get_uint32 ();
			
			uint64 tagOffset = stream.Position ();

			const uint32 tagSize = SafeUint32Mult (TagTypeSize (tagType),
												   tagCount);

			if (tagSize > 4)
				{

				tagOffset = SafeUint64Add (startPosition, stream.Get_uint32 ());

				if (SafeUint64Add (tagOffset, tagSize) > stream.Length ())
					{
					return false;
					}

				stream.SetReadPosition (tagOffset);

				}
				
			if (!ParseTag (stream,
						   0,
						   tagCode,
						   tagType,
						   tagCount,
						   tagOffset))
				{
				
				#if qDNGValidate
		
				if (gVerbose)
					{
							
					stream.SetReadPosition (tagOffset);
				
					printf ("*");
						
					DumpTagValues (stream,
								   LookupTagType (tagType),
								   0,
								   tagCode,
								   tagType,
								   tagCount);
					
					}
					
				#endif

				}

			}
			
		return true;

		}
		
	catch (...)
		{
		
		// Eat parsing errors.
		
		}

	return false;
	
	}

/*****************************************************************************/

dng_shared::dng_shared ()
	
	:	fExifIFD			 (0)
	,	fGPSInfo			 (0)
	,	fInteroperabilityIFD (0)
	,	fKodakDCRPrivateIFD	 (0)
	,	fKodakKDCPrivateIFD	 (0)
		
	,	fXMPCount  (0)
	,	fXMPOffset (0)
		
	,	fIPTC_NAA_Count	 (0)
	,	fIPTC_NAA_Offset (0)
	
	,	fMakerNoteCount	 (0)
	,	fMakerNoteOffset (0)
	,	fMakerNoteSafety (0)
	
	,	fDNGVersion			(0)
	,	fDNGBackwardVersion (0)
	
	,	fUniqueCameraModel	  ()
	,	fLocalizedCameraModel ()
	
	,	fCameraProfile ()
	
	,	fExtraCameraProfiles ()
	
	,	fCameraCalibration1 ()
	,	fCameraCalibration2 ()
	,	fCameraCalibration3 ()
		
	,	fCameraCalibrationSignature	 ()

	,	fAnalogBalance ()
		
	,	fAsShotNeutral ()
		
	,	fAsShotWhiteXY ()
	
	,	fBaselineExposure	   (0, 1)
	,	fBaselineNoise		   (1, 1)
	,	fBaselineSharpness	   (1, 1)
	,	fLinearResponseLimit   (1, 1)
	,	fShadowScale		   (1, 1)
	
	,	fHasBaselineExposure (false)
	,	fHasShadowScale		 (false)
	
	,	fDNGPrivateDataCount  (0)
	,	fDNGPrivateDataOffset (0)
	
	,	fRawImageDigest	   ()
	,	fNewRawImageDigest ()
	
	,	fRawDataUniqueID ()
	
	,	fOriginalRawFileName ()
		
	,	fOriginalRawFileDataCount  (0)
	,	fOriginalRawFileDataOffset (0)
	
	,	fOriginalRawFileDigest ()
		
	,	fAsShotICCProfileCount	(0)
	,	fAsShotICCProfileOffset (0)
	
	,	fAsShotPreProfileMatrix ()
		
	,	fCurrentICCProfileCount	 (0)
	,	fCurrentICCProfileOffset (0)
	
	,	fCurrentPreProfileMatrix ()
	
	,	fColorimetricReference (crSceneReferred)

	,	fAsShotProfileName ()

	,	fOriginalDefaultFinalSize	  ()
	,	fOriginalBestQualityFinalSize ()
		
	,	fOriginalDefaultCropSizeH ()
	,	fOriginalDefaultCropSizeV ()

	,	fDepthFormat	  (depthFormatUnknown)
	,	fDepthNear		  (0, 0)
	,	fDepthFar		  (0, 0)
	,	fDepthUnits		  (depthUnitsUnknown)
	,	fDepthMeasureType (depthMeasureUnknown)

	,	fBigTableDigests	()
	,	fBigTableOffsets	()
	,	fBigTableByteCounts ()
		
	{
	
	}
	
/*****************************************************************************/

dng_shared::~dng_shared ()
	{
	
	}
		
/*****************************************************************************/

bool dng_shared::ParseTag (dng_stream &stream,
						   dng_exif &exif,
						   uint32 parentCode,
						   bool /* isMainIFD */,
						   uint32 tagCode,
						   uint32 tagType,
						   uint32 tagCount,
						   uint64 tagOffset,
						   int64 /* offsetDelta */)
	{
	
	if (parentCode == 0)
		{
		
		if (Parse_ifd0 (stream,
						exif,
						parentCode,
						tagCode,
						tagType,
						tagCount,
						tagOffset))
			{
			
			return true;
			
			}

		}
		
	if (parentCode == 0 ||
		parentCode == tcExifIFD)
		{
		
		if (Parse_ifd0_exif (stream,
							 exif,
							 parentCode,
							 tagCode,
							 tagType,
							 tagCount,
							 tagOffset))
			{
			
			return true;
			
			}

		}
		
	if (parentCode == 0 ||
		(parentCode >= tcFirstChainedIFD &&
		 parentCode <= tcLastChainedIFD))
		{

		// Parse tags allowed to appear in IFD0 or any IFD in the main chain.

		if (Parse_main_chain_ifd (stream,
								  exif,
								  parentCode,
								  tagCode,
								  tagType,
								  tagCount,
								  tagOffset))
			{

			return true;

			}

		}

	return false;
		
	}

/*****************************************************************************/

// Parses tags that should only appear in IFD 0.

bool dng_shared::Parse_ifd0 (dng_stream &stream,
							 dng_exif & /* exif */,
							 uint32 parentCode,
							 uint32 tagCode,
							 uint32 tagType,
							 uint32 tagCount,
							 uint64 tagOffset)
	{
	
	switch (tagCode)
		{
			
		case tcXMP:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttByte, ttUndefined);
			
			fXMPCount  = tagCount;
			fXMPOffset = fXMPCount ? tagOffset : 0;
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("XMP: Count = %u, Offset = %u\n",
						(unsigned) fXMPCount,
						(unsigned) fXMPOffset);
						
				if (fXMPCount)
					{
						
					DumpXMP (stream, fXMPCount);
					
					}
						
				}
				
			#endif
				
			break;
			
			}

		case tcIPTC_NAA:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong, ttAscii, ttUndefined);
			
			fIPTC_NAA_Count = (dng_safe_uint32 (tagCount) * TagTypeSize (tagType)).Get ();
			fIPTC_NAA_Offset = fIPTC_NAA_Count ? tagOffset : 0;
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("IPTC/NAA: Count = %u, Offset = %llu\n",
						(unsigned) fIPTC_NAA_Count,
						(unsigned long long) fIPTC_NAA_Offset);
						
				if (fIPTC_NAA_Count)
					{
						
					DumpHexAscii (stream, fIPTC_NAA_Count);
					
					}
					
				// Compute and output the digest.
				
				dng_memory_data buffer (fIPTC_NAA_Count);
				
				stream.SetReadPosition (fIPTC_NAA_Offset);
				
				stream.Get (buffer.Buffer (), fIPTC_NAA_Count);
				
				const uint8 *data = buffer.Buffer_uint8 ();
				
				uint32 count = fIPTC_NAA_Count;
				
				// Method 1: Counting all bytes (this is correct).
				
					{
					
					dng_md5_direct_printer printer;
		
					printer.ProcessPtr (data, count);
					
					printf ("IPTCDigest: ");
					
					DumpFingerprint (printer.Result ());
					
					printf ("\n");
					
					}
					
				// Method 2: Ignoring zero padding.
					
					{
					
					uint32 removed = 0;
			
					while ((removed < 3) && (count > 0) && (data [count - 1] == 0))
						{
						removed++;
						count--;
						}
						
					if (removed != 0)
						{
					
						dng_md5_direct_printer printer;
			
						printer.ProcessPtr (data, count);
						
						printf ("IPTCDigest (ignoring zero padding): ");
						
						DumpFingerprint (printer.Result ());
						
						printf ("\n");
						
						}
					
					}
					
				}
				
			#endif
				
			break;
			
			}

		case tcExifIFD:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong, ttIFD, ttLong8, ttIFD8);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fExifIFD = stream.TagValue_uint64 (tagType);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("ExifIFD: %llu\n", (unsigned long long) fExifIFD);
				}
				
			#endif
				
			break;
			
			}
		
		case tcGPSInfo:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong, ttIFD, ttLong8, ttIFD8);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fGPSInfo = stream.TagValue_uint64 (tagType);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("GPSInfo: %llu\n", (unsigned long long) fGPSInfo);
				}
				
			#endif
				
			break;
			
			}
				
		case tcKodakDCRPrivateIFD:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong, ttIFD);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fKodakDCRPrivateIFD = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("KodakDCRPrivateIFD: %u\n", (unsigned) fKodakDCRPrivateIFD);
				}
				
			#endif
				
			break;
			
			}
		
		case tcKodakKDCPrivateIFD:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong, ttIFD);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fKodakKDCPrivateIFD = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("KodakKDCPrivateIFD: %u\n", (unsigned) fKodakKDCPrivateIFD);
				}
				
			#endif
				
			break;
			
			}
			
		case tcDNGVersion:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttByte);
			
			CheckTagCount (parentCode, tagCode, tagCount, 4);
			
			uint32 b0 = stream.Get_uint8 ();
			uint32 b1 = stream.Get_uint8 ();
			uint32 b2 = stream.Get_uint8 ();
			uint32 b3 = stream.Get_uint8 ();
			
			fDNGVersion = (b0 << 24) | (b1 << 16) | (b2 << 8) | b3;
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("DNGVersion: %u.%u.%u.%u\n",
						(unsigned) b0,
						(unsigned) b1,
						(unsigned) b2,
						(unsigned) b3);
				}
				
			#endif
			
			break;
			
			}
				
		case tcDNGBackwardVersion:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttByte);
			
			CheckTagCount (parentCode, tagCode, tagCount, 4);
			
			uint32 b0 = stream.Get_uint8 ();
			uint32 b1 = stream.Get_uint8 ();
			uint32 b2 = stream.Get_uint8 ();
			uint32 b3 = stream.Get_uint8 ();
			
			fDNGBackwardVersion = (b0 << 24) | (b1 << 16) | (b2 << 8) | b3;
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				printf ("DNGBackwardVersion: %u.%u.%u.%u\n", 
						(unsigned) b0, 
						(unsigned) b1, 
						(unsigned) b2, 
						(unsigned) b3);
				}
				
			#endif
			
			break;
			
			}
				
		case tcUniqueCameraModel:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttAscii);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fUniqueCameraModel,
							false);
							
			bool didTrim = fUniqueCameraModel.TrimTrailingBlanks ();
			
			#if qDNGValidate
			
			if (didTrim)
				{
				
				ReportWarning ("UniqueCameraModel string has trailing blanks");
				
				}
			
			if (gVerbose)
				{
				
				printf ("UniqueCameraModel: ");
				
				DumpString (fUniqueCameraModel);
				
				printf ("\n");
				
				}
				
			#else
			
			(void) didTrim;		// Unused
				
			#endif
			
			break;
			
			}

		case tcLocalizedCameraModel:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fLocalizedCameraModel,
							false);
			
			bool didTrim = fLocalizedCameraModel.TrimTrailingBlanks ();
			
			#if qDNGValidate
			
			if (didTrim)
				{
				
				ReportWarning ("LocalizedCameraModel string has trailing blanks");
				
				}
			
			if (gVerbose)
				{
				
				printf ("LocalizedCameraModel: ");
				
				DumpString (fLocalizedCameraModel);
				
				printf ("\n");
				
				}
				
			#else
			
			(void) didTrim;		// Unused
				
			#endif
			
			break;
			
			}
			
		case tcCameraCalibration1:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fCameraProfile.fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 fCameraProfile.fColorPlanes,
								 fCameraProfile.fColorPlanes,
								 fCameraCalibration1))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("CameraCalibration1:\n");
				
				DumpMatrix (fCameraCalibration1);
								
				}
				
			#endif
				
			break;
			
			}

		case tcCameraCalibration2:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fCameraProfile.fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 fCameraProfile.fColorPlanes,
								 fCameraProfile.fColorPlanes,
								 fCameraCalibration2))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("CameraCalibration2:\n");
				
				DumpMatrix (fCameraCalibration2);
								
				}
				
			#endif
				
			break;
			
			}

		case tcCameraCalibration3:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fCameraProfile.fColorPlanes))
				return false;
				
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 fCameraProfile.fColorPlanes,
								 fCameraProfile.fColorPlanes,
								 fCameraCalibration3))
				return false;
				
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("CameraCalibration3:\n");
				
				DumpMatrix (fCameraCalibration3);
								
				}
				
			#endif
				
			break;
			
			}

		case tcCameraCalibrationSignature:
			{

			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fCameraCalibrationSignature,
							false);
			
			#if qDNGValidate
						
			if (gVerbose)
				{
				
				printf ("CameraCalibrationSignature: ");
				
				DumpString (fCameraCalibrationSignature);
				
				printf ("\n");
				
				}

			#endif
			
			break;
			
			}
			
		case tcAnalogBalance:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			// Kludge - Hasselblad FFF files are very DNG-like, but sometimes
			// they don't have any ColorMatrix tags.
			
			bool hasselbladHack = (fDNGVersion == 0 &&
								   fCameraProfile.fColorPlanes == 0);
			
			if (hasselbladHack)
				{
				
				fCameraProfile.fColorPlanes = Pin_uint32 (0, tagCount, kMaxColorPlanes);
				
				#if qDNGValidate
				
				ReportWarning ("AnalogBalance without ColorMatrix1");
				
				#endif
			
				}
			
			if (!CheckColorImage (parentCode, tagCode, fCameraProfile.fColorPlanes))
				return false;
				
			if (!ParseVectorTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 fCameraProfile.fColorPlanes,
								 fAnalogBalance))
				return false;
	
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("AnalogBalance:");
				
				DumpVector (fAnalogBalance);
								
				}
				
			#endif
				
			break;
			
			}
			
		case tcAsShotNeutral:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			// Kludge - Hasselblad FFF files are very DNG-like, but sometimes
			// they don't have any ColorMatrix tags.
			
			bool hasselbladHack = (fDNGVersion == 0 &&
								   fCameraProfile.fColorPlanes == 0);
			
			if (hasselbladHack)
				{
				
				fCameraProfile.fColorPlanes = Pin_uint32 (0, tagCount, kMaxColorPlanes);
				
				#if qDNGValidate
				
				ReportWarning ("AsShotNeutral without ColorMatrix1");
				
				#endif
			
				}
			
			if (!CheckColorImage (parentCode, tagCode, fCameraProfile.fColorPlanes))
				return false;
				
			if (!ParseVectorTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 fCameraProfile.fColorPlanes,
								 fAsShotNeutral))
				return false;
	
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("AsShotNeutral:");
				
				DumpVector (fAsShotNeutral);
								
				}
				
			#endif
				
			break;
			
			}
			
		case tcAsShotWhiteXY:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			if (!CheckColorImage (parentCode, tagCode, fCameraProfile.fColorPlanes))
				return false;
				
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				return false;
				
			fAsShotWhiteXY.x = stream.TagValue_real64 (tagType);
			fAsShotWhiteXY.y = stream.TagValue_real64 (tagType);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("AsShotWhiteXY: %0.4f %0.4f\n",
						fAsShotWhiteXY.x,
						fAsShotWhiteXY.y);
						
				}
				
			#endif
				
			break;
			
			}
			
		case tcBaselineExposure:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fBaselineExposure = stream.TagValue_srational (tagType);
			
			fHasBaselineExposure = true;
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("BaselineExposure: %+0.2f\n",
						fBaselineExposure.As_real64 ());
						
				}
				
			#endif
				
			break;
			
			}
			
		case tcBaselineNoise:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fBaselineNoise = stream.TagValue_urational (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("BaselineNoise: %0.2f\n",
						fBaselineNoise.As_real64 ());
						
				}
				
			#endif
				
			break;
			
			}
			
		case tcBaselineSharpness:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fBaselineSharpness = stream.TagValue_urational (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("BaselineSharpness: %0.2f\n",
						fBaselineSharpness.As_real64 ());
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcLinearResponseLimit:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fLinearResponseLimit = stream.TagValue_urational (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("LinearResponseLimit: %0.2f\n",
						fLinearResponseLimit.As_real64 ());
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcShadowScale:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fShadowScale = stream.TagValue_urational (tagType);
			
			fHasShadowScale = true;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("ShadowScale: %0.4f\n",
						fShadowScale.As_real64 ());
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcDNGPrivateData:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttByte);
			
			fDNGPrivateDataCount  = tagCount;
			fDNGPrivateDataOffset = tagOffset;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("DNGPrivateData: Count = %u, Offset = %u\n",
						(unsigned) fDNGPrivateDataCount,
						(unsigned) fDNGPrivateDataOffset);
						
				DumpHexAscii (stream, tagCount);
				
				}
				
			#endif
			
			break;
			
			}
			
		case tcMakerNoteSafety:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fMakerNoteSafety = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("MakerNoteSafety: %s\n",
						LookupMakerNoteSafety (fMakerNoteSafety));
				
				}
				
			#endif
			
			break;
			
			}
			
		case tcRawImageDigest:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttByte))
				return false;
				
			if (!CheckTagCount (parentCode, tagCode, tagCount, 16))
				return false;
				
			stream.Get (fRawImageDigest);
				
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("RawImageDigest: ");
				
				DumpFingerprint (fRawImageDigest);
									
				printf ("\n");
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcNewRawImageDigest:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttByte))
				return false;
				
			if (!CheckTagCount (parentCode, tagCode, tagCount, 16))
				return false;
				
			stream.Get (fNewRawImageDigest);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("NewRawImageDigest: ");
				
				DumpFingerprint (fNewRawImageDigest);
									
				printf ("\n");
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcRawDataUniqueID:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttByte))
				return false;
				
			if (!CheckTagCount (parentCode, tagCode, tagCount, 16))
				return false;
				
			stream.Get (fRawDataUniqueID);
				
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("RawDataUniqueID: ");
				
				DumpFingerprint (fRawDataUniqueID);
									
				printf ("\n");
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcOriginalRawFileName:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fOriginalRawFileName,
							false);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("OriginalRawFileName: ");
				
				DumpString (fOriginalRawFileName);
				
				printf ("\n");
				
				}
				
			#endif
			
			break;
			
			}
			
		case tcOriginalRawFileData:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttUndefined);
			
			fOriginalRawFileDataCount  = tagCount;
			fOriginalRawFileDataOffset = tagOffset;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("OriginalRawFileData: Count = %u, Offset = %u\n",
						(unsigned) fOriginalRawFileDataCount,
						(unsigned) fOriginalRawFileDataOffset);
						
				DumpHexAscii (stream, tagCount);
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcOriginalRawFileDigest:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttByte))
				return false;
				
			if (!CheckTagCount (parentCode, tagCode, tagCount, 16))
				return false;
				
			stream.Get (fOriginalRawFileDigest);
				
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("OriginalRawFileDigest: ");
				
				DumpFingerprint (fOriginalRawFileDigest);
									
				printf ("\n");
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcAsShotICCProfile:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttUndefined);
			
			fAsShotICCProfileCount	= tagCount;
			fAsShotICCProfileOffset = tagOffset;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("AsShotICCProfile: Count = %u, Offset = %u\n",
						(unsigned) fAsShotICCProfileCount,
						(unsigned) fAsShotICCProfileOffset);
						
				DumpHexAscii (stream, tagCount);
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcAsShotPreProfileMatrix:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fCameraProfile.fColorPlanes))
				return false;
				
			uint32 rows = fCameraProfile.fColorPlanes;
			
			if (tagCount == fCameraProfile.fColorPlanes * 3)
				{
				rows = 3;
				}
			
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 rows,
								 fCameraProfile.fColorPlanes,
								 fAsShotPreProfileMatrix))
				return false;
				
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("AsShotPreProfileMatrix:\n");
				
				DumpMatrix (fAsShotPreProfileMatrix);
								
				}
				
			#endif
				
			break;
			
			}
			
		case tcCurrentICCProfile:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttUndefined);
			
			fCurrentICCProfileCount	 = tagCount;
			fCurrentICCProfileOffset = tagOffset;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("CurrentICCProfile: Count = %u, Offset = %u\n",
						(unsigned) fCurrentICCProfileCount,
						(unsigned) fCurrentICCProfileOffset);
						
				DumpHexAscii (stream, tagCount);
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcCurrentPreProfileMatrix:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttSRational);
			
			if (!CheckColorImage (parentCode, tagCode, fCameraProfile.fColorPlanes))
				return false;
				
			uint32 rows = fCameraProfile.fColorPlanes;
			
			if (tagCount == fCameraProfile.fColorPlanes * 3)
				{
				rows = 3;
				}
			
			if (!ParseMatrixTag (stream,
								 parentCode,
								 tagCode,
								 tagType,
								 tagCount,
								 rows,
								 fCameraProfile.fColorPlanes,
								 fCurrentPreProfileMatrix))
				return false;
				
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("CurrentPreProfileMatrix:\n");
				
				DumpMatrix (fCurrentPreProfileMatrix);
								
				}
				
			#endif
				
			break;
			
			}
			
		case tcColorimetricReference:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fColorimetricReference = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("ColorimetricReference: %s\n",
						LookupColorimetricReference (fColorimetricReference));
				
				}
				
			#endif
				
			break;
			
			}

		case tcExtraCameraProfiles:
			{
				
			CheckTagType (parentCode, tagCode, tagType, ttLong, ttLong8);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1, tagCount);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("ExtraCameraProfiles: %u\n", (unsigned) tagCount);
				
				}
				
			#endif
			
			if (tagCount > 1000)
				{
				ThrowBadFormat ("Too many ExtraCameraProfiles");
				}

			fExtraCameraProfiles.reserve (tagCount);
			
			for (uint32 index = 0; index < tagCount; index++)
				{
				
				#if qDNGValidate

				if (gVerbose)
					{
					
					printf ("\nExtraCameraProfile [%u]:\n\n", (unsigned) index);
					
					}
					
				#endif
			
				uint64 profileOffset = stream.TagValue_uint64 (tagType);
				
				uint64 savePosition = stream.Position ();
				
				dng_camera_profile_info profileInfo;
				
				stream.SetReadPosition (profileOffset);
				
				if (profileInfo.ParseExtended (stream))
					{
					
					fExtraCameraProfiles.push_back (profileInfo);
					
					}
					
				else
					{
					
					#if qDNGValidate

					ReportWarning ("Unable to parse extra camera profile");
					
					#endif
			
					}
					
				stream.SetReadPosition (savePosition);
				
				}

			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("\nDone with ExtraCameraProfiles\n\n");
				
				}
				
			#endif
			
			break;
			
			}
			
		case tcAsShotProfileName:
			{
						
			CheckTagType (parentCode, tagCode, tagType, ttAscii, ttByte);
			
			ParseStringTag (stream,
							parentCode,
							tagCode,
							tagCount,
							fAsShotProfileName,
							false);
			
			#if qDNGValidate
			
			if (gVerbose)
				{
				
				printf ("AsShotProfileName: ");
				
				DumpString (fAsShotProfileName);
				
				printf ("\n");
				
				}
				
			#endif
			
			break;
			
			}

		case tcOriginalDefaultFinalSize:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				return false;
				
			fOriginalDefaultFinalSize.h = stream.TagValue_int32 (tagType);
			fOriginalDefaultFinalSize.v = stream.TagValue_int32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("OriginalDefaultFinalSize: H = %d V = %d\n",
						(int) fOriginalDefaultFinalSize.h,
						(int) fOriginalDefaultFinalSize.v);
						
				}
				
			#endif
			
			break;
			
			}
				
		case tcOriginalBestQualityFinalSize:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				return false;
				
			fOriginalBestQualityFinalSize.h = stream.TagValue_int32 (tagType);
			fOriginalBestQualityFinalSize.v = stream.TagValue_int32 (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("OriginalBestQualityFinalSize: H = %d V = %d\n",
						(int) fOriginalBestQualityFinalSize.h,
						(int) fOriginalBestQualityFinalSize.v);
						
				}
				
			#endif
			
			break;
			
			}
				
		case tcOriginalDefaultCropSize:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort, ttLong, ttRational);
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 2))
				return false;
				
			fOriginalDefaultCropSizeH = stream.TagValue_urational (tagType);
			fOriginalDefaultCropSizeV = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("OriginalDefaultCropSize: H = %0.2f V = %0.2f\n",
						fOriginalDefaultCropSizeH.As_real64 (),
						fOriginalDefaultCropSizeV.As_real64 ());
						
				}
				
			#endif
			
			break;
			
			}
		
		case tcDepthFormat:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fDepthFormat = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("DepthFormat: %s\n",
						LookupDepthFormat (fDepthFormat));
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcDepthNear:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);

			CheckTagCount (parentCode, tagCode, tagCount, 1);

			fDepthNear = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("DepthNear: ");
				
				if (fDepthNear == dng_urational (0, 0))
					{
					printf ("Unknown");
					}
				else if (fDepthNear.d == 0)
					{
					printf ("Infinity");
					}
				else
					{
					printf ("%0.2f", fDepthNear.As_real64 ());
					}
					
				printf ("\n");
					
				}
				
			#endif
			
			break;
			
			}
		
		 case tcDepthFar:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttRational);

			CheckTagCount (parentCode, tagCode, tagCount, 1);

			fDepthFar = stream.TagValue_urational (tagType);
			
			#if qDNGValidate
				
			if (gVerbose)
				{
				
				printf ("DepthFar: ");
				
				if (fDepthFar == dng_urational (0, 0))
					{
					printf ("Unknown");
					}
				else if (fDepthFar.d == 0)
					{
					printf ("Infinity");
					}
				else
					{
					printf ("%0.2f", fDepthFar.As_real64 ());
					}
					
				printf ("\n");
					
				}
				
			#endif
			
			break;
			
			}

		case tcDepthUnits:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fDepthUnits = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("DepthUnits: %s\n",
						LookupDepthUnits (fDepthUnits));
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcDepthMeasureType:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttShort);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fDepthMeasureType = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("DepthMeasureType: %s\n",
						LookupDepthMeasureType (fDepthMeasureType));
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcBigTableDigests:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttByte))
				return false;
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, 16, 0xFFFFFFF0))
				return false;
			
			uint32 count = tagCount >> 4;
			
			if (count > 10000)
				{
				ThrowBadFormat ("Too many BigTable entries");
				}

			fBigTableDigests.clear ();
			fBigTableDigests.reserve (count);
			
			fBigTableOffsets.clear ();
			fBigTableOffsets.reserve (count);
			
			fBigTableByteCounts.clear ();
			fBigTableByteCounts.reserve (count);
			
			for (uint32 index = 0; index < count; index++)
				{
				
				dng_fingerprint fingerprint;
				
				stream.Get (fingerprint);
				
				fBigTableDigests.push_back (fingerprint);
				
				fBigTableOffsets   .push_back (0);
				fBigTableByteCounts.push_back (0);
				
				}
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("BigTableDigests:\n");
				
				for (uint32 index = 0; index < count; index++)
					{
					
					printf ("\t[%u] = ", index);
					
					DumpFingerprint (fBigTableDigests [index]);
					
					printf ("\n");
					
					}
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcBigTableOffsets:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttLong, ttLong8))
				return false;
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, (uint32) fBigTableOffsets.size ()))
				return false;
				
			for (uint32 index = 0; index < tagCount; index++)
				{
				
				fBigTableOffsets [index] = stream.TagValue_uint64 (tagType);
				
				if (fBigTableOffsets [index] >= stream.Length ())
					{
					
					DNG_REPORT ("Invalid big table offset");
					
					fBigTableDigests   .clear ();
					fBigTableOffsets   .clear ();
					fBigTableByteCounts.clear ();
					
					return false;
					
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
			
		case tcBigTableByteCounts:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttLong, ttLong8))
				return false;
			
			if (!CheckTagCount (parentCode, tagCode, tagCount, (uint32) fBigTableByteCounts.size ()))
				return false;
				
			for (uint32 index = 0; index < tagCount; index++)
				{
				
				uint64 byteCount64 = stream.TagValue_uint64 (tagType);
				
				if (byteCount64 > 0xFFFFFFFF)
					{
					continue;
					}
				
				fBigTableByteCounts [index] = (uint32) byteCount64;
				
				if (fBigTableOffsets [index] > stream.Length () ||
					fBigTableByteCounts [index] >
						stream.Length () - fBigTableOffsets [index])
					{
					
					DNG_REPORT ("Invalid big table byte count");
					
					fBigTableDigests   .clear ();
					fBigTableOffsets   .clear ();
					fBigTableByteCounts.clear ();
					
					return false;
					
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
				
				}
				
			#endif
			
			break;
				
			}

		case tcBigTableGroupIndex:
			{
			
			if (!CheckTagType (parentCode, tagCode, tagType, ttByte))
				return false;

			if (!CheckTagCount (parentCode, tagCode, tagCount, 32, 0xFFFFFFF0))
				return false;

			// Pairs of digests:
			// group_digest, dng_fingerprint, 16 bytes
			// instance_digest, dng_fingerprint, 16 bytes
			// Each pair is 32 bytes.
			
			const uint32 count = tagCount >> 5;

			fBigTableGroupIndex.clear ();
			
			for (uint32 index = 0; index < count; index++)
				{
				
				dng_fingerprint groupDigest;
				dng_fingerprint instanceDigest;
				
				stream.Get (groupDigest);
				stream.Get (instanceDigest);

				fBigTableGroupIndex.insert (std::make_pair (groupDigest,
															instanceDigest));
								
				}
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("BigTableGroupIndex:\n");

				uint32 index = 0;

				for (const auto &entry : fBigTableGroupIndex)
					{
					
					printf ("\t[%u] = ", index);
					
					DumpFingerprint (entry.first);

					printf (" -> ");
					
					DumpFingerprint (entry.second);

					printf ("\n");

					index++;
					
					}
				
				}
				
			#endif	// qDNGValidate
				
			break;
			
			}
			
		case tcImageSequenceInfo:
			{

			if (!CheckTagType (parentCode, tagCode, tagType, ttUndefined))
				return false;
			
			constexpr uint32 kMaxTagCount = 1024 * 1024;
			
			constexpr uint32 kMinTagCount = (9 + // Sequence ID
											 2 + // Sequence Type
											 1 + // Frame Info
											 4 + // Index
											 4 + // Count
											 1); // Final

			if (tagCount < kMinTagCount)
				{
				
				#if qDNGValidate
				ReportWarning ("ImageSequenceInfo tag too small -- skipping");
				#endif
				
				return false;
				
				}

			if (tagCount > kMaxTagCount)
				{
				
				#if qDNGValidate
				ReportWarning ("ImageSequenceInfo tag unusually large -- skipping");
				#endif
				
				return false;
				
				}

			dng_image_sequence_info &info = fImageSequenceInfo;

			std::vector<char> buf;

			buf.resize (tagCount + 1);

			char *ptr = &buf [0];

			const uint64 startPosition = stream.Position ();

			if (startPosition > 0xFFFFFFFFFFFFFFFFull - tagCount)
				{
				ThrowBadFormat ("Invalid ImageSequenceInfo tag count");
				}

			const uint64 endPosition = startPosition + tagCount;

			auto getString = [&] ()
				{

				memset (ptr, 0, tagCount + 1);

				uint32 index = 0;

				while (stream.Position () < endPosition)
					{

					char c = (char) stream.Get_uint8 ();

					if (index + 1 < tagCount)
						ptr [index++] = c;

					if (c == 0)
						return;

					}

				ThrowBadFormat ("Unterminated ImageSequenceInfo string");

				};

			// Read sequence ID.

			getString ();

			info.fSequenceID.Set (ptr);

			// Read sequence type.
			
			getString ();

			info.fSequenceType.Set (ptr);

			// Read frame info.

			getString ();

			info.fFrameInfo.Set (ptr);

			if (stream.Position () > endPosition ||
				9 > endPosition - stream.Position ())
				{
				ThrowBadFormat ("Truncated ImageSequenceInfo fields");
				}

			// Get index, count, and final fields.

			TempBigEndian tempEndian (stream);

			info.fIndex = stream.Get_uint32 ();
			info.fCount = stream.Get_uint32 ();
			
			info.fIsFinal = stream.Get_uint8 ();

			stream.SetReadPosition (endPosition);

			#if qDNGValidate

			if (gVerbose)
				{

				printf ("ImageSequenceInfo: seq_id=%s, seq_type=%s, "
						"frame_info=%s, index=%u, count=%u, final=%u\n",
						info.fSequenceID.Get (),
						info.fSequenceType.Get (),
						info.fFrameInfo.Get (),
						unsigned (info.fIndex),
						unsigned (info.fCount),
						unsigned (info.fIsFinal));
						
				
				}
				
			#endif	// qDNGValidate
			
			break;
			
			}

		default:
			{
			
			// The main camera profile tags also appear in IFD 0
			
			return fCameraProfile.ParseTag (stream,
											parentCode,
											tagCode,
											tagType,
											tagCount,
											tagOffset);
			
			}
			
		}

	return true;
	
	}
	
/*****************************************************************************/

// Parses tags that should only appear in IFD 0 or EXIF IFD.

bool dng_shared::Parse_ifd0_exif (dng_stream &stream,
								  dng_exif & /* exif */,
								  uint32 parentCode,
								  uint32 tagCode,
								  uint32 tagType,
								  uint32 tagCount,
								  uint64 tagOffset)
	{
	
	switch (tagCode)
		{
		
		case tcMakerNote:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttUndefined);
			
			fMakerNoteCount	 = tagCount;
			fMakerNoteOffset = tagOffset;
			
			#if qDNGValidate

			if (gVerbose)
				{
				
				printf ("MakerNote: Count = %u, Offset = %u\n",
						(unsigned) fMakerNoteCount,
						(unsigned) fMakerNoteOffset);
						
				DumpHexAscii (stream, tagCount);
				
				}
				
			#endif
				
			break;
			
			}
			
		case tcInteroperabilityIFD:
			{
			
			CheckTagType (parentCode, tagCode, tagType, ttLong, ttIFD);
			
			CheckTagCount (parentCode, tagCode, tagCount, 1);
			
			fInteroperabilityIFD = stream.TagValue_uint32 (tagType);
			
			#if qDNGValidate

			if (gVerbose)
				{
				printf ("InteroperabilityIFD: %u\n", (unsigned) fInteroperabilityIFD);
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

void dng_shared::PostParse (dng_host & /* host */,
							dng_exif & /* exif */)
	{
	
	// Fill in default values for DNG images.
	
	if (fDNGVersion != 0)
		{
		
		// Support for DNG versions before 1.0.0.0.
		
		if (fDNGVersion < dngVersion_1_0_0_0)
			{
			
			#if qDNGValidate
			
			ReportWarning ("DNGVersion less than 1.0.0.0");
						 
			#endif
			
			// The CalibrationIlluminant tags were added just before
			// DNG version 1.0.0.0, and were hardcoded before that.
			
			fCameraProfile.fCalibrationIlluminant1 = lsStandardLightA;
			fCameraProfile.fCalibrationIlluminant2 = lsD65;
			fCameraProfile.fCalibrationIlluminant3 = lsD65;
			
			fDNGVersion = dngVersion_1_0_0_0;

			}
		
		// Default value for DNGBackwardVersion tag.
		
		if (fDNGBackwardVersion == 0)
			{
			
			fDNGBackwardVersion = fDNGVersion & 0xFFFF0000;
			
			}
	
		// Check DNGBackwardVersion value.
		
		if (fDNGBackwardVersion < dngVersion_1_0_0_0)
			{
			
			#if qDNGValidate
			
			ReportWarning ("DNGBackwardVersion less than 1.0.0.0");
						 
			#endif
			
			fDNGBackwardVersion = dngVersion_1_0_0_0;
				
			}

		if (fDNGBackwardVersion > fDNGVersion)
			{
			
			#if qDNGValidate
			
			ReportWarning ("DNGBackwardVersion > DNGVersion");
						 
			#endif
			
			fDNGBackwardVersion = fDNGVersion;
					
			}

		// Check UniqueCameraModel.
		
		if (fUniqueCameraModel.IsEmpty ())
			{
			
			#if qDNGValidate
			
			ReportWarning ("Missing or invalid UniqueCameraModel");
						 
			#endif
			
			fUniqueCameraModel.Set ("Digital Negative");
			
			}
		
		// If we don't know the color depth yet, it must be a monochrome DNG.
		
		if (fCameraProfile.fColorPlanes == 0)
			{
			
			fCameraProfile.fColorPlanes = 1;
			
			}

		if ((fCameraProfile.fCalibrationIlluminant3 != lsUnknown) &&
			fCameraProfile.fColorMatrix3.IsEmpty ())
			{
			
			#if qDNGValidate
			
			ReportWarning ("Ignoring CalibrationIlluminant3 because "
						   "ColorMatrix3 invalid or missing");

			#endif

			fCameraProfile.fCalibrationIlluminant3 = lsUnknown;
						 
			}

		if (fCameraProfile.fCalibrationIlluminant3 == lsUnknown)
			{

			if (fCameraProfile.fColorMatrix3.NotEmpty ())
				{
				
				#if qDNGValidate
			
				ReportWarning ("Ignoring ColorMatrix3 because "
							   "CalibrationIlluminant3 is unknown/missing");
						 
				#endif

				fCameraProfile.fColorMatrix3.Clear ();

				}
			
			if (fCameraProfile.fForwardMatrix3.NotEmpty ())
				{
				
				#if qDNGValidate
			
				ReportWarning ("Ignoring ForwardMatrix3 because "
							   "CalibrationIlluminant3 is unknown/missing");
						 
				#endif

				fCameraProfile.fForwardMatrix3.Clear ();

				}
			
			if (fCameraProfile.fReductionMatrix3.NotEmpty ())
				{
				
				#if qDNGValidate
			
				ReportWarning ("Ignoring ReductionMatrix3 because "
							   "CalibrationIlluminant3 is unknown/missing");
						 
				#endif

				fCameraProfile.fReductionMatrix3.Clear ();

				}
			
			if (fCameraProfile.fHueSatDeltas3Offset != 0 ||
				fCameraProfile.fHueSatDeltas3Count	!= 0)
				{
				
				#if qDNGValidate
			
				ReportWarning ("Ignoring ProfileHueSatMapData3 because "
							   "CalibrationIlluminant3 is unknown/missing");
						 
				#endif

				fCameraProfile.fHueSatDeltas3Offset = 0;
				fCameraProfile.fHueSatDeltas3Count	= 0;

				}
			
			}

		// Check color info.
		
		if (fCameraProfile.fColorPlanes > 1)
			{
			
			// Check illuminant pair. This is for the dual-illuminant model.

			// More detailed checks for triple-illuminant profiles are done in
			// dng_camera_profile::IsValid.
			
			if (fCameraProfile.fColorMatrix2.NotEmpty ())
				{

				// Are illuminants 1 and 2 the same? Start by assuming not.

				bool sameLight = false;

				if (fCameraProfile.fCalibrationIlluminant1 == fCameraProfile.fCalibrationIlluminant2)
					{

					// Lights 1 and 2 have the same tag code. If they are
					// something besides lsOther, then they're the same light.
					
					if (fCameraProfile.fCalibrationIlluminant1 != lsOther)
						{
						
						sameLight = true;
						
						}

					// Both are lsOther, so check the custom data fields for
					// the same white point.

					else
						{
						
						dng_xy_coord white1 = fCameraProfile.fIlluminantData1.WhiteXY ();
						dng_xy_coord white2 = fCameraProfile.fIlluminantData2.WhiteXY ();

						sameLight = (white1 == white2);
						
						}
					
					}
				
				if (fCameraProfile.fCalibrationIlluminant1 == lsUnknown ||
					fCameraProfile.fCalibrationIlluminant2 == lsUnknown ||
					sameLight)
					{
						
					#if qDNGValidate
			
					ReportWarning ("Invalid CalibrationIlluminant pair");
								 
					#endif
								 
					fCameraProfile.fColorMatrix2 = dng_matrix ();
				
					}

				}
				
			// If the colorimetric reference is the ICC profile PCS, then the
			// data must already be white balanced. The "AsShotWhiteXY" is
			// required to be the ICC Profile PCS white point.
			
			if (fColorimetricReference == crICCProfilePCS ||
				fColorimetricReference == crOutputReferredHDR)
				{
				
				if (fAsShotNeutral.NotEmpty ())
					{
					
					#if qDNGValidate
				
					ReportWarning ("AsShotNeutral not allowed for this "
								   "ColorimetricReference value");
								 
					#endif
					
					fAsShotNeutral.Clear ();
					
					}
					
				dng_xy_coord pcs = PCStoXY ();
				
				#if qDNGValidate
					
				if (fAsShotWhiteXY.IsValid ())
					{
					
					if (Abs_real64 (fAsShotWhiteXY.x - pcs.x) > 0.01 ||
						Abs_real64 (fAsShotWhiteXY.y - pcs.y) > 0.01)
						{
						
						ReportWarning ("AsShotWhiteXY does not match the ICC Profile PCS");

						}
						
					}
									 
				#endif
				
				fAsShotWhiteXY = pcs;

				}
				
			else
				{
				
				// Warn if both AsShotNeutral and AsShotWhiteXY are specified.
					
				if (fAsShotNeutral.NotEmpty () && fAsShotWhiteXY.IsValid ())
					{
						
					#if qDNGValidate
				
					ReportWarning ("Both AsShotNeutral and AsShotWhiteXY included");
								 
					#endif
					
					fAsShotWhiteXY = dng_xy_coord ();
									 
					}
					
				// Warn if neither AsShotNeutral nor AsShotWhiteXY are specified.
					
				#if qDNGValidate
				
				if (fAsShotNeutral.IsEmpty () && !fAsShotWhiteXY.IsValid ())
					{
					
					ReportWarning ("Neither AsShotNeutral nor AsShotWhiteXY included",
								   "legal but not recommended");
								 
					}
							
				#endif
					
				}
				
			// Default values of calibration signatures are required for legacy
			// compatibility.

			if (fCameraProfile.fCalibrationIlluminant1 == lsStandardLightA &&
				fCameraProfile.fCalibrationIlluminant2 == lsD65			   &&
				fCameraProfile.fCalibrationIlluminant3 == lsUnknown		   &&
				fCameraCalibration1.Rows () == fCameraProfile.fColorPlanes &&
				fCameraCalibration1.Cols () == fCameraProfile.fColorPlanes &&
				fCameraCalibration2.Rows () == fCameraProfile.fColorPlanes &&
				fCameraCalibration2.Cols () == fCameraProfile.fColorPlanes &&
				fCameraCalibration3.IsEmpty ()							   &&
				fCameraCalibrationSignature.IsEmpty ()					   &&
				fCameraProfile.fProfileCalibrationSignature.IsEmpty ()	   )
				{

				fCameraCalibrationSignature.Set (kAdobeCalibrationSignature);
					
				fCameraProfile.fProfileCalibrationSignature.Set (kAdobeCalibrationSignature);

				}

			}
			
		// Check BaselineNoise.

		if (fBaselineNoise.As_real64 () <= 0.0)
			{
			
			#if qDNGValidate
			
			ReportWarning ("Invalid BaselineNoise");
						 
			#endif
			
			fBaselineNoise = dng_urational (1, 1);
							 
			}
			
		// Check BaselineSharpness.
		
		if (fBaselineSharpness.As_real64 () <= 0.0)
			{
			
			#if qDNGValidate
			
			ReportWarning ("Invalid BaselineSharpness");
						 
			#endif
			
			fBaselineSharpness = dng_urational (1, 1);
							 
			}
			
		// Check LinearResponseLimit.
		
		if (fLinearResponseLimit.As_real64 () < 0.5 ||
			fLinearResponseLimit.As_real64 () > 1.0)
			{
			
			#if qDNGValidate
			
			ReportWarning ("Invalid LinearResponseLimit");
						 
			#endif
			
			fLinearResponseLimit = dng_urational (1, 1);
							 
			}
			
		// Check ShadowScale.
		
		if (fShadowScale.As_real64 () <= 0.0)
			{
			
			#if qDNGValidate
			
			ReportWarning ("Invalid ShadowScale");
						 
			#endif
							 
			fShadowScale = dng_urational (1, 1);
							 
			}
		
		}
	
	}
							   
/*****************************************************************************/

bool dng_shared::IsValidDNG ()
	{
	
	// Check DNGVersion value.
	
	if (fDNGVersion < dngVersion_1_0_0_0)
		{
		
		#if qDNGValidate
		
		if (fDNGVersion != dngVersion_None)
			{

			ReportError ("Invalid DNGVersion");

			}
					 
		#if qDNGValidateTarget
		
		else
			{

			ReportError ("Missing DNGVersion");

			}
			
		#endif
		
		#endif
					 
		return false;
			
		}
		
	// Check DNGBackwardVersion value.
	
	if (fDNGBackwardVersion > dngVersion_Current)
		{
		
		#if qDNGValidate
		
		ReportError ("DNGBackwardVersion (or DNGVersion) is too high");
		
		#endif
		
		ThrowUnsupportedDNG ();
			
		}
		
	// Check color transform info.
	
	if (fCameraProfile.fColorPlanes > 1)
		{
		
		// CameraCalibration1 is optional, but it must be valid if present.
		
		if (fCameraCalibration1.Cols () != 0 ||
			fCameraCalibration1.Rows () != 0)
			{
			
			if (fCameraCalibration1.Cols () != fCameraProfile.fColorPlanes ||
				fCameraCalibration1.Rows () != fCameraProfile.fColorPlanes)
				{
				
				#if qDNGValidate
		
				ReportError ("CameraCalibration1 is wrong size");
							 
				#endif

				return false;
				
				}
				
			// Make sure it is invertable.
			
			try
				{
				
				(void) Invert (fCameraCalibration1);
				
				}
				
			catch (...)
				{
				
				#if qDNGValidate
		
				ReportError ("CameraCalibration1 is not invertable");
							 
				#endif
							 
				return false;
			
				}
				
			}
		
		// CameraCalibration2 is optional, but it must be valid if present.
		
		if (fCameraCalibration2.Cols () != 0 ||
			fCameraCalibration2.Rows () != 0)
			{
			
			if (fCameraCalibration2.Cols () != fCameraProfile.fColorPlanes ||
				fCameraCalibration2.Rows () != fCameraProfile.fColorPlanes)
				{
				
				#if qDNGValidate
		
				ReportError ("CameraCalibration2 is wrong size");
							 
				#endif

				return false;
				
				}
			
			// Make sure it is invertable.
			
			try
				{
				
				(void) Invert (fCameraCalibration2);
				
				}
				
			catch (...)
				{
				
				#if qDNGValidate
	
				ReportError ("CameraCalibration2 is not invertable");
							 
				#endif
							 
				return false;
			
				}
					
			}
			
		// CameraCalibration3 is optional, but it must be valid if present.
		
		if (fCameraCalibration3.Cols () != 0 ||
			fCameraCalibration3.Rows () != 0)
			{
			
			if (fCameraCalibration3.Cols () != fCameraProfile.fColorPlanes ||
				fCameraCalibration3.Rows () != fCameraProfile.fColorPlanes)
				{
				
				#if qDNGValidate
		
				ReportError ("CameraCalibration3 is wrong size");
							 
				#endif

				return false;
				
				}
			
			// Make sure it is invertable.
			
			try
				{
				
				(void) Invert (fCameraCalibration3);
				
				}
				
			catch (...)
				{
				
				#if qDNGValidate
	
				ReportError ("CameraCalibration3 is not invertable");
							 
				#endif
							 
				return false;
			
				}
					
			}
			
		// Check analog balance
		
		dng_matrix analogBalance;
		
		if (fAnalogBalance.NotEmpty ())
			{
			
			analogBalance = fAnalogBalance.AsDiagonal ();
			
			try
				{
				
				(void) Invert (analogBalance);
				
				}
				
			catch (...)
				{
				
				#if qDNGValidate
		
				ReportError ("AnalogBalance is not invertable");
							 
				#endif
							 
				return false;
			
				}
				
			}
				
		}
			
	return true;
	
	}
	
/*****************************************************************************/

// Parses tags that may appear in any IFD in the main IFD chain
// (IFD 0 or any chained IFD reached via the NextIFD pointer).
// If a tag appears in more than one IFD then data from the last
// occurrence will overwrite that of any previous occurrence.
//
// tcC2PAManifest:
// Per the C2PA specification, the C2PA manifest tag shall be located
// within the last IFD of the main-IFD chain.  For TIFF assets with a
// single IFD, it resides in IFD 0.  For assets with more than one IFD,
// it shall be in the last chained IFD.  Because any main-chain IFD is
// a conformant location, we accept the tag from all of them and let
// the last occurrence win (matching the C2PA spec's placement intent).

bool dng_shared::Parse_main_chain_ifd (dng_stream &stream,
									   dng_exif & /* exif */,
									   uint32 parentCode,
									   uint32 tagCode,
									   uint32 tagType,
									   uint32 tagCount,
									   uint64 /* tagOffset */)
	{

	switch (tagCode)
		{

		case tcC2PAManifest:
			{

			CheckTagType (parentCode, tagCode, tagType, ttUndefined);

			fC2PAManifestOffset = stream.Position ();
			fC2PAManifestCount  = tagCount;

			#if qDNGValidate

			if (gVerbose)
				{

				printf ("C2PAManifest: offset = %llu, count = %u\n",
						(unsigned long long) fC2PAManifestOffset,
						(unsigned) 			 fC2PAManifestCount);

				DumpHexAscii (stream, fC2PAManifestCount);

				}

			#endif

			break;

			}

		default:
			return false;

		}

	return true;

	}

/*****************************************************************************/
