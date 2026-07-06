/*****************************************************************************/
// Copyright 2006-2021 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_negative.h"

#include "dng_1d_table.h"
#include "dng_abort_sniffer.h"
#include "dng_area_task.h"
#include "dng_assertions.h"
#include "dng_big_table.h"
#include "dng_bottlenecks.h"
#include "dng_camera_profile.h"
#include "dng_color_space.h"
#include "dng_color_spec.h"
#include "dng_exceptions.h"
#include "dng_file_stream.h"
#include "dng_gain_map.h"
#include "dng_globals.h"
#include "dng_host.h"
#include "dng_image.h"
#include "dng_image_writer.h"
#include "dng_info.h"
#include "dng_jpeg_image.h"
#include "dng_jxl.h"
#include "dng_linearization_info.h"
#include "dng_memory.h"
#include "dng_memory_stream.h"
#include "dng_misc_opcodes.h"
#include "dng_mosaic_info.h"
#include "dng_preview.h"
#include "dng_read_image.h"
#include "dng_resample.h"
#include "dng_safe_arithmetic.h"
#include "dng_sdk_limits.h"
#include "dng_tag_codes.h"
#include "dng_tag_values.h"
#include "dng_tile_iterator.h"
#include "dng_uncopyable.h"
#include "dng_utils.h"

#if qDNGUseXMP
#include "dng_xmp.h"
#endif

/*****************************************************************************/

static const uint32 kMaxEmbeddedMakerNoteBlockSize	= 128u * 1024u * 1024u;
static const uint32 kMaxEmbeddedIPTCBlockSize		= 128u * 1024u * 1024u;
static const uint32 kMaxEmbeddedXMPBlockSize		= 128u * 1024u * 1024u;

/*****************************************************************************/

void dng_semantic_mask::CalcMaskSubArea (dng_point &origin,
										 dng_rect &wholeImageArea) const
	{

	origin.v = (int32) fMaskSubArea [0];	 // top
	origin.h = (int32) fMaskSubArea [1];	 // left

	wholeImageArea.t = (int32) 0;
	wholeImageArea.l = (int32) 0;
	wholeImageArea.b = (int32) fMaskSubArea [3]; // height
	wholeImageArea.r = (int32) fMaskSubArea [2]; // width
	
	}

/*****************************************************************************/

bool dng_semantic_mask::IsMaskSubAreaValid () const
	{

	// Can't do full check without mask itself.

	if (!fMask)
		{
		return false;
		}

	dng_point origin;

	dng_rect wholeImageArea;

	CalcMaskSubArea (origin, wholeImageArea);

	const dng_point maskSize = fMask->Bounds ().Size ();

	dng_rect crop;

	crop.t = origin.v;
	crop.l = origin.h;
	crop.b = origin.v + maskSize.v;
	crop.r = origin.h + maskSize.h;

	if ((crop & wholeImageArea) != crop)
		{
		return false;
		}

	return true;
	
	}

/*****************************************************************************/

dng_noise_profile::dng_noise_profile ()

	:	fNoiseFunctions ()

	{
	
	}

/*****************************************************************************/

dng_noise_profile::dng_noise_profile (const dng_std_vector<dng_noise_function> &functions)

	:	fNoiseFunctions (functions)

	{

	}

/*****************************************************************************/

bool dng_noise_profile::IsValid () const
	{

	if (NumFunctions () == 0 || NumFunctions () > kMaxColorPlanes)
		{
		return false;
		}
	
	for (uint32 plane = 0; plane < NumFunctions (); plane++)
		{
		
		if (!NoiseFunction (plane).IsValid ())
			{
			return false;
			}
		
		}

	return true;
	
	}

/*****************************************************************************/

bool dng_noise_profile::IsValidForNegative (const dng_negative &negative) const
	{
	
	if (!(NumFunctions () == 1 || NumFunctions () == negative.ColorChannels ()))
		{
		return false;
		}

	return IsValid ();

	}

/*****************************************************************************/

const dng_noise_function & dng_noise_profile::NoiseFunction (uint32 plane) const
	{
	
	if (NumFunctions () == 1)
		{
		return fNoiseFunctions.front ();
		}

	DNG_REQUIRE (plane < NumFunctions (), 
				 "Bad plane index argument for NoiseFunction ().");

	return fNoiseFunctions [plane];
	
	}

/*****************************************************************************/

uint32 dng_noise_profile::NumFunctions () const
	{
	return (uint32) fNoiseFunctions.size ();
	}

/*****************************************************************************/

bool dng_noise_profile::operator== (const dng_noise_profile &profile) const
	{
	
	if (IsValid ())
		{
		
		if (!profile.IsValid ())
			{
			return false;
			}
		
		if (NumFunctions () != profile.NumFunctions ())
			{
			return false;
			}
			
		for (uint32 plane = 0; plane < NumFunctions (); plane++)
			{
			
			if (NoiseFunction (plane).Scale	 () != profile.NoiseFunction (plane).Scale	() ||
				NoiseFunction (plane).Offset () != profile.NoiseFunction (plane).Offset ())
				{
				return false;
				}
			
			}

		return true;
		
		}
		
	else
		return !profile.IsValid ();
		
	}

/*****************************************************************************/

dng_metadata::dng_metadata (dng_host &host)

	:	fHasBaseOrientation			(false)
	,	fBaseOrientation			()
	,	fIsMakerNoteSafe			(false)
	,	fMakerNote					()
	,	fExif						(host.Make_dng_exif ())
	,	fOriginalExif				()
	,	fIPTCBlock					()
	,	fIPTCOffset					(kDNGStreamInvalidOffset)
	
	#if qDNGUseXMP
	,	fXMP						(host.Make_dng_xmp ())
	#endif
	
	,	fEmbeddedXMPDigest			()
	,	fXMPinSidecar				(false)
	,	fXMPisNewer					(false)
	,	fSourceMIME					()
	,	fBigTableDictionary			()
	,	fBigTableIndex				()

	{
	}

/*****************************************************************************/

dng_metadata::~dng_metadata ()
	{
	}
	
/******************************************************************************/

template< class T >
T * CloneAutoPtr (const AutoPtr< T > &ptr)
	{
	
	return ptr.Get () ? ptr->Clone () : NULL;
	
	}

/******************************************************************************/

template< class T, typename U >
T * CloneAutoPtr (const AutoPtr< T > &ptr, U &u)
	{
	
	return ptr.Get () ? ptr->Clone (u) : NULL;
	
	}

/******************************************************************************/

dng_metadata::dng_metadata (const dng_metadata &rhs,
							dng_memory_allocator &allocator)

	:	fHasBaseOrientation			(rhs.fHasBaseOrientation)
	,	fBaseOrientation			(rhs.fBaseOrientation)
	,	fIsMakerNoteSafe			(rhs.fIsMakerNoteSafe)
	,	fMakerNote					(CloneAutoPtr (rhs.fMakerNote, allocator))
	,	fExif						(CloneAutoPtr (rhs.fExif))
	,	fOriginalExif				(CloneAutoPtr (rhs.fOriginalExif))
	,	fIPTCBlock					(CloneAutoPtr (rhs.fIPTCBlock, allocator))
	,	fIPTCOffset					(rhs.fIPTCOffset)
	
	#if qDNGUseXMP
	,	fXMP						(CloneAutoPtr (rhs.fXMP))
	#endif
	
	,	fEmbeddedXMPDigest			(rhs.fEmbeddedXMPDigest)
	,	fXMPinSidecar				(rhs.fXMPinSidecar)
	,	fXMPisNewer					(rhs.fXMPisNewer)
	,	fSourceMIME					(rhs.fSourceMIME)
	,	fBigTableDictionary			(rhs.fBigTableDictionary)
	,	fBigTableIndex				(rhs.fBigTableIndex)
	,	fBigTableGroupIndex			(rhs.fBigTableGroupIndex)
	,	fImageSequenceInfo			(rhs.fImageSequenceInfo)
	,	fImageStats					(rhs.fImageStats)

	{

	}

/******************************************************************************/

dng_metadata * dng_metadata::Clone (dng_memory_allocator &allocator) const
	{
	
	return new dng_metadata (*this, allocator);
	
	}

/******************************************************************************/

void dng_metadata::SetBaseOrientation (const dng_orientation &orientation)
	{
	
	fHasBaseOrientation = true;
	
	fBaseOrientation = orientation;
	
	}
		
/******************************************************************************/

void dng_metadata::ApplyOrientation (const dng_orientation &orientation)
	{
	
	fBaseOrientation += orientation;
	
	#if qDNGUseXMP
	fXMP->SetOrientation (fBaseOrientation);
	#endif

	}
				  
/*****************************************************************************/

void dng_metadata::ResetExif (dng_exif * newExif)
	{

	fExif.Reset (newExif);

	}

/******************************************************************************/

dng_memory_block * dng_metadata::BuildExifBlock (dng_memory_allocator &allocator,
												 const dng_resolution *resolution,
												 bool includeIPTC,
												 const dng_jpeg_preview *thumbnail,
												 const uint32 numLeadingZeroBytes) const
	{
	
	dng_memory_stream stream (allocator);
	
		{
	
		// Create the main IFD
											 
		dng_tiff_directory mainIFD;
		
		// Optionally include the resolution tags.
		
		dng_resolution res;
		
		if (resolution)
			{
			res = *resolution;
			}
	
		tag_urational tagXResolution (tcXResolution, res.fXResolution);
		tag_urational tagYResolution (tcYResolution, res.fYResolution);
		
		tag_uint16 tagResolutionUnit (tcResolutionUnit, res.fResolutionUnit);
		
		if (resolution)
			{
			mainIFD.Add (&tagXResolution   );
			mainIFD.Add (&tagYResolution   );
			mainIFD.Add (&tagResolutionUnit);
			}

		// Optionally include IPTC block.
		
		tag_iptc tagIPTC (IPTCData	 (),
						  IPTCLength ());
			
		if (includeIPTC && tagIPTC.Count ())
			{
			mainIFD.Add (&tagIPTC);
			}
							
		// Exif tags.
		
		exif_tag_set exifSet (mainIFD,
							  *GetExif (),
							  IsMakerNoteSafe (),
							  MakerNoteData	  (),
							  MakerNoteLength (),
							  false);
							  
		// Figure out the Exif IFD offset.
		
		uint32 exifOffset = 8 + mainIFD.Size ();
		
		exifSet.Locate (exifOffset);
		
		// Thumbnail IFD (if any).
		
		dng_tiff_directory thumbIFD;
		
		tag_uint16 thumbCompression (tcCompression, ccOldJPEG);
		
		tag_urational thumbXResolution (tcXResolution, dng_urational (72, 1));
		tag_urational thumbYResolution (tcYResolution, dng_urational (72, 1));
		
		tag_uint16 thumbResolutionUnit (tcResolutionUnit, ruInch);
		
		tag_uint32 thumbDataOffset (tcJPEGInterchangeFormat		 , 0);
		tag_uint32 thumbDataLength (tcJPEGInterchangeFormatLength, 0);
		
		if (thumbnail)
			{
			
			thumbIFD.Add (&thumbCompression);
			
			thumbIFD.Add (&thumbXResolution);
			thumbIFD.Add (&thumbYResolution);
			thumbIFD.Add (&thumbResolutionUnit);
			
			thumbIFD.Add (&thumbDataOffset);
			thumbIFD.Add (&thumbDataLength);
			
			thumbDataLength.Set (thumbnail->CompressedData ().LogicalSize ());
			
			uint32 thumbOffset = exifOffset + exifSet.Size ();
			
			mainIFD.SetChained (thumbOffset);
			
			thumbDataOffset.Set (thumbOffset + thumbIFD.Size ());
			
			}
			
		// Don't write anything unless the main IFD has some tags.
		
		if (mainIFD.Size () != 0)
			{
					
			// Write TIFF Header.
			
			stream.SetWritePosition (0);

			stream.Put_uint16 (stream.BigEndian () ? byteOrderMM : byteOrderII);
			
			stream.Put_uint16 (42);
			
			stream.Put_uint32 (8);
			
			// Write the IFDs.
			
			mainIFD.Put (stream);
			
			exifSet.Put (stream);
			
			if (thumbnail)
				{
				
				thumbIFD.Put (stream);
				
				stream.Put (thumbnail->CompressedData ().Buffer		 (),
							thumbnail->CompressedData ().LogicalSize ());
				
				}
				
			// Trim the file to this length.
			
			stream.Flush ();
			
			stream.SetLength (stream.Position ());
			
			}
		
		}
		
	return stream.AsMemoryBlock (allocator,
								 numLeadingZeroBytes);
		
	}
			
/******************************************************************************/

void dng_metadata::SetIPTC (AutoPtr<dng_memory_block> &block, uint64 offset)
	{
	
	fIPTCBlock.Reset (block.Release ());
	
	fIPTCOffset = offset;
	
	}
					  
/******************************************************************************/

void dng_metadata::SetIPTC (AutoPtr<dng_memory_block> &block)
	{
	
	SetIPTC (block, kDNGStreamInvalidOffset);
	
	}
					  
/******************************************************************************/

void dng_metadata::ClearIPTC ()
	{
	
	fIPTCBlock.Reset ();
	
	fIPTCOffset = kDNGStreamInvalidOffset;
	
	}
					  
/*****************************************************************************/

const void * dng_metadata::IPTCData () const
	{
	
	if (fIPTCBlock.Get ())
		{
		
		return fIPTCBlock->Buffer ();
		
		}
		
	return NULL;
	
	}

/*****************************************************************************/

uint32 dng_metadata::IPTCLength () const
	{
	
	if (fIPTCBlock.Get ())
		{
		
		return fIPTCBlock->LogicalSize ();
		
		}
		
	return 0;
	
	}
		
/*****************************************************************************/

uint64 dng_metadata::IPTCOffset () const
	{
	
	if (fIPTCBlock.Get ())
		{
		
		return fIPTCOffset;
		
		}
		
	return kDNGStreamInvalidOffset;
	
	}
		
/*****************************************************************************/

dng_fingerprint dng_metadata::IPTCDigest (bool includePadding) const
	{
	
	if (IPTCLength ())
		{
		
		dng_md5_direct_printer printer;
		
		const uint8 *data = (const uint8 *) IPTCData ();
		
		uint32 count = IPTCLength ();
		
		// Because of some stupid ways of storing the IPTC data, the IPTC
		// data might be padded with up to three zeros.	 The official Adobe
		// logic is to include these zeros in the digest.  However, older
		// versions of the Camera Raw code did not include the padding zeros
		// in the digest, so we support both methods and allow either to
		// match.
		
		if (!includePadding)
			{
		
			uint32 removed = 0;
			
			while ((removed < 3) && (count > 0) && (data [count - 1] == 0))
				{
				removed++;
				count--;
				}
				
			}
		
		printer.ProcessPtr (data, count);
						 
		return printer.Result ();
			
		}
	
	return dng_fingerprint ();
	
	}
		
/******************************************************************************/

#if qDNGUseXMP

/******************************************************************************/

void dng_metadata::RebuildIPTC (dng_memory_allocator &allocator,
								bool padForTIFF)
	{
	
	ClearIPTC ();
	
	fXMP->RebuildIPTC (*this, allocator, padForTIFF);
	
	dng_fingerprint digest = IPTCDigest ();
	
	fXMP->SetIPTCDigest (digest);
	
	}
			  
/*****************************************************************************/

void dng_metadata::ResetXMP (dng_xmp * newXMP)
	{
	
	fXMP.Reset (newXMP);

	}

/*****************************************************************************/

void dng_metadata::ResetXMPSidecarNewer (dng_xmp * newXMP,
										 bool inSidecar,
										 bool isNewer )
	{

	fXMP.Reset (newXMP);

	fXMPinSidecar = inSidecar;

	fXMPisNewer = isNewer;

	}

/*****************************************************************************/

bool dng_metadata::SetXMP (dng_host &host,
						   const void *buffer,
						   uint32 count,
						   bool xmpInSidecar,
						   bool xmpIsNewer)
	{
	
	bool result = false;
	
	try
		{
		
		AutoPtr<dng_xmp> tempXMP (host.Make_dng_xmp ());
		
		dng_big_table_dictionary dictionary = BigTableDictionary ();
		
		DualParseXMP (host,
					  *tempXMP,
					  dictionary,
					  buffer,
					  count);
		
		ResetXMPSidecarNewer (tempXMP.Release (), xmpInSidecar, xmpIsNewer);
		
		SetBigTableDictionary (dictionary);
		
		result = true;
		
		}
		
	catch (dng_exception &except)
		{
		
		// Don't ignore transient errors.
		
		if (host.IsTransientError (except.ErrorCode ()))
			{
			
			throw;
			
			}
			
		// Eat other parsing errors.
		
		}
		
	catch (...)
		{
		
		// Eat unknown parsing exceptions.
		
		}
	
	return result;
	
	}

/*****************************************************************************/

void dng_metadata::SetEmbeddedXMP (dng_host &host,
								   const void *buffer,
								   uint32 count)
	{
	
	if (SetXMP (host, buffer, count))
		{
		
		dng_md5_direct_printer printer;
		
		printer.ProcessPtr (buffer, count);
		
		fEmbeddedXMPDigest = printer.Result ();
		
		// Remove any sidecar specific tags from embedded XMP.
		
		if (fXMP.Get ())
			{
		
			fXMP->Remove (XMP_NS_PHOTOSHOP, "SidecarForExtension");
			fXMP->Remove (XMP_NS_PHOTOSHOP, "EmbeddedXMPDigest");
			
			}
		
		}
		
	else
		{
		
		fEmbeddedXMPDigest.Clear ();
		
		}

	}

/*****************************************************************************/

#endif	// qDNGUseXMP

/*****************************************************************************/

void dng_metadata::SynchronizeMetadata ()
	{

	DNG_REQUIRE (fExif.Get (),
				 "Expected valid fExif field in "
				 "dng_metadata::SynchronizeMetadata");
	
	if (!fOriginalExif.Get ())
		{
		
		fOriginalExif.Reset (fExif->Clone ());
		
		}
		
	#if qDNGUseXMP
	
	fXMP->ValidateMetadata ();
	
	fXMP->IngestIPTC (*this, fXMPisNewer);
	
	fXMP->SyncExif (*fExif.Get ());
	
	fXMP->SyncOrientation (*this, fXMPinSidecar);
	
	#endif
	
	}
					
/*****************************************************************************/

void dng_metadata::UpdateDateTime (const dng_date_time_info &dt)
	{
	
	fExif->UpdateDateTime (dt);
	
	#if qDNGUseXMP
	fXMP->UpdateDateTime (dt);
	#endif
	
	}
					
/*****************************************************************************/

void dng_metadata::UpdateDateTimeToNow ()
	{
	
	dng_date_time_info dt;
	
	CurrentDateTimeAndZone (dt);
	
	UpdateDateTime (dt);
	
	#if qDNGUseXMP
	fXMP->UpdateMetadataDate (dt);
	#endif
	
	}
					
/*****************************************************************************/

void dng_metadata::UpdateMetadataDateTimeToNow ()
	{
	
	dng_date_time_info dt;
	
	CurrentDateTimeAndZone (dt);
	
	#if qDNGUseXMP
	fXMP->UpdateMetadataDate (dt);
	#endif
	
	}
					
/*****************************************************************************/

dng_negative::dng_negative (dng_host &host)

	:	fAllocator						(host.Allocator ())
	
	,	fModelName						()
	,	fLocalName						()
	,	fDefaultCropSizeH				()
	,	fDefaultCropSizeV				()
	,	fDefaultCropOriginH				(0, 1)
	,	fDefaultCropOriginV				(0, 1)
	,	fRawDefaultCropSizeH			()
	,	fRawDefaultCropSizeV			()
	,	fRawDefaultCropOriginH			()
	,	fRawDefaultCropOriginV			()
	,	fDefaultUserCropT				(0, 1)
	,	fDefaultUserCropL				(0, 1)
	,	fDefaultUserCropB				(1, 1)
	,	fDefaultUserCropR				(1, 1)
	,	fDefaultScaleH					(1, 1)
	,	fDefaultScaleV					(1, 1)
	,	fRawDefaultScaleH				()
	,	fRawDefaultScaleV				()
	,	fBestQualityScale				(1, 1)
	,	fRawBestQualityScale			()
	,	fOriginalDefaultFinalSize		()
	,	fOriginalBestQualityFinalSize	()
	,	fOriginalDefaultCropSizeH		()
	,	fOriginalDefaultCropSizeV		()
	,	fRawToFullScaleH				(1.0)
	,	fRawToFullScaleV				(1.0)
	,	fBaselineNoise					(100, 100)
	,	fNoiseReductionApplied			(0, 0)
	,	fRawNoiseReductionApplied		(0, 0)
	,	fNoiseProfile					()
	,	fRawNoiseProfile				()
	,	fBaselineExposure				(  0, 100)
	,	fBaselineSharpness				(100, 100)
	,	fRawBaselineSharpness			(0, 0)
	,	fChromaBlurRadius				()
	,	fAntiAliasStrength				(100, 100)
	,	fLinearResponseLimit			(100, 100)
	,	fShadowScale					(1, 1)
	,	fColorimetricReference			(crSceneReferred)
	,	fFloatingPoint					(false)
	,	fColorChannels					(0)
	,	fAnalogBalance					()
	,	fCameraNeutral					()
	,	fCameraWhiteXY					()
	,	fCameraCalibration1				()
	,	fCameraCalibration2				()
	,	fCameraCalibration3				()
	,	fCameraCalibrationSignature		()
	,	fCameraProfile					()
	,	fAsShotProfileName				()
	,	fRawImageDigest					()
	,	fNewRawImageDigest				()
	,	fRawDataUniqueID				()
	,	fOriginalRawFileName			()
	,	fHasOriginalRawFileData			(false)
	,	fOriginalRawFileData			()
	,	fOriginalRawFileDigest			()
	,	fDNGPrivateData					()
	,	fMetadata						(host)
	,	fLinearizationInfo				()
	,	fMosaicInfo						()
	,	fOpcodeList1					(1)
	,	fOpcodeList2					(2)
	,	fOpcodeList3					(3)
	,	fStage1Image					()
	,	fStage2Image					()
	,	fStage3Image					()
	,	fStage3Gain						(1.0)
	,	fStage3BlackLevel				(0)
	,	fIsPreview						(false)
	,	fIsDamaged						(false)
	,	fRawImageStage					(rawImageStageNone)
	,	fRawImage						()
	,	fRawImageBlackLevel				(0)
	,	fRawFloatBitDepth				(0)
	,	fTransparencyMask				()
	,	fRawTransparencyMask			()
	,	fRawTransparencyMaskBitDepth	(0)
	,	fUnflattenedStage3Image			()
	,	fHasDepthMap					(false)
	,	fDepthMap						()
	,	fRawDepthMap					()
	,	fDepthFormat					(depthFormatUnknown)
	,	fDepthNear						(0, 0)
	,	fDepthFar						(0, 0)
	,	fDepthUnits						(depthUnitsUnknown)
	,	fDepthMeasureType				(depthMeasureUnknown)
	,	fEnhanceParams					()

	{

	}

/*****************************************************************************/

dng_negative::~dng_negative ()
	{
	
	// Delete any camera profiles owned by this negative.
	
	ClearProfiles ();
		
	}

/******************************************************************************/

void dng_negative::Initialize ()
	{
	
	}

/******************************************************************************/

dng_negative * dng_negative::Make (dng_host &host)
	{
	
	AutoPtr<dng_negative> result (new dng_negative (host));
	
	if (!result.Get ())
		{
		ThrowMemoryFull ();
		}
	
	result->Initialize ();
	
	return result.Release ();
	
	}

/******************************************************************************/

dng_metadata * dng_negative::CloneInternalMetadata () const
	{
	
	return InternalMetadata ().Clone (Allocator ());
	
	}

/******************************************************************************/

dng_orientation dng_negative::ComputeOrientation (const dng_metadata &metadata) const
	{
	
	return metadata.BaseOrientation ();
	
	}
		
/******************************************************************************/

void dng_negative::SetAnalogBalance (const dng_vector &b)
	{
	
	real64 minEntry = b.MinEntry ();
	
	if (b.NotEmpty () && minEntry > 0.0)
		{
		
		fAnalogBalance = b;
	
		fAnalogBalance.Scale (1.0 / minEntry);
		
		fAnalogBalance.Round (1000000.0);
		
		}
		
	else
		{
		
		fAnalogBalance.Clear ();
		
		}
		
	}
					  
/*****************************************************************************/

real64 dng_negative::AnalogBalance (uint32 channel) const
	{
	
	DNG_ASSERT (channel < ColorChannels (), "Channel out of bounds");
	
	if (channel < fAnalogBalance.Count ())
		{
		
		return fAnalogBalance [channel];
		
		}
		
	return 1.0;
	
	}
		
/*****************************************************************************/

