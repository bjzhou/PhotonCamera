/*****************************************************************************/
// Copyright 2007-2022 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_preview.h"

#include "dng_assertions.h"
#include "dng_host.h"
#include "dng_image.h"
#include "dng_image_writer.h"
#include "dng_jxl.h"
#include "dng_memory.h"
#include "dng_stream.h"
#include "dng_tag_codes.h"
#include "dng_tag_values.h"

/*****************************************************************************/

class dng_preview_tag_set: public dng_basic_tag_set
	{
	
	private:
	
		tag_string fApplicationNameTag;
		
		tag_string fApplicationVersionTag;
		
		tag_string fSettingsNameTag;
		
		dng_fingerprint fSettingsDigest;
		
		tag_uint8_ptr fSettingsDigestTag;
		
		tag_uint32 fColorSpaceTag;
		
		tag_string fDateTimeTag;
		
		tag_real64 fRawToPreviewGainTag;
		
		tag_uint32 fCacheVersionTag;
		
	public:
	
		dng_preview_tag_set (dng_tiff_directory &directory,
							 const dng_preview &preview,
							 const dng_ifd &ifd);
		
		virtual ~dng_preview_tag_set ();
	
	};

/*****************************************************************************/

dng_preview_tag_set::dng_preview_tag_set (dng_tiff_directory &directory,
										  const dng_preview &preview,
										  const dng_ifd &ifd)
										  
	:	dng_basic_tag_set (directory, ifd)
										  
	,	fApplicationNameTag (tcPreviewApplicationName,
							 preview.fInfo.fApplicationName,
							 false)
							 
	,	fApplicationVersionTag (tcPreviewApplicationVersion,
								preview.fInfo.fApplicationVersion,
								false)
								
	,	fSettingsNameTag (tcPreviewSettingsName,
						  preview.fInfo.fSettingsName,
						  false)
						  
	,	fSettingsDigest (preview.fInfo.fSettingsDigest)
	
	,	fSettingsDigestTag (tcPreviewSettingsDigest,
							fSettingsDigest.Data (),
							16)
							
	,	fColorSpaceTag (tcPreviewColorSpace,
						preview.fInfo.fColorSpace)
						
	,	fDateTimeTag (tcPreviewDateTime,
					  preview.fInfo.fDateTime,
					  true)
	
	,	fRawToPreviewGainTag (tcRawToPreviewGain,
							  preview.fInfo.fRawToPreviewGain)
							  
	,	fCacheVersionTag (tcCacheVersion,
						  preview.fInfo.fCacheVersion)
						 
	{
	
	if (preview.fInfo.fApplicationName.NotEmpty ())
		{
		
		directory.Add (&fApplicationNameTag);
		
		}
		
	if (preview.fInfo.fApplicationVersion.NotEmpty ())
		{
		
		directory.Add (&fApplicationVersionTag);
		
		}
		
	if (preview.fInfo.fSettingsName.NotEmpty ())
		{
		
		directory.Add (&fSettingsNameTag);
		
		}
		
	if (preview.fInfo.fSettingsDigest.IsValid ())
		{
		
		directory.Add (&fSettingsDigestTag);
		
		}
		
	if (preview.fInfo.fColorSpace != previewColorSpace_MaxEnum)
		{
		
		directory.Add (&fColorSpaceTag);
		
		}
		
	if (preview.fInfo.fDateTime.NotEmpty ())
		{
		
		directory.Add (&fDateTimeTag);
		
		}
		
	if (preview.fInfo.fRawToPreviewGain != 1.0)
		{
		
		directory.Add (&fRawToPreviewGainTag);
		
		}
		
	if (preview.fInfo.fCacheVersion != 0)
		{
		
		directory.Add (&fCacheVersionTag);
		
		}
		
	}

/*****************************************************************************/

dng_preview_tag_set::~dng_preview_tag_set ()
	{
	
	}
		
/*****************************************************************************/

