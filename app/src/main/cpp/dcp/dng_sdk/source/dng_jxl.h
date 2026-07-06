/*****************************************************************************/
// Copyright 2006-2022 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 *	Basic support for JPEG XL.
 */

/*****************************************************************************/

#ifndef __dng_jxl__
#define __dng_jxl__

/*****************************************************************************/

#include "dng_flags.h"

/*****************************************************************************/

#include "dng_auto_ptr.h"
#include "dng_bmff.h"
#include "dng_classes.h"
#include "dng_orientation.h"
#include "dng_point.h"
#include "dng_tag_values.h"
#include "dng_types.h"
#include "dng_utils.h"

#include <vector>
#include <unordered_set>

#if PHOTON_ENABLE_DNG_JXL
#include "jxl/color_encoding.h"
#else
#include "photon_jxl_stub.h"
#endif

/*****************************************************************************/

#define qLogJXL (qDNGValidate && 0)

/*****************************************************************************/

// jxl requires exif data be prepended with a 4-byte TIFF offset which can be
// all zero as long as the exif data comes immediately after.

static const uint32 kNumLeadingZeroBytesForEXIF = 4;

/*****************************************************************************/

class dng_jxl_encode_settings
	{
	
	private:

		real32 fDistance = 1.0f;

		// Effort is 1 to 9 where
		// 1: least effort -> faster, bigger files
		// 9: most effort  -> slower, smaller files

		// Empirically, use 5 to optimize for smaller size and 3 to optimize
		// for speed.

		uint32 fEffort = 7;

		// Options are 0 to 4.

		uint32 fDecodeSpeed = 4;

		/* Notes from libjxl 0.7.0 

		   decode speed (ds) goes from level 0 thru 4
		   0 means smaller files, but longer encode & decode times
		   4 means larger files, but shorter encode & decode times

		   ds0:
			   e1 is 1.868 sec at 5.83 MB
			   e3 is 1.933 sec at 5.12 MB
			   e5 is 3.072 sec at 4.90 MB
			   e7 is 6.173 sec at 5.05 MB
			   decode: 649 ms

		   ds4:
			   e1 is 1.647 sec at 5.92 MB
			   e3 is 1.636 sec at 5.39 MB
			   e5 is 2.3   sec at 5.09 MB
			   e7 is 5.4   sec at 5.17 MB
			   decode: 459 ms

		   summary:

		   - at all effort levels:
			 - ds0 is smaller than ds4
			 - ds0 is slower to encode than ds4
			 - ds0 is slower to decode than ds4

		   - ds4 is 41% faster to decode than ds0

		   - ds4 is 13% faster to encode than ds0 at e1
		   - ds4 is 18% faster to encode than ds0 at e3
		   - ds4 is 33% faster to encode than ds0 at e5
		   - ds4 is 14% faster to encode than ds0 at e7

		   - ds0 is 1.5% smaller than ds4 at e1
		   - ds0 is 5.3% smaller than ds4 at e3
		   - ds0 is 3.9% smaller than ds4 at e5
		   - ds0 is 2.4% smaller than ds4 at e7

		   conclusions 2022-02:

			   smallest files are at e5
			   slowest times are at e7
			   e1 and e3 are similar times
			   e5 much slower than e3
			   e7 much slower than e5

		   ----> e3 + ds4 is sweet spot <----

			   e1 is a little faster (up to 3%) but files are about 10% bigger
			   e5 is a little smaller (up to 6%) but 40% to 60% slower to encode
			   ds0 is a little smaller (up to 5%) but 40% slower to decode

			   smallest files: use e5 + ds0 
				 pros: 10% smaller (than e3 + ds4)
				 cons: 87% slower to encode, 40% slower to decode (than e3 + ds4)

			   fastest encoding: use e3 + ds4

			   smallest files: use e7 + ds4

		 */

		bool fUseOriginalColorEncoding = false;

		bool fUseSingleThread = false;
	
	public:

		// Low-level methods.
	
		void SetDistance (real32 distance)
			{
			fDistance = distance;
			}

		real32 Distance () const
			{
			return fDistance;
			}

		void SetEffort (uint32 effort)
			{
			fEffort = Pin_uint32 (1, effort, 9);
			}

		uint32 Effort () const
			{
			return fEffort;
			}

		void SetDecodeSpeed (uint32 speed04)
			{
			fDecodeSpeed = Pin_uint32 (0, speed04, 4);
			}

		uint32 DecodeSpeed () const
			{
			return fDecodeSpeed;
			}

		// Convenience method to set encoder settings to optimize for smallest
		// files.

		void SetSmallest ()
			{
			fDecodeSpeed = 0;
			fEffort		 = 5;
			}

		// Convenience method to set encoder settings to optimize for fastest
		// encode & decode.

		void SetFastest ()
			{
			fDecodeSpeed = 4;
			fEffort		 = 3;
			}

		bool UseSingleThread () const
			{
			return fUseSingleThread;
			}

		void SetSingleThread (bool flag)
			{
			fUseSingleThread = flag;
			}

		bool UseOriginalColorEncoding () const
			{
			return fUseOriginalColorEncoding;
			}

		void SetUseOriginalColorEncoding (bool flag)
			{
			fUseOriginalColorEncoding = flag;
			}

		// If desired, add other JPEG XL encoding options here in the future.

		// ...
		
	};