dng_urational dng_negative::AnalogBalanceR (uint32 channel) const
	{
	
	dng_urational result;
	
	result.Set_real64 (AnalogBalance (channel), 1000000);
	
	return result;
	
	}

/******************************************************************************/

void dng_negative::SetCameraNeutral (const dng_vector &n)
	{
	
	real64 maxEntry = n.MaxEntry ();
		
	if (n.NotEmpty () && maxEntry > 0.0)
		{
		
		fCameraNeutral = n;
	
		fCameraNeutral.Scale (1.0 / maxEntry);
		
		fCameraNeutral.Round (1000000.0);
		
		}
		
	else
		{
		
		fCameraNeutral.Clear ();
		
		}

	}
	  
/*****************************************************************************/

dng_urational dng_negative::CameraNeutralR (uint32 channel) const
	{
	
	dng_urational result;
	
	result.Set_real64 (CameraNeutral () [channel], 1000000);
	
	return result;
	
	}

/******************************************************************************/

void dng_negative::SetCameraWhiteXY (const dng_xy_coord &coord)
	{
	
	if (coord.IsValid ())
		{
		
		fCameraWhiteXY.x = Round_int32 (coord.x * 1000000.0) / 1000000.0;
		fCameraWhiteXY.y = Round_int32 (coord.y * 1000000.0) / 1000000.0;
		
		}
		
	else
		{
		
		fCameraWhiteXY.Clear ();
		
		}
	
	}
		
/*****************************************************************************/

const dng_xy_coord & dng_negative::CameraWhiteXY () const
	{
	
	DNG_ASSERT (HasCameraWhiteXY (), "Using undefined CameraWhiteXY");

	return fCameraWhiteXY;
	
	}
							   
/*****************************************************************************/

void dng_negative::GetCameraWhiteXY (dng_urational &x,
									 dng_urational &y) const
	{
	
	dng_xy_coord coord = CameraWhiteXY ();
	
	x.Set_real64 (coord.x, 1000000);
	y.Set_real64 (coord.y, 1000000);
	
	}
		
/*****************************************************************************/

void dng_negative::SetCameraCalibration1 (const dng_matrix &m)
	{
	
	fCameraCalibration1 = m;
	
	fCameraCalibration1.Round (10000);
	
	}

/******************************************************************************/

void dng_negative::SetCameraCalibration2 (const dng_matrix &m)
	{
	
	fCameraCalibration2 = m;
	
	fCameraCalibration2.Round (10000);
		
	}

/******************************************************************************/

void dng_negative::SetCameraCalibration3 (const dng_matrix &m)
	{
	
	fCameraCalibration3 = m;
	
	fCameraCalibration3.Round (10000);
		
	}

/******************************************************************************/

void dng_negative::AddProfile (AutoPtr<dng_camera_profile> &profile)
	{
	
	// Make sure we have a profile to add.
	
	if (!profile.Get ())
		{
		
		return;
		
		}
	
	// We must have some profile name.	Use "embedded" if nothing else.
	
	if (profile->Name ().IsEmpty ())
		{
		
		profile->SetName (kProfileName_Embedded);
		
		}
		
	// Special case support for reading older DNG files which did not store
	// the profile name in the main IFD profile.
	
	if (fCameraProfile.size ())
		{
		
		// See the first profile has a default "embedded" name, and has
		// the same data as the profile we are adding.
		
		if (fCameraProfile [0]->NameIsEmbedded () &&
			fCameraProfile [0]->EqualData (*profile.Get ()))
			{
			
			// If the profile we are deleting was read from DNG
			// then the new profile should be marked as such also.
			
			if (fCameraProfile [0]->WasReadFromDNG ())
				{
				
				profile->SetWasReadFromDNG ();
				
				}
				
			// If the profile we are deleting wasn't read from disk then the new
			// profile should be marked as such also.
			
			if (!fCameraProfile [0]->WasReadFromDisk ())
				{
				
				profile->SetWasReadFromDisk (false);
				
				}
				
			// Delete the profile with default name.
			
			delete fCameraProfile [0];
			
			fCameraProfile [0] = NULL;
			
			fCameraProfile.erase (fCameraProfile.begin ());
			
			}
		
		}
		
	// Duplicate detection logic.  We give a preference to last added profile
	// so the profiles end up in a more consistent order no matter what profiles
	// happen to be embedded in the DNG.
	
	for (uint32 index = 0; index < (uint32) fCameraProfile.size (); index++)
		{

		// Instead of checking for matching fingerprints, we check that the two
		// profiles have the same color and have the same name. This allows two
		// profiles that are identical except for copyright string and embed policy
		// to be considered duplicates.

		const bool equalColorAndSameName = (fCameraProfile [index]->EqualData (*profile.Get ()) &&
											fCameraProfile [index]->Name () == profile->Name ());

		if (equalColorAndSameName)
			{
			
			// If the profile we are deleting was read from DNG
			// then the new profile should be marked as such also.
			
			if (fCameraProfile [index]->WasReadFromDNG ())
				{
				
				profile->SetWasReadFromDNG ();
				
				}
				
			// If the profile we are deleting wasn't read from disk then the new
			// profile should be marked as such also.
			
			if (!fCameraProfile [index]->WasReadFromDisk ())
				{
				
				profile->SetWasReadFromDisk (false);
				
				}
				
			// Delete the duplicate profile.
			
			delete fCameraProfile [index];
			
			fCameraProfile [index] = NULL;
			
			fCameraProfile.erase (fCameraProfile.begin () + index);
			
			break;
			
			}
			
		}
		
	// Now add to profile list.
	
	fCameraProfile.push_back (NULL);
	
	fCameraProfile [fCameraProfile.size () - 1] = profile.Release ();
	
	}
			
/******************************************************************************/

void dng_negative::ClearProfiles ()
	{
	
	// Delete any camera profiles owned by this negative.
	
	for (uint32 index = 0; index < (uint32) fCameraProfile.size (); index++)
		{
		
		if (fCameraProfile [index])
			{
			
			delete fCameraProfile [index];
			
			fCameraProfile [index] = NULL;
			
			}
		
		}
		
	// Now empty list.
	
	fCameraProfile.clear ();
	
	}

/******************************************************************************/

uint32 dng_negative::ProfileCount () const
	{
	
	return (uint32) fCameraProfile.size ();
	
	}
		
/******************************************************************************/

const dng_camera_profile & dng_negative::ProfileByIndex (uint32 index) const
	{
	
	DNG_ASSERT (index < ProfileCount (),
				"Invalid index for ProfileByIndex");
				
	return *fCameraProfile [index];
		
	}

/*****************************************************************************/

void dng_negative::GetProfileMetadataList (dng_profile_metadata_list &list) const
	{
	
	list.clear ();
	
	list.reserve (ProfileCount ());
	
	for (uint32 index = 0; index < ProfileCount (); index++)
		{
		
		list.push_back (dng_camera_profile_metadata (ProfileByIndex (index),
													 index));
		
		}
	
	}

/*****************************************************************************/

bool dng_negative::GetProfileByMetadata
				   (const dng_camera_profile_metadata &metadata,
					dng_camera_profile &foundProfile) const
	{
	
	if (metadata.fIndex >= 0)
		{
		
		foundProfile = ProfileByIndex (metadata.fIndex);
		
		return true;
		
		}
	
	return false;
	
	}

/*****************************************************************************/

bool dng_negative::GetProfileByIDFromList (const dng_profile_metadata_list &list,
										   const dng_camera_profile_id &id,
										   dng_camera_profile &foundProfile,
										   bool useDefaultIfNoMatch,
										   const dng_camera_profile_group_selector *groupSelector) const
	{
 
	// How many profiles in list?
		
	uint32 profileCount = (uint32) list.size ();
	
	if (profileCount == 0)
		{
		return false;
		}
		
	// If this is a profile group ID, match group names and pick from that list.
	
	if (HasProfileGroupPrefix (id.Name ()))
		{
		
		dng_string groupName = StripProfileGroupPrefix (id.Name ());
		
		dng_camera_profile_group_selector selector;
		
		if (groupSelector)
			{
			selector = *groupSelector;
			}
		
		for (uint32 pass = 1; pass <= 2; pass++)
			{
		
			for (uint32 index = 0; index < profileCount; index++)
				{
				
				if (list [index] . fGroupName == groupName)
					{
					
					if (pass == 1 && (selector.fHDR != list [index] . fHDR))
						{
						continue;
						}
					
					if (GetProfileByMetadata (list [index],
											  foundProfile))
						{
						return true;
						}
					
					}
					
				}
				
			}
		
		}
		
	// If we have both a profile name and fingerprint, try matching both.
	
	if (id.Name ().NotEmpty () && id.Fingerprint ().IsValid ())
		{
		
		for (uint32 index = 0; index < profileCount; index++)
			{
			
			const dng_camera_profile_id &profileID (list [index] . fProfileID);
			
			if (id == profileID)
				{
				
				if (GetProfileByMetadata (list [index],
										  foundProfile))
					{
					return true;
					}

				}
			
			}

		}
		
	// If we have a name, try matching that.
	
	if (id.Name ().NotEmpty ())
		{
		
		// Try case sensitive match first, then ignore case.
		
		for (uint32 pass = 1; pass <= 2; pass++)
			{
			
			bool case_sensitive = (pass == 1);
		
			for (uint32 index = 0; index < profileCount; index++)
				{
				
				const dng_camera_profile_id &profileID (list [index] . fProfileID);
	  
				if (id.Name ().Matches (profileID.Name ().Get (), case_sensitive))
					{
					
					if (GetProfileByMetadata (list [index],
											  foundProfile))
						{
						return true;
						}

					}
					
				}
			
			}

		}
		
	// If we have a valid fingerprint, try matching that.  Since the fingerprint
	// includes the profile name, we only do this if the name is null.
		
	else if (id.Fingerprint ().IsValid ())
		{
		
		for (uint32 index = 0; index < profileCount; index++)
			{
			
			const dng_camera_profile_id &profileID (list [index] . fProfileID);

			if (id.Fingerprint () == profileID.Fingerprint ())
				{
				
				if (GetProfileByMetadata (list [index],
										  foundProfile))
					{
					return true;
					}

				}
			
			}

		}
		
	// Try "upgrading" (or downgrading if required) profile name versions.
	
	if (id.Name ().NotEmpty ())
		{
		
		dng_string baseName;
		int32	   version;
		
		SplitCameraProfileName (id.Name (),
								baseName,
								version);
		
		int32 bestIndex	  = -1;
		int32 bestVersion = 0;
		
		for (uint32 index = 0; index < profileCount; index++)
			{
			
			const dng_camera_profile_id &profileID (list [index] . fProfileID);

			if (profileID.Name ().StartsWith (baseName.Get ()))
				{
				
				dng_string testBaseName;
				int32	   testVersion;
				
				SplitCameraProfileName (profileID.Name (),
										testBaseName,
										testVersion);
					
				if (testBaseName.Matches (baseName.Get ()))
					{
					
					if (bestIndex == -1 || testVersion > bestVersion)
						{
						
						bestIndex	= index;
						bestVersion = testVersion;
						
						}
						
					}
					
				}
				
			}
			
		if (bestIndex != -1)
			{
			
			if (GetProfileByMetadata (list [bestIndex],
									  foundProfile))
				{
				return true;
				}

			}
		
		}
		
	// Did not find a match any way.  See if we should return a default value.
	
	if (useDefaultIfNoMatch)
		{
	
		if (GetProfileByMetadata (list [0],
								  foundProfile))
			{
			return true;
			}
		
		}
		
	// Found nothing.
	
	return false;
		
	}

/*****************************************************************************/

bool dng_negative::GetProfileToEmbedFromList (const dng_profile_metadata_list &list,
											  const dng_metadata & /* metadata */,
											  dng_camera_profile &foundProfile,
											  bool /* skipAdobeStandard = false */) const
	{
	
	 // How many profiles in list?
		
	uint32 profileCount = (uint32) list.size ();
	
	if (profileCount == 0)
		{
		return false;
		}
  
	// First try to look for the first profile that was already in the DNG
	// when we read it.
	
		{
	
		for (uint32 index = 0; index < profileCount; index++)
			{
			
			if (list [index] . fWasReadFromDNG)
				{
				
				if (GetProfileByMetadata (list [index],
										  foundProfile))
					{
					return true;
					}

				}
			
			}
			
		}
		
	// Next we look for the first profile that is legal to embed.
	
		{
	
		for (uint32 index = 0; index < profileCount; index++)
			{
			
			if (list [index] . fIsLegalToEmbed)
				{
				
				if (GetProfileByMetadata (list [index],
										  foundProfile))
					{
					return true;
					}

				}
			
			}
			
		}
		
	// Else just return the first profile.
	
	return GetProfileByMetadata (list [0],
								 foundProfile);

	}

/*****************************************************************************/

bool dng_negative::GetProfileByID (const dng_camera_profile_id &id,
								   dng_camera_profile &foundProfile,
								   bool useDefaultIfNoMatch,
								   const dng_camera_profile_group_selector *groupSelector) const
	{
 
	// Monochrome negatives don't have profiles.
	
	if (IsMonochrome ())
		{
		return false;
		}
		
	// Get list of profile metadata.
		
	dng_profile_metadata_list list;
	
	GetProfileMetadataList (list);
	
	// Search the list.
	
	return GetProfileByIDFromList (list,
								   id,
								   foundProfile,
								   useDefaultIfNoMatch,
								   groupSelector);
		
	}

/*****************************************************************************/

bool dng_negative::GetProfileToEmbed (const dng_metadata &metadata,
									  dng_camera_profile &foundProfile,
									  bool skipAdobeStandard /* = false */) const
	{
	
	// Monochrome negatives don't have profiles.
	
	if (IsMonochrome ())
		{
		return false;
		}
		
	// Get list of profile metadata.
		
	dng_profile_metadata_list list;
	
	GetProfileMetadataList (list);
	
	// Search the list.
	
	return GetProfileToEmbedFromList (list,
									  metadata,
									  foundProfile,
									  skipAdobeStandard);
	
	}
							   
/*****************************************************************************/

dng_color_spec * dng_negative::MakeColorSpec (const dng_camera_profile_id &id,
											  bool allowStubbed) const
	{
	
	dng_camera_profile profile;
	
	bool haveProfile = GetProfileByID (id, profile);

	dng_color_spec *spec = new dng_color_spec (*this,
											   haveProfile ? &profile : NULL,
											   allowStubbed);
											   
	if (!spec)
		{
		ThrowMemoryFull ();
		}
		
	return spec;
	
	}
							   
/*****************************************************************************/

dng_fingerprint dng_negative::FindImageDigest (dng_host &host,
											   const dng_image &image)
	{
	
	dng_md5_direct_printer printer;
	
	dng_pixel_buffer buffer (image.Bounds (), 
							 0, 
							 image.Planes (),
							 image.PixelType (), 
							 pcInterleaved, 
							 NULL);
	
	// Sometimes we expand 8-bit data to 16-bit data while reading or
	// writing, so always compute the digest of 8-bit data as 16-bits.
	
	if (buffer.fPixelType == ttByte)
		{
		buffer.fPixelType = ttShort;
		buffer.fPixelSize = 2;
		}
	
	const uint32 kBufferRows = 16;
	
	uint32 bufferBytes = 0;
	
	if (!SafeUint32Mult (kBufferRows, buffer.fRowStep,	 &bufferBytes) ||
		!SafeUint32Mult (bufferBytes, buffer.fPixelSize, &bufferBytes))
		{
		
		ThrowOverflow ("Arithmetic overflow computing buffer size.");
		
		}
	
	AutoPtr<dng_memory_block> bufferData (host.Allocate (bufferBytes));
	
	buffer.fData = bufferData->Buffer ();
	
	dng_rect area;
	
	dng_tile_iterator iter (dng_point (kBufferRows,
									   image.Width ()),
							image.Bounds ());
							
	while (iter.GetOneTile (area))
		{
		
		host.SniffForAbort ();
		
		buffer.fArea = area;
		
		image.Get (buffer);
		
		uint32 count = SafeUint32Mult (buffer.fArea.H (),
									   (uint32) buffer.fRowStep,
									   buffer.fPixelSize);
					   
		#if qDNGBigEndian
		
		// We need to use the same byte order to compute
		// the digest, no matter the native order.	Little-endian
		// is more common now, so use that.
		
		switch (buffer.fPixelSize)
			{
			
			case 1:
				break;
			
			case 2:
				{
				DoSwapBytes16 ((uint16 *) buffer.fData, count >> 1);
				break;
				}
			
			case 4:
				{
				DoSwapBytes32 ((uint32 *) buffer.fData, count >> 2);
				break;
				}
				
			default:
				{
				DNG_REPORT ("Unexpected pixel size");
				break;
				}
			
			}
		
		#endif

		printer.ProcessPtr (buffer.fData,
							count);
		
		}
			
	return printer.Result ();
	
	}
							   
/*****************************************************************************/

void dng_negative::FindRawImageDigest (dng_host &host) const
	{
	
	if (fRawImageDigest.IsNull ())
		{
		
		// Since we are adding the floating point and transparency support 
		// in DNG 1.4, and there are no legacy floating point or transparent
		// DNGs, switch to using the more MP friendly algorithm to compute
		// the digest for these images.
		
		if (RawImage ().PixelType () == ttFloat || RawTransparencyMask ())
			{
			
			FindNewRawImageDigest (host);
			
			fRawImageDigest = fNewRawImageDigest;
			
			}
			
		else
			{
			
			#if qDNGValidate
			
			dng_timer timeScope ("FindRawImageDigest time");

			#endif
		
			fRawImageDigest = FindImageDigest (host, RawImage ());
			
			}
	
		}
	
	}
							   
/*****************************************************************************/

class dng_find_new_raw_image_digest_task : public dng_area_task
	{
	
	private:
	
		enum
			{
			kTileSize = 256
			};
			
		const dng_image &fImage;
		
		uint32 fPixelType;
		uint32 fPixelSize;
		
		uint32 fTilesAcross;
		uint32 fTilesDown;
		
		uint32 fTileCount;
		
		AutoArray<dng_fingerprint> fTileHash;
		
		AutoPtr<dng_memory_block> fBufferData [kMaxMPThreads];
	
	public:
	
		dng_find_new_raw_image_digest_task (const dng_image &image,
											uint32 pixelType)

			:	dng_area_task ("dng_find_new_raw_image_digest_task")
		
			,	fImage		 (image)
			,	fPixelType	 (pixelType)
			,	fPixelSize	 (TagTypeSize (pixelType))
			,	fTilesAcross (0)
			,	fTilesDown	 (0)
			,	fTileCount	 (0)
			,	fTileHash    ()

			{

			fMinTaskArea = 1;

			// CR-4208475 N-M5: reject empty image bounds before fUnitCell
			// collapses to (0, 0) and Start / Process divide by it. The
			// digest API has no meaningful answer for an empty image, so
			// fail-closed mirrors the D-1-8 dng_tile_iterator pattern.

			if (fImage.Bounds ().IsEmpty ())
				{
				ThrowProgramError ("Empty image bounds in tile digest task");
				}

			fUnitCell = dng_point (Min_int32 (kTileSize, fImage.Bounds ().H ()),
								   Min_int32 (kTileSize, fImage.Bounds ().W ()));

			fMaxTileSize = fUnitCell;

			}
	
		virtual void Start (uint32 threadCount,
							const dng_rect & /* dstArea */,
							const dng_point &tileSize,
							dng_memory_allocator *allocator,
							dng_abort_sniffer * /* sniffer */)
			{
			
			if (tileSize != fUnitCell)
				{
				ThrowProgramError ();
				}
				
			fTilesAcross = (fImage.Bounds ().W () + fUnitCell.h - 1) / fUnitCell.h;
			fTilesDown	 = (fImage.Bounds ().H () + fUnitCell.v - 1) / fUnitCell.v;
			
			fTileCount = SafeUint32Mult (fTilesAcross, fTilesDown);
						 
			fTileHash.Reset (fTileCount);
			
			const uint32 bufferSize =
				ComputeBufferSize (fPixelType, 
								   tileSize, 
								   fImage.Planes (),
								   padNone);
								
			for (uint32 index = 0; index < threadCount; index++)
				{
				
				fBufferData [index].Reset (allocator->Allocate (bufferSize));
				
				}
			
			}

		virtual void Process (uint32 threadIndex,
							  const dng_rect &tile,
							  dng_abort_sniffer * /* sniffer */)
			{
			
			int32 colIndex = (tile.l - fImage.Bounds ().l) / fUnitCell.h;
			int32 rowIndex = (tile.t - fImage.Bounds ().t) / fUnitCell.v;
			
			DNG_ASSERT (tile.l == fImage.Bounds ().l + colIndex * fUnitCell.h &&
						tile.t == fImage.Bounds ().t + rowIndex * fUnitCell.v,
						"Bad tile origin");
			
			uint32 tileIndex = rowIndex * fTilesAcross + colIndex;
			
			dng_pixel_buffer buffer (tile, 
									 0, 
									 fImage.Planes (),
									 fPixelType, 
									 pcPlanar,
									 fBufferData [threadIndex]->Buffer ());
			
			fImage.Get (buffer);
			
			uint32 count = SafeUint32Mult ((uint32) buffer.fPlaneStep,
										   buffer.fPlanes,
										   buffer.fPixelSize);
			
			#if qDNGBigEndian
			
			// We need to use the same byte order to compute
			// the digest, no matter the native order.	Little-endian
			// is more common now, so use that.
			
			switch (buffer.fPixelSize)
				{
				
				case 1:
					break;
				
				case 2:
					{
					DoSwapBytes16 ((uint16 *) buffer.fData, count >> 1);
					break;
					}
				
				case 4:
					{
					DoSwapBytes32 ((uint32 *) buffer.fData, count >> 2);
					break;
					}
					
				default:
					{
					DNG_REPORT ("Unexpected pixel size");
					break;
					}
				
				}

			#endif
			
			dng_md5_direct_printer printer;
			
			printer.ProcessPtr (buffer.fData, count);
							 
			fTileHash [tileIndex] = printer.Result ();
			
			}
			
		dng_fingerprint Result ()
			{
			
			dng_md5_direct_printer printer;
			
			for (uint32 tileIndex = 0; tileIndex < fTileCount; tileIndex++)
				{
				
				printer.Process (fTileHash [tileIndex]);
				
				}
				
			return printer.Result ();
			
			}
		
	};

/*****************************************************************************/

dng_fingerprint dng_negative::FindFastImageDigest (dng_host &host,
												   const dng_image &image,
												   uint32 pixelType)
	{
	
	dng_find_new_raw_image_digest_task task (image, pixelType);
	
	host.PerformAreaTask (task, image.Bounds ());
	
	return task.Result ();
	
	}
	
/*****************************************************************************/

void dng_negative::FindNewRawImageDigest (dng_host &host) const
	{
	
	if (fNewRawImageDigest.IsNull ())
		{
		
		#if qDNGValidate
		
		dng_timer timeScope ("FindNewRawImageDigest time");

		#endif
		
		// Find fast digest of the raw image.
		
			{
		
			const dng_image &rawImage = RawImage ();
			
			// Find pixel type that will be saved in the file.	When saving DNGs, we convert
			// some 16-bit data to 8-bit data, so we need to do the matching logic here.
			
			uint32 rawPixelType = rawImage.PixelType ();
			
			if (rawPixelType == ttShort)
				{
			
				// See if we are using a linearization table with <= 256 entries, in which
				// case the useful data will all fit within 8-bits.
				
				const dng_linearization_info *rangeInfo = GetLinearizationInfo ();
			
				if (rangeInfo)
					{

					if (rangeInfo->fLinearizationTable.Get ())
						{
						
						uint32 entries = rangeInfo->fLinearizationTable->LogicalSize () >> 1;
						
						if (entries <= 256)
							{
							
							rawPixelType = ttByte;
							
							}
														
						}
						
					}

				}
			
			// Find the fast digest on the raw image.
				
			fNewRawImageDigest = FindFastImageDigest (host, rawImage, rawPixelType);
				
			}
			
		// If there is a transparency mask, we need to include that in the
		// digest also.
		
		if (RawTransparencyMask () != NULL)
			{
			
			// Find the fast digest on the raw mask.
			
			dng_fingerprint maskDigest;
			
				{
				
				dng_find_new_raw_image_digest_task task (*RawTransparencyMask (),
														 RawTransparencyMask ()->PixelType ());
				
				host.PerformAreaTask (task, RawTransparencyMask ()->Bounds ());
				
				maskDigest = task.Result ();
				
				}
				
			// Combine the two digests into a single digest.
			
			dng_md5_direct_printer printer;
			
			printer.Process (fNewRawImageDigest);
			
			printer.Process (maskDigest);
			
			fNewRawImageDigest = printer.Result ();
			
			}
		
		}
	
	}
							   
/*****************************************************************************/