void dng_preview::SetIFDInfo (dng_host & /* host */,
							  const dng_image &image)
	{
	
	fIFD.fNewSubFileType = fInfo.fIsPrimary ? sfPreviewImage
											: sfAltPreviewImage;
	
	fIFD.fImageWidth  = image.Width	 ();
	fIFD.fImageLength = image.Height ();
	
	fIFD.fSamplesPerPixel = image.Planes ();

	fIFD.fPhotometricInterpretation = fIFD.fSamplesPerPixel == 1 ? piBlackIsZero
																 : piRGB;
																 
	fIFD.fBitsPerSample [0] = TagTypeSize (image.PixelType ()) * 8;
	
	fIFD.fSampleFormat [0] = image.PixelType () == ttFloat
							 ? sfFloatingPoint
							 : sfUnsignedInteger;
		
	for (uint32 j = 1; j < fIFD.fSamplesPerPixel; j++)
		{
		fIFD.fBitsPerSample [j] = fIFD.fBitsPerSample [0];
		fIFD.fSampleFormat  [j] = fIFD.fSampleFormat  [0];
		}
		
	fIFD.SetSingleStrip ();
	
	}
		
/*****************************************************************************/

dng_basic_tag_set * dng_preview::AddTagSet (dng_host & /* host */,
											dng_tiff_directory &directory) const
	{
	
	return new dng_preview_tag_set (directory, *this, fIFD);
	
	}

/*****************************************************************************/

void dng_preview::WriteData (dng_host &host,
							 dng_image_writer &writer,
							 dng_basic_tag_set &basic,
							 dng_stream &stream) const
	{
	
	if (fCompressedImage.get ())
		{
		
		fCompressedImage->WriteData (stream,
									 basic);
		
		}
		
	else
		{
	
		writer.WriteImage (host,
						   fIFD,
						   basic,
						   stream,
						   *fImage);
						   
		}
					
	}

/*****************************************************************************/

uint64 dng_preview::MaxImageDataByteCount () const
	{
	
	if (fCompressedImage.get ())
		{
		
		return fCompressedImage->NonHeaderSize ();
		
		}
		
	else
		{
		
		return fIFD.MaxImageDataByteCount ();
		
		}
	
	}
		
/*****************************************************************************/

void dng_preview::Compress (dng_host &host,
							dng_image_writer &writer)
	{
	
	if (fIFD.fCompression == ccJXL ||
		fIFD.fCompression == ccLossyJPEG ||
		fIFD.fCompression == ccDeflate)
		{
		
		AutoPtr<dng_compressed_image_tiles> compressedImage
											(new dng_compressed_image_tiles);
		
		compressedImage->EncodeTiles (host,
									  writer,
									  *fImage,
									  fIFD);
							
		fCompressedImage.reset (compressedImage.Release ());
		
		fImage.reset ();

		}
	
	}
		
/*****************************************************************************/

class dng_jpeg_preview_tag_set: public dng_preview_tag_set
	{
	
	private:
	
		dng_urational fCoefficientsData [3];
		
		tag_urational_ptr fCoefficientsTag;
		
		uint16 fSubSamplingData [2];
		
		tag_uint16_ptr fSubSamplingTag;
		
		tag_uint16 fPositioningTag;
		
		dng_urational fReferenceData [6];
		
		tag_urational_ptr fReferenceTag;
		
	public:
	
		dng_jpeg_preview_tag_set (dng_tiff_directory &directory,
								  const dng_jpeg_preview &preview,
								  const dng_ifd &ifd);
		
	};

/******************************************************************************/

