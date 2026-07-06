/*****************************************************************************/
// Copyright 2011-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_jpeg_image.h"

#include "dng_abort_sniffer.h"
#include "dng_area_task.h"
#include "dng_assertions.h"
#include "dng_host.h"
#include "dng_ifd.h"
#include "dng_jxl.h"
#include "dng_image.h"
#include "dng_image_writer.h"
#include "dng_memory_stream.h"
#include "dng_safe_arithmetic.h"
#include "dng_uncopyable.h"

#include <atomic>
#include <cinttypes>

/*****************************************************************************/

class dng_compressed_image_encode_task : public dng_area_task,
										 private dng_uncopyable
	{
	
	private:
	
		dng_host &fHost;
		
		dng_image_writer &fWriter;
		
		const dng_image &fImage;
	
		dng_compressed_image_tiles &fCompressedImage;
		
		uint32 fTileCount;
		
		const dng_ifd &fIFD;
				
		std::atomic_uint fNextTileIndex;
		
	public:
	
		dng_compressed_image_encode_task (dng_host &host,
										  dng_image_writer &writer,
										  const dng_image &image,
										  dng_compressed_image_tiles &compressedImage,
										  uint32 tileCount,
										  const dng_ifd &ifd)

			:	dng_area_task ("dng_compressed_image_encode_task")
		
			,	fHost			  (host)
			,	fWriter			  (writer)
			,	fImage			  (image)
			,	fCompressedImage  (compressedImage)
			,	fTileCount		  (tileCount)
			,	fIFD			  (ifd)
			,	fNextTileIndex	  (0)
			
			{
			
			fMinTaskArea = 16 * 16;
			fUnitCell	 = dng_point (16, 16);
			fMaxTileSize = dng_point (16, 16);
			
			}
	
		void Process (uint32 /* threadIndex */,
					  const dng_rect & /* tile */,
					  dng_abort_sniffer *sniffer)
			{
			
			AutoPtr<dng_memory_block> compressedBuffer;
			AutoPtr<dng_memory_block> uncompressedBuffer;
			AutoPtr<dng_memory_block> subTileBlockBuffer;
			AutoPtr<dng_memory_block> tempBuffer;
			
			uint32 uncompressedSize = SafeUint32Mult (fIFD.fTileLength, 
													  fIFD.fTileWidth, 
													  fIFD.fSamplesPerPixel,
													  fImage.PixelSize ());
			
			uncompressedBuffer.Reset (fHost.Allocate (uncompressedSize));
			
			uint32 compressedSize = fWriter.CompressedBufferSize (fIFD, uncompressedSize);
			
			if (compressedSize)
				{
				compressedBuffer.Reset (fHost.Allocate (compressedSize));
				}
			
			uint32 tilesAcross = fIFD.TilesAcross ();
	
			while (true)
				{

				// Note: fNextTileIndex is atomic
				
				uint32 tileIndex = fNextTileIndex++;

				if (tileIndex >= fTileCount)
					{
					return;
					}

				dng_abort_sniffer::SniffForAbort (sniffer);
				
				uint32 rowIndex = tileIndex / tilesAcross;
				uint32 colIndex = tileIndex % tilesAcross;
				
				dng_rect tileArea = fIFD.TileArea (rowIndex, colIndex);
				
				dng_memory_stream stream (fHost.Allocator ());
				
				fWriter.WriteTile (fHost,
								   fIFD,
								   stream,
								   fImage,
								   tileArea,
								   1,
								   compressedBuffer,
								   uncompressedBuffer,
								   subTileBlockBuffer,
								   tempBuffer,
								   true);
								  
				fCompressedImage.fData [tileIndex].reset
					(stream.AsMemoryBlock (fHost.Allocator ()));
					
				}
			
			}
		
	};

/*****************************************************************************/

