/*****************************************************************************/
// Copyright 2007-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_preview__
#define __dng_preview__

/*****************************************************************************/

#include "dng_auto_ptr.h"
#include "dng_classes.h"
#include "dng_ifd.h"
#include "dng_opcode_list.h"
#include "dng_point.h"
#include "dng_sdk_limits.h"
#include "dng_string.h"
#include "dng_uncopyable.h"

#include <memory>

/*****************************************************************************/

class dng_preview: private dng_uncopyable
	{
	
	public:
	
		dng_preview_info fInfo;
		
		bool fPreferJXL = false;
		
		bool fForNegativeCache = false;

	protected:
	
		std::shared_ptr<const dng_image> fImage;
		
		std::shared_ptr<const dng_compressed_image_tiles> fCompressedImage;
		
		mutable dng_ifd fIFD;

	protected:
	
		dng_preview ()
			{
			}
			
	public:
		
		virtual ~dng_preview ()
			{
			}
			
		virtual void SetIFDInfo (dng_host &host,
								 const dng_image &image);
		
		void FindTileSize (uint32 bytesPerTile)
			{
			fIFD.FindTileSize (bytesPerTile);
			}
			
		void SetImage (dng_host &host,
					   std::shared_ptr<const dng_image> image)
			{
			
			fImage = image;
			
			SetIFDInfo (host, *fImage);
			
			}
			
		void SetImage (dng_host &host,
					   AutoPtr<dng_image> &image)
			{
			
			std::shared_ptr<const dng_image> temp (image.Release ());
			
			SetImage (host, temp);
								
			}
		
		void SetImage (dng_host &host,
					   const dng_image *image)
			{
			
			std::shared_ptr<const dng_image> temp (image);
			
			SetImage (host, temp);
								
			}
		
		uint32 ImageWidth () const
			{
			return fIFD.fImageWidth;
			}
		
		uint32 ImageLength () const
			{
			return fIFD.fImageLength;
			}
			
		uint32 SamplesPerPixel () const
			{
			return fIFD.fSamplesPerPixel;
			}
		
		uint32 BitsPerSample () const
			{
			return fIFD.fBitsPerSample [0];
			}
		
		uint32 SampleFormat () const
			{
			return fIFD.fSampleFormat [0];
			}
		
		uint32 PhotometricInterpretation () const
			{
			return fIFD.fPhotometricInterpretation;
			}
		
		uint32 NewSubFileType () const
			{
			return fIFD.fNewSubFileType;
			}
		
		virtual dng_basic_tag_set * AddTagSet (dng_host &host,
											   dng_tiff_directory &directory) const;
		
		virtual void WriteData (dng_host &host,
								dng_image_writer &writer,
								dng_basic_tag_set &basic,
								dng_stream &stream) const;
								
		virtual uint64 MaxImageDataByteCount () const;
		
		virtual void Compress (dng_host &host,
							   dng_image_writer &writer);
		
	};
		
/*****************************************************************************/

class dng_image_preview: public dng_preview
	{
	
	public:
	
		dng_image_preview ()
			{
			}

	};

/*****************************************************************************/

class dng_jpeg_preview: public dng_preview
	{
	
	public:
	
		dng_jpeg_preview ()
			{
			}
		
		void SetIFDInfo (dng_host &host,
						 const dng_image &image) override;
		
		void SetCompressionQuality (uint32 quality)
			{
			fIFD.fCompressionQuality = quality;
			}
		
		void SetYCbCr (uint32 subSampleH,
					   uint32 subSampleV)
			{
			
			fIFD.fPhotometricInterpretation = piYCbCr;
			
			fIFD.fYCbCrSubSampleH = subSampleH;
			fIFD.fYCbCrSubSampleV = subSampleV;
			
			}
			
		void SetCompressedData (AutoPtr<dng_memory_block> &compressedData);
		
		const dng_memory_block & CompressedData () const;
		
		dng_basic_tag_set * AddTagSet (dng_host &host,
									   dng_tiff_directory &directory) const override;
		
		void WriteData (dng_host &host,
						dng_image_writer &writer,
						dng_basic_tag_set &basic,
						dng_stream &stream) const override;
		
		uint64 MaxImageDataByteCount () const override;

		void Compress (dng_host &host,
					   dng_image_writer &writer) override;
		
		void SpoolAdobeThumbnail (dng_stream &stream) const;
		
	};