void dng_negative::ValidateRawImageDigest (dng_host &host)
	{
	
	if (Stage1Image () && !IsPreview () && (fRawImageDigest	  .IsValid () ||
											fNewRawImageDigest.IsValid ()))
		{
		
		bool isNewDigest = fNewRawImageDigest.IsValid ();
		
		dng_fingerprint &rawDigest = isNewDigest ? fNewRawImageDigest
												 : fRawImageDigest;
		
		if (RawLossyCompressedImageDigest ().IsValid () ||
			RawLossyCompressedImage ())
			{

			FindRawLossyCompressedImageDigest (host);
			
			if (rawDigest != RawLossyCompressedImageDigest ())
				{
				
				#if qDNGValidate
				
				ReportError ("NewRawImageDigest does not match Lossy Compressed image");
				
				#endif
				
				SetIsDamaged (true);
				
				}
			
			}
			
		else if (fTransparencyMaskWasLossyCompressed)
			{
			
			// We currently don't have a defined way of computing digest
			// that safely round trips in this case (lossless main image
			// and lossy transparancy mask).
			
			}

		// Else we can compare the stored digest to the image in memory.
			
		else
			{
		
			dng_fingerprint oldDigest = rawDigest;
			
			try
				{
				
				rawDigest.Clear ();
				
				if (isNewDigest)
					{
					
					FindNewRawImageDigest (host);
					
					}
					
				else
					{
					
					FindRawImageDigest (host);
					
					}
				
				}
				
			catch (...)
				{
				
				rawDigest = oldDigest;
				
				throw;
				
				}
			
			if (oldDigest != rawDigest)
				{
				
				#if qDNGValidate
				
				if (isNewDigest)
					{
					ReportError ("NewRawImageDigest does not match raw image");
					}
				else
					{
					ReportError ("RawImageDigest does not match raw image");
					}
				
				SetIsDamaged (true);
				
				#else
				
				if (!isNewDigest)
					{
				
					// Note that Lightroom 1.4 Windows had a bug that corrupts the
					// first four bytes of the RawImageDigest tag.	So if the last
					// twelve bytes match, this is very likely the result of the
					// bug, and not an actual corrupt file.	 So don't report this
					// to the user--just fix it.
					
						{
					
						bool matchLast12 = true;
						
						for (uint32 j = 4; j < 16; j++)
							{
							matchLast12 = matchLast12 && (oldDigest.Data () [j] == fRawImageDigest.Data () [j]);
							}
							
						if (matchLast12)
							{
							return;
							}
							
						}
						
					// Sometimes Lightroom 1.4 would corrupt more than the first four
					// bytes, but for all those files that I have seen so far the
					// resulting first four bytes are 0x08 0x00 0x00 0x00.
					
					if (oldDigest.Data () [0] == 0x08 &&
						oldDigest.Data () [1] == 0x00 &&
						oldDigest.Data () [2] == 0x00 &&
						oldDigest.Data () [3] == 0x00)
						{
						return;
						}
						
					}
					
				SetIsDamaged (true);
				
				#endif
				
				}
				
			}
			
		}
	
	}

/*****************************************************************************/

dng_fingerprint dng_negative::RawDataUniqueID () const
	{
	
	dng_lock_std_mutex lock (fRawDataUniqueIDMutex);
	
	if (fRawDataUniqueID.IsValid () && fEnhanceParams.NotEmpty ())
		{
		
		dng_md5_direct_printer printer;
		
		printer.Process (fRawDataUniqueID);
		
		printer.ProcessPtr (fEnhanceParams.Get	  (),
							fEnhanceParams.Length ());
			
		return printer.Result ();

		}
		
	return fRawDataUniqueID;
	
	}

/*****************************************************************************/

// If the raw data unique ID is missing, compute one based on a MD5 hash of
// the raw image hash and the model name, plus other commonly changed
// data that can affect rendering.

void dng_negative::FindRawDataUniqueID (dng_host &host) const
	{
	
	if (RawDataUniqueID ().IsNull ())
		{
		
		dng_md5_printer_le_stream printer;
		
		// If we have a raw lossy image, it is much faster to use its digest as
		// part of the unique ID since the data size is much smaller. We
		// cannot use it if there a transparency mask, since that is not
		// included in the RawLossyCompressedImageDigest.
		
		if (RawLossyCompressedImage () && !RawTransparencyMask ())
			{
			
			FindRawLossyCompressedImageDigest (host);
			
			printer.Put (fRawLossyCompressedImageDigest);
			
			}

		// Include the new raw image digest in the unique ID.
		
		else
			{
		
			FindNewRawImageDigest (host);
					
			printer.Put (fNewRawImageDigest);
			
			}
		
		// Include model name.
					
		printer.Put (ModelName ().Get	 (),
					 ModelName ().Length ());
					 
		// Include default crop area, since DNG Recover Edges can modify
		// these values and they affect rendering.
					 
		printer.Put_uint32 (fDefaultCropSizeH.n);
		printer.Put_uint32 (fDefaultCropSizeH.d);
		
		printer.Put_uint32 (fDefaultCropSizeV.n);
		printer.Put_uint32 (fDefaultCropSizeV.d);
		
		printer.Put_uint32 (fDefaultCropOriginH.n);
		printer.Put_uint32 (fDefaultCropOriginH.d);
		
		printer.Put_uint32 (fDefaultCropOriginV.n);
		printer.Put_uint32 (fDefaultCropOriginV.d);

		// Include default user crop.

		printer.Put_uint32 (fDefaultUserCropT.n);
		printer.Put_uint32 (fDefaultUserCropT.d);
		
		printer.Put_uint32 (fDefaultUserCropL.n);
		printer.Put_uint32 (fDefaultUserCropL.d);
		
		printer.Put_uint32 (fDefaultUserCropB.n);
		printer.Put_uint32 (fDefaultUserCropB.d);
		
		printer.Put_uint32 (fDefaultUserCropR.n);
		printer.Put_uint32 (fDefaultUserCropR.d);
		
		// Include opcode lists, since lens correction utilities can modify
		// these values and they affect rendering.
		
		fOpcodeList1.FingerprintToStream (printer);
		fOpcodeList2.FingerprintToStream (printer);
		fOpcodeList3.FingerprintToStream (printer);
		
		dng_lock_std_mutex lock (fRawDataUniqueIDMutex);
		
		fRawDataUniqueID = printer.Result ();
	
		}
	
	}
		
/******************************************************************************/

// Forces recomputation of RawDataUniqueID, useful to call
// after modifying the opcode lists, etc.

void dng_negative::RecomputeRawDataUniqueID (dng_host &host)
	{
	
	fRawDataUniqueID.Clear ();
	
	FindRawDataUniqueID (host);
	
	}
		
/******************************************************************************/

void dng_negative::FindOriginalRawFileDigest () const
	{

	if (fOriginalRawFileDigest.IsNull () && fOriginalRawFileData.Get ())
		{
		
		dng_md5_direct_printer printer;
		
		printer.ProcessPtr (fOriginalRawFileData->Buffer	  (),
							fOriginalRawFileData->LogicalSize ());
					
		fOriginalRawFileDigest = printer.Result ();
	
		}

	}
		
/*****************************************************************************/

void dng_negative::ValidateOriginalRawFileDigest ()
	{
	
	if (fOriginalRawFileDigest.IsValid () && fOriginalRawFileData.Get ())
		{
		
		dng_fingerprint oldDigest = fOriginalRawFileDigest;
		
		try
			{
			
			fOriginalRawFileDigest.Clear ();
			
			FindOriginalRawFileDigest ();
			
			}
			
		catch (...)
			{
			
			fOriginalRawFileDigest = oldDigest;
			
			throw;
			
			}
		
		if (oldDigest != fOriginalRawFileDigest)
			{
			
			#if qDNGValidate
			
			ReportError ("OriginalRawFileDigest does not match OriginalRawFileData");
			
			#else
			
			SetIsDamaged (true);
			
			#endif
			
			// Don't "repair" the original image data digest.  Once it is
			// bad, it stays bad.  The user cannot tell by looking at the image
			// whether the damage is acceptable and can be ignored in the
			// future.
			
			fOriginalRawFileDigest = oldDigest;
			
			}
			
		}
		
	}
							   
/******************************************************************************/

dng_rect dng_negative::DefaultCropArea () const
	{
	
	// First compute the area using simple rounding.
		
	dng_rect result;
	
	result.l = Round_int32 (fDefaultCropOriginH.As_real64 () * fRawToFullScaleH);
	result.t = Round_int32 (fDefaultCropOriginV.As_real64 () * fRawToFullScaleV);
	
	result.r = result.l + Round_int32 (fDefaultCropSizeH.As_real64 () * fRawToFullScaleH);
	result.b = result.t + Round_int32 (fDefaultCropSizeV.As_real64 () * fRawToFullScaleV);
	
	// Sometimes the simple rounding causes the resulting default crop
	// area to slide off the scaled image area.	 So we force this not
	// to happen.  We only do this if the image is not stubbed.
		
	const dng_image *image = Stage3Image ();
	
	if (image)
		{
	
		dng_point imageSize = image->Size ();
		
		if (result.r > imageSize.h)
			{
			result.l -= result.r - imageSize.h;
			result.r  = imageSize.h;
			}

		// Clamp left/top to zero: if the crop size exceeds the image size
		// the slide-back above can produce a negative origin, which would
		// cause Trim() to shift the pixel buffer pointer before the
		// allocation.

		result.l = Max_int32 (0, result.l);

		if (result.b > imageSize.v)
			{
			result.t -= result.b - imageSize.v;
			result.b  = imageSize.v;
			}

		result.t = Max_int32 (0, result.t);

		}
		
	return result;
	
	}

/*****************************************************************************/

real64 dng_negative::TotalBaselineExposure (const dng_camera_profile_id &profileID) const
	{
	
	real64 total = BaselineExposure ();

	dng_camera_profile profile;
	
	if (GetProfileByID (profileID, profile))
		{

		real64 offset = profile.BaselineExposureOffset ().As_real64 ();

		total += offset;
		
		}

	return total;
	
	}

/******************************************************************************/

void dng_negative::SetShadowScale (const dng_urational &scale)
	{
	
	if (scale.d > 0)
		{
		
		real64 s = scale.As_real64 ();
		
		if (s > 0.0 && s <= 1.0)
			{
	
			fShadowScale = scale;
			
			}
		
		}
	
	}
			
/******************************************************************************/

void dng_negative::SetActiveArea (const dng_rect &area)
	{
	
	NeedLinearizationInfo ();
	
	dng_linearization_info &info = *fLinearizationInfo.Get ();
									
	info.fActiveArea = area;
	
	}

/******************************************************************************/

void dng_negative::SetMaskedAreas (uint32 count,
								   const dng_rect *area)
	{
	
	DNG_ASSERT (count <= kMaxMaskedAreas, "Too many masked areas");
	
	NeedLinearizationInfo ();
	
	dng_linearization_info &info = *fLinearizationInfo.Get ();
									
	info.fMaskedAreaCount = Min_uint32 (count, kMaxMaskedAreas);
	
	for (uint32 index = 0; index < info.fMaskedAreaCount; index++)
		{
		
		info.fMaskedArea [index] = area [index];
		
		}
		
	}
		
/*****************************************************************************/

void dng_negative::SetLinearization (AutoPtr<dng_memory_block> &curve)
	{
	
	NeedLinearizationInfo ();
	
	dng_linearization_info &info = *fLinearizationInfo.Get ();
									
	info.fLinearizationTable.Reset (curve.Release ());
	
	}
		
/*****************************************************************************/

void dng_negative::SetBlackLevel (real64 black,
								  int32 plane)
	{

	NeedLinearizationInfo ();
	
	dng_linearization_info &info = *fLinearizationInfo.Get ();
									
	info.fBlackLevelRepeatRows = 1;
	info.fBlackLevelRepeatCols = 1;
	
	if (plane < 0)
		{
		
		for (uint32 j = 0; j < kMaxColorPlanes; j++)
			{
			
			info.fBlackLevel [0] [0] [j] = black;
			
			}
		
		}
		
	else
		{
		
		info.fBlackLevel [0] [0] [plane] = black;
			
		}
	
	info.RoundBlacks ();
		
	}
		
/*****************************************************************************/

void dng_negative::SetQuadBlacks (real64 black0,
								  real64 black1,
								  real64 black2,
								  real64 black3,
								  int32 plane)
	{
	
	NeedLinearizationInfo ();
	
	dng_linearization_info &info = *fLinearizationInfo.Get ();
									
	info.fBlackLevelRepeatRows = 2;
	info.fBlackLevelRepeatCols = 2;

	if (plane < 0)
		{
	
		for (uint32 j = 0; j < kMaxColorPlanes; j++)
			{

			info.fBlackLevel [0] [0] [j] = black0;
			info.fBlackLevel [0] [1] [j] = black1;
			info.fBlackLevel [1] [0] [j] = black2;
			info.fBlackLevel [1] [1] [j] = black3;

			}

		}

	else
		{
		
		info.fBlackLevel [0] [0] [plane] = black0;
		info.fBlackLevel [0] [1] [plane] = black1;
		info.fBlackLevel [1] [0] [plane] = black2;
		info.fBlackLevel [1] [1] [plane] = black3;
		
		}
		
	info.RoundBlacks ();
		
	}

/*****************************************************************************/

void dng_negative::Set6x6Blacks (real64 blacks6x6 [36],
								  int32 plane)
	{
	
	NeedLinearizationInfo ();
	
	dng_linearization_info &info = *fLinearizationInfo.Get ();
									
	info.fBlackLevelRepeatRows = 6;
	info.fBlackLevelRepeatCols = 6;

	if (plane < 0)
		{
		
		// Apply the black levels to each image plane up to kMaxColorPlanes.
		
		for (uint32 p = 0; p < kMaxColorPlanes; p++)
			{
			
			uint32 m = 0;
			
			for (uint32 r = 0; r < info.fBlackLevelRepeatRows; r++)
				for (uint32 c = 0; c < info.fBlackLevelRepeatCols; c++)
					{
						
					info.fBlackLevel [r] [c] [p] = blacks6x6 [m];
					
					m++;
						
					}
			}
		}
	
	else
		{
		
		uint32 m = 0;
		
		// Apply the black levels to a single plane.
		
		for (uint32 r = 0; r < info.fBlackLevelRepeatRows; r++)
			for (uint32 c = 0; c < info.fBlackLevelRepeatCols; c++)
				{
					
				info.fBlackLevel [r] [c] [plane] = blacks6x6 [m];
					
				m++;
					
				}
		
		}
		
	info.RoundBlacks ();
		
	}

/*****************************************************************************/

void dng_negative::SetRowBlacks (const real64 *blacks,
								 uint32 count)
	{
	
	if (count)
		{
	
		NeedLinearizationInfo ();
		
		dng_linearization_info &info = *fLinearizationInfo.Get ();
		
		dng_safe_uint32 byteCount = 
			dng_safe_uint32 (count) * (uint32) sizeof (real64);
		
		info.fBlackDeltaV.Reset (Allocator ().Allocate (byteCount.Get ()));
		
		DoCopyBytes (blacks,
					 info.fBlackDeltaV->Buffer (),
					 byteCount.Get ());
		
		info.RoundBlacks ();
		
		}
		
	else if (fLinearizationInfo.Get ())
		{
		
		dng_linearization_info &info = *fLinearizationInfo.Get ();
		
		info.fBlackDeltaV.Reset ();
	
		}
									
	}
							
/*****************************************************************************/

void dng_negative::SetColumnBlacks (const real64 *blacks,
									uint32 count)
	{
	
	if (count)
		{
	
		NeedLinearizationInfo ();
		
		dng_linearization_info &info = *fLinearizationInfo.Get ();
		
		dng_safe_uint32 byteCount = 
			dng_safe_uint32 (count) * (uint32) sizeof (real64);
		
		info.fBlackDeltaH.Reset (Allocator ().Allocate (byteCount.Get ()));
		
		DoCopyBytes (blacks,
					 info.fBlackDeltaH->Buffer (),
					 byteCount.Get ());
		
		info.RoundBlacks ();
		
		}
		
	else if (fLinearizationInfo.Get ())
		{
		
		dng_linearization_info &info = *fLinearizationInfo.Get ();
										
		info.fBlackDeltaH.Reset ();
	
		}
									
	}
							
/*****************************************************************************/

uint32 dng_negative::WhiteLevel (uint32 plane) const
	{
	
	if (fLinearizationInfo.Get ())
		{
		
		const dng_linearization_info &info = *fLinearizationInfo.Get ();
										
		return Round_uint32 (info.fWhiteLevel [plane]);
										
		}
		
	if (RawImage ().PixelType () == ttFloat)
		{
		
		return 1;
		
		}
		
	return 0x0FFFF;
	
	}
							
/*****************************************************************************/

void dng_negative::SetWhiteLevel (uint32 white,
								  int32 plane)
	{

	NeedLinearizationInfo ();
	
	dng_linearization_info &info = *fLinearizationInfo.Get ();
									
	if (plane < 0)
		{
		
		for (uint32 j = 0; j < kMaxColorPlanes; j++)
			{
			
			info.fWhiteLevel [j] = (real64) white;
			
			}
		
		}
		
	else
		{
		
		info.fWhiteLevel [plane] = (real64) white;
			
		}
	
	}

/******************************************************************************/

void dng_negative::SetColorKeys (ColorKeyCode color0,
								 ColorKeyCode color1,
								 ColorKeyCode color2,
								 ColorKeyCode color3)
	{
	
	NeedMosaicInfo ();
	
	dng_mosaic_info &info = *fMosaicInfo.Get ();
							 
	info.fCFAPlaneColor [0] = color0;
	info.fCFAPlaneColor [1] = color1;
	info.fCFAPlaneColor [2] = color2;
	info.fCFAPlaneColor [3] = color3;
	
	}

/******************************************************************************/

void dng_negative::SetBayerMosaic (uint32 phase)
	{
	
	NeedMosaicInfo ();
	
	dng_mosaic_info &info = *fMosaicInfo.Get ();
	
	ColorKeyCode color0 = (ColorKeyCode) info.fCFAPlaneColor [0];
	ColorKeyCode color1 = (ColorKeyCode) info.fCFAPlaneColor [1];
	ColorKeyCode color2 = (ColorKeyCode) info.fCFAPlaneColor [2];
	
	info.fCFAPatternSize = dng_point (2, 2);
	
	switch (phase)
		{
		
		case 0:
			{
			info.fCFAPattern [0] [0] = color1;
			info.fCFAPattern [0] [1] = color0;
			info.fCFAPattern [1] [0] = color2;
			info.fCFAPattern [1] [1] = color1;
			break;
			}
			
		case 1:
			{
			info.fCFAPattern [0] [0] = color0;
			info.fCFAPattern [0] [1] = color1;
			info.fCFAPattern [1] [0] = color1;
			info.fCFAPattern [1] [1] = color2;
			break;
			}
			
		case 2:
			{
			info.fCFAPattern [0] [0] = color2;
			info.fCFAPattern [0] [1] = color1;
			info.fCFAPattern [1] [0] = color1;
			info.fCFAPattern [1] [1] = color0;
			break;
			}
			
		case 3:
			{
			info.fCFAPattern [0] [0] = color1;
			info.fCFAPattern [0] [1] = color2;
			info.fCFAPattern [1] [0] = color0;
			info.fCFAPattern [1] [1] = color1;
			break;
			}
			
		}
		
	info.fColorPlanes = 3;
	
	info.fCFALayout = 1;
	
	}

/******************************************************************************/

void dng_negative::SetFujiMosaic (uint32 phase)
	{
	
	NeedMosaicInfo ();
	
	dng_mosaic_info &info = *fMosaicInfo.Get ();
	
	ColorKeyCode color0 = (ColorKeyCode) info.fCFAPlaneColor [0];
	ColorKeyCode color1 = (ColorKeyCode) info.fCFAPlaneColor [1];
	ColorKeyCode color2 = (ColorKeyCode) info.fCFAPlaneColor [2];
	
	info.fCFAPatternSize = dng_point (2, 4);
	
	switch (phase)
		{
		
		case 0:
			{
			info.fCFAPattern [0] [0] = color0;
			info.fCFAPattern [0] [1] = color1;
			info.fCFAPattern [0] [2] = color2;
			info.fCFAPattern [0] [3] = color1;
			info.fCFAPattern [1] [0] = color2;
			info.fCFAPattern [1] [1] = color1;
			info.fCFAPattern [1] [2] = color0;
			info.fCFAPattern [1] [3] = color1;
			break;
			}
			
		case 1:
			{
			info.fCFAPattern [0] [0] = color2;
			info.fCFAPattern [0] [1] = color1;
			info.fCFAPattern [0] [2] = color0;
			info.fCFAPattern [0] [3] = color1;
			info.fCFAPattern [1] [0] = color0;
			info.fCFAPattern [1] [1] = color1;
			info.fCFAPattern [1] [2] = color2;
			info.fCFAPattern [1] [3] = color1;
			break;
			}
			
		}
		
	info.fColorPlanes = 3;
	
	info.fCFALayout = 2;
			
	}

/*****************************************************************************/

void dng_negative::SetFujiMosaic6x6 (uint32 phase)
	{
	
	NeedMosaicInfo ();
	
	dng_mosaic_info &info = *fMosaicInfo.Get ();
	
	ColorKeyCode color0 = (ColorKeyCode) info.fCFAPlaneColor [0];
	ColorKeyCode color1 = (ColorKeyCode) info.fCFAPlaneColor [1];
	ColorKeyCode color2 = (ColorKeyCode) info.fCFAPlaneColor [2];

	const uint32 patSize = 6;
	
	info.fCFAPatternSize = dng_point (patSize, patSize);

	info.fCFAPattern [0] [0] = color1;
	info.fCFAPattern [0] [1] = color2;
	info.fCFAPattern [0] [2] = color1;
	info.fCFAPattern [0] [3] = color1;
	info.fCFAPattern [0] [4] = color0;
	info.fCFAPattern [0] [5] = color1;

	info.fCFAPattern [1] [0] = color0;
	info.fCFAPattern [1] [1] = color1;
	info.fCFAPattern [1] [2] = color0;
	info.fCFAPattern [1] [3] = color2;
	info.fCFAPattern [1] [4] = color1;
	info.fCFAPattern [1] [5] = color2;

	info.fCFAPattern [2] [0] = color1;
	info.fCFAPattern [2] [1] = color2;
	info.fCFAPattern [2] [2] = color1;
	info.fCFAPattern [2] [3] = color1;
	info.fCFAPattern [2] [4] = color0;
	info.fCFAPattern [2] [5] = color1;

	info.fCFAPattern [3] [0] = color1;
	info.fCFAPattern [3] [1] = color0;
	info.fCFAPattern [3] [2] = color1;
	info.fCFAPattern [3] [3] = color1;
	info.fCFAPattern [3] [4] = color2;
	info.fCFAPattern [3] [5] = color1;

	info.fCFAPattern [4] [0] = color2;
	info.fCFAPattern [4] [1] = color1;
	info.fCFAPattern [4] [2] = color2;
	info.fCFAPattern [4] [3] = color0;
	info.fCFAPattern [4] [4] = color1;
	info.fCFAPattern [4] [5] = color0;

	info.fCFAPattern [5] [0] = color1;
	info.fCFAPattern [5] [1] = color0;
	info.fCFAPattern [5] [2] = color1;
	info.fCFAPattern [5] [3] = color1;
	info.fCFAPattern [5] [4] = color2;
	info.fCFAPattern [5] [5] = color1;

	DNG_REQUIRE (phase < patSize * patSize,
				 "Bad phase in SetFujiMosaic6x6.");

	if (phase > 0)
		{
		
		dng_mosaic_info temp = info;

		uint32 phaseRow = phase / patSize;

		uint32 phaseCol = phase - (phaseRow * patSize);

		for (uint32 dstRow = 0; dstRow < patSize; dstRow++)
			{
			
			uint32 srcRow = (dstRow + phaseRow) % patSize;
			
			for (uint32 dstCol = 0; dstCol < patSize; dstCol++)
				{

				uint32 srcCol = (dstCol + phaseCol) % patSize;
			
				temp.fCFAPattern [dstRow] [dstCol] = info.fCFAPattern [srcRow] [srcCol];

				}
			
			}

		info = temp;
		
		}
		
	info.fColorPlanes = 3;
	
	info.fCFALayout = 1;
			
	}

/******************************************************************************/

