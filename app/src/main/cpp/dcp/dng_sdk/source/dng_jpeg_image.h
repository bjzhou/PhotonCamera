/*****************************************************************************/
// Copyright 2011-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_jpeg_image__
#define __dng_jpeg_image__

/*****************************************************************************/

#include "dng_auto_ptr.h"
#include "dng_fingerprint.h"
#include "dng_host.h"
#include "dng_jxl.h"
#include "dng_memory.h"
#include "dng_point.h"
#include "dng_tag_values.h"

#include <memory>
#include <vector>

/*****************************************************************************/

class dng_compressed_image_tiles
	{
	
	public:
	
		std::vector<std::shared_ptr<dng_memory_block>> fData;
		
	public:

		virtual ~dng_compressed_image_tiles ()
			{
			}
	
		virtual void EncodeTiles (dng_host &host,
								  dng_image_writer &writer,
								  const dng_image &image,
								  const dng_ifd &ifd);

		uint64 NonHeaderSize () const;

		void WriteData (dng_stream &stream,
						dng_basic_tag_set &basic) const;
			
	};

/*****************************************************************************/

class dng_lossy_compressed_image : public dng_compressed_image_tiles
	{
	
	public:
	
		dng_point fImageSize;
		
		dng_point fTileSize;
		
		bool fUsesStrips = false;

		uint32 fCompressionCode = 0;

		uint32 fBitsPerSample = 8;
		
		uint32 fRowInterleaveFactor    = 1;
		uint32 fColumnInterleaveFactor = 1;
		
		real32 fJXLDistance = -1.0f;
		
		int32 fJXLEffort      = -1;
		int32 fJXLDecodeSpeed = -1;
	
	public:

		void EncodeTiles (dng_host &host,
						  dng_image_writer &writer,
						  const dng_image &image,
						  const dng_ifd &ifd) override;

		uint32 TilesAcross () const
			{
			if (fTileSize.h)
				{
				return (fImageSize.h + fTileSize.h - 1) / fTileSize.h;
				}
			else
				{
				return 0;
				}
			}
		
		uint32 TilesDown () const
			{
			if (fTileSize.v)
				{
				return (fImageSize.v + fTileSize.v - 1) / fTileSize.v;
				}
			else
				{
				return 0;
				}
			}
			
		uint32 TileCount () const
			{
			return TilesAcross () * TilesDown ();
			}
		
		dng_fingerprint FindDigest (dng_host &host) const;
		
		virtual const dng_memory_block * JPEGTables () const
			{
			return nullptr;
			}
			
		real32 JXLDistance () const
			{
			return fJXLDistance;
			}

		int32 JXLEffort () const
			{
			return fJXLEffort;
			}

		int32 JXLDecodeSpeed () const
			{
			return fJXLDecodeSpeed;
			}

	protected:

		virtual void DoFindDigest (dng_host & /* host */,
								   std::vector<dng_fingerprint> & /* digests */) const
			{
			}
			
	};

/*****************************************************************************/

class dng_jpeg_image : public dng_lossy_compressed_image
	{
	
	public:
	
		AutoPtr<dng_memory_block> fJPEGTables;
		
	public:

		dng_jpeg_image ();
	
		void Encode (dng_host &host,
					 const dng_negative &negative,
					 dng_image_writer &writer,
					 const dng_image &image);

		const dng_memory_block * JPEGTables () const override
			{
			return fJPEGTables.Get ();
			}
	
	protected:
			
		void DoFindDigest (dng_host &host,
						   std::vector<dng_fingerprint> &digests) const override;
			
	};

/*****************************************************************************/

class dng_jxl_image : public dng_lossy_compressed_image
	{
	
	public:

		dng_jxl_image ();
	
		void Encode (dng_host &host,
					 dng_image_writer &writer,
					 const dng_image &image,
					 const dng_jxl_encode_settings &encodeSettings,
					 const JxlColorEncoding *colorEncoding = nullptr);

		void Encode (dng_host &host,
					 dng_image_writer &writer,
					 const dng_image &image,
					 dng_host::use_case_enum useCase,
					 const dng_negative *negative);

	};

/*****************************************************************************/

dng_lossy_compressed_image * KeepLossyCompressedImage (dng_host &host,
													   const dng_ifd &ifd);

/*****************************************************************************/

#endif	// __dng_jpeg_image__
	
/*****************************************************************************/