dng_jpeg_preview_tag_set::dng_jpeg_preview_tag_set (dng_tiff_directory &directory,
													const dng_jpeg_preview &preview,
													const dng_ifd &ifd)
					
	:	dng_preview_tag_set (directory, preview, ifd)
	
	,	fCoefficientsTag (tcYCbCrCoefficients, fCoefficientsData, 3)
	
	,	fSubSamplingTag (tcYCbCrSubSampling, fSubSamplingData, 2)
	
	,	fPositioningTag (tcYCbCrPositioning, ifd.fYCbCrPositioning)
	
	,	fReferenceTag (tcReferenceBlackWhite, fReferenceData, 6)
	
	{
	
	if (ifd.fPhotometricInterpretation == piYCbCr)
		{
	
		fCoefficientsData [0] = dng_urational (299, 1000);
		fCoefficientsData [1] = dng_urational (587, 1000);
		fCoefficientsData [2] = dng_urational (114, 1000);
		
		directory.Add (&fCoefficientsTag);
		
		fSubSamplingData [0] = (uint16) ifd.fYCbCrSubSampleH;
		fSubSamplingData [1] = (uint16) ifd.fYCbCrSubSampleV;

		directory.Add (&fSubSamplingTag);
		
		directory.Add (&fPositioningTag);
		
		fReferenceData [0] = dng_urational (  0, 1);
		fReferenceData [1] = dng_urational (255, 1);
		fReferenceData [2] = dng_urational (128, 1);
		fReferenceData [3] = dng_urational (255, 1);
		fReferenceData [4] = dng_urational (128, 1);
		fReferenceData [5] = dng_urational (255, 1);
		
		directory.Add (&fReferenceTag);
		
		}
	
	}
		
/*****************************************************************************/

void dng_jpeg_preview::SetIFDInfo (dng_host &host,
								   const dng_image &image)
	{
	
	dng_preview::SetIFDInfo (host, image);
	
	fIFD.fCompression = ccJPEG;		// Lossy version
	
	if (image.Planes () == 1)
		{
		fIFD.fPhotometricInterpretation = piBlackIsZero;
		}
		
	else
		{
		SetYCbCr (1, 1);
		}
	
	}
		
/*****************************************************************************/

void dng_jpeg_preview::SetCompressedData (AutoPtr<dng_memory_block> &compressedData)
	{
	
	fImage.reset ();
	
	AutoPtr<dng_compressed_image_tiles> compressedTiles (new dng_compressed_image_tiles);
	
	compressedTiles->fData.resize (1);
	
	compressedTiles->fData [0].reset (compressedData.Release ());
	
	fCompressedImage.reset (compressedTiles.Release ());
	
	}
		
/*****************************************************************************/

const dng_memory_block & dng_jpeg_preview::CompressedData () const
	{
	
	DNG_REQUIRE (fCompressedImage.get () &&
				 fCompressedImage->fData.size () == 1,
				 "No compressed data");
	
	return *(fCompressedImage->fData [0]);
	
	}
		
/*****************************************************************************/

dng_basic_tag_set * dng_jpeg_preview::AddTagSet (dng_host & /* host */,
												 dng_tiff_directory &directory) const
	{
	
	return new dng_jpeg_preview_tag_set (directory, *this, fIFD);
	
	}
		
/*****************************************************************************/

void dng_jpeg_preview::WriteData (dng_host &host,
								  dng_image_writer &writer,
								  dng_basic_tag_set &basic,
								  dng_stream &stream) const
	{
	
	// Force the data to be written using lossy JPEG.
	
	fIFD.fCompression = ccLossyJPEG;
	
	dng_preview::WriteData (host,
							writer,
							basic,
							stream);
								  
	// But we still want to use the normal jpeg compression code in the IFD.
	
	fIFD.fCompression = ccJPEG;
			
	}
		
/*****************************************************************************/

uint64 dng_jpeg_preview::MaxImageDataByteCount () const
	{
	
	fIFD.fCompression = ccLossyJPEG;
	
	uint64 result = dng_preview::MaxImageDataByteCount ();
	
	fIFD.fCompression = ccJPEG;
	
	return result;
	
	}
		
/*****************************************************************************/

void dng_jpeg_preview::Compress (dng_host &host,
								 dng_image_writer &writer)
	{
	
	fIFD.fCompression = ccLossyJPEG;
	
	dng_preview::Compress (host, writer);
	
	fIFD.fCompression = ccJPEG;
	
	}
		
/*****************************************************************************/