void dng_compressed_image_tiles::EncodeTiles (dng_host &host,
											  dng_image_writer &writer,
											  const dng_image &image,
											  const dng_ifd &ifd)
	{
	
	#if qDNGValidate
	
	char message [256];
	
	dng_timer timer (message);
	
	#endif
	
	uint32 tilesAcross = ifd.TilesAcross ();
	uint32 tilesDown   = ifd.TilesDown	 ();

	// CR-4208475 M-M3: Mirror the SafeUint32Mult preflight used in the
	// dng_image_writer encode path (Phase L-M5). A pathological IFD with
	// huge TilesAcross / TilesDown could otherwise wrap the uint32 tile
	// count and under-size the fData vector before the worker pool writes
	// per-tile buffers into it.

	uint32 tileCount = SafeUint32Mult (tilesAcross, tilesDown);

	fData.resize (tileCount);
	
	uint32 threadCount = Min_uint32 (tileCount,
									 host.PerformAreaTaskThreads ());
										 
	dng_compressed_image_encode_task task (host,
										   writer,
										   image,
										   *this,
										   tileCount,
										   ifd);
									  
	host.PerformAreaTask (task,
						  dng_rect (0, 0, 16, 16 * threadCount));
		
	#if qDNGValidate
	
	if (ifd.fCompression == ccJXL)
		{
		
		snprintf (message,
				  sizeof (message),
				  "JXL encode %u by %u pixels, distance = %.2f, effort = %d, size = %" PRIu64,
				  image.Width (),
				  image.Height (),
				  ifd.fJXLEncodeSettings->Distance (),
				  ifd.fJXLEncodeSettings->Effort (),
				  NonHeaderSize ());

		}
		
	else if (ifd.fCompression == ccLossyJPEG)
		{
		
		snprintf (message,
				  sizeof (message),
				  "Lossy JPEG encode %u by %u pixels, quality = %d, size = %" PRIu64,
				  image.Width (),
				  image.Height (),
				  ifd.fCompressionQuality,
				  NonHeaderSize ());

		}
		
	else if (ifd.fCompression == ccDeflate)
		{
		
		snprintf (message,
				  sizeof (message),
				  "Deflate encode %u by %u pixels, quality = %d, size = %" PRIu64,
				  image.Width (),
				  image.Height (),
				  ifd.fCompressionQuality,
				  NonHeaderSize ());

		}
		
	else
		{
		
		snprintf (message,
				  sizeof (message),
				  "EncodeTiles %u by %u pixels, size = %" PRIu64,
				  image.Width (),
				  image.Height (),
				  NonHeaderSize ());

		}
				  
	#endif
		
	}

/*****************************************************************************/

uint64 dng_compressed_image_tiles::NonHeaderSize () const
	{
	
	uint64 size = 0;
	
	for (size_t index = 0; index < fData.size (); index++)
		{
		
		size += RoundUp2 (fData [index]->LogicalSize ());
		
		}
		
	return size;
	
	}

/*****************************************************************************/

void dng_compressed_image_tiles::WriteData (dng_stream &stream,
											dng_basic_tag_set &basic) const
	{

	uint32 tileCount = (uint32) fData.size ();
					
	for (uint32 tileIndex = 0; tileIndex < tileCount; tileIndex++)
		{
	
		// Remember this offset.
		
		uint64 tileOffset = stream.Position ();
	
		basic.SetTileOffset (tileIndex, tileOffset);
		
		// Write compressed data.
		
		stream.Put (fData [tileIndex]->Buffer	   (),
					fData [tileIndex]->LogicalSize ());
						
		// Update tile byte count.
			
		uint64 tileByteCount = stream.Position () - tileOffset;
			
		basic.SetTileByteCount (tileIndex, tileByteCount);
		
		// Keep the tiles on even byte offsets.
											 
		if (tileByteCount & 1)
			{
			stream.Put_uint8 (0);
			}

		}
		
	}

/*****************************************************************************/

void dng_lossy_compressed_image::EncodeTiles (dng_host &host,
											  dng_image_writer &writer,
											  const dng_image &image,
											  const dng_ifd &ifd)
	{
	
	dng_compressed_image_tiles::EncodeTiles (host,
											 writer,
											 image,
											 ifd);
											 
	fImageSize.h = ifd.fImageWidth;
	fImageSize.v = ifd.fImageLength;
	
	fTileSize.h = ifd.fTileWidth;
	fTileSize.v = ifd.fTileLength;
	
	fUsesStrips = !ifd.fUsesTiles;
	
	fCompressionCode = ifd.fCompression;
	
	fBitsPerSample = ifd.fBitsPerSample [0];
	
	fRowInterleaveFactor    = ifd.fRowInterleaveFactor;
	fColumnInterleaveFactor = ifd.fColumnInterleaveFactor;
	
	if (fCompressionCode == ccJXL && ifd.fJXLEncodeSettings.get ())
		{
		fJXLDistance    = ifd.fJXLEncodeSettings->Distance    ();
		fJXLEffort      = ifd.fJXLEncodeSettings->Effort      ();
		fJXLDecodeSpeed = ifd.fJXLEncodeSettings->DecodeSpeed ();
		}

	}

/*****************************************************************************/