void dng_negative::SetQuadMosaic (uint32 pattern)
	{
	
	// The pattern of the four colors is assumed to be repeat at least every two
	// columns and eight rows.	The pattern is encoded as a 32-bit integer,
	// with every two bits encoding a color, in scan order for two columns and
	// eight rows (lsb is first).  The usual color coding is:
	//
	// 0 = Green
	// 1 = Magenta
	// 2 = Cyan
	// 3 = Yellow
	//
	// Examples:
	//
	//	PowerShot 600 uses 0xe1e4e1e4:
	//
	//	  0 1 2 3 4 5
	//	0 G M G M G M
	//	1 C Y C Y C Y
	//	2 M G M G M G
	//	3 C Y C Y C Y
	//
	//	PowerShot A5 uses 0x1e4e1e4e:
	//
	//	  0 1 2 3 4 5
	//	0 C Y C Y C Y
	//	1 G M G M G M
	//	2 C Y C Y C Y
	//	3 M G M G M G
	//
	//	PowerShot A50 uses 0x1b4e4b1e:
	//
	//	  0 1 2 3 4 5
	//	0 C Y C Y C Y
	//	1 M G M G M G
	//	2 Y C Y C Y C
	//	3 G M G M G M
	//	4 C Y C Y C Y
	//	5 G M G M G M
	//	6 Y C Y C Y C
	//	7 M G M G M G
	//
	//	PowerShot Pro70 uses 0x1e4b4e1b:
	//
	//	  0 1 2 3 4 5
	//	0 Y C Y C Y C
	//	1 M G M G M G
	//	2 C Y C Y C Y
	//	3 G M G M G M
	//	4 Y C Y C Y C
	//	5 G M G M G M
	//	6 C Y C Y C Y
	//	7 M G M G M G
	//
	//	PowerShots Pro90 and G1 use 0xb4b4b4b4:
	//
	//	  0 1 2 3 4 5
	//	0 G M G M G M
	//	1 Y C Y C Y C

	NeedMosaicInfo ();
	
	dng_mosaic_info &info = *fMosaicInfo.Get ();
							 
	if (((pattern >> 16) & 0x0FFFF) != (pattern & 0x0FFFF))
		{
		info.fCFAPatternSize = dng_point (8, 2);
		}
		
	else if (((pattern >> 8) & 0x0FF) != (pattern & 0x0FF))
		{
		info.fCFAPatternSize = dng_point (4, 2);
		}
		
	else
		{
		info.fCFAPatternSize = dng_point (2, 2);
		}
		
	for (int32 row = 0; row < info.fCFAPatternSize.v; row++)
		{
		
		for (int32 col = 0; col < info.fCFAPatternSize.h; col++)
			{
			
			uint32 index = (pattern >> ((((row << 1) & 14) + (col & 1)) << 1)) & 3;
			
			info.fCFAPattern [row] [col] = info.fCFAPlaneColor [index];
			
			}
			
		}

	info.fColorPlanes = 4;
	
	info.fCFALayout = 1;
			
	}
	
/******************************************************************************/

void dng_negative::SetGreenSplit (uint32 split)
	{
	
	NeedMosaicInfo ();
	
	dng_mosaic_info &info = *fMosaicInfo.Get ();
	
	info.fBayerGreenSplit = split;
	
	}

/*****************************************************************************/

void dng_negative::Parse (dng_host &host,
						  dng_stream &stream,
						  dng_info &info)
	{
	
	// Shared info.
	
	dng_shared &shared = *(info.fShared.Get ());
	
	// Find IFD holding the main raw information.
	
	dng_ifd &rawIFD = *info.fIFD [info.fMainIndex];
	
	// Model name.
	
	SetModelName (shared.fUniqueCameraModel.Get ());
	
	// Localized model name.
	
	SetLocalName (shared.fLocalizedCameraModel.Get ());
	
	// Base orientation.
	
		{
	
		uint32 orientation = info.fIFD [0]->fOrientation;
		
		if (orientation >= 1 && orientation <= 8)
			{
			
			SetBaseOrientation (dng_orientation::TIFFtoDNG (orientation));
						
			}
			
		}
		
	// Default crop rectangle.
	
	SetDefaultCropSize (rawIFD.fDefaultCropSizeH,
						rawIFD.fDefaultCropSizeV);

	SetDefaultCropOrigin (rawIFD.fDefaultCropOriginH,
						  rawIFD.fDefaultCropOriginV);

	// Default user crop rectangle.

	SetDefaultUserCrop (rawIFD.fDefaultUserCropT,
						rawIFD.fDefaultUserCropL,
						rawIFD.fDefaultUserCropB,
						rawIFD.fDefaultUserCropR);
								
	// Default scale.
		
	SetDefaultScale (rawIFD.fDefaultScaleH,
					 rawIFD.fDefaultScaleV);
	
	// Best quality scale.
	
	SetBestQualityScale (rawIFD.fBestQualityScale);
	
	// Baseline noise.

	SetBaselineNoise (shared.fBaselineNoise.As_real64 ());
	
	// NoiseReductionApplied.
	
	// Kludge: DNG spec says that NoiseReductionApplied tag should be in the
	// Raw IFD, not main IFD. However, our original DNG SDK implementation
	// read/wrote this tag from/to the main IFD. We now support reading the
	// NoiseReductionApplied tag from both locations, but prefer the raw IFD
	// (correct location).

	if (rawIFD.fNoiseReductionApplied.IsValid ())
		{
		
		SetNoiseReductionApplied (rawIFD.fNoiseReductionApplied);

		}
		
	else
		{

		const dng_ifd &ifd0 = *info.fIFD [0];

		SetNoiseReductionApplied (ifd0.fNoiseReductionApplied);

		}

	// NoiseProfile.

	// Kludge: DNG spec says that NoiseProfile tag should be in the Raw IFD,
	// not main IFD. However, our original DNG SDK implementation read/wrote
	// this tag from/to the main IFD. We now support reading the NoiseProfile
	// tag from both locations, but prefer the raw IFD (correct location).

	if (rawIFD.fNoiseProfile.IsValid ())
		{

		SetNoiseProfile (rawIFD.fNoiseProfile);

		}

	else
		{

		const dng_ifd &ifd0 = *info.fIFD [0];

		SetNoiseProfile (ifd0.fNoiseProfile);

		}
	
	// Baseline exposure.
	
	SetBaselineExposure (shared.fBaselineExposure.As_real64 ());

	// Baseline sharpness.
	
	SetBaselineSharpness (shared.fBaselineSharpness.As_real64 ());

	// Chroma blur radius.
	
	SetChromaBlurRadius (rawIFD.fChromaBlurRadius);

	// Anti-alias filter strength.
	
	SetAntiAliasStrength (rawIFD.fAntiAliasStrength);
		
	// Linear response limit.
	
	SetLinearResponseLimit (shared.fLinearResponseLimit.As_real64 ());
	
	// Shadow scale.
	
	SetShadowScale (shared.fShadowScale);
	
	// Colorimetric reference.
	
	SetColorimetricReference (shared.fColorimetricReference);

	// Floating point flag.

	SetFloatingPoint (rawIFD.fSampleFormat [0] == sfFloatingPoint);

	// Color channels.
		
	SetColorChannels (shared.fCameraProfile.fColorPlanes);
	
	// Analog balance.
	
	if (shared.fAnalogBalance.NotEmpty ())
		{
		
		SetAnalogBalance (shared.fAnalogBalance);
		
		}

	// Camera calibration matrices

	if (shared.fCameraCalibration1.NotEmpty ())
		{
		
		SetCameraCalibration1 (shared.fCameraCalibration1);
		
		}
		
	if (shared.fCameraCalibration2.NotEmpty ())
		{
		
		SetCameraCalibration2 (shared.fCameraCalibration2);
		
		}
		
	if (shared.fCameraCalibration3.NotEmpty ())
		{
		
		SetCameraCalibration3 (shared.fCameraCalibration3);
		
		}
		
	if (shared.fCameraCalibration1.NotEmpty () ||
		shared.fCameraCalibration2.NotEmpty () ||
		shared.fCameraCalibration3.NotEmpty ())
		{
		
		SetCameraCalibrationSignature (shared.fCameraCalibrationSignature.Get ());
		
		}

	// ProfileGainTableMap and ProfileGainTableMap2.

		{

		// ProfileGainTableMap2 usage is IFD 0 and supercedes
		// ProfileGainTablMap (whose usage is Raw IFD).

		const dng_ifd &ifd0 = *info.fIFD [0];

		if (ifd0.fProfileGainTableMap)
			{
			
			SetProfileGainTableMap (ifd0.fProfileGainTableMap);

			// Also mirror to main camera profile.
			
			shared.fCameraProfile.fProfileGainTableMap =
				ifd0.fProfileGainTableMap;

			}

		else
			SetProfileGainTableMap (rawIFD.fProfileGainTableMap);

		}

	// Embedded camera profiles.
	
	if (shared.fCameraProfile.fColorPlanes > 1)
		{
	
		if (qDNGValidate || host.NeedsMeta () || host.NeedsImage ())
			{
			
			// Add profile from main IFD.
			
				{
			
				AutoPtr<dng_camera_profile> profile (new dng_camera_profile ());
				
				dng_camera_profile_info &profileInfo = shared.fCameraProfile;
				
				profile->Parse (stream, profileInfo);
				
				// The main embedded profile must be valid.
				
				if (!profile->IsValid (shared.fCameraProfile.fColorPlanes))
					{
					
					ThrowBadFormat ();
					
					}
				
				profile->SetWasReadFromDNG ();
				
				AddProfile (profile);
				
				}
				
			// Extra profiles.

			for (uint32 index = 0; index < (uint32) shared.fExtraCameraProfiles.size (); index++)
				{
				
				try
					{

					AutoPtr<dng_camera_profile> profile (new dng_camera_profile ());
					
					dng_camera_profile_info &profileInfo = shared.fExtraCameraProfiles [index];
					
					profile->Parse (stream, profileInfo);
					
					if (!profile->IsValid (shared.fCameraProfile.fColorPlanes))
						{
						
						ThrowBadFormat ();
						
						}
					
					profile->SetWasReadFromDNG ();
					
					AddProfile (profile);

					}
					
				catch (dng_exception &except)
					{
					
					// Don't ignore transient errors.
					
					if (host.IsTransientError (except.ErrorCode ()))
						{
						
						throw;
						
						}
				
					// Eat other parsing errors.
			
					#if qDNGValidate
					
					ReportWarning ("Unable to parse extra profile");
					
					#endif
					
					}
			
				}
			
			}
			
		// As shot profile name.
		
		if (shared.fAsShotProfileName.NotEmpty ())
			{
			
			SetAsShotProfileName (shared.fAsShotProfileName.Get ());
			
			}
			
		}
		
	// Raw image data digest.
	
	if (shared.fRawImageDigest.IsValid ())
		{
		
		SetRawImageDigest (shared.fRawImageDigest);
		
		}
			
	// New raw image data digest.
	
	if (shared.fNewRawImageDigest.IsValid ())
		{
		
		SetNewRawImageDigest (shared.fNewRawImageDigest);
		
		}
			
	// Raw data unique ID.
	
	if (shared.fRawDataUniqueID.IsValid ())
		{
		
		SetRawDataUniqueID (shared.fRawDataUniqueID);
		
		}
			
	// Original raw file name.
	
	if (shared.fOriginalRawFileName.NotEmpty ())
		{
		
		SetOriginalRawFileName (shared.fOriginalRawFileName.Get ());
		
		}
		
	// Original raw file data.
	
	if (shared.fOriginalRawFileDataCount)
		{
		
		SetHasOriginalRawFileData (true);
					
		if (host.KeepOriginalFile ())
			{
			
			uint32 count = shared.fOriginalRawFileDataCount;
			
			AutoPtr<dng_memory_block> block (host.Allocate (count));
			
			stream.SetReadPosition (shared.fOriginalRawFileDataOffset);
		
			stream.Get (block->Buffer (), count);
						
			SetOriginalRawFileData (block);
			
			SetOriginalRawFileDigest (shared.fOriginalRawFileDigest);
			
			ValidateOriginalRawFileDigest ();
			
			}
			
		}
			
	// DNG private data.
	
	if (shared.fDNGPrivateDataCount && (host.SaveDNGVersion () != dngVersion_None))
		{
		
		uint32 length = shared.fDNGPrivateDataCount;
		
		AutoPtr<dng_memory_block> block (host.Allocate (length));
		
		stream.SetReadPosition (shared.fDNGPrivateDataOffset);
			
		stream.Get (block->Buffer (), length);
							
		SetPrivateData (block);
			
		}
		
	// Hand off EXIF metadata to negative.
	
	ResetExif (info.fExif.Release ());
	
	// Parse linearization info.
	
	NeedLinearizationInfo ();
	
	fLinearizationInfo.Get ()->Parse (host,
									  stream,
									  info);
									  
	// Parse mosaic info.
	
	if (rawIFD.fPhotometricInterpretation == piCFA)
		{
	
		NeedMosaicInfo ();
		
		fMosaicInfo.Get ()->Parse (host,
								   stream,
								   info);
							  
		}

	// Fill in original sizes.
	
	if (shared.fOriginalDefaultFinalSize.h > 0 &&
		shared.fOriginalDefaultFinalSize.v > 0)
		{
		
		SetOriginalDefaultFinalSize (shared.fOriginalDefaultFinalSize);
		
		SetOriginalBestQualityFinalSize (shared.fOriginalDefaultFinalSize);
		
		SetOriginalDefaultCropSize (dng_urational (shared.fOriginalDefaultFinalSize.h, 1),
									dng_urational (shared.fOriginalDefaultFinalSize.v, 1));
		
		}
		
	if (shared.fOriginalBestQualityFinalSize.h > 0 &&
		shared.fOriginalBestQualityFinalSize.v > 0)
		{
		
		SetOriginalBestQualityFinalSize (shared.fOriginalBestQualityFinalSize);
		
		}
		
	if (shared.fOriginalDefaultCropSizeH.As_real64 () >= 1.0 &&
		shared.fOriginalDefaultCropSizeV.As_real64 () >= 1.0)
		{
		
		SetOriginalDefaultCropSize (shared.fOriginalDefaultCropSizeH,
									shared.fOriginalDefaultCropSizeV);
		
		}
  
	if (shared.fDepthFormat != depthFormatUnknown)
		{
		
		SetDepthFormat (shared.fDepthFormat);
		
		}
	
	if (shared.fDepthNear != dng_urational (0, 0))
		{
		
		SetDepthNear (shared.fDepthNear);
		
		}
	
	if (shared.fDepthFar != dng_urational (0, 0))
		{
		
		SetDepthFar (shared.fDepthFar);
		
		}
	
	if (shared.fDepthUnits != depthUnitsUnknown)
		{
		
		SetDepthUnits (shared.fDepthUnits);
		
		}
	
	if (shared.fDepthMeasureType != depthMeasureUnknown)
		{
		
		SetDepthMeasureType (shared.fDepthMeasureType);
		
		}
		
	// Prefer some values from the enhanced IFD, if present and we
	// are not ignoring it.
	
	if (info.fEnhancedIndex != -1 && !host.IgnoreEnhanced ())
		{
	
		dng_ifd &enhancedIFD = *info.fIFD [info.fEnhancedIndex];
		
		// Remember the enhance parameters.
		
		SetEnhanceParams (enhancedIFD.fEnhanceParams);
		
		// Note: Call the various SetRaw... routines even if there are no
		// corresponding tags in the enhanced IFD. This way, the tag values are
		// correctly associated with the raw (original, non-enhanced) data and not
		// with the enhanced IFD. This distinction matters when converting a DNG
		// to a derived DNG.
		
		// Baseline sharpness.
		
		SetRawBaselineSharpness ();
			
		if (enhancedIFD.fBaselineSharpness.IsValid ())
			{
			
			SetBaselineSharpness (enhancedIFD.fBaselineSharpness.As_real64 ());
			
			}
		
		// Noise reduction applied.
		
		SetRawNoiseReductionApplied ();
			
		if (enhancedIFD.fNoiseReductionApplied.IsValid ())
			{
			
			SetNoiseReductionApplied (enhancedIFD.fNoiseReductionApplied);
			
			}
			
		// Noise profile.
		
		SetRawNoiseProfile ();
			
		if (enhancedIFD.fNoiseProfile.IsValidForNegative (*this))
			{
			
			SetNoiseProfile (enhancedIFD.fNoiseProfile);
			
			}
		
		// Default scale.
		
		SetRawDefaultScale ();
		
		if (enhancedIFD.fDefaultScaleH.IsValid () &&
			enhancedIFD.fDefaultScaleV.IsValid ())
			{
			
			SetDefaultScale (enhancedIFD.fDefaultScaleH,
							 enhancedIFD.fDefaultScaleV);
							 
			}
			
		// Best quality scale.
		
		SetRawBestQualityScale ();
		
		if (enhancedIFD.fBestQualityScale.IsValid ())
			{
			
			fBestQualityScale = enhancedIFD.fBestQualityScale;
			
			}
		
		// Default crop.
		
		SetRawDefaultCrop ();
		
		if (enhancedIFD.fDefaultCropSizeH.IsValid () &&
			enhancedIFD.fDefaultCropSizeV.IsValid ())
			{
			
			fDefaultCropSizeH = enhancedIFD.fDefaultCropSizeH;
			fDefaultCropSizeV = enhancedIFD.fDefaultCropSizeV;
			
			if (enhancedIFD.fDefaultCropOriginH.IsValid ())
				{
				fDefaultCropOriginH = enhancedIFD.fDefaultCropOriginH;
				}
			else
				{
				fDefaultCropOriginH = dng_urational (0, 1);
				}
			
			if (enhancedIFD.fDefaultCropOriginV.IsValid ())
				{
				fDefaultCropOriginV = enhancedIFD.fDefaultCropOriginV;
				}
			else
				{
				fDefaultCropOriginV = dng_urational (0, 1);
				}
				
			}
			
		}

	// Image Stats.

	if (rawIFD.fImageStats.IsValidForPlaneCount (ColorChannels ()) &&
		(rawIFD.fImageStats.TagCount () > 0))
		{
		
		fMetadata.SetImageStats (rawIFD.fImageStats);
		
		}
	
	}

/*****************************************************************************/

void dng_negative::ClearOriginalSizes ()
	{
	
	fOriginalDefaultFinalSize = dng_point ();
	
	fOriginalBestQualityFinalSize = dng_point ();
	
	fOriginalDefaultCropSizeH.Clear ();
	fOriginalDefaultCropSizeV.Clear ();
	
	}

/*****************************************************************************/

void dng_negative::SetDefaultOriginalSizes ()
	{
	
	// Fill in original sizes if we don't have them already.
	
	if (OriginalDefaultFinalSize () == dng_point ())
		{
		
		SetOriginalDefaultFinalSize (dng_point (DefaultFinalHeight (),
												DefaultFinalWidth  ()));
		
		}
		
	if (OriginalBestQualityFinalSize () == dng_point ())
		{
		
		SetOriginalBestQualityFinalSize (dng_point (BestQualityFinalHeight (),
													BestQualityFinalWidth  ()));
		
		}
		
	if (OriginalDefaultCropSizeH ().NotValid () ||
		OriginalDefaultCropSizeV ().NotValid ())
		{
		
		SetOriginalDefaultCropSize (DefaultCropSizeH (),
									DefaultCropSizeV ());
		
		}

	}

/*****************************************************************************/

void dng_negative::SetOriginalSizes (const dng_point &size)
	{
	
	SetOriginalDefaultFinalSize (size);
	
	SetOriginalBestQualityFinalSize (size);
	
	SetOriginalDefaultCropSize (dng_urational (size.h, 1),
								dng_urational (size.v, 1));
	
	}

/*****************************************************************************/

void dng_negative::PostParse (dng_host &host,
							  dng_stream &stream,
							  dng_info &info)
	{
	
	// Shared info.
	
	dng_shared &shared = *(info.fShared.Get ());
	
	if (host.NeedsMeta ())
		{
		
		// Fill in original sizes if we don't have them already.
		
		SetDefaultOriginalSizes ();
				
		// MakerNote.
		
		if (shared.fMakerNoteCount)
			{
			
			// See if we know if the MakerNote is safe or not.
			
			SetMakerNoteSafety (shared.fMakerNoteSafety == 1);
			
			// If the MakerNote is safe, preserve it as a MakerNote.
			
			if (IsMakerNoteSafe () && info.fTIFFBlockOriginalOffset != kDNGStreamInvalidOffset)
				{

				if (shared.fMakerNoteCount > kMaxEmbeddedMakerNoteBlockSize)
					{
					ThrowBadFormat ("MakerNote block too large");
					}

				AutoPtr<dng_memory_block> block (host.Allocate (shared.fMakerNoteCount));

				// CR-4208475 M-L6: Compute the MakerNote read position
				// with explicit underflow / overflow checks instead of
				// the open-coded `a + b - c` uint64 expression. The
				// subtraction (fTIFFBlockOriginalOffset - fTIFFBlockOffset)
				// can wrap when the original offset was below the current
				// block offset, and the subsequent add can wrap on huge
				// fMakerNoteOffset values. dng_stream::SetReadPosition
				// already rejects an out-of-range position, but failing
				// here gives a clearer diagnostic.

				if (info.fTIFFBlockOriginalOffset < info.fTIFFBlockOffset)
					{
					ThrowBadFormat ("Inverted TIFF block offsets while "
									"resolving MakerNote position");
					}

				uint64 makerNotePos =
					SafeUint64Add (shared.fMakerNoteOffset,
								   info.fTIFFBlockOriginalOffset -
								   info.fTIFFBlockOffset);

				stream.SetReadPosition (makerNotePos);
					
				stream.Get (block->Buffer (), shared.fMakerNoteCount);
									
				SetMakerNote (block);
							
				}
			
			}
		
		// IPTC metadata.
		
		if (shared.fIPTC_NAA_Count)
			{

			if (shared.fIPTC_NAA_Count > kMaxEmbeddedIPTCBlockSize)
				{
				ThrowBadFormat ("IPTC block too large");
				}
			
			AutoPtr<dng_memory_block> block (host.Allocate (shared.fIPTC_NAA_Count));
			
			stream.SetReadPosition (shared.fIPTC_NAA_Offset);
			
			uint64 iptcOffset = stream.PositionInOriginalFile();
			
			stream.Get (block->Buffer	   (), 
						block->LogicalSize ());
			
			SetIPTC (block, iptcOffset);
							
			}
		
		// XMP metadata.
		
		#if qDNGUseXMP
		
		if (shared.fXMPCount)
			{

			if (shared.fXMPCount > kMaxEmbeddedXMPBlockSize)
				{
				ThrowBadFormat ("XMP block too large");
				}
			
			AutoPtr<dng_memory_block> block (host.Allocate (shared.fXMPCount));
			
			stream.SetReadPosition (shared.fXMPOffset);
			
			stream.Get (block->Buffer	   (),
						block->LogicalSize ());
						
			Metadata ().SetEmbeddedXMP (host,
										block->Buffer	   (),
										block->LogicalSize ());
										
			#if qDNGValidate
			
			if (!Metadata ().HaveValidEmbeddedXMP ())
				{
				ReportError ("The embedded XMP is invalid");
				}
			
			#endif
			
			}
		
		#endif	// qDNGUseXMP
		
		// Embedded big tables.
		
		if (shared.fBigTableDigests.size ())
			{
			
			dng_big_table_index bigTableIndex;
			
			for (uint32 j = 0; j < (uint32) shared.fBigTableDigests.size (); j++)
				{
				
				if (!shared.fBigTableDigests	[j].IsValid () ||
					!shared.fBigTableOffsets	[j] ||
					!shared.fBigTableByteCounts [j])
					{
					continue;
					}
					
				bigTableIndex.AddEntry (shared.fBigTableDigests	   [j],
										shared.fBigTableByteCounts [j],
										shared.fBigTableOffsets	   [j]);
				
				}
				
			if (!bigTableIndex.IsEmpty ())
				{
				
				Metadata ().SetBigTableIndex (bigTableIndex);
				
				}

			// Big table group index.

			if (!shared.fBigTableGroupIndex.empty ())
				{

				dng_big_table_group_index index;

				for (const auto &group : shared.fBigTableGroupIndex)
					{

					if (group.first .IsValid () &&
						group.second.IsValid ())
						{
					
						index.AddEntry (group.first,
										group.second);

						}
					
					}

				if (!index.IsEmpty ())
					{
					
					Metadata ().SetBigTableGroupIndex (index);

					}
				
				}
			
			}
				
		// Color info.
		
		if (!IsMonochrome ())
			{
			
			// If the ColorimetricReference is the ICC profile PCS,
			// then the data must be already be white balanced to the
			// ICC profile PCS white point.
			
			if (IsOutputReferred ())
				{
				
				ClearCameraNeutral ();
				
				SetCameraWhiteXY (PCStoXY ());
				
				}
				
			else
				{
							
				// AsShotNeutral.
				
				if (shared.fAsShotNeutral.Count () == ColorChannels ())
					{
					
					SetCameraNeutral (shared.fAsShotNeutral);
										
					}
					
				// AsShotWhiteXY.
				
				if (shared.fAsShotWhiteXY.IsValid () && !HasCameraNeutral ())
					{
					
					SetCameraWhiteXY (shared.fAsShotWhiteXY);
					
					}
					
				}
				
			} // color info

		// Image sequence info.

		if (shared.fImageSequenceInfo.IsValid ())
			{
			
			fMetadata.SetImageSequenceInfo (shared.fImageSequenceInfo);
			
			}
					
		} // needs meta
		
	}
							
