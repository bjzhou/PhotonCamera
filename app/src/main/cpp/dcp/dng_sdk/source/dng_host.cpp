/*****************************************************************************/
// Copyright 2006-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_host.h"

#include "dng_abort_sniffer.h"
#include "dng_area_task.h"
#include "dng_bad_pixels.h"
#include "dng_exceptions.h"
#include "dng_exif.h"
#include "dng_gain_map.h"
#include "dng_globals.h"
#include "dng_ifd.h"
#include "dng_jxl.h"
#include "dng_lens_correction.h"
#include "dng_memory.h"
#include "dng_misc_opcodes.h"
#include "dng_negative.h"
#include "dng_resample.h"
#include "dng_shared.h"
#include "dng_simple_image.h"

#if qDNGUseXMP
#include "dng_xmp.h"
#endif

/*****************************************************************************/

dng_host::dng_host (dng_memory_allocator *allocator,
					dng_abort_sniffer *sniffer)

	:	fAllocator	(allocator)
	,	fSniffer	(sniffer)
	
	,	fNeedsMeta			(true)
	,	fNeedsImage			(true)
	,	fForPreview			(false)
	,	fMinimumSize		(0)
	,	fPreferredSize		(0)
	,	fMaximumSize		(0)
	,	fCropFactor			(1.0)
	,	fSaveDNGVersion		(dngVersion_None)
	,	fSaveLinearDNG		(false)
	,	fKeepOriginalFile	(false)
	,	fIgnoreEnhanced		(false)
	,	fForFastSaveToDNG	(false)
	,	fFastSaveToDNGSize	(0)
	,	fPreserveStage2		(false)
	
	{
	
	}
	
/*****************************************************************************/

dng_host::~dng_host ()
	{
	
	}
	
/*****************************************************************************/

dng_memory_allocator & dng_host::Allocator ()
	{
	
	if (fAllocator)
		{
		
		return *fAllocator;
		
		}
		
	else
		{
		
		return gDefaultDNGMemoryAllocator;
		
		}
	
	}

/*****************************************************************************/

dng_memory_block * dng_host::Allocate (uint32 logicalSize)
	{
	
	return Allocator ().Allocate (logicalSize);
		
	}
		
/*****************************************************************************/

void dng_host::SniffForAbort ()
	{
	
	dng_abort_sniffer::SniffForAbort (Sniffer ());
	
	}
		
/*****************************************************************************/