dng_fingerprint dng_lossy_compressed_image::FindDigest (dng_host &host) const
	{
	
	const uint32 tileCount = TileCount ();

	std::vector<dng_fingerprint> digests (tileCount);
	
	// Compute digest of each compressed tile.

	dng_range_parallel_task::Do
		(host,
		 dng_range_parallel_task::info (int32 (0),
										int32 (tileCount)),
		 "dng_lossy_compressed_image::FindDigest",
		 [this, &digests] (const dng_range_parallel_task::range &ra)
		 {
			 
		 for (int32 i = ra.fBegin; i < ra.fEnd; i++)
			 {
				 
			 dng_md5_direct_printer printer;
				
			 printer.ProcessPtr (fData [i]->Buffer		(),
								 fData [i]->LogicalSize ());
								 
			 digests [i] = printer.Result ();
				 
			 }
			 
		 });

	// Subclasses can add extra data here.

	DoFindDigest (host, digests);

	// Combine digests into a single digest.
	
		{
		
		dng_md5_direct_printer printer;
		
		for (const auto &digest : digests)
			printer.Process (digest);
			
		return printer.Result ();
		
		}
	
	}

/*****************************************************************************/

static void CommonConfigureIFD (dng_ifd &ifd,
								const dng_image &image,
								const uint32 compressionCode,
								const dng_point &tileSize,
								const uint32 bitDepth)
	{
	
	DNG_REQUIRE (image.PixelType () == ttByte  ||
				 image.PixelType () == ttShort ||
				 image.PixelType () == ttFloat,
				 "Unsupported pixel type");

	dng_point imageSize = image.Bounds ().Size ();
	
	ifd.fImageWidth				   = imageSize.h;
	ifd.fImageLength			   = imageSize.v;
	
	ifd.fSamplesPerPixel		   = image.Planes ();
	
	ifd.fBitsPerSample [0]		   = bitDepth;
	ifd.fBitsPerSample [1]		   = bitDepth;
	ifd.fBitsPerSample [2]		   = bitDepth;
	ifd.fBitsPerSample [3]		   = bitDepth;
	
	ifd.fPhotometricInterpretation = piLinearRaw;
	
	ifd.fCompression			   = compressionCode;

	ifd.FindTileSize (SafeUint32Mult (uint32 (tileSize.h),
									  uint32 (tileSize.v),
									  ifd.fSamplesPerPixel));

	}

/*****************************************************************************/

dng_jpeg_image::dng_jpeg_image ()
	{
	
	fCompressionCode = ccLossyJPEG;
	
	}

/*****************************************************************************/

void dng_jpeg_image::Encode (dng_host &host,
							 const dng_negative &negative,
							 dng_image_writer &writer,
							 const dng_image &image)
	{
	
	#if qDNGValidate
	dng_timer timer ("Encode JPEG Proxy time");
	#endif
	
	DNG_REQUIRE (image.PixelType () == ttByte,
				 "Cannot JPEG encode non-byte image");
	
	dng_ifd ifd;

	CommonConfigureIFD (ifd,
						image,
						ccLossyJPEG,
						dng_point (512, 512),
						8);

	// Choose JPEG encode quality. Need a higher quality for raw proxies than
	// non-raw proxies, since users often perform much greater color changes.
	// Also, if we are targeting a "large" size proxy (larger than 5 MP), or
	// this is a full size proxy, then use a higher quality.
	
	bool useHigherQuality = (uint64) image.Width  () *
							(uint64) image.Height () > 5000000 ||
							image.Bounds ().Size () == negative.OriginalDefaultFinalSize ();
	
	if (negative.IsSceneReferred ())
		{
		ifd.fCompressionQuality = useHigherQuality ? 11 : 10;
		}
	
	else
		{
		ifd.fCompressionQuality = useHigherQuality ? 10 : 8;
		}

	EncodeTiles (host,
				 writer,
				 image,
				 ifd);
	
	}
			
/*****************************************************************************/

void dng_jpeg_image::DoFindDigest (dng_host & /* host */,
								   std::vector<dng_fingerprint> &digests) const
	{
	
	// Compute digest of JPEG tables, if any, and add to the given list.
		
	if (fJPEGTables.Get ())
		{
		
		dng_md5_direct_printer printer;
		
		printer.ProcessPtr (fJPEGTables->Buffer		 (),
							fJPEGTables->LogicalSize ());
						 
		digests.push_back (printer.Result ());
		
		}
	
	}
			
/*****************************************************************************/

dng_jxl_image::dng_jxl_image ()
	{
	
	fCompressionCode = ccJXL;
	
	}

/*****************************************************************************/