/*****************************************************************************/

bool dng_negative::SetFourColorBayer ()
	{
	
	if (ColorChannels () != 3)
		{
		return false;
		}
		
	if (!fMosaicInfo.Get ())
		{
		return false;
		}
		
	if (!fMosaicInfo.Get ()->SetFourColorBayer ())
		{
		return false;
		}
		
	SetColorChannels (4);
	
	if (fCameraNeutral.Count () == 3)
		{
		
		dng_vector n (4);
		
		n [0] = fCameraNeutral [0];
		n [1] = fCameraNeutral [1];
		n [2] = fCameraNeutral [2];
		n [3] = fCameraNeutral [1];
		
		fCameraNeutral = n;
		
		}

	fCameraCalibration1.Clear ();
	fCameraCalibration2.Clear ();
	fCameraCalibration3.Clear ();
	
	fCameraCalibrationSignature.Clear ();
	
	for (uint32 index = 0; index < (uint32) fCameraProfile.size (); index++)
		{
		
		fCameraProfile [index]->SetFourColorBayer ();
		
		}
			
	return true;
	
	}
					
/*****************************************************************************/

const dng_image & dng_negative::RawImage () const
	{
	
	if (fRawImage.Get ())
		{
		return *fRawImage.Get ();
		}
		
	if (fStage1Image.Get ())
		{
		return *fStage1Image.Get ();
		}
		
	if (fUnflattenedStage3Image.Get ())
		{
		return *fUnflattenedStage3Image.Get ();
		}
		
	DNG_REQUIRE (fStage3Image.Get (),
				 "dng_negative::RawImage with no raw image");
			
	return *fStage3Image.Get ();
	
	}

/*****************************************************************************/

uint16 dng_negative::RawImageBlackLevel () const
	{
	
	if (fRawImage.Get ())
		{
		return fRawImageBlackLevel;
		}
		
	if (fStage1Image.Get ())
		{
		return 0;
		}
		
	return fStage3BlackLevel;
	
	}

/*****************************************************************************/

const dng_lossy_compressed_image * dng_negative::RawLossyCompressedImage () const
	{

	return fRawLossyCompressedImage.Get ();

	}

/*****************************************************************************/

void dng_negative::SetRawLossyCompressedImage (AutoPtr<dng_lossy_compressed_image> &image)
	{

	fRawLossyCompressedImage.Reset (image.Release ());

	}

/*****************************************************************************/

void dng_negative::ClearRawLossyCompressedImage ()
	{
	
	fRawLossyCompressedImage.Reset ();

	}

/*****************************************************************************/

void dng_negative::FindRawLossyCompressedImageDigest (dng_host &host) const
	{
	
	if (fRawLossyCompressedImageDigest.IsNull ())
		{
		
		if (fRawLossyCompressedImage.Get ())
			{
			
			#if qDNGValidate
			
			dng_timer timer ("FindRawLossyCompressedImageDigest");
			 
			#endif
			
			fRawLossyCompressedImageDigest = fRawLossyCompressedImage->FindDigest (host);
			
			}
			
		else
			{
			
			ThrowProgramError ("No raw lossy compressed image");
			
			}
		
		}
	
	}

/*****************************************************************************/

void dng_negative::ReadOpcodeLists (dng_host &host,
									dng_stream &stream,
									dng_info &info)
	{
	
	dng_ifd &rawIFD = *info.fIFD [info.fMainIndex];
	
	if (rawIFD.fOpcodeList1Count)
		{
		
		#if qDNGValidate
		
		if (gVerbose)
			{
			printf ("\nParsing OpcodeList1: ");
			}
			
		#endif
		
		fOpcodeList1.Parse (host,
							stream,
							rawIFD.fOpcodeList1Count,
							rawIFD.fOpcodeList1Offset);
		
		}
		
	if (rawIFD.fOpcodeList2Count)
		{
		
		#if qDNGValidate
		
		if (gVerbose)
			{
			printf ("\nParsing OpcodeList2: ");
			}
			
		#endif
		
		fOpcodeList2.Parse (host,
							stream,
							rawIFD.fOpcodeList2Count,
							rawIFD.fOpcodeList2Offset);
		
		}

	if (rawIFD.fOpcodeList3Count)
		{
		
		#if qDNGValidate
		
		if (gVerbose)
			{
			printf ("\nParsing OpcodeList3: ");
			}
			
		#endif
		
		fOpcodeList3.Parse (host,
							stream,
							rawIFD.fOpcodeList3Count,
							rawIFD.fOpcodeList3Offset);
		
		}

	}

/*****************************************************************************/

void dng_negative::ReadStage1Image (dng_host &host,
									dng_stream &stream,
									dng_info &info)
	{
	
	// Allocate image we are reading.
	
	dng_ifd &rawIFD = *info.fIFD [info.fMainIndex];
	
	fStage1Image.Reset (host.Make_dng_image (rawIFD.Bounds (),
											 rawIFD.fSamplesPerPixel,
											 rawIFD.PixelType ()));
					
	// See if we should grab the lossy compressed data.
	
	AutoPtr<dng_lossy_compressed_image> lossyImage (KeepLossyCompressedImage (host,
																			  rawIFD));
																			  
	// See if we need to compute the digest of the compressed JPEG or JPEG XL
	// data while reading.
	
	bool needLossyDigest = ((RawImageDigest	   ().IsValid () ||
							 NewRawImageDigest ().IsValid ()) &&

							((rawIFD.fCompression == ccLossyJPEG ||
							  rawIFD.fCompression == ccJXL) &&
							 (lossyImage.Get () == NULL)));
	
	dng_fingerprint lossyDigest;
	
	// Read the image.
	
	rawIFD.ReadImage (host,
					  stream,
					  *fStage1Image.Get (),
					  lossyImage.Get (),
					  needLossyDigest ? &lossyDigest : NULL);
					  
	// Remember the raw floating point bit depth, if reading from
	// a floating point image.
	
	if (fStage1Image->PixelType () == ttFloat)
		{
		
		// If we are reading from a lossy JXL floating point image, and
		// we are not keeping the lossy compressed data, we need to treat
		// the raw floating point image as 32 bit, and ignore the bit
		// depth that we fed into the JXL decoder.
		
		if (lossyImage.Get () || rawIFD.fCompression != ccJXL)
			{
			
			SetRawFloatBitDepth (rawIFD.fBitsPerSample [0]);
		
			}
		
		}
					  
	// Remember the compressed JPEG data if we read it.
	
	if (lossyImage.Get ())
		{

		SetRawLossyCompressedImage (lossyImage);
				
		}
		
	// Remember the compressed JPEG digest if we computed it.
	
	if (lossyDigest.IsValid ())
		{

		SetRawLossyCompressedImageDigest (lossyDigest);
		
		}
					  
	// We are are reading the main image, we should read the opcode lists
	// also.
 
	ReadOpcodeLists (host,
					 stream,
					 info);

	}

/*****************************************************************************/

void dng_negative::ReadEnhancedImage (dng_host &host,
									  dng_stream &stream,
									  dng_info &info)
	{
	
	// Should we read the raw image also?
	
	bool needRawImage = host.SaveDNGVersion () != 0 &&
					   !host.SaveLinearDNG (*this);
		
	// Allocate image we are reading.
	
	dng_ifd &enhancedIFD = *info.fIFD [info.fEnhancedIndex];
	
	fStage3Image.Reset (host.Make_dng_image (enhancedIFD.Bounds (),
											 enhancedIFD.fSamplesPerPixel,
											 enhancedIFD.PixelType ()));
											 
	// Do we need to keep the lossy compressed data?
	
	if (needRawImage)
		{
		
		fEnhancedLossyCompressedImage.Reset (KeepLossyCompressedImage (host,
																	   enhancedIFD));
															
		}

	// Read the image.
	
	enhancedIFD.ReadImage (host,
						   stream,
						   *fStage3Image.Get (),
						   fEnhancedLossyCompressedImage.Get ());
						   
	// Stage 3 black level.
	
	SetStage3BlackLevel ((uint16) Round_uint32 (enhancedIFD.fBlackLevel [0] [0] [0]));
	
	// If we are saving as a linear DNG, the saved profile should
	// match the profile for the stage3 image.
	
	if (host.SaveDNGVersion () != 0 && host.SaveLinearDNG (*this))
		{
		
		AdjustProfileForStage3 ();
				
		}
	
	// Read in raw image data if required.
	
	if (needRawImage)
		{
		
		ReadStage1Image (host,
						 stream,
						 info);
						 
		fRawImage.Reset (fStage1Image.Release ());
		
		}
		
	// Else we can discard the information specific to the raw IFD.

	else
		{
	   
		// We at least need to know about lens opcodes, so we read the
		// opcodes and then discard them.
	 
		ReadOpcodeLists (host,
						 stream,
						 info);

		ClearLinearizationInfo ();
		
		ClearMosaicInfo ();
		
		fOpcodeList1.Clear ();
		fOpcodeList2.Clear ();
		fOpcodeList3.Clear ();
		
		fRawImageDigest	  .Clear ();
		fNewRawImageDigest.Clear ();
		
		fRawDefaultCropSizeH.Clear ();
		fRawDefaultCropSizeV.Clear ();
		
		fRawDefaultCropOriginH.Clear ();
		fRawDefaultCropOriginV.Clear ();
		
		fRawDefaultScaleH.Clear ();
		fRawDefaultScaleV.Clear ();
		
		fRawBestQualityScale.Clear ();
		
		fRawBaselineSharpness	 .Clear ();
		fRawNoiseReductionApplied.Clear ();
		
		fRawNoiseProfile = dng_noise_profile ();

		if (fRawDataUniqueID.IsValid ())
			{
			fRawDataUniqueID = RawDataUniqueID ();
			}
		
		fEnhanceParams.Clear ();

		}
		
	}

/*****************************************************************************/

void dng_negative::SetStage1Image (AutoPtr<dng_image> &image)
	{
	
	fStage1Image.Reset (image.Release ());
	
	}

/*****************************************************************************/

void dng_negative::ClearStage1Image ()
	{
	
	fStage1Image.Reset ();
	
	}

/*****************************************************************************/

void dng_negative::SetStage2Image (AutoPtr<dng_image> &image)
	{
	
	fStage2Image.Reset (image.Release ());
	
	}

/*****************************************************************************/

void dng_negative::SetStage3Image (AutoPtr<dng_image> &image)
	{
	
	fStage3Image.Reset (image.Release ());

	SetFloatingPoint (fStage3Image.Get () &&
					  (fStage3Image->PixelType () == ttFloat));

	}

/*****************************************************************************/

void dng_negative::DoBuildStage2 (dng_host &host)
	{
	
	dng_image &stage1 = *fStage1Image.Get ();
		
	dng_linearization_info &info = *fLinearizationInfo.Get ();
	
	uint32 pixelType = ttShort;
	
	if (stage1.PixelType () == ttLong ||
		stage1.PixelType () == ttFloat)
		{
		
		pixelType = ttFloat;
		
		}
	
	fStage2Image.Reset (host.Make_dng_image (info.fActiveArea.Size (),
											 stage1.Planes (),
											 pixelType));
								   
	info.Linearize (host,
					*this,
					stage1,
					*fStage2Image.Get ());
							 
	}
		
/*****************************************************************************/

void dng_negative::DoPostOpcodeList2 (dng_host & /* host */)
	{
	
	// Nothing by default.
	
	}

/*****************************************************************************/

bool dng_negative::NeedDefloatStage2 (dng_host &host)
	{
	
	if (fStage2Image->PixelType () == ttFloat)
		{
		
		if (fRawImageStage >= rawImageStagePostOpcode2 &&
			host.SaveDNGVersion () != dngVersion_None  &&
			host.SaveDNGVersion () <  dngVersion_1_4_0_0)
			{
			
			return true;
			
			}
		
		}
	
	return false;
	
	}
		
/*****************************************************************************/

void dng_negative::DefloatStage2 (dng_host & /* host */)
	{
	
	ThrowNotYetImplemented ("dng_negative::DefloatStage2");
	
	}
		
/*****************************************************************************/

void dng_negative::BuildStage2Image (dng_host &host)
	{
	
	// If reading the negative to save in DNG format, figure out
	// when to grab a copy of the raw data.
	
	if (host.SaveDNGVersion () != dngVersion_None)
		{
		
		// Transparency masks are only supported in DNG version 1.4 and
		// later.  In this case, the flattening of the transparency mask happens
		// on the stage3 image.	 
		
		if (TransparencyMask () && host.SaveDNGVersion () < dngVersion_1_4_0_0)
			{
			fRawImageStage = rawImageStagePostOpcode3;
			}
		
		else if (fOpcodeList3.MinVersion (false) > host.SaveDNGVersion () ||
				 fOpcodeList3.AlwaysApply ())
			{
			fRawImageStage = rawImageStagePostOpcode3;
			}
			
		// If we are not doing a full resolution read, then always save the DNG
		// from the processed stage 3 image.

		else if (host.PreferredSize ())
			{
			fRawImageStage = rawImageStagePostOpcode3;
			}
			
		else if (host.SaveLinearDNG (*this))
			{
			
			// If the opcode list 3 has optional tags that are beyond the
			// the minimum version, and we are saving a linear DNG anyway,
			// then go ahead and apply them.
			
			if (fOpcodeList3.MinVersion (true) > host.SaveDNGVersion ())
				{
				fRawImageStage = rawImageStagePostOpcode3;
				}
				
			else
				{
				fRawImageStage = rawImageStagePreOpcode3;
				}
			
			}
			
		else if (fOpcodeList2.MinVersion (false) > host.SaveDNGVersion () ||
				 fOpcodeList2.AlwaysApply ())
			{
			fRawImageStage = rawImageStagePostOpcode2;
			}
			
		else if (NeedLossyCompressMosaicJXL (host))
			{
			fRawImageStage = rawImageStagePostOpcode2;
			}
			
		else if (fOpcodeList1.MinVersion (false) > host.SaveDNGVersion () ||
				 fOpcodeList1.AlwaysApply ())
			{
			fRawImageStage = rawImageStagePostOpcode1;
			}
			
		else
			{
			fRawImageStage = rawImageStagePreOpcode1;
			}
			
		// We should not save floating point stage1 images unless the target
		// DNG version is high enough to understand floating point images. 
		// We handle this by converting from floating point to integer if 
		// required after building stage2 image.
		
		if (fStage1Image->PixelType () == ttFloat)
			{
			
			if (fRawImageStage < rawImageStagePostOpcode2)
				{
				
				if (host.SaveDNGVersion () < dngVersion_1_4_0_0)
					{
					
					fRawImageStage = rawImageStagePostOpcode2;
					
					}
					
				}
				
			}

		// If the host is requesting a negative read for fast conversion to
		// DNG, then check whether we can actually do a fast interpolation or
		// not. For now, keep the logic simple. If the raw image stage is the
		// pre-opcode stage 1 image (original), then proceed with trying a
		// fast/downsampled interpolation when building the stage 3 image.
		// Otherwise, turn off the attempted optimization.

		if (host.ForFastSaveToDNG () &&
			(fRawImageStage > rawImageStagePreOpcode1))
			{

			// Disable/revert the optimization attempt, and do a normal
			// interpolation when building the stage 3 image.

			host.SetForFastSaveToDNG (false, 0);

			}

		}
		
	// Grab clone of raw image if required.
	
	if (fRawImageStage == rawImageStagePreOpcode1)
		{
		
		fRawImage.Reset (fStage1Image->Clone ());
		
		if (fTransparencyMask.Get ())
			{
			fRawTransparencyMask.Reset (fTransparencyMask->Clone ());
			}
   
		if (fDepthMap.Get ())
			{
			fRawDepthMap.Reset (fDepthMap->Clone ());
			}

		// If we choose to resize semantic masks to match the stage 3 image,
		// then this would be a good time to grab a copy of the semantic masks
		// and store them separately.

		// ...

		}

	else
		{
		
		// If we are not keeping the most raw image, we need
		// to recompute the raw image digest.
		
		ClearRawImageDigest ();
		
		// If we don't grab the unprocessed stage 1 image, then
		// the raw lossy compressed image is no longer valid.
		
		ClearRawLossyCompressedImage ();
		
		// Nor is the digest of the raw lossy compressed data.
		
		ClearRawLossyCompressedImageDigest ();
		
		// We also don't know the raw floating point bit depth.
		
		SetRawFloatBitDepth (0);
		
		}
		
	// Process opcode list 1.
	
	host.ApplyOpcodeList (fOpcodeList1, *this, fStage1Image);
	
	// See if we are done with the opcode list 1.
	
	if (fRawImageStage > rawImageStagePreOpcode1)
		{
		
		fOpcodeList1.Clear ();
		
		}
	
	// Grab clone of raw image if required.
	
	if (fRawImageStage == rawImageStagePostOpcode1)
		{
		
		fRawImage.Reset (fStage1Image->Clone ());
		
		if (fTransparencyMask.Get ())
			{
			fRawTransparencyMask.Reset (fTransparencyMask->Clone ());
			}
		
		if (fDepthMap.Get ())
			{
			fRawDepthMap.Reset (fDepthMap->Clone ());
			}

		// If we choose to resize semantic masks to match the stage 3 image,
		// then this would be a good time to grab a copy of the semantic masks
		// and store them separately.

		// ...
   
		}

	// Finalize linearization info.
	
		{
	
		NeedLinearizationInfo ();
	
		dng_linearization_info &info = *fLinearizationInfo.Get ();
		
		info.PostParse (host, *this);
		
		}
		
	// Perform the linearization.
	
	DoBuildStage2 (host);
		
	// Delete the stage1 image now that we have computed the stage 2 image.
	
	fStage1Image.Reset ();
	
	// Are we done with the linearization info.
	
	if (fRawImageStage > rawImageStagePostOpcode1)
		{
		
		ClearLinearizationInfo ();
		
		}
	
	// Process opcode list 2.
	
	host.ApplyOpcodeList (fOpcodeList2, *this, fStage2Image);
	
	// See if we are done with the opcode list 2.
	
	if (fRawImageStage > rawImageStagePostOpcode1)
		{
		
		fOpcodeList2.Clear ();
		
		}
		
	// Hook for any required processing just after opcode list 2.
	
	DoPostOpcodeList2 (host);
		
	// Convert from floating point to integer if required.
	
	if (NeedDefloatStage2 (host))
		{
		
		DefloatStage2 (host);
		
		}
		
	// Grab clone of raw image if required.
	
	if (fRawImageStage == rawImageStagePostOpcode2)
		{
		
		fRawImage.Reset (fStage2Image->Clone ());
  
		fRawImageBlackLevel = fStage3BlackLevel;
		
		if (fTransparencyMask.Get ())
			{
			fRawTransparencyMask.Reset (fTransparencyMask->Clone ());
			}
		
		if (fDepthMap.Get ())
			{
			fRawDepthMap.Reset (fDepthMap->Clone ());
			}

		// If we choose to resize semantic masks to match the stage 3 image,
		// then this would be a good time to grab a copy of the semantic masks
		// and store them separately.

		// ...

		}
	
	}
									  
/*****************************************************************************/

void dng_negative::DoInterpolateStage3 (dng_host &host,
										int32 srcPlane,
										dng_matrix *scaleTransforms)
	{
	
	dng_image &stage2 = *fStage2Image.Get ();
		
	dng_mosaic_info &info = *fMosaicInfo.Get ();
	
	dng_point downScale;

	const bool fastSaveToDNG = host.ForFastSaveToDNG ();

	const uint32 fastSaveSize = host.FastSaveToDNGSize ();
	
	if (fastSaveToDNG && (fastSaveSize > 0))
		{

		downScale = info.DownScale (host.MinimumSize	   (),
									host.FastSaveToDNGSize (),
									host.CropFactor		   ());

		}

	else
		{

		downScale = info.DownScale (host.MinimumSize   (),
									host.PreferredSize (),
									host.CropFactor	   ());

		}
	
	if (downScale != dng_point (1, 1))
		{
		SetIsPreview (true);
		}
	
	dng_point dstSize = info.DstSize (downScale);
	
	fStage3Image.Reset (host.Make_dng_image (dng_rect (dstSize),
											 info.fColorPlanes,
											 stage2.PixelType ()));

	if (srcPlane < 0 || srcPlane >= (int32) stage2.Planes ())
		{
		srcPlane = 0;
		}
				
	info.Interpolate (host,
					  *this,
					  stage2,
					  *fStage3Image.Get (),
					  downScale,
					  srcPlane,
					  scaleTransforms);

	}
									   
/*****************************************************************************/

// Interpolate and merge a multi-channel CFA image.

void dng_negative::DoMergeStage3 (dng_host &host,
								  dng_matrix *scaleTransforms)
	{
	
	// The DNG SDK does not provide multi-channel CFA image merging code.
	// It just grabs the first channel and uses that.
	
	DoInterpolateStage3 (host, 0, scaleTransforms);
				   
	// Just grabbing the first channel would often result in the very
	// bright image using the baseline exposure value.
	
	fStage3Gain = pow (2.0, BaselineExposure ());
	
	}
									   
/*****************************************************************************/

void dng_negative::DoBuildStage3 (dng_host &host,
								  int32 srcPlane,
								  dng_matrix *scaleTransforms)
	{
	
	// If we don't have a mosaic pattern, then just move the stage 2
	// image on to stage 3.
	
	dng_mosaic_info *info = fMosaicInfo.Get ();

	if (!info || !info->IsColorFilterArray ())
		{

		fStage3Image.Reset (fStage2Image.Release ());

		}
		
	else
		{
		
		// Remember the size of the stage 2 image.
		
		dng_point stage2_size = fStage2Image->Size ();
		
		// Special case multi-channel CFA interpolation.
		
		if ((fStage2Image->Planes () > 1) && (srcPlane < 0))
			{
			
			DoMergeStage3 (host,
						   scaleTransforms);
			
			}
			
		// Else do a single channel interpolation.
		
		else
			{
				
			DoInterpolateStage3 (host,
								 srcPlane,
								 scaleTransforms);
						   
			}
		
		// Calculate the ratio of the stage 3 image size to stage 2 image size.
		
		dng_point stage3_size = fStage3Image->Size ();
		
		fRawToFullScaleH = (real64) stage3_size.h / (real64) stage2_size.h;
		fRawToFullScaleV = (real64) stage3_size.v / (real64) stage2_size.v;
		
		}

	}
									   
/*****************************************************************************/

void dng_negative::BuildStage3Image (dng_host &host,
									 int32 srcPlane)
	{
	
	// Finalize the mosaic information.
	
	dng_mosaic_info *info = fMosaicInfo.Get ();
	
	if (info)
		{
		
		info->PostParse (host, *this);
		
		}
		
	// Do the interpolation as required.
	
	DoBuildStage3 (host, srcPlane, NULL);
	
	// Delete the stage2 image now that we have computed the stage 3 image,
	// unless the host wants to preserve it.

	if (!host.WantsPreserveStage2 ())
		{
	
		fStage2Image.Reset ();

		}
	
	// Are we done with the mosaic info?
	
	if (fRawImageStage >= rawImageStagePreOpcode3)
		{

		// If we're preserving the stage 2 image, also preserve the mosaic
		// info.

		if (!host.WantsPreserveStage2 ())
			{
		
			ClearMosaicInfo ();

			}
		
		}
		
	// If we are keeping the raw image, keep the raw default
	// crop and scale information.
	
	if (fRawImageStage < rawImageStagePreOpcode3)
		{
		
		SetRawDefaultCrop	   ();
		SetRawDefaultScale	   ();
		SetRawBestQualityScale ();
		
		}
		
	// To support saving linear DNG files, to need to account for
	// and upscaling during interpolation.

	if (fRawToFullScaleH > 1.0)
		{
		
		fDefaultCropSizeH  .ScaleBy (fRawToFullScaleH);
		fDefaultCropOriginH.ScaleBy (fRawToFullScaleH);
		fDefaultScaleH	   .ScaleBy (1.0 / fRawToFullScaleH);
		
		fRawToFullScaleH = 1.0;
		
		}
	
	if (fRawToFullScaleV > 1.0)
		{
		
		fDefaultCropSizeV  .ScaleBy (fRawToFullScaleV);
		fDefaultCropOriginV.ScaleBy (fRawToFullScaleV);
		fDefaultScaleV	   .ScaleBy (1.0 / fRawToFullScaleV);
		
		fRawToFullScaleV = 1.0;
		
		}
		
	// Resample the transparency mask if required.
	
	ResizeTransparencyToMatchStage3 (host);
			
	// Grab clone of raw image if required.
	
	if (fRawImageStage == rawImageStagePreOpcode3)
		{
		
		fRawImage.Reset (fStage3Image->Clone ());
  
		fRawImageBlackLevel = fStage3BlackLevel;
		
		if (fTransparencyMask.Get ())
			{
			fRawTransparencyMask.Reset (fTransparencyMask->Clone ());
			}

		if (fDepthMap.Get ())
			{
			fRawDepthMap.Reset (fDepthMap->Clone ());
			}

		// If we choose to resize semantic masks to match the stage 3 image,
		// then this would be a good time to grab a copy of the semantic masks
		// and store them separately.

		// ...

		}
		
	// Process opcode list 3.
	
	host.ApplyOpcodeList (fOpcodeList3, *this, fStage3Image);
	
	// See if we are done with the opcode list 3.
	
	if (fRawImageStage > rawImageStagePreOpcode3)
		{

		// Currently re-use the same flag for preserving the opcode list.

		if (!host.WantsPreserveStage2 ())
			{
		
			fOpcodeList3.Clear ();

			}
		
		}
		
	// Just in case the opcode list 3 changed the image size, resample the
	// transparency mask again if required.	 This is nearly always going
	// to be a fast NOP operation.
	
	ResizeTransparencyToMatchStage3 (host);
 
	// Depth maps are often lower resolution than the main image,
	// so make sure we upsample if required.
	
	ResizeDepthToMatchStage3 (host);

	// For now, do not resize semantic masks to match stage 3 image.
	
	// Update Floating Point flag.
 
	SetFloatingPoint (fStage3Image->PixelType () == ttFloat);
	
	// Don't need to grab a copy of raw data at this stage since
	// it is kept around as the stage 3 image.
	
	}
		