/*****************************************************************************/

bool ParseJXL (dng_host &host,
			   dng_stream &stream,
			   dng_info &info,
			   bool supportBasicCodeStream,
			   bool supportContainer);

/*****************************************************************************/

class dng_jxl_color_space_info
	{
		
	public:

		AutoPtr<JxlColorEncoding> fJxlColorEncoding;

		AutoPtr<dng_memory_block> fICCProfile;

		real32 fIntensityTargetNits = 0.0f;
		
	};

/*****************************************************************************/

// Basic JPEG XL decoder.

class dng_jxl_decoder
	{

	friend class dng_jxl_box_reader;
		
	public:

		// Input params.

		bool fNeedBoxMeta = true;

		bool fNeedImage = true;

		bool fUseSingleThread = false;

		bool fUsePixelBuffer = false;

		// Basic info.

		bool fUsesOriginalProfile = false;

		dng_point fMainImageSize;

		uint32 fMainImagePlanes = 3;

		uint32 fBitsPerSample = 8;

		uint32 fExponentBitsPerSample = 0;

		uint32 fNumExtraChannels = 0;

		bool fHasPreview = false;

		dng_info *fInfo = nullptr;

		dng_orientation fOrientation;

		dng_jxl_color_space_info fColorSpaceInfo;

		// Main image.

		AutoPtr<dng_image> fMainImage;

		AutoPtr<dng_memory_block> fMainBlock;

		AutoPtr<dng_pixel_buffer> fMainPixelBuffer;

		// Transparency.

		AutoPtr<dng_image> fAlphaMask;

		bool fAlphaPremultiplied = false;

		// Other stuff we might want to decode.

		//const_dng_image_sptr fPreviewImage;
		
		//const_dng_image_sptr fThumb;

		// Set by dng_jxl_box_reader immediately before each ProcessBox
		// dispatch. Provides the box's raw stream offset and on-disk size.

		uint64 fCurrentBoxStreamOffset = 0;

		uint64 fCurrentBoxRawSize = 0;

		// Set by ProcessBox when a C2PA jumb box is detected. Copied to
		// fShared after the decode loop, where fShared is guaranteed to
		// exist. Using side fields avoids depending on fShared being
		// allocated during box processing.

		uint64 fC2PAManifestOffset = 0;

		uint32 fC2PAManifestRawSize = 0;

	public:

		virtual ~dng_jxl_decoder ();

		virtual void Decode (dng_host &host,
							 dng_stream &stream);

	protected:

		virtual void ProcessExifBox (dng_host &host,
									 const std::vector<uint8> &data);

		virtual void ProcessXMPBox (dng_host &host,
									const std::vector<uint8> &data);

		virtual void ProcessBox (dng_host &host,
								 const dng_string &name,
								 const std::vector<uint8> &data);

	};

/*****************************************************************************/

// Write a "raw JXL" codestream (no container, no metadata boxes) for a single
// image. 

void EncodeJXL_Tile (dng_host &host,
					 dng_stream &stream,
					 const dng_pixel_buffer &buffer,
					 const dng_jxl_color_space_info &colorSpaceInfo,
					 const dng_jxl_encode_settings &settings);

void EncodeJXL_Tile (dng_host &host,
					 dng_stream &stream,
					 const dng_image &image,
					 const dng_jxl_color_space_info &colorSpaceInfo,
					 const dng_jxl_encode_settings &settings);

/*****************************************************************************/

// Write a JXL container to the stream with a single image with optional
// metadata and preview.

void EncodeJXL_Container (dng_host &host,
						  dng_stream &stream,
						  const dng_image &image,
						  const dng_jxl_encode_settings &settings,
						  const dng_jxl_color_space_info &colorSpaceInfo,
						  const dng_metadata *metadata,
						  const bool includeExif,
						  const bool includeXMP,
						  const bool includeIPTC,
						  const dng_bmff_box_list *additionalBoxes);

void EncodeJXL_Container (dng_host &host,
						  dng_stream &stream,
						  const dng_pixel_buffer &buffer,
						  const dng_jxl_encode_settings &settings,
						  const dng_jxl_color_space_info &colorSpaceInfo,
						  const dng_metadata *metadata,
						  const bool includeExif,
						  const bool includeXMP,
						  const bool includeIPTC,
						  const dng_bmff_box_list *additionalBoxes);

/*****************************************************************************/

// Quality is 1 to 13.
//
// Level 13 is lossless.
// Level 12 maps to distance 0.1.
// Level  9 maps to distance 1.
// Level  6 maps to distance 2.
// Level  3 maps to distance 3.

real32 JXLQualityToDistance (uint32 quality);

dng_jxl_encode_settings * JXLQualityToSettings (uint32 quality);

static constexpr uint32 kMinJXLCompressionQuality =  1;
static constexpr uint32 kMaxJXLCompressionQuality = 13;

static constexpr uint32 kDefaultJXLCompressionQuality = 9;

/*****************************************************************************/

void PreviewColorSpaceToJXLEncoding (const PreviewColorSpaceEnum colorSpace,
									 const uint32 planes,
									 dng_jxl_color_space_info &info);

/*****************************************************************************/

bool SupportsJXL (const dng_image &image);

/*****************************************************************************/

#endif	// __dng_jxl__
	
/*****************************************************************************/