void dng_jxl_image::Encode (dng_host &host,
							dng_image_writer &writer,
							const dng_image &image,
							const dng_jxl_encode_settings &encodeSettings,
							const JxlColorEncoding *colorEncoding)
	{
	
	DNG_REQUIRE (SupportsJXL (image),
				 "Unsupported image");

	DNG_REQUIRE (image.PixelType () == ttByte  ||
				 image.PixelType () == ttShort ||
				 image.PixelType () == ttFloat,
				 "Unsupported pixel type");
				 
	dng_ifd ifd;
	
	ifd.fImageWidth  = image.Width  ();
	ifd.fImageLength = image.Height ();
	
	ifd.fSamplesPerPixel = image.Planes ();
	
	for (uint32 plane = 0; plane < ifd.fSamplesPerPixel; plane++)
		{
		
		if (image.PixelType () == ttFloat)
			{
			ifd.fBitsPerSample [plane] = 16;
			ifd.fSampleFormat  [plane] = sfFloatingPoint;
			}
			
		else
			{
			ifd.fBitsPerSample [plane] = image.PixelSize () * 8;
			}
			
		}
			
	ifd.fCompression = ccJXL;
	
	// This will cause the color encoding to use linear gamma with
	// no color transform, unless we override it.
	
	ifd.fPhotometricInterpretation = piLinearRaw;
	
	// Attach JXL encode settings to IFD.
	
	AutoPtr<dng_jxl_encode_settings> encodeSettingsHolder
		(new dng_jxl_encode_settings (encodeSettings));
	
	ifd.fJXLEncodeSettings.reset (encodeSettingsHolder.Release ());
	
	// Attach JXL color encoding to IFD, if any.
	
	if (colorEncoding)
		{
		
		AutoPtr<JxlColorEncoding> colorEncodingHolder
			(new JxlColorEncoding (*colorEncoding));
			
		ifd.fJXLColorEncoding.reset (colorEncodingHolder.Release ());
		
		}
	
	ifd.FindTileSize (1024 * 1024);
	
	EncodeTiles (host,
				 writer,
				 image,
				 ifd);
	
	}

/*****************************************************************************/

void dng_jxl_image::Encode (dng_host &host,
							dng_image_writer &writer,
							const dng_image &image,
							dng_host::use_case_enum useCase,
							const dng_negative *negative)
	{
	
	AutoPtr<dng_jxl_encode_settings> encodeSettings
		(host.MakeJXLEncodeSettings (useCase,
									 image,
									 negative));
									 
	AutoPtr<JxlColorEncoding> colorEncoding;

	if ((useCase == dng_host::use_case_EncodedMainImage ||
		 useCase == dng_host::use_case_ProxyImage) &&
		image.PixelType () == ttShort)
		{
	
		colorEncoding.Reset (new JxlColorEncoding);

		memset (colorEncoding.Get (), 0, sizeof (JxlColorEncoding));
		
		// EncodeImageForCompression leaves the image far from linear gamma,
		// so let's pretend it is sRGB gamma.

		colorEncoding->color_space       = image.Planes () == 1 ? JXL_COLOR_SPACE_GRAY
																: JXL_COLOR_SPACE_RGB;
		colorEncoding->white_point       = JXL_WHITE_POINT_D65;
		colorEncoding->primaries         = JXL_PRIMARIES_2100;
		colorEncoding->transfer_function = JXL_TRANSFER_FUNCTION_SRGB;
		
		}
	
	Encode (host,
			writer,
			image,
			*encodeSettings,
			colorEncoding.Get ());
	
	}

/*****************************************************************************/

dng_lossy_compressed_image * KeepLossyCompressedImage (dng_host &host,
													   const dng_ifd &ifd)
	{
	
	AutoPtr<dng_lossy_compressed_image> lossyImage;
	
	if (host.SaveDNGVersion () &&
	   !host.PreferredSize  () &&
	   !host.ForPreview     ())
		{
		
		// Non-default ColumnInterleaveFactor requires DNG 1.7.1.
		
		if (ifd.fColumnInterleaveFactor != 1 &&
			host.SaveDNGVersion () < dngVersion_1_7_1_0)
			{
			return nullptr;
			}
		
		// See if we should grab the compressed JPEG data.
		
		if (host.SaveDNGVersion () >= MinBackwardVersionForCompression (ccLossyJPEG) &&
			ifd.IsBaselineJPEG ())
			{
			
			lossyImage.Reset (new dng_jpeg_image);
			
			}
		
		if (host.SaveDNGVersion () >= MinBackwardVersionForCompression (ccJXL) &&
			ifd.fCompression == ccJXL)
			{
			
			lossyImage.Reset (new dng_lossy_compressed_image);
			
			}
			
		}
		
	if (lossyImage.Get ())
		{
		
		lossyImage->fCompressionCode = ifd.fCompression;
		
		lossyImage->fBitsPerSample = ifd.fBitsPerSample [0];
		
		lossyImage->fRowInterleaveFactor    = ifd.fRowInterleaveFactor;
		lossyImage->fColumnInterleaveFactor = ifd.fColumnInterleaveFactor;
		
		lossyImage->fJXLDistance    = ifd.fJXLDistance;
		lossyImage->fJXLEffort      = ifd.fJXLEffort;
		lossyImage->fJXLDecodeSpeed = ifd.fJXLDecodeSpeed;
		
		}
		
	return lossyImage.Release ();
		
	}

/*****************************************************************************/