/******************************************************************************/

class dng_base_proxy_curve
	{
		
	public:

		virtual ~dng_base_proxy_curve ()
			{
			}

		virtual real64 EvaluateScene (real64 x) const = 0;
		
		virtual real64 EvaluateOutput (real64 x) const = 0;

		virtual real64 SceneSlope () const = 0;
		
		virtual real64 OutputSlope () const = 0;
		
	};

/*****************************************************************************/

class dng_jpeg_proxy_curve : public dng_base_proxy_curve
	{

	// RESEARCH: Instead of using a constant slope, consider using a family of
	// slopes ranging from the original one (1/16) to a limit of 1/128,
	// depending on the histogram distribution.

	private:

		static constexpr real64 kSceneProxyCurveSlope = 1.0 / 128.0;
		
		static constexpr real64 kOutputProxyCurveSlope = 1.0 / 16.0;
		
	public:

		virtual real64 EvaluateScene (real64 x) const override
			{
		
			// The following code evaluates the inverse of:
			//
			// f (x) = (s * x) + ((1 - s) * x^3)
			//
			// where s is the slope of the function at the origin (x==0).

			static constexpr real64 s = kSceneProxyCurveSlope;

			static const real64 k0 = pow (2.0, 1.0 / 3.0);

			static constexpr real64 k1 = 108.0 * s * s * s * (1.0 - s) * (1.0 - s) * (1.0 - s);

			real64 k2 = (27.0 * x) - (54.0 * s * x) + (27.0 * x * s * s);

			real64 k3 = pow (k2 + sqrt (k1 + k2 * k2), 1.0 / 3.0);

			real64 y = (k3 / (3.0 * k0 * (1.0 - s))) - (k0 * s / k3);

			y = Pin_real64 (0.0, y, 1.0);

			#if 0

			DNG_ASSERT (Abs_real64 (x - (kSceneProxyCurveSlope * y +
										(1.0 - kSceneProxyCurveSlope) * y * y * y)) < 0.0000001,
						"SceneProxyCurve round trip error");

			#endif

			return y;
		
			}
		
		virtual real64 EvaluateOutput (real64 x) const override
			{

			// DNG_ASSERT (kOutputProxyCurveSlope == 1.0 / 16.0,
			// 			"OutputProxyCurve unexpected slope");

			real64 y = (sqrt (960.0 * x + 1.0) - 1.0) / 30.0;

			#if 0

			DNG_ASSERT (Abs_real64 (x - (kOutputProxyCurveSlope * y +
										(1.0 - kOutputProxyCurveSlope) * y * y)) < 0.0000001,
						"OutputProxyCurve round trip error");

			#endif

			return y;

			}

		virtual real64 SceneSlope () const override
			{
			return kSceneProxyCurveSlope;
			}
		
		virtual real64 OutputSlope () const override
			{
			return kOutputProxyCurveSlope;
			}
		
	};

/*****************************************************************************/

// This curve is intended for integer data, not floating-point data.

class dng_jxl_proxy_curve : public dng_base_proxy_curve
	{

	#if 1

	// Non-linear curve that is similar to what we use for JPEGs. Bigger
	// files, but much better shadow response.

	private:

		static constexpr real64 kSceneProxyCurveSlope = 1.0 / 16.0;
		
		static constexpr real64 kOutputProxyCurveSlope = 1.0 / 16.0;
		
	public:

		virtual real64 EvaluateScene (real64 x) const override
			{
		
			// The following code evaluates the inverse of:
			//
			// f (x) = (s * x) + ((1 - s) * x^3)
			//
			// where s is the slope of the function at the origin (x==0).

			static constexpr real64 s = kSceneProxyCurveSlope;

			static const real64 k0 = pow (2.0, 1.0 / 3.0);

			static constexpr real64 k1 = 108.0 * s * s * s * (1.0 - s) * (1.0 - s) * (1.0 - s);

			real64 k2 = (27.0 * x) - (54.0 * s * x) + (27.0 * x * s * s);

			real64 k3 = pow (k2 + sqrt (k1 + k2 * k2), 1.0 / 3.0);

			real64 y = (k3 / (3.0 * k0 * (1.0 - s))) - (k0 * s / k3);

			y = Pin_real64 (0.0, y, 1.0);

			#if 0

			DNG_ASSERT (Abs_real64 (x - (kSceneProxyCurveSlope * y +
										(1.0 - kSceneProxyCurveSlope) * y * y * y)) < 0.0000001,
						"SceneProxyCurve round trip error");

			#endif

			return y;
		
			}
		
		virtual real64 EvaluateOutput (real64 x) const override
			{

			// DNG_ASSERT (kOutputProxyCurveSlope == 1.0 / 16.0,
			// 			"OutputProxyCurve unexpected slope");

			real64 y = (sqrt (960.0 * x + 1.0) - 1.0) / 30.0;

			#if 0

			DNG_ASSERT (Abs_real64 (x - (kOutputProxyCurveSlope * y +
										(1.0 - kOutputProxyCurveSlope) * y * y)) < 0.0000001,
						"OutputProxyCurve round trip error");

			#endif

			return y;

			}

		virtual real64 SceneSlope () const override
			{
			return kSceneProxyCurveSlope;
			}
		
		virtual real64 OutputSlope () const override
			{
			return kOutputProxyCurveSlope;
			}
		
	#else

	// No curve. This causes JPEG XL to overly compress in the shadows.

	public:

		virtual real64 EvaluateScene (real64 x) const override
			{
			return x;
			}
		
		virtual real64 EvaluateOutput (real64 x) const override
			{
			return x;
			}

		virtual real64 SceneSlope () const override
			{
			return 1.0;
			}
		
		virtual real64 OutputSlope () const override
			{
			return 1.0;
			}

	#endif	// new vs old method
		
	};

/*****************************************************************************/

class dng_gamma_encode_proxy : public dng_1d_function
	{
	
	private:
	
		real64 fLower;
		real64 fUpper;
		
		bool fIsSceneReferred;
  
		real64 fStage3BlackLevel;
		
		real64 fBlackLevel;

		const dng_base_proxy_curve &fBaseCurve;
		
	public:
		
		dng_gamma_encode_proxy (real64 lower,
								real64 upper,
								bool isSceneReferred,
								real64 stage3BlackLevel,
								real64 blackLevel,
								const dng_base_proxy_curve &baseCurve)
							   
			:	fLower			  (lower)
			,	fUpper			  (upper)
			,	fIsSceneReferred  (isSceneReferred)
			,	fStage3BlackLevel (stage3BlackLevel)
			,	fBlackLevel		  (blackLevel)
			,	fBaseCurve		  (baseCurve)
			
			{

			}
			
		virtual real64 Evaluate (real64 x) const
			{

			real64 y;
			
			if (fIsSceneReferred)
				{
	
				if (fLower < fStage3BlackLevel)
					{
					
					x = Pin_real64 (-1.0,
									(x - fStage3BlackLevel) / (fUpper - fStage3BlackLevel),
									1.0);
		
					if (x >= 0.0)
						{
						
						y = fBaseCurve.EvaluateScene (x);

						}
						
					else
						{
						
						y = -fBaseCurve.EvaluateScene (-x);
						
						}
						
					y = Pin_real64 (0.0, y * (1.0 - fBlackLevel) + fBlackLevel, 1.0);
					
					}
					
				else
					{
	
					x = Pin_real64 (0.0, (x - fLower) / (fUpper - fLower), 1.0);
	
					y = fBaseCurve.EvaluateScene (x);
					
					}

				}
				
			else
				{
	
				x = Pin_real64 (0.0, (x - fLower) / (fUpper - fLower), 1.0);

				y = fBaseCurve.EvaluateOutput (x);
				
				}
				
			return y;
			
			}
	
	};

/*****************************************************************************/

class dng_encode_proxy_task: public dng_area_task,
							 private dng_uncopyable
	{
	
	private:
	
		const dng_image &fSrcImage;
		
		dng_image &fDstImage;
		
		AutoPtr<dng_memory_block> fTable16 [kMaxColorPlanes];
			
	public:
	
		dng_encode_proxy_task (dng_host &host,
							   const dng_image &srcImage,
							   dng_image &dstImage,
							   const real64 *lower,
							   const real64 *upper,
							   bool isSceneReferred,
							   real64 stage3BlackLevel,
							   real64 *blackLevel,
							   real64 whiteLevel,
							   const dng_base_proxy_curve &baseCurve);
							 
		virtual dng_rect RepeatingTile1 () const
			{
			return fSrcImage.RepeatingTile ();
			}
			
		virtual dng_rect RepeatingTile2 () const
			{
			return fDstImage.RepeatingTile ();
			}
			
		virtual void Process (uint32 threadIndex,
							  const dng_rect &tile,
							  dng_abort_sniffer *sniffer);
								  
	};

/*****************************************************************************/

dng_encode_proxy_task::dng_encode_proxy_task (dng_host &host,
											  const dng_image &srcImage,
											  dng_image &dstImage,
											  const real64 *lower,
											  const real64 *upper,
											  bool isSceneReferred,
											  real64 stage3BlackLevel,
											  real64 *blackLevel,
											  real64 whiteLevel,
											  const dng_base_proxy_curve &baseCurve)

	:	dng_area_task ("dng_encode_proxy_task")
										
	,	fSrcImage (srcImage)
	,	fDstImage (dstImage)
	
	{
 
	for (uint32 plane = 0; plane < fSrcImage.Planes (); plane++)
		{
		
		fTable16 [plane] . Reset (host.Allocate (0x10000 * sizeof (uint16)));

		const real64 normBlackLevel = blackLevel [plane] / whiteLevel;
		
		dng_gamma_encode_proxy gamma (lower [plane],
									  upper [plane],
									  isSceneReferred,
									  stage3BlackLevel,
									  normBlackLevel,
									  baseCurve);
			
		// Compute fast approximation of encoding table.
									  
		dng_1d_table table32;
		
		table32.Initialize (host.Allocator (), gamma);
		
		table32.Expand16 (fTable16 [plane]->Buffer_uint16 ());
  
		// The gamma curve has some fairly high curvature near
		// the black point, and the above approximation can actually
		// change results.	So use exact math near the black point.
		// Still very fast, since we are only computing a small
		// fraction of the range exactly.
		
			{
			
			const int32 kHighResRadius = 1024;
			
			uint32 zeroPt = Round_uint32 (stage3BlackLevel * 65535.0);
			
			uint32 highResLower = Max_int32 (0		, zeroPt - kHighResRadius);
			uint32 highResUpper = Min_int32 (0x10000, zeroPt + kHighResRadius);
			
			for (uint32 j = highResLower; j < highResUpper; j++)
				{

				real64 x = j * (1.0 / 65535.0);
				
				real64 y = gamma.Evaluate (x);
				
				uint16 z = Pin_uint16 (Round_int32 (y * 65535.0));
				
				fTable16 [plane]->Buffer_uint16 () [j] = z;
				
				}
				
			}
										 
		}
		
	}

/*****************************************************************************/

void dng_encode_proxy_task::Process (uint32 /* threadIndex */,
									 const dng_rect &tile,
									 dng_abort_sniffer * /* sniffer */)
	{

	dng_const_tile_buffer srcBuffer (fSrcImage, tile);
	dng_dirty_tile_buffer dstBuffer (fDstImage, tile);
	
	int32 sColStep = srcBuffer.fColStep;
	int32 dColStep = dstBuffer.fColStep;

	if (fDstImage.PixelSize () == 2)
		{
		
		// 16-bit path.
		
		for (uint32 plane = 0; plane < fSrcImage.Planes (); plane++)
			{

			const uint16 *map = fTable16 [plane]->Buffer_uint16 ();

			for (int32 row = tile.t; row < tile.b; row++)
				{

				const uint16 *sPtr = srcBuffer.ConstPixel_uint16 (row, tile.l, plane);

				uint16 *dPtr = dstBuffer.DirtyPixel_uint16 (row, tile.l, plane);

				for (int32 col = tile.l; col < tile.r; col++)
					{

					*dPtr = map [*sPtr];

					sPtr += sColStep;
					dPtr += dColStep;

					}

				}

			}

		}

	else
		{
		
		// 8-bit path.
		
		const uint16 *noise = dng_dither::Get ().NoiseBuffer16 ();

		for (uint32 plane = 0; plane < fSrcImage.Planes (); plane++)
			{

			const uint16 *map = fTable16 [plane]->Buffer_uint16 ();

			for (int32 row = tile.t; row < tile.b; row++)
				{

				const uint16 *sPtr = srcBuffer.ConstPixel_uint16 (row, tile.l, plane);

				uint8 *dPtr = dstBuffer.DirtyPixel_uint8 (row, tile.l, plane);

				const uint16 *rPtr = &noise [(row & dng_dither::kRNGMask) * dng_dither::kRNGSize];

				for (int32 col = tile.l; col < tile.r; col++)
					{

					// BULLSHIT: "Noise_Planes_Issue"
					// For each pixel we are applying the same noise to each plane.
					// This does not seem ideal at it will shift all planes equally for each pixel.
					// Is this really what we want? Maybe it helps to preseve hue slightly?
					// Not sure if this was 100% intentional or not.

					uint32 x = *sPtr;

					uint32 r = rPtr [col & dng_dither::kRNGMask];

					x = map [x];

					x = (((x << 8) - x) + r) >> 16;

					*dPtr = (uint8) x;

					sPtr += sColStep;
					dPtr += dColStep;

					}

				}

			}

		}

	}
								  
/******************************************************************************/

bool dng_negative::SupportsPreservedBlackLevels (dng_host & /* host */)
	{
	
	return false;
	
	}

/******************************************************************************/

dng_image * EncodeImageForCompression (dng_host &host,
									   const dng_image &srcImage,
									   const dng_rect &activeArea,
									   const bool isSceneReferred,
									   const bool use16bit,
									   const real64 srcBlackLevel,
									   real64 *dstBlackLevel,
									   dng_opcode_list &opcodeList)
	{
	
	if (srcImage.PixelType () != ttShort)
		{
		return nullptr;
		}

	if (srcImage.Planes () > kMaxColorPlanes)
		{
		ThrowBadFormat ();
		}

	real64 lower [kMaxColorPlanes];
	real64 upper [kMaxColorPlanes];
	
		{
		
		const real64 kClipFraction = 0.00001;
	
		uint64 pixels = (uint64) activeArea.H () *
						(uint64) activeArea.W ();
						
		uint32 limit = Round_int32 ((real64) pixels * kClipFraction);
		
		AutoPtr<dng_memory_block> histData (host.Allocate (65536 * sizeof (uint32)));
		
		uint32 *hist = histData->Buffer_uint32 ();
			
		for (uint32 plane = 0; plane < srcImage.Planes (); plane++)
			{
			
			HistogramArea (host,
						   srcImage,
						   activeArea,
						   hist,
						   65535,
						   plane);
						   
			uint32 total = 0;

			uint32 upperIndex = 65535;

			while (total + hist [upperIndex] <= limit && upperIndex > 255)
				{
				
				total += hist [upperIndex];
				
				upperIndex--;
				
				}
	
			total = 0;
			
			uint32 lowerIndex = 0;
			
			while (total + hist [lowerIndex] <= limit && lowerIndex < upperIndex - 255)
				{
				
				total += hist [lowerIndex];
				
				lowerIndex++;
				
				}

			lower [plane] = lowerIndex / 65535.0;
			upper [plane] = upperIndex / 65535.0;
		
			}
			
		}
		
	AutoPtr<dng_base_proxy_curve> baseCurve;

	if (use16bit)
		baseCurve.Reset (new dng_jxl_proxy_curve);
	else
		baseCurve.Reset (new dng_jpeg_proxy_curve);
	
	for (uint32 n = 0; n < kMaxColorPlanes; n++)
		{
		dstBlackLevel [n] = 0.0;
		}

	const uint32 whiteLevel = use16bit ? 65535 : 255;

	const real64 whiteLevel64 = real64 (whiteLevel);

	if (isSceneReferred && (srcBlackLevel > 0.0))
		{
		
		for (uint32 plane = 0; plane < srcImage.Planes (); plane++)
			{
			
			if (lower [plane] < srcBlackLevel)
				{

				upper [plane] = Max_real64 (upper [plane],
											srcBlackLevel +
											(srcBlackLevel - lower [plane]) *
											(1.0 / kMaxStage3BlackLevelNormalized - 1.0));
					
				upper [plane] = Min_real64 (upper [plane], 1.0);
				
				real64 negRange =
					baseCurve->EvaluateScene ((srcBlackLevel - lower [plane]) /
											  (upper [plane] - srcBlackLevel));
				
				real64 outBlack = negRange / (1.0 + negRange);

				dstBlackLevel [plane] = Min_real64 (kMaxStage3BlackLevelNormalized * whiteLevel64,
													ceil (outBlack * whiteLevel64));

				}
			
			}

		}

	// Apply the gamma encoding, using dither when downsampling to 8-bit.
	
	AutoPtr<dng_image> dstImage (host.Make_dng_image (srcImage.Bounds (),
													  srcImage.Planes (),
													  use16bit ? ttShort : ttByte));

		{

		DNG_REQUIRE (baseCurve.Get (),
					 "missing base curve");
		
		dng_encode_proxy_task task (host,
									srcImage,
									*dstImage,
									lower,
									upper,
									isSceneReferred,
									srcBlackLevel,
									dstBlackLevel,
									whiteLevel64,
									*baseCurve);
		
		host.PerformAreaTask (task,
							  srcImage.Bounds ());
	
		}
				  
	// Add opcodes to undo the gamma encoding.
	
		{
	
		for (uint32 plane = 0; plane < srcImage.Planes (); plane++)
			{
			
			dng_area_spec areaSpec (dng_rect (activeArea.Size ()),
									plane);
			
			real64 coefficient [4];

			coefficient [0] = 0.0;

			if (isSceneReferred)
				{
				coefficient [1] = baseCurve->SceneSlope ();
				coefficient [2] = 0.0;
				coefficient [3] = 1.0 - coefficient [1];
				}
			else
				{
				coefficient [1] = baseCurve->OutputSlope ();
				coefficient [2] = 1.0 - coefficient [1];
				coefficient [3] = 0.0;
				}
	
			if (lower [plane] < srcBlackLevel)
				{
				
				real64 rescale = (upper [plane] - srcBlackLevel) / (1.0 - srcBlackLevel);
				
				coefficient [0] *= rescale;
				coefficient [1] *= rescale;
				coefficient [2] *= rescale;
				coefficient [3] *= rescale;

				}
				
			else
				{
			
				real64 rescale = (upper [plane] - lower [plane]) / (1.0 - srcBlackLevel);
				
				coefficient [0] *= rescale;
				coefficient [1] *= rescale;
				coefficient [2] *= rescale;
				coefficient [3] *= rescale;
				
				coefficient [0] += (lower [plane] - srcBlackLevel) / (1.0 - srcBlackLevel);
				
				}
			
			AutoPtr<dng_opcode> opcode (new dng_opcode_MapPolynomial (areaSpec,
																	  isSceneReferred ? 3 : 2,
																	  coefficient));
																	  
			opcodeList.Append (opcode);
			
			}
			
		}
		
	return dstImage.Release ();
	
	}

/*****************************************************************************/

bool dng_negative::NeedLossyCompressMosaicJXL (dng_host &host) const
	{
	
	if (!host.LossyMosaicJXL ())
		{
		return false;
		}
		
	if (host.SaveDNGVersion () < dngVersion_1_7_1_0)
		{
		return false;
		}
		
	if (!GetMosaicInfo () ||
		!GetMosaicInfo ()->IsColorFilterArray () ||
		 GetMosaicInfo ()->fCFAPatternSize.h != 2 ||
		 GetMosaicInfo ()->fCFAPatternSize.v != 2)
		{
		return false;
		}
		
	if (RawLossyCompressedImage () &&
		RawLossyCompressedImage ()->fCompressionCode == ccJXL &&
		RawLossyCompressedImage ()->fJXLDistance != 0.0f)
		{
		return false;
		}
		
	return true;
	
	}

/*****************************************************************************/

class dng_lossy_mosaic_task : public dng_area_task
							, private dng_uncopyable
	{
	
	public:
	
		const dng_image &fSrcImage;
			  dng_image &fDstImage;
			  
		dng_point fOffset;
			  
	private:
	
		enum
			{
			kMaxThreads = 4
			};
		
		AutoPtr<dng_memory_block> fBuffer [kMaxThreads];
		
	public:
	
		dng_lossy_mosaic_task (const dng_image &srcImage,
							   dng_image &dstImage,
							   const dng_point &offset)
								  
			:	dng_area_task ("dng_lossy_mosaic_task")
								  
			,	fSrcImage (srcImage)
			,	fDstImage (dstImage)
			,	fOffset   (offset)
			
			{
			
			fMaxThreads = kMaxThreads;
			
			fMaxTileSize = dng_point (512, 512);
			
			}
	
		dng_rect RepeatingTile1 () const override
			{
			return fDstImage.RepeatingTile ();
			}
			
		void Start (uint32 threadCount,
					const dng_rect &dstArea,
					const dng_point &tileSize,
					dng_memory_allocator *allocator,
					dng_abort_sniffer *sniffer) override;

		void Process (uint32 threadIndex,
					  const dng_rect &tile,
					  dng_abort_sniffer *sniffer) override;
		
	};

/*****************************************************************************/

void dng_lossy_mosaic_task::Start (uint32 threadCount,
								   const dng_rect & /* dstArea */,
								   const dng_point &tileSize,
								   dng_memory_allocator *allocator,
								   dng_abort_sniffer * /* sniffer */)
	{
	
	uint32 bufferSize = tileSize.h *
						tileSize.v *
						fDstImage.PixelSize ();
	
	for (uint32 threadIndex = 0; threadIndex < threadCount; threadIndex++)
		{
		
		fBuffer [threadIndex].Reset (allocator->Allocate (bufferSize));
		
		}
	
	}

/*****************************************************************************/

void dng_lossy_mosaic_task::Process (uint32 threadIndex,
									 const dng_rect &tile,
									 dng_abort_sniffer * /* sniffer */)
	{
	
	dng_pixel_buffer dstBuffer;
	
	dstBuffer.fArea      = tile;
	dstBuffer.fPlane     = 0;
	dstBuffer.fPlanes    = 1;
	dstBuffer.fPlaneStep = 1;
	dstBuffer.fColStep   = 1;
	dstBuffer.fRowStep   = tile.W ();
	dstBuffer.fPixelType = fDstImage.PixelType ();
	dstBuffer.fPixelSize = fDstImage.PixelSize ();
	dstBuffer.fData      = fBuffer [threadIndex]->Buffer ();
	dstBuffer.fDirty     = true;
	
	dng_pixel_buffer srcBuffer = dstBuffer;
	
	srcBuffer.fArea = srcBuffer.fArea - fOffset;
	
	fSrcImage.Get (srcBuffer,
				   dng_image::edge_repeat,
				   2,
				   2);
				   
	fDstImage.Put (dstBuffer);
		
	}
	
/*****************************************************************************/