void dng_host::ValidateSizes ()
	{
	
	// The maximum size limits the other two sizes.
	
	if (MaximumSize ())
		{
		SetMinimumSize	 (Min_uint32 (MinimumSize	(), MaximumSize ()));
		SetPreferredSize (Min_uint32 (PreferredSize (), MaximumSize ()));
		}
		
	// If we have a preferred size, it limits the minimum size.
	
	if (PreferredSize ())
		{
		SetMinimumSize (Min_uint32 (MinimumSize (), PreferredSize ()));
		}
		
	// Else find default value for preferred size.
	
	else
		{
		
		// If preferred size is zero, then we want the maximim
		// size image.
		
		if (MaximumSize ())
			{
			SetPreferredSize (MaximumSize ());
			}
		
		}
		
	// If we don't have a minimum size, find default.
	
	if (!MinimumSize ())
		{
	
		// A common size for embedded thumbnails is 120 by 160 pixels,
		// So allow 120 by 160 pixels to be used for thumbnails when the
		// preferred size is 256 pixel.
		
		if (PreferredSize () >= 160 && PreferredSize () <= 256)
			{
			SetMinimumSize (160);
			}
			
		// Many sensors are near a multiple of 1024 pixels in size, but after
		// the default crop, they are a just under.	 We can get an extra factor
		// of size reduction if we allow a slight undershoot in the final size
		// when computing large previews.
		
		else if (PreferredSize () >= 490 && PreferredSize () <= 512)
			{
			SetMinimumSize (490);
			}

		else if (PreferredSize () >= 980 && PreferredSize () <= 1024)
			{
			SetMinimumSize (980);
			}

		else if (PreferredSize () >= 1470 && PreferredSize () <= 1536)
			{
			SetMinimumSize (1470);
			}

		else if (PreferredSize () >= 1960 && PreferredSize () <= 2048)
			{
			SetMinimumSize (1960);
			}

		else if (PreferredSize () >= 2400 && PreferredSize () <= 2560)
			{
			SetMinimumSize (2400);
			}

		// The following resolutions are typically on HiDPI displays where a
		// greater degree of upsampling remains visually ok for previews. The
		// following ratios are all based on 20% upsampling in a linear
		// dimension.

		else if (PreferredSize () >= 2448 && PreferredSize () <= 2880)
			{
			SetMinimumSize (2448);
			}

		// 1st-generation Surface Book.

		else if (PreferredSize () >= 2560 && PreferredSize () <= 3000)
			{
			SetMinimumSize (2560);
			}

		// 4K (actually 3840).

		else if (PreferredSize () >= 3480 && PreferredSize () <= 4096)
			{
			SetMinimumSize (3480);
			}

		// Surface Studio.

		else if (PreferredSize () >= 3824 && PreferredSize () <= 4500)
			{
			SetMinimumSize (3824);
			}

		// 5K.

		else if (PreferredSize () >= 4352 && PreferredSize () <= 5120)
			{
			SetMinimumSize (4352);
			}

		// 8K.

		else if (PreferredSize () >= 6528 && PreferredSize () <= 7680)
			{
			SetMinimumSize (6528);
			}

		// Else minimum size is same as preferred size.
			
		else
			{
			SetMinimumSize (PreferredSize ());
			}
			
		}
	
	}

/*****************************************************************************/

uint32 dng_host::SaveDNGVersion () const
	{

	return fSaveDNGVersion;

	}

/*****************************************************************************/

bool dng_host::SaveLinearDNG (const dng_negative & /* negative */) const
	{

	return fSaveLinearDNG;

	}

/*****************************************************************************/

bool dng_host::IsTransientError (dng_error_code code)
	{
	
	switch (code)
		{
		
		case dng_error_memory:
		case dng_error_user_canceled:
			{
			return true;
			}
			
		default:
			break;
			
		}
		
	return false;
	
	}
		
/*****************************************************************************/

void dng_host::PerformAreaTask (dng_area_task &task,
								const dng_rect &area,
								dng_area_task_progress *progress)
	{
	
	dng_area_task::Perform (task,
							area,
							&Allocator (),
							Sniffer (),
							progress);
	
	}
		
/*****************************************************************************/

uint32 dng_host::PerformAreaTaskThreads ()
	{
	
	return 1;
	
	}

/*****************************************************************************/

dng_exif * dng_host::Make_dng_exif ()
	{
	
	dng_exif *result = new dng_exif ();
	
	if (!result)
		{
		
		ThrowMemoryFull ();

		}
	
	return result;
	
	}

/*****************************************************************************/

#if qDNGUseXMP

/*****************************************************************************/

dng_xmp * dng_host::Make_dng_xmp ()
	{
	
	dng_xmp *result = new dng_xmp (Allocator ());
	
	if (!result)
		{
		
		ThrowMemoryFull ();
		
		}
	
	return result;
	
	}

/*****************************************************************************/

#endif	// qDNGUseXMP

/*****************************************************************************/

dng_shared * dng_host::Make_dng_shared ()
	{
	
	dng_shared *result = new dng_shared ();
	
	if (!result)
		{
		
		ThrowMemoryFull ();

		}
	
	return result;
	
	}

/*****************************************************************************/

dng_ifd * dng_host::Make_dng_ifd ()
	{
	
	dng_ifd *result = new dng_ifd ();
	
	if (!result)
		{
		
		ThrowMemoryFull ();

		}
	
	return result;
	
	}