/*****************************************************************************/

class dng_jxl_preview: public dng_preview
	{
	
	public:
	
		dng_jxl_preview ()
			{
			}
		
		void SetIFDInfo (dng_host &host,
						 const dng_image &image) override;
		
	};

/*****************************************************************************/

class dng_raw_preview: public dng_preview
	{
	
	public:
	
		AutoPtr<dng_memory_block> fOpcodeList2Data;
  
		real64 fBlackLevel [kMaxColorPlanes];
		
		int32 fCompressionQuality = -1;

	public:
	
		dng_raw_preview ();
		
		virtual void SetIFDInfo (dng_host &host,
								 const dng_image &image);
		
		virtual dng_basic_tag_set * AddTagSet (dng_host &host,
											   dng_tiff_directory &directory) const;
		
	};

/*****************************************************************************/

class dng_hdr_gain_map_preview: public dng_raw_preview
	{
	
	public:

		// ISO 21496-1 data here.
	
		std::shared_ptr<const dng_memory_block> fGainMapMetadata;

	public:
	
		void SetIFDInfo (dng_host &host,
						 const dng_image &image) override;
		
		dng_basic_tag_set * AddTagSet (dng_host &host,
									   dng_tiff_directory &directory) const override;
		
	};

/*****************************************************************************/

class dng_mask_preview: public dng_preview
	{
	
	public:
	
		int32 fCompressionQuality = -1;

	public:
	
		dng_mask_preview ()
			{
			}
		
		virtual void SetIFDInfo (dng_host &host,
								 const dng_image &image);
		
		virtual dng_basic_tag_set * AddTagSet (dng_host &host,
											   dng_tiff_directory &directory) const;
		
	};

/*****************************************************************************/

class dng_semantic_mask_preview: public dng_preview
	{
	
	public:

		// Don't bother with including XMP block (if any) because this is just
		// a preview.
	
		dng_string fName;
	
		dng_string fInstanceID;

		int32 fCompressionQuality = -1;

		bool fOriginalSize = false;

		uint32 fMaskSubArea [4];

	private:
		
		mutable std::unique_ptr<tag_string> fTagName;
		mutable std::unique_ptr<tag_string> fTagInstanceID;
		
		mutable std::unique_ptr<tag_uint32_ptr> fTagMaskSubArea;
		
	public:
	
		dng_semantic_mask_preview ()
			{
			fMaskSubArea [0] = 0;
			fMaskSubArea [1] = 0;
			fMaskSubArea [2] = 0;
			fMaskSubArea [3] = 0;
			}
		
		virtual void SetIFDInfo (dng_host &host,
								 const dng_image &image);
		
		virtual dng_basic_tag_set * AddTagSet (dng_host &host,
											   dng_tiff_directory &directory) const;
		
	};

/*****************************************************************************/

class dng_depth_preview: public dng_preview
	{
	
	public:
	
		int32 fCompressionQuality = -1;
  
		bool fFullResolution = false;

	public:
	
		dng_depth_preview ()
			{
			}
		
		virtual void SetIFDInfo (dng_host &host,
								 const dng_image &image);
		
		virtual dng_basic_tag_set * AddTagSet (dng_host &host,
											   dng_tiff_directory &directory) const;
		
	};

/*****************************************************************************/

class dng_preview_list
	{
	
	private:
	
		std::vector<std::shared_ptr<const dng_preview>> fPreview;
		
	public:
	
		dng_preview_list ()
			{
			}
		
		uint32 Count () const
			{
			return (uint32) fPreview.size ();
			}
			
		const dng_preview & Preview (uint32 index) const
			{
			return *(fPreview [index]);
			}
			
		void Append (AutoPtr<dng_preview> &preview);
	
	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