void dng_jpeg_preview::SpoolAdobeThumbnail (dng_stream &stream) const
	{
	
	DNG_ASSERT (fIFD.fPhotometricInterpretation == piYCbCr,
				"SpoolAdobeThumbnail: Non-YCbCr");
				
	uint32 compressedSize = CompressedData ().LogicalSize ();
	
	stream.Put_uint32 (DNG_CHAR4 ('8','B','I','M'));
	stream.Put_uint16 (1036);
	stream.Put_uint16 (0);
	
	stream.Put_uint32 (compressedSize + 28);
	
	uint32 widthBytes = (fIFD.fImageWidth * 24 + 31) / 32 * 4;
	
	stream.Put_uint32 (1);
	stream.Put_uint32 (fIFD.fImageWidth);
	stream.Put_uint32 (fIFD.fImageLength);
	stream.Put_uint32 (widthBytes);
	stream.Put_uint32 (widthBytes * fIFD.fImageLength);
	stream.Put_uint32 (compressedSize);
	stream.Put_uint16 (24);
	stream.Put_uint16 (1);
	
	stream.Put (CompressedData ().Buffer (),
				compressedSize);
				
	if (compressedSize & 1)
		{
		stream.Put_uint8 (0);
		}
	
	}
		
//*****************************************************************************/

void dng_jxl_preview::SetIFDInfo (dng_host &host,
								  const dng_image &image)
	{
	
	dng_preview::SetIFDInfo (host, image);
	
	// Store a copy of the preview info so that the writer can get information
	// about the color space.

	fIFD.fPreviewInfo = this->fInfo;

	fIFD.fCompression = ccJXL;
	fIFD.fPredictor	  = cpNullPredictor;

	AutoPtr<dng_jxl_encode_settings> settings (host.MakeJXLEncodeSettings (dng_host::use_case_RenderedPreview,
																		   image));

	fIFD.fJXLEncodeSettings.reset (settings.Release ());
	
	fIFD.fJXLDistance    = fIFD.fJXLEncodeSettings->Distance    ();
	fIFD.fJXLEffort      = fIFD.fJXLEncodeSettings->Effort      ();
	fIFD.fJXLDecodeSpeed = fIFD.fJXLEncodeSettings->DecodeSpeed ();

	}
		
/*****************************************************************************/

class dng_raw_preview_tag_set: public dng_preview_tag_set
	{
	
	private:
	
		tag_data_ptr fOpcodeList2Tag;
		
		tag_uint32_ptr fWhiteLevelTag;
		
		uint32 fWhiteLevelData [kMaxColorPlanes];
  
		tag_urational_ptr fBlackLevelTag;
		
		dng_urational fBlackLevelData [kMaxColorPlanes];
		
	public:
	
		dng_raw_preview_tag_set (dng_tiff_directory &directory,
								 const dng_raw_preview &preview,
								 const dng_ifd &ifd);
		
		virtual ~dng_raw_preview_tag_set ();
	
	};

/*****************************************************************************/

dng_raw_preview_tag_set::dng_raw_preview_tag_set (dng_tiff_directory &directory,
												  const dng_raw_preview &preview,
												  const dng_ifd &ifd)
										  
	:	dng_preview_tag_set (directory, preview, ifd)
	
	,	fOpcodeList2Tag (tcOpcodeList2,
						 ttUndefined,
						 0,
						 NULL)
						 
	,	fWhiteLevelTag (tcWhiteLevel,
						fWhiteLevelData,
						preview.SamplesPerPixel ())

	,	fBlackLevelTag (tcBlackLevel,
						fBlackLevelData,
						preview.SamplesPerPixel ())
						
	{

	if (preview.SamplesPerPixel () > kMaxColorPlanes)
		{
		ThrowBadFormat ();
		}

	if (preview.fOpcodeList2Data.Get ())
		{
		
		fOpcodeList2Tag.SetData	 (preview.fOpcodeList2Data->Buffer		());
		fOpcodeList2Tag.SetCount (preview.fOpcodeList2Data->LogicalSize ());
		
		directory.Add (&fOpcodeList2Tag);
		
		}
		
	if (preview.SampleFormat () == sfFloatingPoint)
		{
		
		for (uint32 j = 0; j < kMaxColorPlanes; j++)
			{
			fWhiteLevelData [j] = 32768;
			}
			
		directory.Add (&fWhiteLevelTag);
		
		}
  
	else
		{
		
		bool nonZeroBlack = false;
		
		for (uint32 j = 0; j < preview.SamplesPerPixel (); j++)
			{
			
			fBlackLevelData [j].Set_real64 (preview.fBlackLevel [j], 1);
			
			nonZeroBlack = nonZeroBlack || (preview.fBlackLevel [j] != 0.0);
			
			}
			
		if (nonZeroBlack)
			{
			
			directory.Add (&fBlackLevelTag);

			}
		
		}
		
	}