/*****************************************************************************/

dng_negative * dng_host::Make_dng_negative ()
	{
	
	return dng_negative::Make (*this);
	
	}

/*****************************************************************************/

dng_image * dng_host::Make_dng_image (const dng_rect &bounds,
									  uint32 planes,
									  uint32 pixelType)
	{
	
	dng_image *result = new dng_simple_image (bounds,
											  planes,
											  pixelType,
											  Allocator ());
	
	if (!result)
		{
		
		ThrowMemoryFull ();

		}
	
	return result;
	
	}
		
/*****************************************************************************/

dng_opcode * dng_host::Make_dng_opcode (uint32 opcodeID,
										dng_stream &stream)
	{
	
	dng_opcode *result = NULL;
	
	switch (opcodeID)
		{
		
		case dngOpcode_WarpRectilinear:
			{
			
			result = new dng_opcode_WarpRectilinear (stream);
			
			break;
			
			}

		case dngOpcode_WarpRectilinear2:
			{
			
			result = new dng_opcode_WarpRectilinear2 (stream);
			
			break;
			
			}

		case dngOpcode_WarpFisheye:
			{
			
			result = new dng_opcode_WarpFisheye (stream);
			
			break;
			
			}
			
		case dngOpcode_FixVignetteRadial:
			{
			
			result = new dng_opcode_FixVignetteRadial (stream);
			
			break;
			
			}
			
		case dngOpcode_FixBadPixelsConstant:
			{
			
			result = new dng_opcode_FixBadPixelsConstant (stream);
			
			break;
			
			}
			
		case dngOpcode_FixBadPixelsList:
			{
			
			result = new dng_opcode_FixBadPixelsList (stream);
			
			break;
			
			}

		case dngOpcode_TrimBounds:
			{
			
			result = new dng_opcode_TrimBounds (stream);
			
			break;
			
			}
			
		case dngOpcode_MapTable:
			{
			
			result = new dng_opcode_MapTable (*this,
											  stream);
			
			break;
			
			}

		case dngOpcode_MapPolynomial:
			{
			
			result = new dng_opcode_MapPolynomial (stream);
			
			break;
			
			}

		case dngOpcode_GainMap:
			{
			
			result = new dng_opcode_GainMap (*this,
											 stream);
			
			break;
			
			}
			
		case dngOpcode_DeltaPerRow:
			{
			
			result = new dng_opcode_DeltaPerRow (*this,
												 stream);
			
			break;
			
			}
			
		case dngOpcode_DeltaPerColumn:
			{
			
			result = new dng_opcode_DeltaPerColumn (*this,
													stream);
			
			break;
			
			}
			
		case dngOpcode_ScalePerRow:
			{
			
			result = new dng_opcode_ScalePerRow (*this,
												 stream);
			
			break;
			
			}
			
		case dngOpcode_ScalePerColumn:
			{
			
			result = new dng_opcode_ScalePerColumn (*this,
													stream);
			
			break;
			
			}
			
		default:
			{
			
			result = new dng_opcode_Unknown (*this,
											 opcodeID,
											 stream);
			
			}
		
		}

	if (!result)
		{
		
		ThrowMemoryFull ();

		}
	
	return result;
	
	}

/*****************************************************************************/

dng_rgb_to_rgb_table_data *
dng_host::Make_dng_rgb_to_rgb_table_data (const dng_rgb_table &table)
	{
	
	return new dng_rgb_to_rgb_table_data (*this,
										  table);
	
	}
		
/*****************************************************************************/

void dng_host::ApplyOpcodeList (dng_opcode_list &list,
								dng_negative &negative,
								AutoPtr<dng_image> &image)
	{
	
	list.Apply (*this,
				negative,
				image);
	
	}
		
/*****************************************************************************/