void dng_negative::LossyCompressMosaicJXL (dng_host &host,
										   dng_image_writer &writer)
	{
	
	if (NeedLossyCompressMosaicJXL (host))
		{
		
		if (RawImage ().PixelType () == ttShort &&
			RawImage ().Planes    () == 1 &&
			RawImage ().Height    () >= 2 &&
			RawImage ().Width     () >= 2)
			{
			
			// Figure out tile size and padding so tile seams don't cross
			// color fields.
			
			dng_point oldSize = RawImage ().Size ();
			
			dng_point fieldSize;
			
			fieldSize.v = (oldSize.v + 1) / 2;
			fieldSize.h = (oldSize.h + 1) / 2;
			
			dng_point tileSize;
			
				{
				
				dng_ifd tempIFD;
				
				tempIFD.fSamplesPerPixel = 1;
				
				tempIFD.fBitsPerSample [0] = 16;
				
				tempIFD.fImageLength = fieldSize.v;
				tempIFD.fImageWidth  = fieldSize.h;
				
				tempIFD.FindTileSize (1024 * 1024);
				
				tileSize.v = tempIFD.fTileLength;
				tileSize.h = tempIFD.fTileWidth;
				
				}
				
			fieldSize.v = ((fieldSize.v + tileSize.v - 1) / tileSize.v) * tileSize.v;
			fieldSize.h = ((fieldSize.h + tileSize.h - 1) / tileSize.h) * tileSize.h;
			
			dng_point paddedSize;
			
			paddedSize.v = fieldSize.v * 2;
			paddedSize.h = fieldSize.h * 2;
			
			dng_point padOffset;
			
			padOffset.v = (paddedSize.v - oldSize.v) / 2;
			padOffset.h = (paddedSize.h - oldSize.h) / 2;
			
			dng_rect activeArea (padOffset.v,
								 padOffset.h,
								 padOffset.v + oldSize.v,
								 padOffset.h + oldSize.h);
				
			if (paddedSize != oldSize)
				{
			
				AutoPtr<dng_image> paddedImage (host.Make_dng_image (dng_rect (paddedSize),
																	 1,
																	 ttShort));
																	 
					{
					
					dng_lossy_mosaic_task task (RawImage (),
												*paddedImage,
												padOffset);
												
					host.PerformAreaTask (task, paddedImage->Bounds ());
					
					}
					
				// This padded image becomes the new raw image.
				
				fRawImage.Reset (paddedImage.Release ());
				
				// Adjust active area for padding.
				
				SetActiveArea (activeArea);
										 
				// We just re-created the linearization info, so copy back
				// the raw black level so it gets written to output DNG.
				
				SetBlackLevel (fRawImageBlackLevel);
										 
				}
				
			// Range/curve encode image for better compression.
			
				{
				
				real64 dstBlackLevel [kMaxColorPlanes];
				
				fRawImage.Reset (EncodeImageForCompression (host,
															RawImage (),
															activeArea,
															true,			// isSceneReferred
															true,			// use16Bit
															fRawImageBlackLevel * (1.0 / 65535.0),
															dstBlackLevel,
															fOpcodeList2));
															
				SetBlackLevel (Round_int32 (dstBlackLevel [0]));
															
				}
			
			// Apply interleaving to a temporary image.

			AutoPtr<dng_image> tempImage (host.Make_dng_image (RawImage ().Bounds    (),
															   RawImage ().Planes    (),
															   RawImage ().PixelType ()));
															   
			Interleave2D (host,
						  RawImage (),
						  *tempImage,
						  2,
						  2,
						  true);
				
			// Compress.
			
			AutoPtr<dng_jxl_image> lossyImage (new dng_jxl_image);
			
				{
				
				dng_ifd tempIFD;
				
				tempIFD.fNewSubFileType = sfMainImage;
				
				tempIFD.fPhotometricInterpretation = piLinearRaw;
				
				tempIFD.fCompression = ccJXL;
				
				tempIFD.fSamplesPerPixel = 1;
				
				tempIFD.fBitsPerSample [0] = 16;
				
				tempIFD.fImageLength = paddedSize.v;
				tempIFD.fImageWidth  = paddedSize.h;
				
				tempIFD.fTileLength = tileSize.v;
				tempIFD.fTileWidth  = tileSize.h;
				
				tempIFD.fUsesTiles = true;
				
				AutoPtr<dng_jxl_encode_settings> settings
						(host.MakeJXLEncodeSettings (dng_host::use_case_LossyMosaic,
													 *tempImage,
													 this));
				
				tempIFD.fJXLEncodeSettings.reset (settings.Release ());
				
				AutoPtr<JxlColorEncoding> encoding (new JxlColorEncoding);

				memset (encoding.Get (), 0, sizeof (JxlColorEncoding));
				
				// EncodeImageForCompression leaves the image far from linear gamma,
				// so let's pretend it is sRGB gamma.

				encoding->color_space	    = JXL_COLOR_SPACE_GRAY;
				encoding->white_point	    = JXL_WHITE_POINT_D65; // unused
				encoding->primaries		    = JXL_PRIMARIES_2100;  // unused
				encoding->transfer_function = JXL_TRANSFER_FUNCTION_SRGB;
				
				tempIFD.fJXLColorEncoding.reset (encoding.Release ());

				lossyImage->EncodeTiles (host,
										 writer,
										 *tempImage,
										 tempIFD);
				
				}
				
			lossyImage->fRowInterleaveFactor    = 2;
			lossyImage->fColumnInterleaveFactor = 2;
				
			fRawLossyCompressedImage.Reset (lossyImage.Release ());
			
			ClearRawLossyCompressedImageDigest ();
			
			ClearRawImageDigest ();
			
			}

		}
	
	}

/*****************************************************************************/

void dng_negative::CompressTransparencyMaskJXL (dng_host &host,
												dng_image_writer &writer,
												bool nearLosslessOK)
	{
	
	if (host.SaveDNGVersion () != 0 &&
		host.SaveDNGVersion () < MinBackwardVersionForCompression (ccJXL))
		{
		return;
		}
		
	if (!RawLossyCompressedTransparencyMask () &&
		RawTransparencyMask () != nullptr &&
		SupportsJXL (*RawTransparencyMask ()) &&
		(RawTransparencyMask ()->PixelType () != ttFloat || RawTransparencyMaskBitDepth () == 16))
		{
		
		AutoPtr<dng_jxl_image> lossyImage (new dng_jxl_image);
		
		lossyImage->Encode (host,
							writer,
							*RawTransparencyMask (),
							nearLosslessOK ? dng_host::use_case_Transparency
										   : dng_host::use_case_LosslessTransparency,
							this);
			
		fRawLossyCompressedTransparencyMask.Reset (lossyImage.Release ());
		
		ClearRawImageDigest ();
			
		}
		
	}
		
/*****************************************************************************/

void dng_negative::CompressDepthMapJXL (dng_host &host,
										dng_image_writer &writer,
										bool nearLosslessOK)
	{
	
	if (host.SaveDNGVersion () != 0 &&
		host.SaveDNGVersion () < MinBackwardVersionForCompression (ccJXL))
		{
		return;
		}
		
	if (!RawLossyCompressedDepthMap () &&
		RawDepthMap () != nullptr &&
		SupportsJXL (*RawDepthMap ()) &&
		RawDepthMap ()->PixelType () != ttFloat)
		{
		
		AutoPtr<dng_jxl_image> lossyImage (new dng_jxl_image);
		
		lossyImage->Encode (host,
							writer,
							*RawDepthMap (),
							nearLosslessOK ? dng_host::use_case_Depth
										   : dng_host::use_case_LosslessDepth,
							this);
			
		fRawLossyCompressedDepthMap.Reset (lossyImage.Release ());
		
		}
		
	}
		
/*****************************************************************************/

void dng_negative::CompressSemanticMasksJXL (dng_host &host,
											 dng_image_writer &writer,
											 bool nearLosslessOK)
	{
	
	if (host.SaveDNGVersion () != 0 &&
		host.SaveDNGVersion () < MinBackwardVersionForCompression (ccJXL))
		{
		return;
		}
		
	// JXL compress semantic masks, if not already compressed.
	
	const uint32 maskCount = NumSemanticMasks ();

	for (uint32 i = 0; i < maskCount; i++)
		{

		auto &mask = fSemanticMasks [i];

		if (!mask.fLossyCompressed.get () &&
			SupportsJXL (*mask.fMask) &&
			(mask.fMask->PixelType () != ttFloat || nearLosslessOK))
			{
			
			AutoPtr<dng_jxl_image> lossyImage (new dng_jxl_image);

			lossyImage->Encode (host,
								writer,
								*mask.fMask,
								nearLosslessOK ? dng_host::use_case_SemanticMask
											   : dng_host::use_case_LosslessSemanticMask,
								this);

			mask.fLossyCompressed.reset (lossyImage.Release ());
			
			}
			
		}

	}

/*****************************************************************************/

void dng_negative::LosslessCompressJXL (dng_host &host,
										dng_image_writer &writer,
										bool nearLosslessOK)
	{
	
	if (host.SaveDNGVersion () != 0 &&
		host.SaveDNGVersion () < MinBackwardVersionForCompression (ccJXL))
		{
		return;
		}
		
	// JXL compress main image, if not already compressed.
		
	if (!RawLossyCompressedImage ())
		{
	
		if (GetMosaicInfo () &&
			GetMosaicInfo ()->IsColorFilterArray ())
			{
			
			if (host.SaveDNGVersion () >= dngVersion_1_7_1_0 &&
				GetMosaicInfo ()->fCFAPatternSize.h >= 2 &&
				GetMosaicInfo ()->fCFAPatternSize.h < (int32) RawImage ().Width () &&
				GetMosaicInfo ()->fCFAPatternSize.v >= 2 &&
				GetMosaicInfo ()->fCFAPatternSize.v < (int32) RawImage ().Height () &&
				RawImage ().Planes () == 1 &&
				RawImage ().PixelType () == ttShort)
				{
				
				// First, apply interleaving to a temporary image.

				AutoPtr<dng_image> tempImage (host.Make_dng_image (RawImage ().Bounds (),
																   RawImage ().Planes (),
																   RawImage ().PixelType ()));
																   
				Interleave2D (host,
							  RawImage (),
							  *tempImage,
							  GetMosaicInfo ()->fCFAPatternSize.v,
							  GetMosaicInfo ()->fCFAPatternSize.h,
							  true);

				// Compress.
				
				AutoPtr<dng_jxl_image> lossyImage (new dng_jxl_image);
				
				lossyImage->Encode (host,
									writer,
									*tempImage,
									dng_host::use_case_LosslessMosaic,
									this);
				
				lossyImage->fRowInterleaveFactor    = GetMosaicInfo ()->fCFAPatternSize.v;
				lossyImage->fColumnInterleaveFactor = GetMosaicInfo ()->fCFAPatternSize.h;
					
				fRawLossyCompressedImage.Reset (lossyImage.Release ());
				
				ClearRawLossyCompressedImageDigest ();
				
				ClearRawImageDigest ();
					
				}
				
			}
			
		else
			{
			
			if (SupportsJXL (RawImage ()) &&
				(RawImage ().PixelType () != ttFloat || RawFloatBitDepth () == 16))
				{
				
				AutoPtr<dng_jxl_image> lossyImage (new dng_jxl_image);
				
				lossyImage->Encode (host,
									writer,
									RawImage (),
									nearLosslessOK ? dng_host::use_case_MainImage
												   : dng_host::use_case_LosslessMainImage,
									this);
					
				fRawLossyCompressedImage.Reset (lossyImage.Release ());
				
				ClearRawLossyCompressedImageDigest ();
				
				ClearRawImageDigest ();
					
				}
				
			}
			
		}
	
	// JXL compress enhanced image, if not already compressed.
		
	if (!EnhancedLossyCompressedImage () &&
		EnhanceParams ().NotEmpty () &&
		&RawImage () != Stage3Image () &&
		SupportsJXL (*Stage3Image ()) &&
		(Stage3Image ()->PixelType () == ttShort || nearLosslessOK))
		{
		
		AutoPtr<dng_jxl_image> lossyImage (new dng_jxl_image);
		
		lossyImage->Encode (host,
							writer,
							*RawTransparencyMask (),
							nearLosslessOK ? dng_host::use_case_EnhancedImage
										   : dng_host::use_case_LosslessEnhancedImage,
							this);
			
		fEnhancedLossyCompressedImage.Reset (lossyImage.Release ());
		
		}
	
	// JXL compress transparency mask, if not already compressed.
		
	CompressTransparencyMaskJXL (host,
								 writer,
								 nearLosslessOK);
									
	// JXL compress depth map, if not already compressed.
		
	CompressDepthMapJXL (host,
						 writer,
						 nearLosslessOK);
		
	// JXL compress semantic masks, if not already compressed.
	
	CompressSemanticMasksJXL (host,
							  writer,
							  nearLosslessOK);

	}
			
/******************************************************************************/

dng_image * dng_negative::EncodeRawProxy (dng_host &host,
										  const dng_image &srcImage,
										  dng_opcode_list &opcodeList,
										  real64 *blackLevel) const
	{
	
	bool use16bit = SupportsJXL (srcImage) &&
					(!host.SaveDNGVersion () ||
					  host.SaveDNGVersion () >= MinBackwardVersionForCompression (ccJXL));
							
	return EncodeImageForCompression (host,
									  srcImage,
									  srcImage.Bounds (),
									  IsSceneReferred (),
									  use16bit,
									  Stage3BlackLevelNormalized (),
									  blackLevel,
									  opcodeList);

	}

/******************************************************************************/

void dng_negative::AdjustGainMapForStage3 (dng_host & /* host */)
	{
	
	// For dng_sdk, the stage3 image's color space is always the same as the
	// raw image's color space, so any gain map does not need adjusting.
	
	}

/******************************************************************************/

void dng_negative::AdjustProfileForStage3 ()
	{

	// For dng_sdk, the stage3 image's color space is always the same as the
	// raw image's color space.
	
	}
									  
/******************************************************************************/

void dng_negative::ConvertToProxy (dng_host &host,
								   dng_image_writer &writer,
								   uint32 proxySize,
								   uint64 proxyCount)
	{

	// ConvertToProxy requires a valid default crop area. An empty rect here
	// means the negative has no crop metadata, which is a file format error
	// in this context.

	if (DefaultCropArea ().IsEmpty ())
		{
		ThrowBadFormat ();
		}

	if (!proxySize)
		{
		proxySize = kMaxImageSide;
		}
	
	if (!proxyCount)
		{
		proxyCount = (uint64) proxySize *
					 (uint64) proxySize;
		}
	
	// Is this a (possibly) downsampled proxy?
	
	bool nonFullSizeProxy = (proxySize  < kMaxImageSide) ||
							(proxyCount < (uint64) kMaxImageSide *
										  (uint64) kMaxImageSide);

	// Don't need to keep private data around in non-full size proxies.
	
	if (nonFullSizeProxy)
		{
	
		ClearMakerNote ();
		
		ClearPrivateData ();
		
		}

	// When converting Enhanced images to proxy, make sure to set the
	// OriginalDefault... fields to reflect the Enhanced image size, not the
	// standard resolution size.

	if (RawDefaultCropSizeH ().As_real64 () < DefaultCropSizeH ().As_real64 () &&
		RawDefaultCropSizeV ().As_real64 () < DefaultCropSizeV ().As_real64 ())
		{

		// Clear any existing values.

		SetOriginalDefaultFinalSize (dng_point ());

		SetOriginalBestQualityFinalSize (dng_point ());

		SetOriginalDefaultCropSize (dng_urational (),
									dng_urational ());

		// Set the values from scratch.

		SetDefaultOriginalSizes ();
		
		}

	const bool useJXL = (ColorChannels () == 1 ||
						 ColorChannels () == 3) &&
						(!host.SaveDNGVersion () ||
						  host.SaveDNGVersion () >= MinBackwardVersionForCompression (ccJXL));

	// See if we already have an acceptable proxy raw image.
	
	bool rawImageOK = false;
	
	real64 pixelAspect = PixelAspectRatio ();
	
	bool nonSquarePixels = pixelAspect < 0.99 ||
						   pixelAspect > 1.01;
		
	if (fRawImage.Get () &&
		fRawImage->Bounds () == DefaultCropArea () &&
		fRawImage->Bounds ().H () <= proxySize &&
		fRawImage->Bounds ().W () <= proxySize &&
		(uint64) fRawImage->Bounds ().H () *
		(uint64) fRawImage->Bounds ().W () <= proxyCount &&
		fRawToFullScaleH == 1.0 &&
		fRawToFullScaleV == 1.0 &&
		!nonSquarePixels &&
		fEnhanceParams.IsEmpty () &&
		(!GetMosaicInfo () || !GetMosaicInfo ()->IsColorFilterArray ()))
		{
		
		if (fRawImage->PixelType () == ttByte)
			{
			
			rawImageOK = fRawLossyCompressedImage.Get () != nullptr;
			
			}
			
		else if (fRawImage->PixelType () == ttShort)
			{
			
			rawImageOK = fRawLossyCompressedImage.Get () != nullptr;
			
			}
			
		else if (fRawImage->PixelType () == ttFloat)
			{
			
			if (RawFloatBitDepth () == 16)
				{
				
				if (useJXL)
					{
					rawImageOK = fRawLossyCompressedImage.Get () != nullptr;
					}
				
				else
					{
					rawImageOK = true;
					}
				
				}
			
			}
			
		}
		
	// Even if we already used lossy JPEG to encode the raw image, we should
	// still recompress the data as JXL if allowed for the size savings.
	
	if (rawImageOK &&
		useJXL &&
		fRawLossyCompressedImage.Get () &&
		fRawLossyCompressedImage->fCompressionCode != ccJXL)
		{
		
		rawImageOK = false;
		
		}
		
	// If the raw lossy compressed image is known to be lossless JXL, then
	// we should not use it for a lossy proxy.
	
	if (RawLossyCompressedImage () &&
		RawLossyCompressedImage ()->fCompressionCode == ccJXL &&
		RawLossyCompressedImage ()->fJXLDistance == 0.0f)
		{
		
		rawImageOK = false;
		
		}
		
	if (!rawImageOK)
		{
		
		// Adjust for any color matrix difference between the
		// raw image and the stage3 image.
		
		AdjustGainMapForStage3 (host);

		AdjustProfileForStage3 ();
		
		// Clear any grabbed raw image, since we are going to start
		// building the proxy with the stage3 image.
		
		fRawImage.Reset ();
		
		fRawDefaultScaleH.Clear ();
		fRawDefaultScaleV.Clear ();
		
		fRawBestQualityScale.Clear ();
		
		fRawDefaultCropSizeH.Clear ();
		fRawDefaultCropSizeV.Clear ();
		
		fRawDefaultCropOriginH.Clear ();
		fRawDefaultCropOriginV.Clear ();
	 
		fRawImageBlackLevel = 0;
		
		ClearRawLossyCompressedImage ();

		SetRawFloatBitDepth (0);
		
		ClearLinearizationInfo ();
		
		ClearMosaicInfo ();
		
		fOpcodeList1.Clear ();
		fOpcodeList2.Clear ();
		fOpcodeList3.Clear ();
		
		ClearRawImageDigest ();
		
		ClearRawLossyCompressedImageDigest ();
		
		// Discard the enhanced information since discarded
		// its source.
	
		fEnhanceParams.Clear ();
		
		fEnhancedLossyCompressedImage.Reset ();

		}
		
	// Trim off extra pixels outside the default crop area.
	
	const dng_rect defaultCropArea = DefaultCropArea ();

	const dng_rect originalStage3Bounds = Stage3Image ()->Bounds ();

	// Validate that the crop area is contained within the stage 3 image.
	// A mismatch here indicates malformed file metadata (e.g. a large
	// DefaultCropSize from the primary IFD applied to a smaller enhanced
	// image), which is a file format error.

	if (!originalStage3Bounds.Contains (defaultCropArea))
		{
		ThrowBadFormat ();
		}

	if (!rawImageOK)
		{

		if (originalStage3Bounds != defaultCropArea)
			{

			const dng_rect s3bounds = originalStage3Bounds;
			
			fStage3Image->Trim (defaultCropArea);
			
			if (fTransparencyMask.Get ())
				{
				fTransparencyMask->Trim (defaultCropArea);
				fRawTransparencyMask.Reset ();
				fRawLossyCompressedTransparencyMask.Reset ();
				}
	   
			if (fDepthMap.Get ())
				{
				fDepthMap->Trim (defaultCropArea);
				fRawDepthMap.Reset ();
				fRawLossyCompressedDepthMap.Reset ();
				}

			// Adjust origin and spacing of profile gain table map.

			if (HasProfileGainTableMap ())
				{

				const auto &gainTableMap = ProfileGainTableMap ();

				// Adjust origin.
				
				const dng_point_real64 &oldOrigin = gainTableMap.Origin ();

				dng_point_real64 originPix
					(Lerp_real64 (s3bounds.t, s3bounds.b, oldOrigin.v),
					 Lerp_real64 (s3bounds.l, s3bounds.r, oldOrigin.h));
				
				dng_point_real64 newOrigin
					((originPix.v - defaultCropArea.t) / defaultCropArea.H (),
					 (originPix.h - defaultCropArea.l) / defaultCropArea.W ());

				// Adjust spacing.
				
				const dng_point_real64 &oldSpacing = gainTableMap.Spacing ();
				
				dng_point_real64 newSpacing = oldSpacing;

				const dng_point &points = gainTableMap.Points ();

				if (points.h > 1)
					{

					newSpacing.h *= ((real64) s3bounds.W () /
									 (real64) defaultCropArea.W ());

					}

				if (points.v > 1)
					{

					newSpacing.v *= ((real64) s3bounds.H () /
									 (real64) defaultCropArea.H ());

					}

				// Deal with original buffer.

				// We want to convert the gain map to 8-bit to save sapce.

				AutoPtr<dng_memory_block> originalBuffer;

				real32 gainMin = gainTableMap.GainMin ();
				real32 gainMax = gainTableMap.GainMax ();
				
				// If original buffer is present and already 8-bit, then no change
				// is needed. Just make a copy to hand off to the new gain table
				// map.

				if (gainTableMap.IsUint8 () &&
					gainTableMap.HasOriginalBuffer ())
					{

					originalBuffer.Reset
						(gainTableMap.OriginalBuffer ()->Clone (host.Allocator ()));
					
					}

				// Otherwise, we need to convert to 8-bit. Scan the fp32 values
				// for the min & max gains.

				else
					{

					const real32 *ptr = gainTableMap.Block ()->Buffer_real32 ();
					
					uint32 entries = (gainTableMap.DataStorageBytes () /
									  gainTableMap.BytesPerEntry    ());

					for (uint32 i = 0; i < entries; i++)
						{
						gainMin = Min_real32 (gainMin, ptr [i]);
						gainMax = Max_real32 (gainMax, ptr [i]);
						}
					
					}

				// Make the new gain table map.

				AutoPtr<dng_gain_table_map> newMap
					(new dng_gain_table_map (host.Allocator (),
											 gainTableMap.Points (),
											 newSpacing,
											 newOrigin,
											 gainTableMap.NumTablePoints (),
											 gainTableMap.MapInputWeights (),
											 0,	 // store as uint8
											 gainTableMap.Gamma (),
											 gainMin,
											 gainMax));
											 
				// Copy over fp32 points.

				memcpy (newMap	   ->Block ()->Buffer_real32 (),
						gainTableMap.Block ()->Buffer_real32 (),
						(size_t) gainTableMap.SampleBytes ());

				// Copy over original buffer, if any.

				if (originalBuffer.Get ())
					newMap->SetOriginalBuffer (originalBuffer);

				// Replace the existing map.
				
				SetProfileGainTableMap (newMap);

				}

			fDefaultCropOriginH = dng_urational (0, 1);
			fDefaultCropOriginV = dng_urational (0, 1);
			
			}
			
		// Figure out the requested proxy pixel size.
		
		real64 aspectRatio = BaseAspectRatio ();
		
		dng_point newSize (proxySize, proxySize);
		
		if (aspectRatio >= 1.0)
			{
			newSize.v = Max_int32 (1, Round_int32 (proxySize / aspectRatio));
			}
		else
			{
			newSize.h = Max_int32 (1, Round_int32 (proxySize * aspectRatio));
			}
			
		newSize.v = Min_int32 (newSize.v, DefaultFinalHeight ());
		newSize.h = Min_int32 (newSize.h, DefaultFinalWidth	 ());
		
		if ((uint64) newSize.v *
			(uint64) newSize.h > proxyCount)
			{

			if (aspectRatio >= 1.0)
				{
				
				newSize.h = (uint32) sqrt (proxyCount * aspectRatio);
				
				newSize.v = Max_int32 (1, Round_int32 (newSize.h / aspectRatio));
				
				}
				
			else
				{
				
				newSize.v = (uint32) sqrt (proxyCount / aspectRatio);
				
				newSize.h = Max_int32 (1, Round_int32 (newSize.v * aspectRatio));
													   
				}
																   
			}
			
		// If this is fewer pixels, downsample the stage 3 image to that size.
		
		dng_point oldSize = defaultCropArea.Size ();
		
		if ((uint64) newSize.v * (uint64) newSize.h <
			(uint64) oldSize.v * (uint64) oldSize.h || nonSquarePixels)
			{
			
			const dng_image &srcImage (*Stage3Image ());
			
			AutoPtr<dng_image> dstImage (host.Make_dng_image (newSize,
															  srcImage.Planes (),
															  srcImage.PixelType ()));
															  
			host.ResampleImage (srcImage,
								*dstImage);
															 
			fStage3Image.Reset (dstImage.Release ());
			
			fDefaultCropSizeH = dng_urational (newSize.h, 1);
			fDefaultCropSizeV = dng_urational (newSize.v, 1);
			
			fDefaultScaleH = dng_urational (1, 1);
			fDefaultScaleV = dng_urational (1, 1);
			
			fBestQualityScale = dng_urational (1, 1);
			
			fRawToFullScaleH = 1.0;
			fRawToFullScaleV = 1.0;
			
			}
			
		// If there is still a raw to full scale factor, we need to
		// remove it and adjust the crop coordinates.
			
		else if (fRawToFullScaleH != 1.0 ||
				 fRawToFullScaleV != 1.0)
			{
			
			fDefaultCropSizeH = dng_urational (oldSize.h, 1);
			fDefaultCropSizeV = dng_urational (oldSize.v, 1);
			
			fDefaultScaleH = dng_urational (1, 1);
			fDefaultScaleV = dng_urational (1, 1);
			
			fBestQualityScale = dng_urational (1, 1);
			
			fRawToFullScaleH = 1.0;
			fRawToFullScaleV = 1.0;
			
			}
			
		// Convert 32-bit floating point images to 16-bit floating point to
		// save space.
		
		if (RawImage ().PixelType () == ttFloat &&
			RawFloatBitDepth () != 16)
			{
			
			fRawImage.Reset (host.Make_dng_image (Stage3Image ()->Bounds (),
												  Stage3Image ()->Planes (),
												  ttFloat));
				
			fRawImageBlackLevel = 0;
			
			LimitFloatBitDepth (host,
								*Stage3Image (),
								*fRawImage,
								16,
								32768.0f);
			
			SetRawFloatBitDepth (16);
			
			SetWhiteLevel (32768);
			
			}
			
		// Lossy compress raw image if required.
		
		if (!fRawLossyCompressedImage.Get ())
			{
			
			if (useJXL)
				{
				
				if (RawImage ().PixelType () == ttFloat)
					{
					
					AutoPtr<dng_jxl_image> lossyImage (new dng_jxl_image);

					lossyImage->Encode (host,
										writer,
										RawImage (),
										nonFullSizeProxy ? dng_host::use_case_ProxyImage
														 : dng_host::use_case_EncodedMainImage,
										this);

					fRawLossyCompressedImage.Reset (lossyImage.Release ());

					}
					
				else
					{
					
					real64 blackLevel [kMaxColorPlanes];

					fRawImage.Reset (EncodeRawProxy (host,
													 *Stage3Image (),
													 fOpcodeList2,
													 blackLevel));

					fRawImageBlackLevel = 0;

					if (fRawImage.Get ())
						{

						for (uint32 plane = 0; plane < fRawImage->Planes (); plane++)
							{
							SetBlackLevel (blackLevel [plane], plane);
							}

						}

					AutoPtr<dng_jxl_image> lossyImage (new dng_jxl_image);

					lossyImage->Encode (host,
										writer,
										RawImage (),
										nonFullSizeProxy ? dng_host::use_case_ProxyImage
														 : dng_host::use_case_EncodedMainImage,
										this);

					fRawLossyCompressedImage.Reset (lossyImage.Release ());

					}
				
				}
				
			else
				{
				
				if (RawImage ().PixelType () == ttShort)
					{
					
					real64 blackLevel [kMaxColorPlanes];

					fRawImage.Reset (EncodeRawProxy (host,
													 *Stage3Image (),
													 fOpcodeList2,
													 blackLevel));

					fRawImageBlackLevel = 0;

					if (fRawImage.Get ())
						{

						SetWhiteLevel (255);

						for (uint32 plane = 0; plane < fRawImage->Planes (); plane++)
							{
							SetBlackLevel (blackLevel [plane], plane);
							}
							
						}
						
					}
				
				// Compute JPEG compressed version.

				if (RawImage ().PixelType () == ttByte)
					{

					AutoPtr<dng_jpeg_image> jpegImage (new dng_jpeg_image);

					jpegImage->Encode (host,
									   *this,
									   writer,
									   RawImage ());
									   
					fRawLossyCompressedImage.Reset (jpegImage.Release ());

					}

				}

			}
			
		}
		
	// Deal with transparency mask.
	
	if (TransparencyMask ())
		{
		
		const bool convertTo8Bit = true;
		
		ResizeTransparencyToMatchStage3 (host, convertTo8Bit);
		
		if (fRawTransparencyMask.Get ())
			{
			
			if (fRawTransparencyMask->Bounds    () != TransparencyMask ()->Bounds () ||
				fRawTransparencyMask->PixelType () != ttByte)
				{
				fRawTransparencyMask.Reset (fTransparencyMask->Clone ());
				fRawLossyCompressedTransparencyMask.Reset ();
				}
			
			}
			
		CompressTransparencyMaskJXL (host,
									 writer,
									 true);
			
		}
  
	// Deal with depth map.
	
	if (DepthMap ())
		{
		
		ResizeDepthToMatchStage3 (host);
		
		if (fRawDepthMap.Get ())
			{
			
			if (fRawDepthMap->Bounds ().W () > fDepthMap->Bounds ().W () ||
				fRawDepthMap->Bounds ().H () > fDepthMap->Bounds ().H ())
				{
				fRawDepthMap.Reset ();
				fRawLossyCompressedDepthMap.Reset ();
				}
			
			}
			
		CompressDepthMapJXL (host,
							 writer,
							 true);
					
		}

	// Deal with semantic masks.
	
	AdjustSemanticMasksForProxy (host,
								 writer,
								 originalStage3Bounds,
								 defaultCropArea);

	// Recompute the raw data unique ID, since we changed the image data.
	
	RecomputeRawDataUniqueID (host);
			
	}