/*****************************************************************************/

dng_raw_preview_tag_set::~dng_raw_preview_tag_set ()
	{
	
	}

/*****************************************************************************/

dng_raw_preview::dng_raw_preview ()
	{
 
	for (uint32 n = 0; n < kMaxColorPlanes; n++)
		{
		fBlackLevel [n] = 0.0;
		}
	
	}
		
/*****************************************************************************/

void dng_raw_preview::SetIFDInfo (dng_host &host,
								  const dng_image &image)
	{
	
	dng_preview::SetIFDInfo (host, image);
	
	fIFD.fNewSubFileType = sfPreviewImage;
	
	fIFD.fPhotometricInterpretation = piLinearRaw;
	
	if (image.PixelType () == ttFloat)
		{

		if (fPreferJXL && SupportsJXL (*fImage))
			{
			fIFD.fCompression = ccJXL;
			fIFD.fPredictor	  = cpNullPredictor;
			}
	
		else
			{
			fIFD.fCompression		 = ccDeflate;
			fIFD.fCompressionQuality = fCompressionQuality;
			fIFD.fPredictor			 = cpFloatingPoint;
			}
		
		for (uint32 j = 0; j < fIFD.fSamplesPerPixel; j++)
			{
			fIFD.fBitsPerSample [j] = 16;
			}
			
		fIFD.FindTileSize (512 * 1024);
		
		}
		
	else
		{
	
		if (fPreferJXL && SupportsJXL (*fImage))
			{
			fIFD.fCompression = ccJXL;
			fIFD.fPredictor	  = cpNullPredictor;
			}
		
		else
			{
			fIFD.fCompression		 = ccLossyJPEG;
			fIFD.fCompressionQuality = fCompressionQuality;
			}
																	 
		fIFD.FindTileSize (512 * 512 * fIFD.fSamplesPerPixel);
		
		}
		
	if (fIFD.fCompression == ccJXL)
		{
		
		// Use default host for the raw preview compression settings so any customizations
		// targeted for the actual main image are not used.
		
		dng_host defaultHost;
		
		// Use same compression quality as if encoding a non-full size proxy image.
		
		AutoPtr<dng_jxl_encode_settings> settings (defaultHost.MakeJXLEncodeSettings (dng_host::use_case_ProxyImage,
																					  image));

		if (fForNegativeCache)
			{
			settings->SetEffort (1);
			}
		
		fIFD.fJXLEncodeSettings.reset (settings.Release ());
		
		fIFD.fJXLDistance    = fIFD.fJXLEncodeSettings->Distance    ();
		fIFD.fJXLEffort      = fIFD.fJXLEncodeSettings->Effort      ();
		fIFD.fJXLDecodeSpeed = fIFD.fJXLEncodeSettings->DecodeSpeed ();
		
		if (image.PixelType () == ttShort)
			{
		
			AutoPtr<JxlColorEncoding> encoding (new JxlColorEncoding);

			memset (encoding.Get (), 0, sizeof (JxlColorEncoding));
			
			// EncodeImageForCompression leaves the image far from linear gamma,
			// so let's pretend it is sRGB gamma.

			encoding->color_space	    = image.Planes () == 1 ? JXL_COLOR_SPACE_GRAY
															   : JXL_COLOR_SPACE_RGB;
			encoding->white_point	    = JXL_WHITE_POINT_D65;
			encoding->primaries		    = JXL_PRIMARIES_2100;
			encoding->transfer_function = JXL_TRANSFER_FUNCTION_SRGB;
			
			fIFD.fJXLColorEncoding.reset (encoding.Release ());
			
			}
		
		}

	}
		
/*****************************************************************************/