void dng_host::ResampleImage (const dng_image &srcImage,
							  dng_image &dstImage)
	{
	
	::ResampleImage (*this,
					 srcImage,
					 dstImage,
					 srcImage.Bounds (),
					 dstImage.Bounds (),
					 dng_resample_bicubic::Get ());
	
	}

/*****************************************************************************/

void dng_host::SetJXLEncodeSettings (const dng_jxl_encode_settings &settings)
	{
	
	fJXLEncodeSettings.reset (new dng_jxl_encode_settings (settings));
	
	}

/*****************************************************************************/

dng_jxl_encode_settings *
	dng_host::MakeJXLEncodeSettings (use_case_enum useCase,
									 const dng_image &image,
									 const dng_negative * /* negative */) const
	{
	
	bool isFloat = (image.PixelType () == ttFloat);
				
	AutoPtr<dng_jxl_encode_settings> settings (new dng_jxl_encode_settings);

	settings->SetEffort (7);
	
	switch (useCase)
		{
		
		case use_case_LossyMosaic:
			{
			settings->SetDistance (0.2f);
			break;
			}

		case use_case_LosslessMosaic:
		case use_case_LosslessMainImage:
		case use_case_LosslessEnhancedImage:
		case use_case_LosslessGainMap:
			{
			
			// If we have special settings attached to the host, just use them.
			
			if (JXLEncodeSettings ())
				{
				
				*settings = *JXLEncodeSettings ();
				
				}

			else
				{
				
				settings->SetDistance (0.0f);
				settings->SetUseOriginalColorEncoding (true);

				}

			break;
			
			}
			
		case use_case_MainImage:
		case use_case_EncodedMainImage:
		case use_case_ProxyImage:
			{
			
			// If we have special settings attached to the host, just use them.
			
			if (JXLEncodeSettings ())
				{
				
				*settings = *JXLEncodeSettings ();
				
				}
				
			else
				{
				
				bool useHigherQuality = (useCase != use_case_ProxyImage) ||
										((uint64) image.Width  () *
										 (uint64) image.Height () >= 5000000);
										 
				if (isFloat)
					{
					
					settings->SetDistance (useHigherQuality ? 1.0f : 2.0f);
					
					}
					
				else if (useCase == use_case_MainImage)
					{

					// For non-encoded integer main images, we need to use very conservative
					// compression settings.

					settings->SetDistance (0.01f);
				
					}
					
				else
					{
					
					settings->SetDistance (useHigherQuality ? 0.5f : 1.0f);
					
					}

				}
			
			break;
			
			}
			
		case use_case_EnhancedImage:
			{
			settings->SetDistance (isFloat ? 0.5f : 0.01f);
			break;
			}

		case use_case_MergeResults:
			{
			settings->SetDistance (isFloat ? 0.5f : 0.1f);
			break;
			}
			
		case use_case_Transparency:
			{
			
			if (isFloat)
				{
				settings->SetDistance (1.0f);
				break;
				}
				
			// Fall through

			DNG_FALLTHROUGH

			}
			
		case use_case_LosslessTransparency:
			{
			
			// Fast lossless.

			settings->SetDistance (0.0f);
			settings->SetEffort (1);
			settings->SetUseOriginalColorEncoding (true);
			
			break;
			
			}

		case use_case_Depth:
		case use_case_SemanticMask:
			{
			
			if (isFloat)
				{
				settings->SetDistance (1.0f);
				break;
				}
				
			// Fall through

			DNG_FALLTHROUGH

			}
			
		case use_case_LosslessDepth:
		case use_case_LosslessSemanticMask:
			{
			
			// Medium lossless.

			settings->SetDistance (0.0f);
			settings->SetEffort (3);
			settings->SetUseOriginalColorEncoding (true);
			
			break;
			
			}
			
		case use_case_RenderedPreview:
			{
			settings->SetDistance (2.0f);
			break;
			}

		case use_case_GainMap:
			{
			settings->SetDistance (1.0);
			break;
			}
			
		}
		
	return settings.Release ();
	
	}

/*****************************************************************************/