/*****************************************************************************/

bool dng_negative::IsProxy () const
	{
	
	return	(DefaultCropSizeH () != OriginalDefaultCropSizeH ()) &&
			(DefaultCropSizeV () != OriginalDefaultCropSizeV ());
	
	}

/*****************************************************************************/

dng_linearization_info * dng_negative::MakeLinearizationInfo ()
	{
	
	dng_linearization_info *info = new dng_linearization_info ();
	
	if (!info)
		{
		ThrowMemoryFull ();
		}
		
	return info;
	
	}

/*****************************************************************************/

void dng_negative::NeedLinearizationInfo ()
	{
	
	if (!fLinearizationInfo.Get ())
		{
	
		fLinearizationInfo.Reset (MakeLinearizationInfo ());
		
		}
	
	}

/*****************************************************************************/

dng_mosaic_info * dng_negative::MakeMosaicInfo ()
	{
	
	dng_mosaic_info *info = new dng_mosaic_info ();
	
	if (!info)
		{
		ThrowMemoryFull ();
		}
		
	return info;
	
	}

/*****************************************************************************/

void dng_negative::NeedMosaicInfo ()
	{
	
	if (!fMosaicInfo.Get ())
		{
	
		fMosaicInfo.Reset (MakeMosaicInfo ());
		
		}
	
	}

/*****************************************************************************/

void dng_negative::SetTransparencyMask (AutoPtr<dng_image> &image,
										uint32 bitDepth)
	{
	
	fTransparencyMask.Reset (image.Release ());
	
	fRawTransparencyMaskBitDepth = bitDepth;
	
	}

/*****************************************************************************/

void dng_negative::ClearTransparencyMask ()
	{
	
	fTransparencyMask.Reset ();
	
	fRawTransparencyMask.Reset ();
	
	fRawTransparencyMaskBitDepth = 0;
	
	}

/*****************************************************************************/

const dng_image * dng_negative::TransparencyMask () const
	{
	
	return fTransparencyMask.Get ();
	
	}

/*****************************************************************************/

const dng_image * dng_negative::RawTransparencyMask () const
	{
	
	if (fRawTransparencyMask.Get ())
		{
		
		return fRawTransparencyMask.Get ();
		
		}
		
	return TransparencyMask ();
	
	}

/*****************************************************************************/

uint32 dng_negative::RawTransparencyMaskBitDepth () const
	{
	
	if (fRawTransparencyMaskBitDepth)
		{
	
		return fRawTransparencyMaskBitDepth;
		
		}
		
	const dng_image *mask = RawTransparencyMask ();
	
	if (mask)
		{
		
		switch (mask->PixelType ())
			{
			
			case ttByte:
				return 8;
				
			case ttShort:
				return 16;
				
			case ttFloat:
				return 32;
				
			default:
				ThrowProgramError ();
				
			}
		
		}
		
	return 0;
	
	}
									  
/*****************************************************************************/

void dng_negative::ReadTransparencyMask (dng_host &host,
										 dng_stream &stream,
										 dng_info &info)
	{
	
	if (info.fMaskIndex != -1)
		{
	
		// Allocate image we are reading.
		
		dng_ifd &maskIFD = *info.fIFD [info.fMaskIndex];
		
		fTransparencyMask.Reset (host.Make_dng_image (maskIFD.Bounds (),
													  1,
													  maskIFD.PixelType ()));
													  
		// Do we need to keep the lossy compressed data?
		
		fRawLossyCompressedTransparencyMask.Reset (KeepLossyCompressedImage (host,
																			 maskIFD));
						
		// Read the image.
		
		maskIFD.ReadImage (host,
						   stream,
						   *fTransparencyMask.Get (),
						   fRawLossyCompressedTransparencyMask.Get ());
						   
		// Remember the pixel depth.
		
		fRawTransparencyMaskBitDepth = maskIFD.fBitsPerSample [0];
		
		// Remember if transparency mask was lossy compressed.
		
		fTransparencyMaskWasLossyCompressed = (maskIFD.fCompression == ccLossyJPEG ||
											   maskIFD.fCompression == ccJXL);
											   
		}

	}

/*****************************************************************************/

void dng_negative::ResizeTransparencyToMatchStage3 (dng_host &host,
													bool convertTo8Bit)
	{
	
	if (TransparencyMask ())
		{
		
		if ((TransparencyMask ()->Bounds () != fStage3Image->Bounds ()) ||
			(TransparencyMask ()->PixelType () != ttByte && convertTo8Bit))
			{
			
			if (host.SaveDNGVersion () != dngVersion_None && !convertTo8Bit)
				{
				
				if (!fRawTransparencyMask.Get ())
					{
					fRawTransparencyMask.Reset (fTransparencyMask->Clone ());
					}
					
				}
			
			AutoPtr<dng_image> newMask (host.Make_dng_image (fStage3Image->Bounds (),
															 1,
															 convertTo8Bit ?
															 ttByte :
															 TransparencyMask ()->PixelType ()));
									
			host.ResampleImage (*TransparencyMask (),
								*newMask);
						   
			fTransparencyMask.Reset (newMask.Release ());
			
			if (!fRawTransparencyMask.Get ())
				{
				fRawTransparencyMaskBitDepth = 0;
				}
			
			else if (convertTo8Bit)
				{
				fRawTransparencyMaskBitDepth = 8;
				}

			fRawLossyCompressedTransparencyMask.Reset ();

			}
			
		}
		
	}

/*****************************************************************************/

bool dng_negative::NeedFlattenTransparency (dng_host & /* host */)
	{
	
	return false;
		
	}
									  
/*****************************************************************************/

void dng_negative::FlattenTransparency (dng_host & /* host */)
	{
	
	ThrowNotYetImplemented ("FlattenTransparency");
	
	}
									  
/*****************************************************************************/

const dng_image * dng_negative::UnflattenedStage3Image () const
	{
	
	if (fUnflattenedStage3Image.Get ())
		{
		
		return fUnflattenedStage3Image.Get ();
		
		}
		
	return fStage3Image.Get ();
		
	}

/*****************************************************************************/

void dng_negative::SetDepthMap (AutoPtr<dng_image> &depthMap)
	{
	
	fDepthMap.Reset (depthMap.Release ());
	
	SetHasDepthMap (fDepthMap.Get () != NULL);
	
	}

/*****************************************************************************/

void dng_negative::ReadDepthMap (dng_host &host,
								 dng_stream &stream,
								 dng_info &info)
	{
	
	if (info.fDepthIndex != -1)
		{
	
		// Allocate image we are reading.
		
		dng_ifd &depthIFD = *info.fIFD [info.fDepthIndex];
		
		fDepthMap.Reset (host.Make_dng_image (depthIFD.Bounds (),
											  1,
											  depthIFD.PixelType ()));
											  
		// Keep lossy compressed depth image?
		
		fRawLossyCompressedDepthMap.Reset (KeepLossyCompressedImage (host,
																	 depthIFD));
			
		// Read the image.
		
		depthIFD.ReadImage (host,
							stream,
							*fDepthMap.Get (),
							fRawLossyCompressedDepthMap.Get ());
		
		SetHasDepthMap (fDepthMap.Get () != NULL);
			
		}

	}

/*****************************************************************************/

void dng_negative::ResizeDepthToMatchStage3 (dng_host &host)
	{
	
	if (DepthMap ())
		{
		
		if (DepthMap ()->Bounds () != fStage3Image->Bounds ())
			{
			
			// If we are upsampling, and have not grabbed the raw depth map
			// yet, do so now.
			
			if (!fRawDepthMap.Get ())
				{
				
				uint64 imagePixels = fStage3Image->Bounds ().H () * (uint64)
									 fStage3Image->Bounds ().W ();
					
				uint64 depthPixels = DepthMap ()->Bounds ().H () * (uint64)
									 DepthMap ()->Bounds ().W ();
					
				if (depthPixels < imagePixels)
					{
					fRawDepthMap.Reset (fDepthMap->Clone ());
					}
				
				}
			
			AutoPtr<dng_image> newMap (host.Make_dng_image (fStage3Image->Bounds (),
															1,
															DepthMap ()->PixelType ()));
				
			host.ResampleImage (*DepthMap (),
								*newMap);
				
			fDepthMap.Reset (newMap.Release ());
				
			}
			
		}
		
	}

/*****************************************************************************/

void dng_negative::ResizeSemanticMasksToMatchStage3 (dng_host &host)
	{
	
	if (!HasSemanticMask ())
		return;

	if (!fStage3Image.Get ())
		return;

	const dng_rect dstBounds = fStage3Image->Bounds ();

	for (uint32 i = 0; i < NumSemanticMasks (); i++)
		{

		const_dng_image_sptr mask = SemanticMask (i).fMask;

		if (mask && (mask->Bounds () != dstBounds))
			{
				
			AutoPtr<dng_image> image
				(host.Make_dng_image (dstBounds,
									  mask->Planes (),
									  mask->PixelType ()));
				
			host.ResampleImage (*mask,
								*image);

			fSemanticMasks.at (i).fMask.reset (image.Release ());

			}
				
		}
			
	}

/*****************************************************************************/

bool dng_negative::HasSemanticMask () const
	{
	
	return !fSemanticMasks.empty ();
	
	}
		
/*****************************************************************************/

bool dng_negative::HasSemanticMask (uint32 index) const
	{
	
	if (((size_t) index) >= fSemanticMasks.size ())
		{
		
		return false;
		
		}

	return fSemanticMasks [index].fMask != nullptr;
	
	}

/*****************************************************************************/

uint32 dng_negative::NumSemanticMasks () const
	{
	
	return (uint32) fSemanticMasks.size ();
	
	}

/*****************************************************************************/

const dng_semantic_mask & dng_negative::SemanticMask (uint32 index) const
	{
	
	if (((size_t) index) >= fSemanticMasks.size ())
		{

		ThrowProgramError ("non-existent index in SemanticMask");
		
		}

	return fSemanticMasks [index];
	
	}

/*****************************************************************************/

// For now the concept of a "raw" semantic mask is the same as the regular
// semantic mask API (original resolution).

const dng_semantic_mask & dng_negative::RawSemanticMask (uint32 index) const
	{

	return SemanticMask (index);
	
	}

/*****************************************************************************/

void dng_negative::SetSemanticMask (uint32 index,
									const dng_semantic_mask &mask)
	{
	
	if (!HasSemanticMask (index))
		{
		
		ThrowProgramError ("non-existent index in SetSemanticMask");
		
		}

	DNG_REQUIRE (mask.fMask, "missing mask in SetSemanticMask");

	fSemanticMasks [index] = mask;
	
	}

/*****************************************************************************/

void dng_negative::AppendSemanticMask (const dng_semantic_mask &mask)
	{

	DNG_REQUIRE (mask.fMask, "missing mask in AppendSemanticMask");

	fSemanticMasks.push_back (mask);
	
	}

/*****************************************************************************/

void dng_negative::ReadSemanticMasks (dng_host &host,
									  dng_stream &stream,
									  dng_info &info)
	{

	DNG_REQUIRE (info.fSemanticMaskIndices.size () <= kMaxSemanticMasks,
				 "Too many semantic masks");

	std::vector<dng_semantic_mask> masks;

	masks.reserve (info.fSemanticMaskIndices.size ());

	for (const uint32 index : info.fSemanticMaskIndices)
		{
		
		dng_ifd &ifd = *info.fIFD.at (index);

		AutoPtr<dng_image> image (host.Make_dng_image (ifd.Bounds (),
													   1,
													   ifd.PixelType ()));
													   
		AutoPtr<dng_lossy_compressed_image> lossyCompressed (KeepLossyCompressedImage (host, ifd));

		// Workaround for early files that use lossy JPEG with Compression tag
		// value 7.

		#if 1

		if (ifd.fCompression == ccJPEG)
			{
			
			// First try to read it directly as Lossless JPEG.

			bool tryLossyJPEG = false;

			try
				{
				
				ifd.ReadImage (host,
							   stream,
							   *image);				
				
				}

			catch (const dng_exception &e)
				{

				// If that doesn't work, then try Lossy JPEG.
				
				if (e.ErrorCode () == dng_error_bad_format)
					{
					
					tryLossyJPEG = true;
					
					}

				// Re-throw other exceptions.

				else
					{
					
					throw;
					
					}
				
				}

			// TODO(erichan): JXL support for semantic masks, too?

			if (tryLossyJPEG)
				{
				
				AutoPtr<dng_ifd> ifdClone (ifd.Clone ());

				ifdClone->fCompression = ccLossyJPEG;
				
				lossyCompressed.Reset (KeepLossyCompressedImage (host, *ifdClone));

				ifdClone->ReadImage (host,
									 stream,
									 *image,
									 lossyCompressed.Get ());
				
				}
			
			}

		else
			{
			
			ifd.ReadImage (host,
						   stream,
						   *image,
						   lossyCompressed.Get ());
			
			}

		#else

		ifd.ReadImage (host,
					   stream,
					   *image,
					   lossyCompressed.Get ());

		#endif

		dng_semantic_mask mask;

		mask.fName		 = ifd.fSemanticName;
		mask.fInstanceID = ifd.fSemanticInstanceID;
		mask.fXMP		 = ifd.fSemanticXMP;

		memcpy (mask.fMaskSubArea,
				ifd .fMaskSubArea,
				sizeof (ifd .fMaskSubArea));

		mask.fMask.reset (image.Release ());

		// If MaskSubArea is not valid, then zero all the fields.

		if (!mask.IsMaskSubAreaValid ())
			{
			
			memset (mask.fMaskSubArea,
					0,
					sizeof (mask.fMaskSubArea));
			
			}
			
		mask.fLossyCompressed.reset (lossyCompressed.Release ());
		
		masks.push_back (mask);
		
		}

	fSemanticMasks = masks;

	}

/*****************************************************************************/

bool dng_negative::HasProfileGainTableMap () const
	{
	
	return fProfileGainTableMap != nullptr;
	
	}

/*****************************************************************************/

const dng_gain_table_map & dng_negative::ProfileGainTableMap () const
	{
	
	DNG_REQUIRE (HasProfileGainTableMap (), "Missing profile gain table map");

	return *fProfileGainTableMap;
	
	}

/*****************************************************************************/

void dng_negative::SetProfileGainTableMap
	(const std::shared_ptr<const dng_gain_table_map> &gainTableMap)
	{
	
	fProfileGainTableMap = gainTableMap;
	
	}

/*****************************************************************************/

void dng_negative::SetProfileGainTableMap (AutoPtr<dng_gain_table_map> &gainTableMap)
	{
	
	fProfileGainTableMap.reset (gainTableMap.Release ());
	
	}

/*****************************************************************************/

void dng_negative::AdjustSemanticMasksForProxy (dng_host &host,
												dng_image_writer &writer,
												const dng_rect &originalStage3Bounds,
												const dng_rect &defaultCropArea)
	{
	
	if (!HasSemanticMask ())
		{
		return;
		}

	DNG_REQUIRE (fStage3Image.Get (), "Missing stage3 image");

	const dng_rect newStage3Bounds = fStage3Image->Bounds ();

	// If original active area is different than the original default crop
	// area, so this means during proxy conversion, the main image will be
	// trimmed to the default crop area. This means we need to adjust the
	// semantic masks, too. We need to resample and trim the masks so that
	// they align properly with the trimmed main image. This is complicated by
	// the fact that semantic masks may may be pre-cropped to exclude zero
	// pixels (i.e., MaskSubArea support).

	const bool trimmedToDefaultCrop = (originalStage3Bounds != defaultCropArea);

	const uint32 maskCount = NumSemanticMasks ();

	for (uint32 i = 0; i < maskCount; i++)
		{

		auto &mask = fSemanticMasks [i];

		DNG_REQUIRE (mask.fMask, "Missing mask");
		
		const bool needDownsampleMask =
			(mask.fMask->Bounds ().W () > newStage3Bounds.W () ||
			 mask.fMask->Bounds ().H () > newStage3Bounds.H ()) ||
			(mask.fMask->PixelType () != ttByte);
			
		if (needDownsampleMask || trimmedToDefaultCrop)
			{
			
			AutoPtr<dng_image> image;
			
			// Can we just resample directly to proxy size?
			
			if (!mask.IsMaskSubAreaValid () & !trimmedToDefaultCrop)
				{
				
				image.Reset (host.Make_dng_image (newStage3Bounds,
												  1,
												  ttByte));

				host.ResampleImage (*mask.fMask,
									*image);

				}
				
			// Else we need to first create a full size trimmed mask.
				
			else
				{
				
				// If we need to perform a second downsample step, then use the
				// original mask pixel type as the intermediate pixel type.
				
				const bool needResizeToFinalArea =
					(newStage3Bounds.Size () != defaultCropArea.Size ());
				
				const uint32 fullResPixelType =
					needResizeToFinalArea ? mask.fMask->PixelType ()
										  : ttByte;

				AutoPtr<dng_image> fullResMask
					(host.Make_dng_image (originalStage3Bounds,
										  1,
										  fullResPixelType));

				if (mask.IsMaskSubAreaValid ())
					{

					// MaskSubArea case.

					// Make a zero-filled image that represents the uncropped mask
					// area (corresponding logically to the active area, or
					// originalStage3Bounds).

					dng_point origin;

					dng_rect srcArea;

					mask.CalcMaskSubArea (origin, srcArea);

					const uint32 srcPixelType = mask.fMask->PixelType ();

					AutoPtr<dng_image> srcImage
						(host.Make_dng_image (srcArea,
											  1,
											  srcPixelType));

					srcImage->SetZero (srcArea);

					// Copy the mask into the zero-filled image.

					AutoPtr<dng_image> subImage (mask.fMask->Clone ());

					subImage->Offset (origin);

					srcImage->CopyArea (*subImage,
										subImage->Bounds (),
										0,
										0,
										1);

					// Resample to active area.

					host.ResampleImage (*srcImage,
										*fullResMask);

					}

				else
					{

					// Without MaskSubArea case. Resample directly.
						
					host.ResampleImage (*mask.fMask,
										*fullResMask);

					}

				// Trim to default crop area.

				fullResMask->Trim (defaultCropArea);

				image.Reset (fullResMask.Release ());

				// Resize to new area, if needed.

				if (needResizeToFinalArea)
					{

					AutoPtr<dng_image> temp
						(host.Make_dng_image (newStage3Bounds,
											  1,
											  ttByte));

					host.ResampleImage (*image,
										*temp);

					image.Reset (temp.Release ());

					}

				}
				
			// Store.
			
			mask.fMask.reset (image.Release ());
				
			// Clear MaskSubArea.

			memset (mask.fMaskSubArea, 0, sizeof (mask.fMaskSubArea));
			
			// Lossy compressed data is no longer valid.

			mask.fLossyCompressed.reset ();

			}
			
		}

	CompressSemanticMasksJXL (host,
							  writer,
							  true);

	}

/*****************************************************************************/