dng_basic_tag_set * dng_raw_preview::AddTagSet (dng_host & /* host */,
												dng_tiff_directory &directory) const
	{
	
	return new dng_raw_preview_tag_set (directory, *this, fIFD);
	
	}
		
/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

class dng_hdr_gain_map_preview_tag_set: public dng_preview_tag_set
	{
	
	private:
	
		tag_data_ptr fGainMapMetadataTag;
		
	public:
	
		dng_hdr_gain_map_preview_tag_set (dng_tiff_directory &directory,
										  const dng_hdr_gain_map_preview &preview,
										  const dng_ifd &ifd)

			:	dng_preview_tag_set (directory, preview, ifd)

			,	fGainMapMetadataTag (tcGainMapMetadata_ISO_21496_1,
									 ttUndefined, // type
									 0,			  // count
									 nullptr)	  // data
		
			{

			if (preview.fGainMapMetadata)
				{

				const auto &block = *preview.fGainMapMetadata;

				auto &tag = fGainMapMetadataTag;
				
				tag.SetData	 (block.Buffer		());
				tag.SetCount (block.LogicalSize ());

				directory.Add (&tag);
				
				}

			}
		
	};

/*****************************************************************************/

void dng_hdr_gain_map_preview::SetIFDInfo (dng_host &host,
										   const dng_image &image)
	{
	
	dng_raw_preview::SetIFDInfo (host, image);
	
	fIFD.fNewSubFileType = sfPreviewGainMap;
	
	fIFD.fPhotometricInterpretation = piGainMap;
	
	}
		
/*****************************************************************************/

dng_basic_tag_set * dng_hdr_gain_map_preview::AddTagSet (dng_host & /* host */,
														 dng_tiff_directory &directory) const
	{
	
	return new dng_hdr_gain_map_preview_tag_set (directory,
												 *this,
												 fIFD);
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

void dng_mask_preview::SetIFDInfo (dng_host &host,
								   const dng_image &image)
	{
	
	dng_preview::SetIFDInfo (host, image);
	
	fIFD.fNewSubFileType = sfPreviewMask;
	
	fIFD.fPhotometricInterpretation = piTransparencyMask;
	
	fIFD.FindTileSize (512 * 512 * fIFD.fSamplesPerPixel);
	
	if (fPreferJXL && SupportsJXL (*fImage))
		{
		fIFD.fCompression = ccJXL;
		fIFD.fPredictor	  = cpNullPredictor;
		}
	
	else
		{
		
		fIFD.fCompression = ccDeflate;
		fIFD.fPredictor	  = cpHorizontalDifference;

		fIFD.fCompressionQuality = fCompressionQuality;

		}
	
	if (fIFD.fCompression == ccJXL)
		{
		
		AutoPtr<dng_jxl_encode_settings> settings (host.MakeJXLEncodeSettings (dng_host::use_case_Transparency,
																			   image));

		if (fForNegativeCache)
			{
			settings->SetEffort (1);
			}
		
		fIFD.fJXLEncodeSettings.reset (settings.Release ());
		
		fIFD.fJXLDistance    = fIFD.fJXLEncodeSettings->Distance    ();
		fIFD.fJXLEffort      = fIFD.fJXLEncodeSettings->Effort      ();
		fIFD.fJXLDecodeSpeed = fIFD.fJXLEncodeSettings->DecodeSpeed ();
		
		}

	}
		
/*****************************************************************************/

dng_basic_tag_set * dng_mask_preview::AddTagSet (dng_host & /* host */,
												 dng_tiff_directory &directory) const
	{
	
	return new dng_basic_tag_set (directory, fIFD);
	
	}
		
/*****************************************************************************/

void dng_semantic_mask_preview::SetIFDInfo (dng_host &host,
											const dng_image &image)
	{
	
	dng_preview::SetIFDInfo (host, image);
	
	fIFD.fNewSubFileType = fOriginalSize ? sfSemanticMask
										 : sfPreviewSemanticMask;
	
	fIFD.fPhotometricInterpretation = piPhotometricMask;

	fIFD.FindTileSize (512 * 512 * fIFD.fSamplesPerPixel);

	if (fPreferJXL && SupportsJXL (*fImage))
		{
		fIFD.fCompression = ccJXL;
		fIFD.fPredictor	  = cpNullPredictor;
		}
	
	else
		{
	
		fIFD.fCompression = ccDeflate;
		fIFD.fPredictor	  = cpHorizontalDifference;

		fIFD.fCompressionQuality = fCompressionQuality;

		}
	
	if (fIFD.fCompression == ccJXL)
		{
		
		AutoPtr<dng_jxl_encode_settings> settings (host.MakeJXLEncodeSettings (dng_host::use_case_SemanticMask,
																			   image));

		if (fForNegativeCache)
			{
			settings->SetEffort (1);
			}
		
		fIFD.fJXLEncodeSettings.reset (settings.Release ());
		
		fIFD.fJXLDistance    = fIFD.fJXLEncodeSettings->Distance    ();
		fIFD.fJXLEffort      = fIFD.fJXLEncodeSettings->Effort      ();
		fIFD.fJXLDecodeSpeed = fIFD.fJXLEncodeSettings->DecodeSpeed ();
		
		}
	
	}
		
/*****************************************************************************/

dng_basic_tag_set * dng_semantic_mask_preview::AddTagSet (dng_host & /* host */,
														  dng_tiff_directory &directory) const
	{

	// Need to write the name and instance ID to the directory, too. Otherwise
	// we won't have corresponding labels when reading the image back in.

	fTagName.reset (new tag_string (tcSemanticName,
									fName,
									false));

	fTagInstanceID.reset (new tag_string (tcSemanticInstanceID,
										  fInstanceID,
										  false));

	directory.Add (fTagName.get ());

	directory.Add (fTagInstanceID.get ());

	// Also need to add the MaskSubArea info.

	fTagMaskSubArea.reset (new tag_uint32_ptr (tcMaskSubArea,
											   & fMaskSubArea [0],
											   4));
	
	directory.Add (fTagMaskSubArea.get ());

	return new dng_basic_tag_set (directory, fIFD);
	
	}
		
/*****************************************************************************/

void dng_depth_preview::SetIFDInfo (dng_host &host,
									const dng_image &image)
	{
	
	dng_preview::SetIFDInfo (host, image);
	
	fIFD.fNewSubFileType = fFullResolution ? sfDepthMap
										   : sfPreviewDepthMap;

	fIFD.fPhotometricInterpretation = piDepth;
	
	fIFD.FindTileSize (512 * 512 * fIFD.fSamplesPerPixel);
	
	if (fPreferJXL && SupportsJXL (*fImage))
		{
		fIFD.fCompression = ccJXL;
		fIFD.fPredictor	  = cpNullPredictor;
		}
	
	else
		{
		
		fIFD.fCompression = ccDeflate;
		fIFD.fPredictor	  = cpHorizontalDifference;

		fIFD.fCompressionQuality = fCompressionQuality;

		}
	
	if (fIFD.fCompression == ccJXL)
		{
		
		AutoPtr<dng_jxl_encode_settings> settings (host.MakeJXLEncodeSettings (dng_host::use_case_Depth,
																			   image));

		if (fForNegativeCache)
			{
			settings->SetEffort (1);
			}
		
		fIFD.fJXLEncodeSettings.reset (settings.Release ());
		
		fIFD.fJXLDistance    = fIFD.fJXLEncodeSettings->Distance    ();
		fIFD.fJXLEffort      = fIFD.fJXLEncodeSettings->Effort      ();
		fIFD.fJXLDecodeSpeed = fIFD.fJXLEncodeSettings->DecodeSpeed ();
		
		}
	
	}
		
/*****************************************************************************/

dng_basic_tag_set * dng_depth_preview::AddTagSet (dng_host & /* host */,
												  dng_tiff_directory &directory) const
	{
	
	return new dng_basic_tag_set (directory, fIFD);
	
	}

/*****************************************************************************/

void dng_preview_list::Append (AutoPtr<dng_preview> &preview)
	{
	
	if (preview.Get ())
		{
		
		std::shared_ptr<const dng_preview> entry (preview.Release ());
		
		fPreview.push_back (entry);
		
		}
	
	}
		
/*****************************************************************************/
