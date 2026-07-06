/*****************************************************************************/
// Copyright 2015-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_big_table.h"

#include "dng_1d_table.h"
#include "dng_bottlenecks.h"
#include "dng_safe_arithmetic.h"
#include "dng_abort_sniffer.h"
#include "dng_color_space.h"
#include "dng_globals.h"
#include "dng_host.h"
#include "dng_image.h"
#include "dng_image_writer.h"
#include "dng_info.h"
#include "dng_jxl.h"
#include "dng_memory_stream.h"
#include "dng_mutex.h"
#include "dng_negative.h"
#include "dng_stream.h"

#if qDNGUseXMP
#include "dng_xmp.h"
#endif

#include "zlib.h"

#include <unordered_map>

/*****************************************************************************/

class dng_big_table_cache
	{

	private:

		dng_std_mutex fMutex;

		typedef std::pair <dng_fingerprint,
						   int32> RefCountsPair;

		typedef std::map <dng_fingerprint,
						  int32,
						  dng_fingerprint_less_than> RefCountsMap;
		
		RefCountsMap fRefCounts;

		std::vector<dng_fingerprint> fRecentlyUsed;

	protected:

		enum
			{
			kDefaultRecentlyUsedLimit = 5
			};

		uint32 fRecentlyUsedLimit;

	protected:

		dng_big_table_cache ();

		void UseTable (dng_lock_std_mutex &lock,
					   const dng_fingerprint &fingerprint);

		virtual void CacheIncrement (dng_lock_std_mutex &lock,
									 const dng_fingerprint &fingerprint);

		virtual void CacheDecrement (dng_lock_std_mutex &lock,
									 const dng_fingerprint &fingerprint);

		virtual void CacheAdd (dng_lock_std_mutex &lock,
							   const dng_big_table &table);

		virtual bool CacheExtract (dng_lock_std_mutex &lock,
								   const dng_fingerprint &fingerprint,
								   dng_big_table &table);

		virtual void InsertTableData (dng_lock_std_mutex &lock,
									  const dng_big_table &table) = 0;

		virtual void EraseTableData (dng_lock_std_mutex &lock,
									 const dng_fingerprint &fingerprint) = 0;

		virtual void ExtractTableData (dng_lock_std_mutex &lock,
									   const dng_fingerprint &fingerprint,
									   dng_big_table &table) = 0;

		virtual void Clear ()
			{

			fRefCounts.clear ();

			fRecentlyUsed.clear ();

			}

	public:

		virtual ~dng_big_table_cache ();

		void FlushRecentlyUsed ();

		static void Increment (dng_big_table_cache *cache,
							   const dng_fingerprint &fingerprint);

		static void Decrement (dng_big_table_cache *cache,
							   const dng_fingerprint &fingerprint);

		static void Add (dng_big_table_cache *cache,
						 const dng_big_table &table);

		static bool Extract (dng_big_table_cache *cache,
							 const dng_fingerprint &fingerprint,
							 dng_big_table &table);

	};

/*****************************************************************************/

dng_big_table_cache::dng_big_table_cache ()

	:	fMutex ()

	,	fRefCounts ()

	,	fRecentlyUsed	   ()
	,	fRecentlyUsedLimit (kDefaultRecentlyUsedLimit)

	{

	}

/*****************************************************************************/

dng_big_table_cache::~dng_big_table_cache ()
	{

	}

/*****************************************************************************/

void dng_big_table_cache::UseTable (dng_lock_std_mutex &lock,
									const dng_fingerprint &fingerprint)
	{

	// See if fingerprint is in recently used list.

	int32 lastIndex = (int32) fRecentlyUsed.size () - 1;

	for (int32 index = lastIndex; index >= 0; index--)
		{

		if (fingerprint == fRecentlyUsed [index])
			{

			// Move to end of list if not already there.

			if (index != lastIndex)
				{

				fRecentlyUsed.erase (fRecentlyUsed.begin () + index);

				fRecentlyUsed.push_back (fingerprint);

				}

			// Item is in recently used list, so we are done.

			return;

			}

		}

	// Is the recently used list full?

	if (fRecentlyUsed.size () == fRecentlyUsedLimit)
		{

		CacheDecrement (lock, fRecentlyUsed.front ());

		fRecentlyUsed.erase (fRecentlyUsed.begin ());

		}

	// Add to end of list.

	fRecentlyUsed.push_back (fingerprint);

	CacheIncrement (lock, fingerprint);

	}

/*****************************************************************************/

void dng_big_table_cache::FlushRecentlyUsed ()
	{
	
	dng_lock_std_mutex lock (fMutex);

	while (!fRecentlyUsed.empty ())
		{

		CacheDecrement (lock, fRecentlyUsed.back ());

		fRecentlyUsed.pop_back ();

		}

	}

/*****************************************************************************/

void dng_big_table_cache::CacheIncrement (dng_lock_std_mutex &lock,
										  const dng_fingerprint &fingerprint)
	{

	if (fingerprint.IsValid ())
		{

		RefCountsMap::iterator it = fRefCounts.find (fingerprint);

		if (it == fRefCounts.end ())
			{

			DNG_REPORT ("dng_big_table_cache::CacheIncrement"
						"fingerprint not in cache");

			}

		else
			{

			it->second++;

			UseTable (lock, fingerprint);

			}

		}

	}

/*****************************************************************************/

void dng_big_table_cache::CacheDecrement (dng_lock_std_mutex &lock,
										  const dng_fingerprint &fingerprint)
	{

	if (fingerprint.IsValid ())
		{

		RefCountsMap::iterator it = fRefCounts.find (fingerprint);

		if (it == fRefCounts.end ())
			{

			DNG_REPORT ("dng_big_table_cache::CacheDecrement"
						"fingerprint not in cache");

			}

		else if (--(it->second) == 0)
			{

			fRefCounts.erase (it);

			EraseTableData (lock, fingerprint);

			}

		}

	}

/*****************************************************************************/

void dng_big_table_cache::CacheAdd (dng_lock_std_mutex &lock,
									const dng_big_table &table)
	{

	if (table.Fingerprint ().IsValid ())
		{

		RefCountsMap::iterator it = fRefCounts.find (table.Fingerprint ());

		if (it == fRefCounts.end ())
			{

			fRefCounts.insert (RefCountsPair (table.Fingerprint (), 1));

			InsertTableData (lock, table);

			}

		else
			{

			it->second++;

			}

		UseTable (lock, table.Fingerprint ());

		}

	}

/*****************************************************************************/

bool dng_big_table_cache::CacheExtract (dng_lock_std_mutex &lock,
										const dng_fingerprint &fingerprint,
										dng_big_table &table)
	{

	if (fingerprint.IsValid ())
		{

		RefCountsMap::iterator it = fRefCounts.find (fingerprint);

		if (it != fRefCounts.end ())
			{

			it->second++;

			ExtractTableData (lock, fingerprint, table);

			UseTable (lock, fingerprint);
			
			return true;

			}

		}

	return false;

	}

/*****************************************************************************/

void dng_big_table_cache::Increment (dng_big_table_cache *cache,
									 const dng_fingerprint &fingerprint)
	{

	if (cache)
		{
		
		dng_lock_std_mutex lock (cache->fMutex);

		cache->CacheIncrement (lock, fingerprint);

		}

	}

/*****************************************************************************/

void dng_big_table_cache::Decrement (dng_big_table_cache *cache,
									 const dng_fingerprint &fingerprint)
	{

	if (cache)
		{

		dng_lock_std_mutex lock (cache->fMutex);

		cache->CacheDecrement (lock, fingerprint);

		}

	}

/*****************************************************************************/

void dng_big_table_cache::Add (dng_big_table_cache *cache,
							   const dng_big_table &table)
	{

	if (cache)
		{

		dng_lock_std_mutex lock (cache->fMutex);

		cache->CacheAdd (lock, table);

		}

	}

/*****************************************************************************/

bool dng_big_table_cache::Extract (dng_big_table_cache *cache,
								   const dng_fingerprint &fingerprint,
								   dng_big_table &table)
	{

	if (cache)
		{

		dng_lock_std_mutex lock (cache->fMutex);

		return cache->CacheExtract (lock, fingerprint, table);

		}

	return false;

	}

/*****************************************************************************/

class dng_look_table_cache : public dng_big_table_cache
	{

	private:

		typedef std::pair <dng_fingerprint,
						   dng_look_table::table_data> TableDataPair;

		typedef std::map <dng_fingerprint,
						  dng_look_table::table_data,
						  dng_fingerprint_less_than> TableDataMap;
		
		TableDataMap fTableData;

	public:

		dng_look_table_cache ()

			:	fTableData ()

			{
			}

		virtual void Clear ()
			{

			dng_big_table_cache::Clear ();

			fTableData.clear ();

			}

		virtual void InsertTableData (dng_lock_std_mutex & /* lock */,
									  const dng_big_table &table)
			{

			const dng_look_table *lookTable = static_cast
											  <const dng_look_table *>
											  (&table);

			fTableData.insert (TableDataPair (lookTable->Fingerprint (),
											  lookTable->fData));

			}

		virtual void EraseTableData (dng_lock_std_mutex & /* lock */,
									 const dng_fingerprint &fingerprint)
			{

			TableDataMap::iterator it = fTableData.find (fingerprint);

			if (it != fTableData.end ())
				{

				fTableData.erase (it);

				}

			else
				{

				DNG_REPORT ("dng_look_table_cache::EraseTableData"
							"fingerprint not in cache");

				}

			}

		virtual void ExtractTableData (dng_lock_std_mutex & /* lock */,
									   const dng_fingerprint &fingerprint,
									   dng_big_table &table)
			{

			TableDataMap::iterator it = fTableData.find (fingerprint);

			if (it != fTableData.end ())
				{

				dng_look_table *lookTable = static_cast
											<dng_look_table *>
											(&table);

				lookTable->fData = it->second;

				}

			else
				{

				DNG_REPORT ("dng_look_table_cache::ExtractTableData"
							"fingerprint not in cache");

				}

			}

	};

static dng_look_table_cache gLookTableCache;

/*****************************************************************************/

class dng_rgb_table_cache : public dng_big_table_cache
	{

	private:

		typedef std::pair <dng_fingerprint,
						   dng_rgb_table::table_data> TableDataPair;

		typedef std::map <dng_fingerprint,
						  dng_rgb_table::table_data,
						  dng_fingerprint_less_than> TableDataMap;
		
		TableDataMap fTableData;

	public:

		dng_rgb_table_cache ()

			:	fTableData ()

			{
			}

		virtual void Clear ()
			{

			dng_big_table_cache::Clear ();

			fTableData.clear ();

			}

		virtual void InsertTableData (dng_lock_std_mutex & /* lock */,
									  const dng_big_table &table)
			{

			const dng_rgb_table *rgbTable = static_cast
											<const dng_rgb_table *>
											(&table);

			fTableData.insert (TableDataPair (rgbTable->Fingerprint (),
											  rgbTable->fData));

			}

		virtual void EraseTableData (dng_lock_std_mutex & /* lock */,
									 const dng_fingerprint &fingerprint)
			{

			TableDataMap::iterator it = fTableData.find (fingerprint);

			if (it != fTableData.end ())
				{

				fTableData.erase (it);

				}

			else
				{

				DNG_REPORT ("dng_rgb_table_cache::EraseTableData"
							"fingerprint not in cache");

				}

			}

		virtual void ExtractTableData (dng_lock_std_mutex & /* lock */,
									   const dng_fingerprint &fingerprint,
									   dng_big_table &table)
			{

			TableDataMap::iterator it = fTableData.find (fingerprint);

			if (it != fTableData.end ())
				{

				dng_rgb_table *rgbTable = static_cast
										  <dng_rgb_table *>
										  (&table);

				rgbTable->fData = it->second;

				}

			else
				{

				DNG_REPORT ("dng_rgb_table_cache::ExtractTableData"
							"fingerprint not in cache");

				}

			}

	};

static dng_rgb_table_cache gRGBTableCache;

/*****************************************************************************/

class dng_image_table_cache : public dng_big_table_cache
	{

	private:

		std::unordered_map <dng_fingerprint,
							dng_image_table_data,
							dng_fingerprint_hash> fTableData;

	public:

		void Clear () override
			{

			dng_big_table_cache::Clear ();

			fTableData.clear ();

			}

		void InsertTableData (dng_lock_std_mutex & /* lock */,
							  const dng_big_table &table) override
			{

			const dng_image_table *imageTable = static_cast
												<const dng_image_table *>
												(&table);

			dng_image_table_data data;

			imageTable->GetData (data);
			
			fTableData.insert (std::make_pair (imageTable->Fingerprint (),
											   data));

			}

		void EraseTableData (dng_lock_std_mutex & /* lock */,
							 const dng_fingerprint &fingerprint) override
			{

			auto it = fTableData.find (fingerprint);

			if (it != fTableData.end ())
				{

				fTableData.erase (it);

				}

			else
				{

				DNG_REPORT ("dng_image_table_cache::EraseTableData"
							"fingerprint not in cache");

				}

			}

		void ExtractTableData (dng_lock_std_mutex & /* lock */,
							   const dng_fingerprint &fingerprint,
							   dng_big_table &table) override
			{

			auto it = fTableData.find (fingerprint);

			if (it != fTableData.end ())
				{

				dng_image_table *imageTable = static_cast
											  <dng_image_table *>
											  (&table);

				imageTable->SetData (it->second);

				}

			else
				{

				DNG_REPORT ("dng_image_table_cache::ExtractTableData"
							"fingerprint not in cache");

				}

			}

	};

static dng_image_table_cache gImageTableCache;

/*****************************************************************************/

class dng_packed_image_table_cache : public dng_big_table_cache
	{

	private:

		struct entry_t
			{
				
			public:

				dng_image_table_data fImageData;

				std::shared_ptr<const dng_memory_block> fBlock;

				// Image properties.

				dng_point fSize;

				uint32 fPlanes = 0;

				uint32 fPixelType = 0;

			};

		std::unordered_map <dng_fingerprint,
							entry_t,
							dng_fingerprint_hash> fEntries;

	public:

		void Clear () override
			{

			dng_big_table_cache::Clear ();

			fEntries.clear ();

			}

		 void InsertTableData (dng_lock_std_mutex & /* lock */,
							   const dng_big_table &table) override
			{

			// printf ("dng_packed_image_table_cache::InsertTableData\n");

			const auto &src = static_cast <const dng_packed_image_table &> (table);

			entry_t entry;

			entry.fBlock	 = src.ShareBlock ();
			entry.fSize		 = src.fSize;
			entry.fPlanes	 = src.fPlanes;
			entry.fPixelType = src.fPixelType;

			if (src.IsValidUnpacked ())
				src.Table ().GetData (entry.fImageData);

			fEntries.insert (std::make_pair (src.Fingerprint (), entry));

			}

		 void EraseTableData (dng_lock_std_mutex & /* lock */,
							  const dng_fingerprint &fingerprint) override
			{

			// printf ("dng_packed_image_table_cache::EraseTableData\n");

			auto iter = fEntries.find (fingerprint);

			if (iter != fEntries.end ())
				{

				fEntries.erase (iter);

				}

			else
				{

				DNG_REPORT ("dng_packed_image_table_cache::EraseTableData"
							"fingerprint not in cache");

				}

			}

		 void ExtractTableData (dng_lock_std_mutex & /* lock */,
								const dng_fingerprint &fingerprint,
								dng_big_table &table) override
			{

			// printf ("dng_packed_image_table_cache::ExtractTableData\n");

			auto iter = fEntries.find (fingerprint);

			if (iter != fEntries.end ())
				{

				auto &dst = static_cast <dng_packed_image_table &> (table);

				dst.fTableDigest = fingerprint;
				
				dst.fBlock     = iter->second.fBlock;
				dst.fSize      = iter->second.fSize;
				dst.fPlanes    = iter->second.fPlanes;
				dst.fPixelType = iter->second.fPixelType;

				AutoPtr<dng_image_table> temp (dst.MakeTable ());

				temp->SetData (iter->second.fImageData);
				
				dst.fTable.reset (temp.Release ());

				}

			else
				{

				DNG_REPORT ("dng_packed_image_table_cache::ExtractTableData"
							"fingerprint not in cache");

				}

			}

	};

static dng_packed_image_table_cache gPackedImageTableCache;

/*****************************************************************************/

void dng_big_table_cache_flush ()
	{

	gLookTableCache.FlushRecentlyUsed ();

	gRGBTableCache.FlushRecentlyUsed ();

	gImageTableCache.FlushRecentlyUsed ();

	gPackedImageTableCache.FlushRecentlyUsed ();

	}

/*****************************************************************************/

void dng_big_table_cache_clear ()
	{

	gLookTableCache.Clear ();

	gRGBTableCache.Clear ();

	gImageTableCache.Clear ();

	gPackedImageTableCache.Clear ();

	}

/*****************************************************************************/

dng_big_table::dng_big_table (dng_big_table_cache *cache)

	:	fFingerprint ()
	,	fCache		 (cache)
	,	fIsMissing	 (false)

	{

	}
	
/*****************************************************************************/

dng_big_table::dng_big_table (const dng_big_table &table)

	:	fFingerprint (table.fFingerprint)
	,	fCache		 (table.fCache		)
	,	fIsMissing	 (false				)

	{

	dng_big_table_cache::Increment (fCache, fFingerprint);

	}
	
/*****************************************************************************/

dng_big_table & dng_big_table::operator= (const dng_big_table &table)
	{

	if (fFingerprint != table.fFingerprint ||
		fCache		 != table.fCache	   )
		{

		dng_big_table_cache::Decrement (fCache, fFingerprint);

		fFingerprint = table.fFingerprint;
		fCache		 = table.fCache;

		dng_big_table_cache::Increment (fCache, fFingerprint);

		}

	return *this;

	}
	
/*****************************************************************************/

dng_big_table::~dng_big_table ()
	{

	dng_big_table_cache::Decrement (fCache, fFingerprint);

	}

/*****************************************************************************/

const dng_fingerprint & dng_big_table::Fingerprint () const
	{

	return fFingerprint;

	}

/*****************************************************************************/

uint32 dng_big_table::MaxCompressedDecodedStreamSize () const
	{

	static const uint32 kMaxCompressedBigTableDecodedSize = 128u * 1024u * 1024u;

	// Image table classes bypass the outer zlib big-table wrapper and enforce
	// their own image-specific limits. This cap applies only to the generic
	// compressed metadata-table stream.

	return kMaxCompressedBigTableDecodedSize;

	}

/*****************************************************************************/

dng_fingerprint dng_big_table::ComputeFingerprint () const
	{
	
	dng_md5_printer_le_stream stream;

	PutStream (stream, true);

	return stream.Result ();
	
	}

/*****************************************************************************/

void dng_big_table::RecomputeFingerprint ()
	{

	dng_big_table_cache::Decrement (fCache, fFingerprint);

	fFingerprint.Clear ();

	if (IsValid ())
		{

		fFingerprint = ComputeFingerprint ();

		// Try extract first to force sharing of table data memory if
		// table data is already in cache.

		if (!dng_big_table_cache::Extract (fCache, fFingerprint, *this))
			{

			// Otherwise add to cache.

			dng_big_table_cache::Add (fCache, *this);

			}

		}

	}

/*****************************************************************************/

bool dng_big_table::DecodeFromBinary (dng_host &host,
									  const uint8 * compressedData,
									  uint32 compressedSize,
									  AutoPtr<dng_memory_block> *uncompressedCache)
	{
	   
	// Decompress the data, if required.
	
	if (UseCompression ())
		{
		
		if (compressedSize < 5)
			{
			return false;
			}

		uint8 *uncompressedData;
		uint32 uncompressedSize;

		const uint32 maxUncompressedSize = MaxCompressedDecodedStreamSize ();
		
		AutoPtr<dng_memory_block> uncompressedBlock;
		
		if (uncompressedCache && uncompressedCache->Get ())
			{
			uncompressedData = uncompressedCache->Get ()->Buffer_uint8 ();
			uncompressedSize = uncompressedCache->Get ()->LogicalSize  ();

			if (uncompressedSize > maxUncompressedSize)
				{
				return false;
				}

			}
			
		else
			{

			// Uncompressed size is stored in first four bytes of decoded data,
			// little endian order.

			uncompressedSize = (((uint32) compressedData [0])	   ) +
							   (((uint32) compressedData [1]) <<  8) +
							   (((uint32) compressedData [2]) << 16) +
							   (((uint32) compressedData [3]) << 24);

			if (uncompressedSize > maxUncompressedSize)
				{
				return false;
				}

			uncompressedBlock.Reset (host.Allocate (uncompressedSize));
			
			uncompressedData = uncompressedBlock->Buffer_uint8 ();

			uLongf destLen = uncompressedSize;

			int zResult = ::uncompress (uncompressedBlock->Buffer_uint8 (),
										&destLen,
										compressedData + 4,
										compressedSize - 4);

			if (zResult != Z_OK)
				{
				return false;
				}

			if (destLen != (uLongf) uncompressedSize)
				{
				return false;
				}
				
			if (uncompressedCache)
				{
				uncompressedCache->Reset (uncompressedBlock.Release ());
				}

			}

		// Now read in the table data from the uncompressed stream.

		try
			{

			dng_stream stream (uncompressedData,
							   uncompressedSize);

			stream.SetLittleEndian ();
			
			stream.SetSniffer (host.Sniffer ());
			
			if (!GetStream (stream))
				{
				return false;
				}

			}
			
		catch (dng_exception &except)
			{
			
			if (host.IsTransientError (except.ErrorCode ()))
				{
				throw;
				}
				
			return false;
			
			}
			
		catch (...)
			{
			
			return false;
			
			}
		
		}
		
	// Simple uncompressed stream for this big table class.
	
	else
		{
		
		try
			{

			dng_stream stream (compressedData,
							   compressedSize);

			stream.SetLittleEndian ();
				
			stream.SetSniffer (host.Sniffer ());
			
			if (!GetStream (stream))
				{
				return false;
				}

			}
		
		catch (dng_exception &except)
			{
			
			if (host.IsTransientError (except.ErrorCode ()))
				{
				throw;
				}
				
			return false;
			
			}
			
		catch (...)
			{
			
			return false;
			
			}
		
		}

	// Force recomputation of fingerprint.

	RecomputeFingerprint ();

	return true;
	
	}

/*****************************************************************************/

void dng_big_table::ASCIItoBinary (dng_memory_allocator &allocator,
								   const char *sPtr,
								   uint32 sCount,
								   AutoPtr<dng_memory_block> &dBlock,
								   uint32 &dCount)
	{
	
	// This binary to text encoding is very similar to the Z85
	// encoding, but the exact character set has been adjusted to
	// encode more cleanly into XMP.

	static uint8 kDecodeTable [96] =
		{

		0xFF,	// space
		0x44,	// !
		0xFF,	// "
		0x54,	// #
		0x53,	// $
		0x52,	// %
		0xFF,	// &
		0x49,	// '
		0x4B,	// (
		0x4C,	// )
		0x46,	// *
		0x41,	// +
		0xFF,	// ,
		0x3F,	// -
		0x3E,	// .
		0x45,	// /

		0x00, 0x01, 0x02, 0x03, 0x04,	// 01234
		0x05, 0x06, 0x07, 0x08, 0x09,	// 56789

		0x40,	// :
		0xFF,	// ;
		0xFF,	// <
		0x42,	// =
		0xFF,	// >
		0x47,	// ?
		0x51,	// @

		0x24, 0x25, 0x26, 0x27, 0x28,	// ABCDE
		0x29, 0x2A, 0x2B, 0x2C, 0x2D,	// FGHIJ
		0x2E, 0x2F, 0x30, 0x31, 0x32,	// KLMNO
		0x33, 0x34, 0x35, 0x36, 0x37,	// PQRST
		0x38, 0x39, 0x3A, 0x3B, 0x3C,	// UVWXY
		0x3D,							// Z

		0x4D,	// [
		0xFF,	// backslash
		0x4E,	// ]
		0x43,	// ^
		0xFF,	// _
		0x48,	// `

		0x0A, 0x0B, 0x0C, 0x0D, 0x0E,	// abcde
		0x0F, 0x10, 0x11, 0x12, 0x13,	// fghij
		0x14, 0x15, 0x16, 0x17, 0x18,	// klmno
		0x19, 0x1A, 0x1B, 0x1C, 0x1D,	// pqrst
		0x1E, 0x1F, 0x20, 0x21, 0x22,	// uvwxy
		0x23,							// z

		0x4F,	// {
		0x4A,	// |
		0x50,	// }
		0xFF,	// ~
		0xFF	// del

		};
		
	dCount = 0;
	
	uint32 maxDecodedSize = SafeUint32Mult (SafeUint32Add (sCount, 4) / 5,
											4);

	dBlock.Reset (allocator.Allocate (maxDecodedSize));

	uint32 phase = 0;
	uint32 value;

	uint8 *dPtr = dBlock->Buffer_uint8 ();

	for (uint32 j = 0; j < sCount; j++)
		{

		uint8 e = (uint8) sPtr [j];

		if (e < 32 || e > 127)
			{
			continue;
			}

		uint32 d = kDecodeTable [e - 32];

		if (d > 85)
			{
			continue;
			}

		phase++;

		if (phase == 1)
			{
			value = d;
			}

		else if (phase == 2)
			{
			value += d * 85;
			}

		else if (phase == 3)
			{
			value += d * (85 * 85);
			}

		else if (phase == 4)
			{
			value += d * (85 * 85 * 85);
			}

		else
			{

			value += d * (85 * 85 * 85 * 85);

			dPtr [0] = (uint8) (value	   );
			dPtr [1] = (uint8) (value >>  8);
			dPtr [2] = (uint8) (value >> 16);
			dPtr [3] = (uint8) (value >> 24);

			dPtr += 4;

			dCount += 4;

			phase = 0;

			}

		}

	if (phase > 3)
		{

		dPtr [2] = (uint8) (value >> 16);

		dCount++;

		}

	if (phase > 2)
		{

		dPtr [1] = (uint8) (value >> 8);

		dCount++;

		}

	if (phase > 1)
		{

		dPtr [0] = (uint8) (value);

		dCount++;

		}

	}

/*****************************************************************************/

bool dng_big_table::DecodeFromString (dng_host &host,
									  const dng_string &block1)
	{

	// Decode the text to binary.

	AutoPtr<dng_memory_block> block2;

	uint32 compressedSize = 0;
	
	ASCIItoBinary (host.Allocator (),
				   block1.Get (),
				   block1.Length (),
				   block2,
				   compressedSize);
				   
	// Then decode table from the binary data.

	return DecodeFromBinary (host,
							 block2->Buffer_uint8 (),
							 compressedSize);

	}

/*****************************************************************************/

dng_memory_block* dng_big_table::EncodeAsBinary (dng_memory_allocator &allocator,
												 uint32 &compressedSize) const
	{

	// Stream to a binary block.

	AutoPtr<dng_memory_block> block1;

		{

		dng_memory_stream stream (allocator);

		stream.SetLittleEndian ();

		PutStream (stream, false);

		block1.Reset (stream.AsMemoryBlock (allocator));

		}
		
	// If we are not compressing this type, we are done.
	
	if (!UseCompression ())
		{
		
		compressedSize = block1->LogicalSize ();
		
		return block1.Release ();
		
		}

	// Compress the block.

	AutoPtr<dng_memory_block> block2;

		{

		uint32 uncompressedSize = block1->LogicalSize ();

		// CR-4208475 N-L13: route the zlib destination sizing through
		// SafeUint32Add so pathological in-memory big-table sizes cannot
		// wrap and under-allocate the compress2 destination buffer.

		uint32 safeCompressedSize =
			SafeUint32Add (SafeUint32Add (uncompressedSize,
										  uncompressedSize >> 8),
						   64u);

		block2.Reset (allocator.Allocate (SafeUint32Add (safeCompressedSize,
														 4u)));

		// Store uncompressed size in first four bytes of compressed block.

		uint8 *dPtr = block2->Buffer_uint8 ();

		dPtr [0] = (uint8) (uncompressedSize	  );
		dPtr [1] = (uint8) (uncompressedSize >>	 8);
		dPtr [2] = (uint8) (uncompressedSize >> 16);
		dPtr [3] = (uint8) (uncompressedSize >> 24);

		uLongf dCount = safeCompressedSize;

		int zResult = ::compress2 (dPtr + 4,
								   &dCount,
								   block1->Buffer_uint8 (),
								   uncompressedSize,
								   Z_DEFAULT_COMPRESSION);
								  
		if (zResult != Z_OK)
			{
			ThrowMemoryFull ();
			}

		// CR-4208475 N-L13: dCount is uLongf (>= 32 bits). Require it fits
		// in uint32 before narrowing, and route the + 4 through
		// SafeUint32Add so the header-byte addition cannot wrap.

		if (dCount > 0xFFFFFFFFu)
			{
			ThrowProgramError ("compress2 output too large for uint32");
			}

		compressedSize = SafeUint32Add (static_cast<uint32> (dCount), 4u);

		block1.Reset ();

		}
		
	return block2.Release ();

	}
		
/*****************************************************************************/

dng_memory_block* dng_big_table::EncodeAsString (dng_memory_allocator &allocator) const
	{

	// Get compressed binary data.
	
	uint32 compressedSize;

	AutoPtr<dng_memory_block> block2 (EncodeAsBinary (allocator, compressedSize));

	// Encode binary to text.

	AutoPtr<dng_memory_block> block3;

		{

		// This binary to text encoding is very similar to the Z85
		// encoding, but the exact character set has been adjusted to
		// encode more cleanly into XMP.

		static const char *kEncodeTable =
			"0123456789"
			"abcdefghij" 
			"klmnopqrst" 
			"uvwxyzABCD"
			"EFGHIJKLMN" 
			"OPQRSTUVWX" 
			"YZ.-:+=^!/" 
			"*?`'|()[]{"
			"}@%$#";

		// CR-4208475 N-L12: writer-side counterpart to the G-L1 ASCIItoBinary
		// fix. Route the encoded-size accumulation through SafeUint32Add so
		// a pathological compressedSize cannot wrap and under-allocate the
		// destination buffer before the encode loop writes into it.

		uint32 safeEncodedSize =
			SafeUint32Add (SafeUint32Add (compressedSize,
										  compressedSize >> 2),
						   SafeUint32Add (compressedSize >> 6,
										  16u));

		block3.Reset (allocator.Allocate (safeEncodedSize));

		uint8 *sPtr = block2->Buffer_uint8 ();

		sPtr [compressedSize	] = 0;
		sPtr [compressedSize + 1] = 0;
		sPtr [compressedSize + 2] = 0;

		uint8 *dPtr = block3->Buffer_uint8 ();

		while (compressedSize)
			{

			uint32 x0 = (((uint32) sPtr [0])	  ) +
						(((uint32) sPtr [1]) <<	 8) +
						(((uint32) sPtr [2]) << 16) +
						(((uint32) sPtr [3]) << 24);

			sPtr += 4;

			uint32 x1 = x0 / 85;

			*dPtr++ = kEncodeTable [x0 - x1 * 85];

			uint32 x2 = x1 / 85;

			*dPtr++ = kEncodeTable [x1 - x2 * 85];

			if (!--compressedSize)
				break;

			uint32 x3 = x2 / 85;

			*dPtr++ = kEncodeTable [x2 - x3 * 85];

			if (!--compressedSize)
				break;

			uint32 x4 = x3 / 85;

			*dPtr++ = kEncodeTable [x3 - x4 * 85];

			if (!--compressedSize)
				break;

			*dPtr++ = kEncodeTable [x4];

			compressedSize--;

			}

		*dPtr = 0;

		block2.Reset ();

		}

	return block3.Release ();

	}
		
/*****************************************************************************/

bool dng_big_table::ExtractFromCache (const dng_fingerprint &fingerprint)
	{

	if (dng_big_table_cache::Extract (fCache, fingerprint, *this))
		{

		fFingerprint = fingerprint;

		return true;

		}

	return false;
	
	}
		
/*****************************************************************************/

#if qDNGUseXMP

/*****************************************************************************/

bool dng_big_table::ReadTableFromXMP (const dng_xmp &xmp,
									  const char *ns,
									  const dng_fingerprint &fingerprint,
									  dng_big_table_storage *storage,
									  dng_abort_sniffer *sniffer)
	{
	
	// See if we can skip reading the table data, and just grab from cache.

	if (ExtractFromCache (fingerprint))
		{

		return true;

		}
		
	// Next see if we can get the table from the storage object.
	
	if (storage && storage->ReadTable (*this, fingerprint, xmp.Allocator ()))
		{
		
		return true;
		
		}

	// Not in cache nor storage, so we need to read from XMP.

	dng_host host (&xmp.Allocator (), sniffer);

	host.SniffForAbort ();
		
	dng_string tablePath;
	
	tablePath.Set ("Table_");
	
	tablePath.Append (dng_xmp::EncodeFingerprint (fingerprint).Get ());
	
	dng_string block1;
	
	if (!xmp.GetString (ns,
						tablePath.Get (),
						block1))
		{
		
		DNG_REPORT ("Missing big table data");
		
		return false;
		
		}
		
	host.SniffForAbort ();
		
	bool ok = DecodeFromString (host, block1);

	block1.Clear ();
		
	host.SniffForAbort ();
		
	// Validate fingerprint match. Only bother doing this if decoding
	// succeeded, otherwise we expect the fingerprint to be wrong and the
	// assert message is not helpful.

	if (ok)
		{
	
		DNG_ASSERT (Fingerprint () == fingerprint,
					"dng_big_table fingerprint mismatch");

		}
	
	// It worked!

	return ok;

	}
		
/*****************************************************************************/

bool dng_big_table::ReadFromXMP (const dng_xmp &xmp,
								 const char *ns,
								 const char *path,
								 dng_big_table_storage &storage,
								 dng_abort_sniffer *sniffer)
	{
	
	dng_fingerprint fingerprint;
	
	if (!xmp.GetFingerprint (ns, path, fingerprint))
		{
		
		return false;
		
		}
		
	// See if we can skip reading the table data, and just grab from cache.

	if (ExtractFromCache (fingerprint))
		{

		return true;

		}
		
	// Next see if we can get the table from the storage object.
	
	if (storage.ReadTable (*this, fingerprint, xmp.Allocator ()))
		{
		
		return true;
		
		}

	// Read in the table data. We already checked the storage object
	// (above), so pass in nullptr for 4th argument.

	if (ReadTableFromXMP (xmp, ns, fingerprint, nullptr, sniffer))
		{
		
		return true;
		
		}
		
	// Unable to find table data anywhere.	Notify storage object.
	
	storage.MissingTable (fingerprint);
	
	// Also make a note that this table is missing.
	
	SetMissing ();
		
	return false;
	
	}

/*****************************************************************************/

void dng_big_table::WriteToXMP (dng_xmp &xmp,
								const char *ns,
								const char *path,
								dng_big_table_storage &storage) const
	{
		
	const dng_fingerprint &fingerprint = Fingerprint ();
	
	if (!fingerprint.IsValid () || IsMissing ())
		{
		
		xmp.Remove (ns, path);
		
		return;
		
		}
	
	xmp.SetFingerprint (ns, path, fingerprint);
	
	// See if we can just use the storage object to store the table.
	
	if (storage.WriteTable (*this, fingerprint, xmp.Allocator ()))
		{
		
		return;
		
		}
	
	dng_string tablePath;
	
	tablePath.Set ("Table_");
	
	tablePath.Append (dng_xmp::EncodeFingerprint (fingerprint).Get ());
	
	if (xmp.Exists (ns, tablePath.Get ()))
		{
		
		return;
		
		}
		
	AutoPtr<dng_memory_block> block;
	
	block.Reset (EncodeAsString (xmp.Allocator ()));

	xmp.Set (ns,
			 tablePath.Get (),
			 block->Buffer_char ());

	}

/*****************************************************************************/

#endif  // qDNGUseXMP

/*****************************************************************************/

#if qDNGValidate

void dng_big_table::WriteUncompressedStream (dng_stream &stream) const
	{

	stream.SetLittleEndian ();

	PutStream (stream, false);

	}

#endif	// qDNGValidate

/*****************************************************************************/

bool dng_big_table_dictionary::HasTable (const dng_fingerprint &fingerprint) const
	{
	
	if (fMap.find (fingerprint) != fMap.end ())
		{
		
		return true;
		
		}
	
	return false;
	
	}
	
/*****************************************************************************/

bool dng_big_table_dictionary::GetTable (const dng_fingerprint &fingerprint,
										 dng_ref_counted_block &block) const
	{
	
	const auto it = fMap.find (fingerprint);
	
	if (it != fMap.end ())
		{
		
		block = it->second;
		
		return true;
		
		}
	
	return false;
	
	}
	
/*****************************************************************************/

void dng_big_table_dictionary::AddTable (const dng_fingerprint &fingerprint,
										 const dng_ref_counted_block &block)
	{
	
	if (fMap.find (fingerprint) == fMap.end ())
		{
		
		fMap.insert (std::pair<dng_fingerprint,
							   dng_ref_counted_block> (fingerprint,
													   block));
													   
		}
	
	}
	
/*****************************************************************************/

void dng_big_table_dictionary::CopyToDictionary
							   (dng_big_table_dictionary &dictionary) const

	{
	
	for (auto it = fMap.cbegin (); it != fMap.cend (); ++it)
		{
		
		dictionary.AddTable (it->first,
							 it->second);
			
		}
	
	}
	
/*****************************************************************************/

dng_big_table_index::dng_big_table_index ()
		
	:	fMap ()
	
	{
	
	}

/*****************************************************************************/

bool dng_big_table_index::HasEntry (const dng_fingerprint &fingerprint) const
	{
	
	return fMap.find (fingerprint) != fMap.end ();
	
	}

/*****************************************************************************/

bool dng_big_table_index::GetEntry (const dng_fingerprint &fingerprint,
									uint32 &tableSize,
									uint64 &tableOffset) const
	{
	
	auto it = fMap.find (fingerprint);
	
	if (it != fMap.end ())
		{
		
		tableSize	= it->second.fTableSize;
		tableOffset = it->second.fTableOffset;
		
		return true;
		
		}
	
	return false;
	
	}

/*****************************************************************************/

void dng_big_table_index::AddEntry (const dng_fingerprint &fingerprint,
									uint32 tableSize,
									uint64 tableOffset)
	{
	
	if (fMap.find (fingerprint) == fMap.end ())
		{
		
		struct IndexEntry entry;
		
		entry.fTableSize   = tableSize;
		entry.fTableOffset = tableOffset;
		
		fMap.insert (std::pair<dng_fingerprint,
							   IndexEntry> (fingerprint, entry));
		
		
		}
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

bool dng_big_table_group_index::GetEntry (const dng_fingerprint &groupDigest,
										  dng_fingerprint &instanceDigest) const
	{
	
	auto it = fMap.find (groupDigest);
	
	if (it != fMap.end ())
		{

		instanceDigest = it->second;
		
		return true;
		
		}
	
	return false;
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_big_table_storage::dng_big_table_storage ()
	{
	
	}

/*****************************************************************************/

dng_big_table_storage::~dng_big_table_storage ()
	{
	
	}
	
/*****************************************************************************/

bool dng_big_table_storage::ReadTable (dng_big_table & /* table */,
									   const dng_fingerprint & /* fingerprint */,
									   dng_memory_allocator & /* allocator */)
	{
	
	return false;
	
	}
	
/*****************************************************************************/

bool dng_big_table_storage::WriteTable (const dng_big_table &table,
										const dng_fingerprint & /* fingerprint */,
										dng_memory_allocator & /* allocator */)
	{
		
	if (table.IsEmbedNever ())
		{
		return true;
		}
	
	return false;
	
	}
	
/*****************************************************************************/

void dng_big_table_storage::MissingTable (const dng_fingerprint & /* fingerprint */)
	{
	
	}

/*****************************************************************************/

bool dng_big_table_storage::GroupToInstance (const dng_fingerprint & /* groupDigest */,
											 dng_fingerprint & /* instanceDigest */) const
	{
	
	return false;
	
	}

/*****************************************************************************/

dng_look_table::dng_look_table ()

	:	dng_big_table (&gLookTableCache)

	,	fData	()
	,	fAmount (1.0)

	{

	}

/*****************************************************************************/

dng_look_table::dng_look_table (const dng_look_table &table)

	:	dng_big_table (table)

	,	fData	(table.fData)
	,	fAmount (table.fAmount)

	{

	}

/*****************************************************************************/

dng_look_table & dng_look_table::operator= (const dng_look_table &table)
	{

	dng_big_table::operator= (table);

	fData	= table.fData;
	fAmount = table.fAmount;

	return *this;

	}

/*****************************************************************************/

dng_look_table::~dng_look_table ()
	{

	}

/*****************************************************************************/

void dng_look_table::Set (const dng_hue_sat_map &map,
						  uint32 encoding)
	{

	fData.fMap		= map;
	fData.fEncoding = encoding;
	
	fData.ComputeMonochrome ();
	
	RecomputeFingerprint ();

	}

/*****************************************************************************/

bool dng_look_table::IsValid () const
	{
	
	if (IsMissing ())
		{
		return false;
		}

	return fData.fMap.IsValid ();

	}

/*****************************************************************************/

void dng_look_table::SetInvalid ()
	{

	*this = dng_look_table ();

	}

/*****************************************************************************/

bool dng_look_table::GetStream (dng_stream &stream)
	{

	table_data data;

	if (stream.Get_uint32 () != btt_LookTable)
		{
		return false;
		}
		
	uint32 version = stream.Get_uint32 ();

	if (version != kLookTableVersion1 &&
		version != kLookTableVersion2)
		{
		ThrowBadFormat ("Unknown look table version");
		}

	uint32 hueDivisions = stream.Get_uint32 ();
	uint32 satDivisions = stream.Get_uint32 ();
	uint32 valDivisions = stream.Get_uint32 ();

	if (hueDivisions < 1 || hueDivisions > kMaxHueSamples ||
		satDivisions < 1 || satDivisions > kMaxSatSamples ||
		valDivisions < 1 || valDivisions > kMaxValSamples ||
		(dng_safe_uint32 (hueDivisions) *
		 dng_safe_uint32 (satDivisions) *
		 dng_safe_uint32 (valDivisions)).Get () > kMaxTotalSamples)
		{
		ThrowBadFormat ();
		}

	data.fMap.SetDivisions (hueDivisions,
							satDivisions,
							valDivisions);

	uint32 count = data.fMap.DeltasCount ();

	dng_hue_sat_map::HSBModify * deltas = data.fMap.GetDeltas ();
	
	for (uint32 index = 0; index < count; index++)
		{

		deltas->fHueShift = stream.Get_real32 ();
		deltas->fSatScale = stream.Get_real32 ();
		deltas->fValScale = stream.Get_real32 ();
		
		deltas++;

		}

	data.fMap.AssignNewUniqueRuntimeFingerprint ();

	data.fEncoding = stream.Get_uint32 ();
	
	if (data.fEncoding != encoding_Linear &&
		data.fEncoding != encoding_sRGB)
		{
		ThrowBadFormat ("Unknown look table encoding");
		}
		
	if (version != kLookTableVersion1)
		{
		
		data.fMinAmount = stream.Get_real64 ();
		data.fMaxAmount = stream.Get_real64 ();

		if (!std::isfinite (data.fMinAmount) ||
			!std::isfinite (data.fMaxAmount) ||
			data.fMinAmount < 0.0 || data.fMinAmount > 1.0 || data.fMaxAmount < 1.0)
			{
			ThrowBadFormat ("Invalid min/max amount for look table");
			}
		
		}
		
	else
		{
		
		data.fMinAmount = 1.0;
		data.fMaxAmount = 1.0;
		
		}

	data.ComputeMonochrome ();

	if (stream.Position () + 4 <= stream.Length ())
		{
		data.fFlags = stream.Get_uint32 ();
		}
		
	fData = data;
	
	return true;

	}

/*****************************************************************************/

void dng_look_table::PutStream (dng_stream &stream,
								bool /* forFingerprint */) const
	{

	DNG_REQUIRE (IsValid (), "Invalid Look Table");

	stream.Put_uint32 (btt_LookTable);
	
	uint32 version = kLookTableVersion1;
	
	if (fData.fMinAmount != 1.0 ||
		fData.fMaxAmount != 1.0)
		{
		version = kLookTableVersion2;
		}

	stream.Put_uint32 (version);

	uint32 hueDivisions;
	uint32 satDivisions;
	uint32 valDivisions;

	fData.fMap.GetDivisions (hueDivisions,
							 satDivisions,
							 valDivisions);

	stream.Put_uint32 (hueDivisions);
	stream.Put_uint32 (satDivisions);
	stream.Put_uint32 (valDivisions);

	uint32 count = fData.fMap.DeltasCount ();

	const dng_hue_sat_map::HSBModify * deltas = fData.fMap.GetConstDeltas ();

	for (uint32 index = 0; index < count; index++)
		{

		stream.Put_real32 (deltas->fHueShift);
		stream.Put_real32 (deltas->fSatScale);
		stream.Put_real32 (deltas->fValScale);

		deltas++;

		}

	stream.Put_uint32 (fData.fEncoding);

	if (version != kLookTableVersion1)
		{
		
		stream.Put_real64 (fData.fMinAmount);
		stream.Put_real64 (fData.fMaxAmount);

		}
		
	if (fData.fFlags != 0)
		{
		
		stream.Put_uint32 (fData.fFlags);
		
		}
		
	}

/*****************************************************************************/

dng_rgb_table::dng_rgb_table ()

	:	dng_big_table (&gRGBTableCache)

	,	fData	()
	,	fAmount (1.0)

	{

	}

/*****************************************************************************/

dng_rgb_table::dng_rgb_table (const dng_rgb_table &table)

	:	dng_big_table (table)

	,	fData	(table.fData)
	,	fAmount (table.fAmount)

	{

	}

/*****************************************************************************/

dng_rgb_table & dng_rgb_table::operator= (const dng_rgb_table &table)
	{

	dng_big_table::operator= (table);

	fData	= table.fData;
	fAmount = table.fAmount;

	return *this;

	}

/*****************************************************************************/

dng_rgb_table::~dng_rgb_table ()
	{

	}

/*****************************************************************************/

bool dng_rgb_table::IsValid () const
	{

	if (IsMissing ())
		{
		return false;
		}

	// If table itself is invalid, then invalid.

	if (fData.fDimensions == 0)
		return false;

	// If table has some effect, then valid.

	if (fAmount > 0.0)
		return true;

	// Does the matrix itself do any clipping?

	if (fData.fPrimaries == primaries_ProPhoto ||
		fData.fGamut	 == gamut_extend	   )
		return false;

	// Table is a NOP but there is some gamut clipping.

	return true;

	}

/*****************************************************************************/

void dng_rgb_table::SetInvalid ()
	{

	*this = dng_rgb_table ();

	}

/*****************************************************************************/

void dng_rgb_table::Set (uint32 dimensions,
						 uint32 divisions,
						 dng_ref_counted_block samples)
	{

	if (dimensions == 1)
		{

		if (divisions < kMinDivisions1D ||
			divisions > kMaxDivisions1D)
			{

			ThrowProgramError ("Bad 1D divisions");

			}

		if (samples.LogicalSize () !=
			SafeUint32Mult (divisions, 4,
							(uint32) sizeof (uint16)))
			{

			ThrowProgramError ("Bad 1D sample count");

			}

		}

	else if (dimensions == 3)
		{

		if (divisions < kMinDivisions3D ||
			divisions > kMaxDivisions3D_InMemory)
			{

			ThrowProgramError ("Bad 3D divisions");

			}

		if (samples.LogicalSize () !=
			SafeUint32Mult (divisions, divisions, divisions,
							4 * (uint32) sizeof (uint16)))
			{

			ThrowProgramError ("Bad 3D sample count");

			}

		}

	else
		{

		ThrowProgramError ("Bad dimensions");

		}

	fData.fDimensions = dimensions;

	fData.fDivisions = divisions;

	fData.fSamples = samples;

	fData.ComputeMonochrome ();

	RecomputeFingerprint ();

	}

/*****************************************************************************/

bool dng_rgb_table::GetStream (dng_stream &stream)
	{

	table_data data;

	if (stream.Get_uint32 () != btt_RGBTable)
		{
		return false;
		}

	if (stream.Get_uint32 () != kRGBTableVersion)
		{
		ThrowBadFormat ("Unknown RGB table version");
		}

	data.fDimensions = stream.Get_uint32 ();

	data.fDivisions = stream.Get_uint32 ();

	if (data.fDimensions == 1)
		{

		if (data.fDivisions < kMinDivisions1D ||
			data.fDivisions > kMaxDivisions1D)
			{
			ThrowBadFormat ("Invalid 1D divisions");
			}

		}

	else if (data.fDimensions == 3)
		{

		if (data.fDivisions < kMinDivisions3D ||
			data.fDivisions > kMaxDivisions3D)
			{
			ThrowBadFormat ("Invalid 3D divisions");
			}

		}

	else
		{
		ThrowBadFormat ("Invalid dimensions");
		}

	uint16 nopValue [kMaxDivisions1D > kMaxDivisions3D ? kMaxDivisions1D
													   : kMaxDivisions3D];

	for (uint32 index = 0; index < data.fDivisions; index++)
		{

		nopValue [index] = (uint16)
						   ((index * 0x0FFFF + (data.fDivisions >> 1)) /
							(data.fDivisions - 1));

		}

	if (data.fDimensions == 1)
		{

		data.fSamples.Allocate (data.fDivisions * 4 * sizeof (uint16));

		uint16 *samples = data.fSamples.Buffer_uint16 ();

		for (uint32 index = 0; index < data.fDivisions; index++)
			{

			samples [0] = stream.Get_uint16 () + nopValue [index];
			samples [1] = stream.Get_uint16 () + nopValue [index];
			samples [2] = stream.Get_uint16 () + nopValue [index];
			samples [3] = 0;

			samples += 4;

			}

		}

	else
		{

		data.fSamples.Allocate (SafeUint32Mult (data.fDivisions,
												data.fDivisions,
												data.fDivisions,
												4 * (uint32) sizeof (uint16)));

		uint16 *samples = data.fSamples.Buffer_uint16 ();

		for (uint32 rIndex = 0; rIndex < data.fDivisions; rIndex++)
			{

			for (uint32 gIndex = 0; gIndex < data.fDivisions; gIndex++)
				{

				for (uint32 bIndex = 0; bIndex < data.fDivisions; bIndex++)
					{

					samples [0] = stream.Get_uint16 () + nopValue [rIndex];
					samples [1] = stream.Get_uint16 () + nopValue [gIndex];
					samples [2] = stream.Get_uint16 () + nopValue [bIndex];
					samples [3] = 0;

					samples += 4;

					}

				}

			}

		}

	uint32 primaries = stream.Get_uint32 ();

	if (primaries >= primaries_count)
		{
		ThrowBadFormat ("Unknown RGB table primaries");
		}

	data.fPrimaries = (primaries_enum) primaries;

	uint32 gamma = stream.Get_uint32 ();

	if (gamma >= gamma_count)
		{
		ThrowBadFormat ("Unknown RGB table gamma");
		}

	data.fGamma = (gamma_enum) gamma;

	uint32 gamut = stream.Get_uint32 ();

	if (gamut >= gamut_count)
		{
		ThrowBadFormat ("Unknown RGB table gamut processing option");
		}

	data.fGamut = (gamut_enum) gamut;

	data.fMinAmount = stream.Get_real64 ();
	data.fMaxAmount = stream.Get_real64 ();

	if (!std::isfinite (data.fMinAmount) ||
		!std::isfinite (data.fMaxAmount) ||
		data.fMinAmount < 0.0 || data.fMinAmount > 1.0 || data.fMaxAmount < 1.0)
		{
		ThrowBadFormat ("Invalid min/max amount for RGB table");
		}
		
	data.ComputeMonochrome ();

	if (stream.Position () + 4 <= stream.Length ())
		{
		data.fFlags = stream.Get_uint32 ();
		}
		
	fData = data;
	
	return true;

	}

/*****************************************************************************/

void dng_rgb_table::PutStream (dng_stream &stream,
							   bool /* forFingerprint */) const
	{

	DNG_REQUIRE (IsValid (), "Invalid RGB Table");

	stream.Put_uint32 (btt_RGBTable);

	stream.Put_uint32 (kRGBTableVersion);

	stream.Put_uint32 (fData.fDimensions);

	stream.Put_uint32 (fData.fDivisions);
	
	uint16 nopValue [kMaxDivisions1D > kMaxDivisions3D_InMemory ? kMaxDivisions1D
																: kMaxDivisions3D_InMemory];

	for (uint32 index = 0; index < fData.fDivisions; index++)
		{

		nopValue [index] = (uint16)
						   ((index * 0x0FFFF + (fData.fDivisions >> 1)) /
							(fData.fDivisions - 1));

		}

	const uint16 *samples = fData.fSamples.Buffer_uint16 ();

	if (fData.fDimensions == 1)
		{

		for (uint32 index = 0; index < fData.fDivisions; index++)
			{

			stream.Put_uint16 (samples [0] - nopValue [index]);
			stream.Put_uint16 (samples [1] - nopValue [index]);
			stream.Put_uint16 (samples [2] - nopValue [index]);

			samples += 4;

			}

		}

	else
		{

		for (uint32 rIndex = 0; rIndex < fData.fDivisions; rIndex++)
			{

			for (uint32 gIndex = 0; gIndex < fData.fDivisions; gIndex++)
				{

				for (uint32 bIndex = 0; bIndex < fData.fDivisions; bIndex++)
					{

					stream.Put_uint16 (samples [0] - nopValue [rIndex]);
					stream.Put_uint16 (samples [1] - nopValue [gIndex]);
					stream.Put_uint16 (samples [2] - nopValue [bIndex]);

					samples += 4;

					}

				}

			}

		}

	stream.Put_uint32 ((uint32) fData.fPrimaries);

	stream.Put_uint32 ((uint32) fData.fGamma);

	stream.Put_uint32 ((uint32) fData.fGamut);

	stream.Put_real64 (fData.fMinAmount);
	stream.Put_real64 (fData.fMaxAmount);

	if (fData.fFlags != 0)
		{
		
		stream.Put_uint32 (fData.fFlags);
		
		}
		
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_image_table_compression_info::~dng_image_table_compression_info ()
	{
	
	}

/*****************************************************************************/

void dng_image_table_compression_info::Compress (dng_host &host,
												 dng_stream &stream,
												 const dng_image &image) const
	{
	
	dng_image_writer writer;

	writer.WriteTIFFWithProfile (host,
								 stream,
								 image,
								 image.Planes () >= 3
									 ? piRGB
									 : piBlackIsZero,
								 image.PixelType () == ttShort
									 ? ccJPEG		// Lossless JPEG
									 : ccDeflate);
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_image_table_jxl_compression_info::dng_image_table_jxl_compression_info ()

	:	fEncodeSettings (new dng_jxl_encode_settings)

	{

	}

/*****************************************************************************/

void dng_image_table_jxl_compression_info::Compress (dng_host &host,
													 dng_stream &stream,
													 const dng_image &image) const
	{
	
	DNG_REQUIRE (fEncodeSettings.Get (),
				 "Missing encode settings");

	#if 1

	// Use TIFF container but with JXL compression. This is better for larger
	// images since we can encode tiles in parallel.

	host.SetJXLEncodeSettings (*fEncodeSettings);

	host.SetJXLColorSpaceInfo (fColorSpaceInfo);

	dng_image_writer writer;

	writer.WriteTIFFWithProfile (host,
								 stream,
								 image,
								 image.Planes () >= 3
									 ? piRGB
									 : piBlackIsZero,
								 ccJXL,
								 nullptr,	 // metadata
								 nullptr,	 // profile data
								 0,			 // profile size,
								 nullptr,	 // resolution
								 nullptr,	 // thumbnail
								 nullptr,	 // image resources
								 kMetadataSubset_All,
								 false,		 // has transparency
								 true,		 // allow big tiff
								 nullptr,	 // gain map,
								 nullptr,	 // gain map metadata block
								 fPreferHalfFloat);
	
	#else

	// Use JXL directly. 

	dng_jxl_color_space_info colorSpaceInfo;

	PreviewColorSpaceToJXLEncoding (previewColorSpace_MaxEnum,
									image.Planes (),
									colorSpaceInfo);

	EncodeJXL_Tile (host,
					stream,
					image,
					colorSpaceInfo,
					*fEncodeSettings);

	#endif
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_image_table::dng_image_table ()

	:	dng_big_table (&gImageTableCache)

	{

	}

/*****************************************************************************/

dng_image_table::dng_image_table (const dng_image_table &table)

	:	dng_big_table (table)

	,	fImage (table.fImage)

	,	fCompressedData (table.fCompressedData)

	,	fCompressionType (table.fCompressionType)

	{

	}

/*****************************************************************************/

dng_image_table & dng_image_table::operator= (const dng_image_table &table)
	{

	dng_big_table::operator= (table);

	fImage = table.fImage;

	fCompressedData = table.fCompressedData;

	fCompressionType = table.fCompressionType;
	
	return *this;

	}

/*****************************************************************************/

dng_image_table::~dng_image_table ()
	{
	
	}

/*****************************************************************************/

bool dng_image_table::IsValid () const
	{

	if (IsMissing ())
		{
		return false;
		}

	if (!fImage.get ())
		{
		return false;
		}

	return true;

	}

/*****************************************************************************/

void dng_image_table::SetInvalid ()
	{
	
	*this = dng_image_table ();

	RecomputeFingerprint ();

	}

/*****************************************************************************/

void dng_image_table::SetImage (const dng_image *image,
								const dng_image_table_compression_info *compressionInfo,
								dng_abort_sniffer *sniffer)
	{
	
	fImage = std::shared_ptr<const dng_image> (image);

	fCompressedData.reset ();

	if (compressionInfo && (compressionInfo->Type () > 0))
		CompressImage (*compressionInfo,
					   sniffer);

	RecomputeFingerprint ();

	}

/*****************************************************************************/

void dng_image_table::SetImage (const std::shared_ptr<const dng_image> &image,
								const dng_image_table_compression_info *compressionInfo,
								dng_abort_sniffer *sniffer)
	{

	if (fImage != image)
		{

		fImage = image;

		fCompressedData.reset ();
	
		if (compressionInfo && (compressionInfo->Type () > 0))
			CompressImage (*compressionInfo,
						   sniffer);

		RecomputeFingerprint ();

		}

	}

/*****************************************************************************/

dng_host * dng_image_table::MakeHost (dng_abort_sniffer *sniffer) const
	{
	
	return new dng_host (nullptr, sniffer);
	
	}

/*****************************************************************************/

dng_fingerprint dng_image_table::ComputeFingerprint () const
	{

	// If we're using lossy compression, then fingerprint the (compressed)
	// stream itself, including the header.

	if (fCompressedData)
		{
		
		AutoPtr<dng_host> host (MakeHost (nullptr));
		
		dng_memory_stream tempStream (host->Allocator ());

		tempStream.SetLittleEndian ();
		
		PutStream (tempStream, true);

		tempStream.Flush ();

		tempStream.SetReadPosition (0);
		
		dng_md5_printer_le_stream stream;

		tempStream.CopyToStream (stream,
								 tempStream.Length ());
		
		auto digest = stream.Result ();

		return digest;
		
		}

	// Otherwise fingerprint the image itself (uncompressed case).

	if (fImage.get ())
		{
		
		AutoPtr<dng_host> host (MakeHost (nullptr));
		
		dng_md5_printer_le_stream stream;

		stream.Put_uint32 (btt_ImageTable);

		stream.Put_uint32 (kImageTableVersion);

		stream.Put_int32 (fImage->Bounds ().t);
		stream.Put_int32 (fImage->Bounds ().l);
		stream.Put_int32 (fImage->Bounds ().b);
		stream.Put_int32 (fImage->Bounds ().r);
		
		stream.Put_uint32 (fImage->Planes ());

		stream.Put_uint32 (fImage->PixelType ());

		dng_fingerprint imageDigest = dng_negative::FindFastImageDigest
													(*host,
													 *fImage,
													 fImage->PixelType ());
													 
		stream.Put (imageDigest);

		return stream.Result ();

		}
	
	return dng_fingerprint ();
	
	}

/*****************************************************************************/

static void CheckImageTableIFD (const dng_ifd &ifd)
	{
	
	dng_rect bounds = ifd.Bounds ();

	if (bounds.ShortSide () < 1 ||
		bounds.LongSide	 () > kMaxImageSide)
		{
		ThrowBadFormat ();
		}

	uint32 planes = ifd.fSamplesPerPixel;

	if (planes < 1 || planes > kMaxColorPlanes)
		{
		ThrowBadFormat ();
		}

	uint32 pixelType = ifd.PixelType ();

	if (pixelType != ttByte	 &&
		pixelType != ttShort &&
		pixelType != ttFloat)
		{
		ThrowBadFormat ();
		}

	}

/*****************************************************************************/

bool dng_image_table::GetStream (dng_stream &stream)
	{
	
	AutoPtr<dng_host> host (MakeHost (stream.Sniffer ()));
	
	if (stream.Get_uint32 () != btt_ImageTable)
		{
		return false;
		}

	if (stream.Get_uint32 () != kImageTableVersion)
		{
		ThrowBadFormat ("Unknown image table version");
		}
		
	dng_point imageTL;
	
	imageTL.v = stream.Get_int32 ();
	imageTL.h = stream.Get_int32 ();
	
	if (!stream.Data ())
		{
		ThrowProgramError ("Not a memory stream");
		}
	
	dng_stream subStream ((uint8 *) stream.Data () + stream.Position (),
						  (uint32) (stream.Length () - stream.Position ()));
						  
	subStream.SetSniffer (stream.Sniffer ());

	AutoPtr<dng_image> image;

	dng_info jxlInfo;

	if (ParseJXL (*host,
				  subStream,
				  jxlInfo,
				  true,						 // bare codestream
				  false))					 // container
		{

		// Read as JXL.

		if (jxlInfo.IFDCount () < 1)
			{
			ThrowBadFormat ();
			}

		CheckImageTableIFD (*jxlInfo.fIFD [0]);
		
		subStream.SetReadPosition (0);

		dng_jxl_decoder decoder;

		decoder.fNeedBoxMeta = false;

		decoder.Decode (*host, subStream);

		image.Reset (decoder.fMainImage.Release ());

		fCompressionType = ccJXL;
		
		}

	else
		{

		// Read as TIFF.

		dng_info info;
		
		info.Parse (*host, subStream);

		info.PostParse (*host);

		if (info.fMagic != 42)
			{
			ThrowBadFormat ();
			}

		if (info.IFDCount () < 1)
			{
			ThrowBadFormat ();
			}

		const dng_ifd &ifd = *info.fIFD [0];

		CheckImageTableIFD (ifd);

		image.Reset (host->Make_dng_image (ifd.Bounds (),
										   ifd.fSamplesPerPixel,
										   ifd.PixelType ()));
												   
		ifd.ReadImage (*host,
					   subStream,
					   *image);

		fCompressionType = ifd.fCompression;
		
		} // JXL vs TIFF

	// Grab a copy of the (lossy) compressed data.

	if (fCompressionType == ccJXL)
		{

		subStream.SetReadPosition (0);

		fCompressedData.reset (subStream.AsMemoryBlock (host->Allocator ()));

		}
		
	if (imageTL != dng_point (0, 0))
		{
		
		AutoPtr<dng_image> tempImage (image->Clone ());
		
		tempImage->Offset (imageTL);
		
		image.Reset (tempImage.Release ());
		
		}
					  
	fImage = std::shared_ptr<const dng_image> (image.Release ());
	
	return true;
		
	}

/*****************************************************************************/

void dng_image_table::PutStream (dng_stream &stream,
								 bool forFingerprint) const
	{

	dng_image_table_compression_info defaultInfo;

	PutCompressedStream (stream,
						 forFingerprint,
						 defaultInfo);

	}
	
/*****************************************************************************/

void dng_image_table::PutCompressedStream (dng_stream &stream,
										   bool /* forFingerprint */,
										   const dng_image_table_compression_info &info) const
	{

	AutoPtr<dng_host> host (MakeHost (stream.Sniffer ()));
	
	stream.Put_uint32 (btt_ImageTable);

	stream.Put_uint32 (kImageTableVersion);

	stream.Put_int32 (fImage->Bounds ().t);
	stream.Put_int32 (fImage->Bounds ().l);
	
	const dng_image *tiffImage = fImage.get ();
	
	AutoPtr<dng_image> tempImage;

	if (tiffImage->Bounds ().TL () != dng_point (0, 0))
		{
		
		tempImage.Reset (tiffImage->Clone ());
		
		tempImage->Offset (-fImage->Bounds ().TL ());
		
		tiffImage = tempImage.Get ();
		
		}
	
	// If we have compressed data, then just write that directly.

	if (fCompressedData)
		{

		// printf ("--- writing compressed\n");
		
		stream.Put (fCompressedData->Buffer		 (),
					fCompressedData->LogicalSize ());
		
		}

	// Otherwise use the provided compression info.

	else 
		{

		dng_memory_stream tempStream (host->Allocator ());

		tempStream.SetLittleEndian ();
		
		info.Compress (*host,
					   tempStream,
					   *tiffImage);

		// Remember the compressed data.

		if (info.Type () != 0)
			{
			
			tempStream.SetReadPosition (0);

			fCompressedData.reset (tempStream.AsMemoryBlock (host->Allocator ()));
			
			}

		tempStream.SetReadPosition (0);

		tempStream.CopyToStream (stream, tempStream.Length ());

		}
		
	}

/*****************************************************************************/

void dng_image_table::CompressImage (const dng_image_table_compression_info &info,
									 dng_abort_sniffer *sniffer)
	{

	fCompressionType = info.Type ();

	if (!fImage			  ||
		info.Type () == 0 ||
		info.Type () == ccUncompressed)
		{
		return;
		}

	// Force the image go thru a write-read (encode-decode) cycle so that the
	// image stored in this object reflects errors introduced by the lossy
	// codec.

	AutoPtr<dng_host> host (MakeHost (sniffer));

	dng_memory_stream tempStream (host->Allocator ());

	tempStream.SetLittleEndian ();

	tempStream.SetSniffer (sniffer);

	PutCompressedStream (tempStream,
						 false,
						 info);

	// Cannot just reset tempStream read position to 0 and call GetStream on
	// it directly because dng_image_table::GetStream implementation currently
	// relies on the stream having the data in one contiguous chunk. So make a
	// copy of the data and then feed the result to GetStream.

	AutoPtr<dng_memory_block> block (tempStream.AsMemoryBlock (host->Allocator ()));

	dng_stream readStream (block->Buffer (),
						   block->LogicalSize ());

	readStream.SetSniffer (sniffer);

	GetStream (readStream);

	fCompressionType = info.Type ();

	}

/*****************************************************************************/

void dng_image_table::SetData (const dng_image_table_data &data)
	{
	
	fImage           = data.fImage;

	fCompressedData  = data.fCompressedData;

	fCompressionType = data.fCompressionType;
	
	}

/*****************************************************************************/

void dng_image_table::GetData (dng_image_table_data &data) const
	{
	
	data.fImage			  = fImage;

	data.fCompressedData  = fCompressedData;

	data.fCompressionType = fCompressionType;
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_packed_image_table::dng_packed_image_table ()
	
	:	dng_big_table (&gPackedImageTableCache)
		
	{
	
	}
		
/*****************************************************************************/

dng_packed_image_table::dng_packed_image_table (const dng_packed_image_table &table)

	:	dng_big_table (table)
		
	,	fTableDigest  (table.fTableDigest)
	,	fTable		  (table.CloneTable ())
	,	fBlock		  (table.fBlock)

	,	fSize		  (table.fSize)
	,	fPlanes		  (table.fPlanes)
	,	fPixelType	  (table.fPixelType)
		
	{
	
	}

/*****************************************************************************/

dng_packed_image_table & dng_packed_image_table::operator= (const dng_packed_image_table &table)
	{

	dng_big_table::operator= (table);

	fTableDigest = table.fTableDigest;
	fBlock		 = table.fBlock;

	fTable.reset (table.CloneTable ());

	fSize	   = table.fSize;
	fPlanes	   = table.fPlanes;
	fPixelType = table.fPixelType;
			
	return *this;

	}

/*****************************************************************************/

const dng_image_table & dng_packed_image_table::Table () const
	{
	
	DNG_REQUIRE (fTable, "Invalid table");
	
	return *fTable;
	
	}

/*****************************************************************************/

bool dng_packed_image_table::IsValid () const
	{

	return (fTableDigest.IsValid () && 
			((fTable && fTable->IsValid ()) || (fBlock != nullptr)));

	}

/*****************************************************************************/

uint32 dng_packed_image_table::PackedBytes () const
	{
			
	return fBlock ? fBlock->LogicalSize () : 0;
			
	}

/*****************************************************************************/

dng_host * dng_packed_image_table::MakeHost (dng_abort_sniffer *sniffer) const
	{
	
	return new dng_host (nullptr, sniffer);
	
	}

/*****************************************************************************/

dng_image_table * dng_packed_image_table::MakeTable () const
	{
	
	return new dng_image_table;
	
	}

/*****************************************************************************/

dng_image_table * dng_packed_image_table::CloneTable () const
	{
	
	return fTable ? (new dng_image_table (*fTable)) : nullptr;
	
	}

/*****************************************************************************/

void dng_packed_image_table::Clear ()
	{
			
	fTableDigest.Clear ();

	fTable.reset ();

	fBlock.reset ();

	fSize = dng_point ();

	fPlanes = 0;

	fPixelType = 0;
			
	}

/*****************************************************************************/

void dng_packed_image_table::ClearPackedData ()
	{
	
	fBlock.reset ();
	
	}

/*****************************************************************************/

void dng_packed_image_table::SetImage (const dng_image *image,
									   const dng_image_table_compression_info *compressionInfo,
									   dng_abort_sniffer *sniffer)
	{

	if (!image)
		{
		Clear ();
		return;
		}

	AutoPtr<dng_image_table> table (MakeTable ());

	fSize	   = image->Size ();
	fPlanes	   = image->Planes ();
	fPixelType = image->PixelType ();

	table->SetImage (image, compressionInfo, sniffer);

	fTable.reset (table.Release ());

	fTableDigest = fTable->Fingerprint ();

	ClearPackedData ();

	RecomputeFingerprint ();
		
	}

/*****************************************************************************/

void dng_packed_image_table::SetImage (const std::shared_ptr<const dng_image> &image,
									   const dng_image_table_compression_info *compressionInfo,
									   dng_abort_sniffer *sniffer)
	{

	if (!image)
		{
		Clear ();
		return;
		}

	if (fTable && (fTable->ShareImage () == image))
		return;

	fSize	   = image->Size ();
	fPlanes	   = image->Planes ();
	fPixelType = image->PixelType ();
		
	AutoPtr<dng_image_table> table (MakeTable ());

	table->SetImage (image, compressionInfo, sniffer);

	fTable.reset (table.Release ());

	fTableDigest = fTable->Fingerprint ();

	ClearPackedData ();

	RecomputeFingerprint ();
		
	}

/*****************************************************************************/

void dng_packed_image_table::Unpack (dng_abort_sniffer *sniffer)
	{

	DNG_REQUIRE (fBlock,
				 "Cannot unpack invalid block");

	AutoPtr<dng_host> host (MakeHost (sniffer));
			
	AutoPtr<dng_image_table> table (MakeTable ());

	if (!table->DecodeFromBinary (*host,
								  fBlock->Buffer_uint8 (),
								  fBlock->LogicalSize ()))
		{

		ThrowBadFormat ("Could not Unpack block to cr_image_table");
				
		}

	fTable.reset (table.Release ());

	if (fTable->Fingerprint () != fTableDigest)
		{
				
		DNG_REPORT ("fTableDigest does not match table fingerprint");
				
		}

	#if 0
	fSize	   = Image ().Size ();
	fPlanes	   = Image ().Planes ();
	fPixelType = Image ().Size ();
	#endif

	ClearPackedData ();
			
	}

/*****************************************************************************/

void dng_packed_image_table::Pack (dng_abort_sniffer *sniffer)
	{

	DNG_REQUIRE (IsValidUnpacked (),
				 "Cannot pack invalid table");

	AutoPtr<dng_host> host (MakeHost (sniffer));

	uint32 compressedSize = 0;

	fBlock.reset (fTable->EncodeAsBinary (host->Allocator (),
										  compressedSize));

	fTable.reset ();

	}

/*****************************************************************************/

bool dng_packed_image_table::GetStream (dng_stream &stream)
	{

	if (stream.Get_uint32 () != btt_PackedImageTable)
		return false;

	if (stream.Get_uint32 () != kPackedImageTableVersion)
		ThrowBadFormat ("Unknown packed image table version");

	// Clear the table.

	fTable.reset ();

	// Read digest.

	stream.Get (fTableDigest);

	// Read size.

	fSize.h = int32 (stream.Get_uint32 ());
	fSize.v = int32 (stream.Get_uint32 ());

	if (fSize.h <= 0)
		ThrowBadFormat ("Invalid size.h in packed image table");

	if (fSize.v <= 0)
		ThrowBadFormat ("Invalid size.v in packed image table");

	// Read planes.

	fPlanes = stream.Get_uint32 ();

	if (fPlanes == 0 || fPlanes > kMaxColorPlanes)
		ThrowBadFormat ("Invalid planes in packed image table");

	// Read pixel type.

	fPixelType = stream.Get_uint32 ();

	if (fPixelType == 0)
		ThrowBadFormat ("Invalid pixel type in packed image table");

	// Read bytes of image table. Currently limit compressed image tables
	// to 32-bit. 

	const uint32 bytes = stream.Get_uint32 ();

	if (stream.Position () > stream.Length () ||
		bytes > stream.Length () - stream.Position ())
		{
		ThrowBadFormat ("Invalid packed image table byte count");
		}

	AutoPtr<dng_host> host (MakeHost (stream.Sniffer ()));

	AutoPtr<dng_memory_block> block (host->Allocate (bytes));

	stream.Get (block->Buffer (), bytes);

	fBlock.reset (block.Release ());

	return true;

	}

/*****************************************************************************/

void dng_packed_image_table::PutStream (dng_stream &stream,
										bool /* forFingerprint */) const
	{

	DNG_REQUIRE (IsValid (),
				 "Called PutStream on invalid packed image table");

	// Write Big Table Type.

	stream.Put_uint32 (btt_PackedImageTable);

	// Write Version.

	stream.Put_uint32 (kPackedImageTableVersion);

	// Write digest.

	stream.Put (fTableDigest);

	// Write properties.

	stream.Put_uint32 (uint32 (fSize.h));
	stream.Put_uint32 (uint32 (fSize.v));

	stream.Put_uint32 (fPlanes);

	stream.Put_uint32 (fPixelType);

	// If the block is valid, just use that.

	std::shared_ptr<const dng_memory_block> block;

	if (fBlock)
		block = fBlock;

	// Otherwise, first encode the table into a temporary block.

	else
		{

		DNG_REQUIRE (fTable, "missing fTable");

		AutoPtr<dng_host> host (MakeHost (stream.Sniffer ()));

		uint32 compressedSize = 0;

		block.reset 
			(fTable->EncodeAsBinary (host->Allocator (),
									 compressedSize));

		}

	DNG_REQUIRE (block,
				 "Missing block");

	// Write byte length.

	stream.Put_uint32 (block->LogicalSize ());

	// Write data.

	stream.Put (block->Buffer (),
				block->LogicalSize ());

	}
		
/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_masked_rgb_table::dng_masked_rgb_table ()
	{
	
	}

/*****************************************************************************/

dng_masked_rgb_table::dng_masked_rgb_table (dng_string tableSemanticName,
											uint32 pixelType,
											const dng_rgb_table &table)

	:	fTableSemanticName (tableSemanticName)

	,	fPixelType (pixelType)
		
	,	fTable (table)
		
	{

	Validate ();
	
	}

/*****************************************************************************/

void dng_masked_rgb_table::Validate () const
	{

	// Name cannot be longer than 16-bit.

	if (fTableSemanticName.Length () > 65535)
		{
		ThrowBadFormat ("TableSemanticName too long in RGBTables");
		}

	// Check PixelType.

	CheckPixelType (fPixelType);
	
	// Check Divisions.

	CheckDivisions (fTable.Divisions ());

	// Check GammaEncoding.

	CheckGammaEncoding (fTable.Gamma ());

	// Check ColorPrimaries.

	CheckColorPrimaries (fTable.Primaries ());

	// Check GamutExtension.

	CheckGamutExtension (fTable.Gamut ());

	// Must be 3D table.

	DNG_REQUIRE (fTable.Dimensions () == 3,
				 "RGBTables must have dimension value of 3");

	// For now don't perform any validation on the table data itself.
	
	}

/*****************************************************************************/

static uint8 ColorPrimariesEnumToRGBTablesTagValue
	(dng_rgb_table::primaries_enum value)
	{
	
	switch (value)
		{
		
		case dng_rgb_table::primaries_sRGB:		return 0;
		case dng_rgb_table::primaries_Adobe:	return 1;
		case dng_rgb_table::primaries_P3:		return 2;
		case dng_rgb_table::primaries_Rec2020:	return 3;
		case dng_rgb_table::primaries_ProPhoto: return 4;

		default:
			ThrowProgramError ("unsupported primaries_enum value");
			break;
		
		}

	return 0;								 // sRGB
	
	}

/*****************************************************************************/

static dng_rgb_table::primaries_enum ColorPrimariesValueToEnum (uint32 x)
	{
	
	switch (x)
		{
		
		case 0: return dng_rgb_table::primaries_sRGB;
		case 1: return dng_rgb_table::primaries_Adobe;
		case 2: return dng_rgb_table::primaries_P3;
		case 3: return dng_rgb_table::primaries_Rec2020;
		case 4: return dng_rgb_table::primaries_ProPhoto;

		default:
			{
			ThrowProgramError ("unsupported ColorPrimaries value");
			break;
			}
		
		}

	return dng_rgb_table::primaries_sRGB;
	
	}

/*****************************************************************************/

static uint32 GamutExtensionEnumToRGBTablesTagValue (dng_rgb_table::gamut_enum value)
	{
	
	switch (value)
		{
		
		case dng_rgb_table::gamut_clip:	  return 0;
		case dng_rgb_table::gamut_extend: return 1;

		default:
			ThrowProgramError ("unsupported gamut_enum value");
			break;
		
		}

	return 1;								 // extend
	
	}

/*****************************************************************************/

static dng_rgb_table::gamut_enum GamutValueToEnum (uint32 x)
	{

	switch (x)
		{
		
		case 0: return dng_rgb_table::gamut_clip;
		case 1: return dng_rgb_table::gamut_extend;

		default:
			{
			ThrowProgramError ("Unexpected GamutExtension value");
			break;
			}
			
		}
	
	return dng_rgb_table::gamut_extend;
	
	}

/*****************************************************************************/

static uint8 GammaEnumToRGBTablesTagValue (dng_rgb_table::gamma_enum value)
	{
	
	switch (value)
		{
		
		case dng_rgb_table::gamma_Linear:  return 0;
		case dng_rgb_table::gamma_sRGB:	   return 1;
		case dng_rgb_table::gamma_1_8:	   return 2;
		case dng_rgb_table::gamma_2_2:	   return 3;
		case dng_rgb_table::gamma_Rec2020: return 4;

		default:
			ThrowProgramError ("unsupported gamma_enum value");
			break;
		
		}

	return 1;								 // sRGB
	
	}

/*****************************************************************************/

static dng_rgb_table::gamma_enum GammaValueToEnum (uint32 x)
	{

	switch (x)
		{
		
		case 0: return dng_rgb_table::gamma_Linear;
		case 1: return dng_rgb_table::gamma_sRGB;
		case 2: return dng_rgb_table::gamma_1_8;
		case 3: return dng_rgb_table::gamma_2_2;
		case 4: return dng_rgb_table::gamma_Rec2020;

		default:
			{
			ThrowProgramError ("Unexpected GammaEncoding value");
			break;
			}
			
		}
	
	return dng_rgb_table::gamma_sRGB;
	
	}

/*****************************************************************************/

void dng_masked_rgb_table::CheckDivisions (uint32 divisions)
	{

	if (divisions < 2 || divisions > 32)
		{
		ThrowBadFormat ("Invalid Divisions in RGBTables");
		}
	
	}

/*****************************************************************************/

void dng_masked_rgb_table::CheckPixelType (uint32 pixelType)
	{

	if (pixelType > 2)
		{
		ThrowBadFormat ("Invalid PixelType in RGBTables");
		}
	
	}

/*****************************************************************************/

void dng_masked_rgb_table::CheckGammaEncoding (dng_rgb_table::gamma_enum gamma)
	{

	switch (gamma)
		{

		// Enumerate the ones supported in the tag.
		
		case dng_rgb_table::gamma_Linear:
		case dng_rgb_table::gamma_sRGB:
		case dng_rgb_table::gamma_1_8:
		case dng_rgb_table::gamma_2_2:
		case dng_rgb_table::gamma_Rec2020:
			break;

		// Reject everything else.

		default:
			ThrowBadFormat ("Unsupported GammaEncoding in RGBTables");
			
		}
	
	}

/*****************************************************************************/

void dng_masked_rgb_table::CheckColorPrimaries (dng_rgb_table::primaries_enum primaries)
	{
	
	switch (primaries)
		{
		
		// Enumerate the ones supported in the tag.
		
		case dng_rgb_table::primaries_Adobe:
		case dng_rgb_table::primaries_P3:
		case dng_rgb_table::primaries_ProPhoto:
		case dng_rgb_table::primaries_Rec2020:
		case dng_rgb_table::primaries_sRGB:
			break;
		
		// Reject everything else.

		default:
			ThrowBadFormat ("Unsupported ColorPrimaries in RGBTables");
			
		}

	}

/*****************************************************************************/

void dng_masked_rgb_table::CheckGamutExtension (dng_rgb_table::gamut_enum gamut)
	{
	
	switch (gamut)
		{
		
		// Enumerate the ones supported in the tag.
		
		case dng_rgb_table::gamut_clip:
		case dng_rgb_table::gamut_extend:
			break;
		
		// Reject everything else.

		default:
			ThrowBadFormat ("Unsupported GamutExtension in RGBTables");
			
		}

	}

/*****************************************************************************/

static void RequireRGBTablesBytes (dng_stream &stream,
								   uint64 tagEnd,
								   uint32 byteCount)
	{

	if (stream.Position () > tagEnd ||
		byteCount > tagEnd - stream.Position ())
		{
		ThrowBadFormat ("Truncated RGBTables tag");
		}

	}

/*****************************************************************************/

void dng_masked_rgb_table::GetStream (dng_host &host,
									  dng_stream &stream,
									  uint64 tagEnd)
	{
	
	// Read LengthTableSemanticName and TableSemanticName.

	RequireRGBTablesBytes (stream, tagEnd, 2);

	uint16 nameLen = stream.Get_uint16 ();

	RequireRGBTablesBytes (stream, tagEnd, nameLen);

	dng_memory_data nameData (nameLen + 1);

	stream.Get (nameData.Buffer (), nameLen);

	nameData.Buffer_uint8 () [nameLen] = 0;	 // add null-term char

	fTableSemanticName.Set (nameData.Buffer_char ());

	// Read Divisions.

	RequireRGBTablesBytes (stream, tagEnd, 5);

	uint32 divisions = (uint32) stream.Get_uint8 ();

	CheckDivisions (divisions);
	
	// Read PixelType.

	fPixelType = (uint32) stream.Get_uint8 ();

	CheckPixelType (fPixelType);

	// Read GammaEncoding.

	uint32 gamma = (uint32) stream.Get_uint8 ();

	auto gammaEnum = GammaValueToEnum (gamma);

	CheckGammaEncoding (gammaEnum);

	// Read ColorPrimaries.

	uint32 primaries = (uint32) stream.Get_uint8 ();

	auto primariesEnum = ColorPrimariesValueToEnum (primaries);

	CheckColorPrimaries (primariesEnum);
	
	// Read GamutExtension.

	uint32 gamut = (uint32) stream.Get_uint8 ();

	auto gamutEnum = GamutValueToEnum (gamut);

	CheckGamutExtension (gamutEnum);

	// Read samples.

	uint32 srcPixelSize = 1;

		 if (fPixelType == 1) srcPixelSize = 2;
	else if (fPixelType == 2) srcPixelSize = 4;

	uint32 srcBytes = divisions * divisions * divisions * 3 * srcPixelSize;

	uint32 dstBytes = divisions * divisions * divisions * 4 * 2;

	dng_ref_counted_block samples;

	RequireRGBTablesBytes (stream, tagEnd, srcBytes);

	samples.Allocate (dstBytes);

	uint16 *dst = samples.Buffer_uint16 ();

	const uint32 divs = divisions;

	// Read into a stored data block.

	fStoredData.reset (host.Allocate (srcBytes));

	stream.Get (fStoredData->Buffer (),
				srcBytes);
	
	if (fPixelType == 0)					 // u8
		{

		const uint8 *src = fStoredData->Buffer_uint8 ();

		constexpr uint16 scale8to16 = 257; // 65535 / 255
		
		for (uint32 rIndex = 0; rIndex < divs; rIndex++)
			{

			for (uint32 gIndex = 0; gIndex < divs; gIndex++)
				{

				for (uint32 bIndex = 0; bIndex < divs; bIndex++)
					{

					dst [0] = uint16 (src [0]) * scale8to16;
					dst [1] = uint16 (src [1]) * scale8to16;
					dst [2] = uint16 (src [2]) * scale8to16;
					dst [3] = 0;

					src += 3;
					dst += 4;

					} // b

				} // g

			} // r
		
		}

	else if (fPixelType == 1)				 // u16
		{
		
		const uint16 *src = fStoredData->Buffer_uint16 ();

		for (uint32 rIndex = 0; rIndex < divs; rIndex++)
			{

			for (uint32 gIndex = 0; gIndex < divs; gIndex++)
				{

				for (uint32 bIndex = 0; bIndex < divs; bIndex++)
					{

					dst [0] = src [0];
					dst [1] = src [1];
					dst [2] = src [2];
					dst [3] = 0;

					src += 3;
					dst += 4;

					} // b

				} // g

			} // r
		
		}

	else if (fPixelType == 2)				 // fp32
		{

		// Map 1.0f to 65535.

		const real32 *src = fStoredData->Buffer_real32 ();

		const real32 kScale = 65535.0f;
		
		for (uint32 rIndex = 0; rIndex < divs; rIndex++)
			{

			for (uint32 gIndex = 0; gIndex < divs; gIndex++)
				{

				for (uint32 bIndex = 0; bIndex < divs; bIndex++)
					{

					dst [0] = Round_int32 (kScale * src [0]);
					dst [1] = Round_int32 (kScale * src [1]);
					dst [2] = Round_int32 (kScale * src [2]);
					dst [3] = 0;

					src += 3;
					dst += 4;

					} // b

				} // g

			} // r
		
		}

	else
		{
		
		ThrowProgramError ("Unexpected fPixelType");
		
		}

	const uint32 kDimensions = 3;

	fTable.Set (kDimensions,
				divisions,
				samples);

	fTable.SetGamut (gamutEnum);

	fTable.SetGamma (gammaEnum);
	
	fTable.SetPrimaries (primariesEnum);
	
	}

/*****************************************************************************/

void dng_masked_rgb_table::PutStream (dng_stream &stream) const
	{

	// LengthTableSemanticName.
	
	uint32 len = fTableSemanticName.Length ();

	stream.Put_uint16 ((uint16) len);

	// TableSemanticName.

	stream.Put (fTableSemanticName.Get (), len);

	// Divisions.

	stream.Put_uint8 ((uint8) fTable.Divisions ());

	// PixelType.

	stream.Put_uint8 ((uint8) fPixelType);

	// GammaEncoding.

	stream.Put_uint8 (GammaEnumToRGBTablesTagValue (fTable.Gamma ()));

	// ColorPrimaries.

	stream.Put_uint8 (ColorPrimariesEnumToRGBTablesTagValue (fTable.Primaries ()));

	// GamutExtension.

	stream.Put_uint8 (GamutExtensionEnumToRGBTablesTagValue (fTable.Gamut ()));

	// Table sample data.

	// If we have stored data, just write that.

	if (fStoredData.get ())
		{
		
		stream.Put (fStoredData->Buffer		 (),
					fStoredData->LogicalSize ());
		
		}

	// Otherwise derive the data from the internal table representation.

	else
		{

		// The data is stored in R, G, B order (R = outermost, B = innermost). The
		// dng_rgb_table class already stores its samples in this order, so just
		// walk through the values in linear order.

		const uint16 *samples = fTable.Samples ();

		const uint32 divs = fTable.Divisions ();

		if (fPixelType == 1)
			{

			// Output format is 16-bit unsigned, which matches our internal
			// representation, so no conversion needed.

			for (uint32 rIndex = 0; rIndex < divs; rIndex++)
				{

				for (uint32 gIndex = 0; gIndex < divs; gIndex++)
					{

					for (uint32 bIndex = 0; bIndex < divs; bIndex++)
						{

						stream.Put_uint16 (samples [0]);
						stream.Put_uint16 (samples [1]);
						stream.Put_uint16 (samples [2]);

						samples += 4;

						} // b

					} // g

				} // r

			}

		else if (fPixelType == 0)
			{

			// Output format is 8-bit unsigned, so we need to convert.

			for (uint32 rIndex = 0; rIndex < divs; rIndex++)
				{

				for (uint32 gIndex = 0; gIndex < divs; gIndex++)
					{

					for (uint32 bIndex = 0; bIndex < divs; bIndex++)
						{

						stream.Put_uint8 (uint8 ((int32 (samples [0]) + 128) / 257));
						stream.Put_uint8 (uint8 ((int32 (samples [1]) + 128) / 257));
						stream.Put_uint8 (uint8 ((int32 (samples [2]) + 128) / 257));

						samples += 4;

						} // b

					} // g

				} // r

			}

		else if (fPixelType == 2)
			{

			// Output format is fp32, so we need to convert.

			const real32 kScale = 1.0f / 65535.0f;

			for (uint32 rIndex = 0; rIndex < divs; rIndex++)
				{

				for (uint32 gIndex = 0; gIndex < divs; gIndex++)
					{

					for (uint32 bIndex = 0; bIndex < divs; bIndex++)
						{

						stream.Put_real32 (kScale * samples [0]);
						stream.Put_real32 (kScale * samples [1]);
						stream.Put_real32 (kScale * samples [2]);

						samples += 4;

						} // b

					} // g

				} // r

			}

		else
			{

			ThrowProgramError ("Unsupported PixelType in "
							   "dng_masked_rgb_table::PutStream");

			}

		}
	
	}

/*****************************************************************************/

void dng_masked_rgb_table::AddDigest (dng_md5_printer_stream &printer) const
	{

	// Header.

	printer.ProcessPtr ("dng_masked_rgb_table", 20);

	// Name.

	uint32 nameLen = SemanticName ().Length ();
	
	printer.Put_uint32 (nameLen);

	if (nameLen > 0)
		{
		
		printer.ProcessPtr (SemanticName ().Get (), nameLen);
		
		}

	// Pixel type.

	printer.Put_uint32 (fPixelType);

	// Table digest.
	
	dng_fingerprint tableDigest = fTable.Fingerprint ();

	printer.Process (tableDigest);
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

void dng_masked_rgb_table_render_data::Initialize (const dng_negative &negative,
												   const dng_camera_profile &profile)
	{

	if (!profile.HasMaskedRGBTables ())
		return;

	auto maskedTablesReference = profile.ShareMaskedRGBTables ();

	const auto &tables = *maskedTablesReference;
	
	if (tables.IsNOP ())
		return;

	fUseSequentialMethod = tables.UseSequentialMethod ();

	fInputDigest.Clear (); // Null fingerprint for profile case

	// Find correspondence between RGBTables and SemanticMasks tags. It is
	// still possible that we have a NOP situation if every table uses a mask
	// name that is not found in SemanticMasks.

	// First, make a hashtable of semantic masks, with the name as a key.

	std::unordered_map<dng_string,
					   dng_semantic_mask,
					   dng_string_hash> smMap;

		{

		const uint32 numMasks = negative.NumSemanticMasks ();

		for (uint32 i = 0; i < numMasks; i++)
			{

			const auto &mask = negative.SemanticMask (i);

			smMap.insert (std::make_pair (mask.fName, mask));

			}

		}

	// Next, walk through all tables in the RGBTables tag and figure out which
	// ones are relevant (have a matching SemanticMask label, or have no label
	// which means a background table).

	int32 debugIndex = 0;

	#if !qDebugMaskedRGBTableRender
	(void) debugIndex;
	#endif

	for (const auto &table : tables.Tables ())
		{

		DNG_REQUIRE (table, "bad table");

		const auto &name = table->SemanticName ();
		
		if (name.IsEmpty ())
			{

			DNG_REQUIRE (fBackgroundTable == nullptr,
						 "already have a background table");

			fBackgroundTable = table;

			if (fUseSequentialMethod)
				{

				dng_semantic_mask emptyMask;
				
				fMaskedTables.push_back
					(std::make_pair (table, emptyMask));
				
				}

			#if qDebugMaskedRGBTableRender
			
			printf ("table %d will be treated as background table\n",
					debugIndex);

			#endif
				
			}

		else
			{
			
			// Check if we have a corresponding semantic mask.

			auto iter = smMap.find (name);
			
			if (iter != smMap.end ())
				{
				
				// Found it. Add it to the list. 

				fMaskedTables.push_back
					(std::make_pair (table, iter->second));

				#if qDebugMaskedRGBTableRender

				printf ("table index %d -> semantic name '%s' found\n",
						debugIndex,
						name.Get ());

				#endif
				
				}

			#if qDebugMaskedRGBTableRender

			else
				{
				
				printf ("table index %d -> semantic name '%s' not found among "
						"negative's list of semantic masks -- ignoring",
						debugIndex,
						name.Get ());
							
				}

			#endif
			
			}

		++debugIndex;
		
		}

	// Find the background table index.

	fBackgroundTableIndex = uint32 (fMaskedTables.size ());

	if (fUseSequentialMethod)
		{

		for (size_t i = 0; i < fMaskedTables.size (); i++)
			{

			const auto &semanticMask = fMaskedTables [i].second;

			const_dng_image_sptr baseMask = semanticMask.fMask;

			// Empty base mask indicates a background table.

			if (!baseMask)
				{

				fBackgroundTableIndex = (uint32) i;

				break;

				}

			}

		DNG_REQUIRE ((!fBackgroundTable) ==
					 (fBackgroundTableIndex == fMaskedTables.size ()),
					 "inconsistent background table info for sequential");

		}

	}

/*****************************************************************************/

void dng_masked_rgb_table_render_data::PrepareRGBtoRGBTableData (dng_host &host)
	{
	
	fMaskedTableData.clear ();

	fMaskedTableData.reserve (fMaskedTables.size ());
	
	for (const auto &x : fMaskedTables)
		{

		dng_rgb_to_rgb_table_data_sptr ptr
			(host.Make_dng_rgb_to_rgb_table_data (x.first->Table ()));

		fMaskedTableData.push_back (ptr);
		
		}
	
	if (fBackgroundTable)
		{

		fBackgroundTableData.Reset
			(host.Make_dng_rgb_to_rgb_table_data (fBackgroundTable->Table ()));
		
		}
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

#if qDNGValidate

void dng_masked_rgb_table::Dump (uint32 indent) const
	{

	const uint32 kIndentBufLen = 32;

	indent = Min_uint32 (indent, kIndentBufLen - 1);

	char indentBuf [kIndentBufLen];

	snprintf (indentBuf,
			  kIndentBufLen,
			  "%*s",
			  indent,
			  "");

	printf ("%s%-20s: %s\n",
			indentBuf,
			"SemanticName",
			fTableSemanticName.Get ());

	printf ("%s%-20s: %u\n",
			indentBuf,
			"Divisions",
			fTable.Divisions ());

	const char *pixelTypeStrings [] = { "u8", "u16", "fp32" };
	
	printf ("%s%-20s: %u (%s)\n",
			indentBuf,
			"PixelType",
			fPixelType,
			pixelTypeStrings [Pin_uint32 (0, fPixelType, 2)]);

	const char *gammaEncodingStrings [] =
		{
		"linear",
		"sRGB",
		"1.8",
		"2.2",
		"Rec. 2020"
		};

	uint32 gammaTagValue = GammaEnumToRGBTablesTagValue (fTable.Gamma ());

	printf ("%s%-20s: %u (%s)\n",
			indentBuf,
			"GammaEncoding",
			gammaTagValue,
			gammaEncodingStrings [gammaTagValue]);

	const char *primariesStrings [] =
		{
		"sRGB",
		"Adobe RGB",
		"Display P3",
		"Rec. 2020",
		"ProPhoto"
		};

	uint32 primariesTagValue =
		ColorPrimariesEnumToRGBTablesTagValue (fTable.Primaries ());

	printf ("%s%-20s: %u (%s)\n",
			indentBuf,
			"ColorPrimaries",
			primariesTagValue,
			primariesStrings [primariesTagValue]);

	const char *gamutStrings [] =
		{
		"clip",	
		"extend",	
		};

	uint32 gamutTagValue =
		GamutExtensionEnumToRGBTablesTagValue (fTable.Gamut ());
			
	printf ("%s%-20s: %u (%s)\n",
			indentBuf,
			"GamutExtension",
			gamutTagValue,
			gamutStrings [gamutTagValue]);

	const uint32 divs = fTable.Divisions ();

	const uint16 *samples = fTable.Samples ();

	bool doPrint = true;
	
	uint32 linesPrinted = 0;
	
	const uint8 *storedPtr = nullptr;

	if (fStoredData.get ())
		{
		storedPtr = fStoredData->Buffer_uint8 ();
		}

	for (uint32 rIndex = 0; rIndex < divs && doPrint; rIndex++)
		{

		for (uint32 gIndex = 0; gIndex < divs && doPrint; gIndex++)
			{

			for (uint32 bIndex = 0; bIndex < divs; bIndex++)
				{

				if (linesPrinted >= gDumpLineLimit)
					{
					doPrint = false;
					break;
					}

				if (!storedPtr || (fPixelType == 1))
					{

					printf ("	 table [%3u] [%3u] [%3u] = %6u %6u %6u\n",
							rIndex,
							gIndex,
							bIndex,
							(unsigned) samples [0],
							(unsigned) samples [1],
							(unsigned) samples [2]);

					}

				else if (fPixelType == 0)
					{

					printf ("	 table [%3u] [%3u] [%3u] = %6u %6u %6u (stored as %4u %4u %4u)\n",
							rIndex,
							gIndex,
							bIndex,
							(unsigned) samples [0],
							(unsigned) samples [1],
							(unsigned) samples [2],
							(unsigned) storedPtr [0],
							(unsigned) storedPtr [1],
							(unsigned) storedPtr [2]);

					storedPtr += 3;

					}

				else						 // fPixelType == 2
					{

					const real32 *sPtr32 = (const real32 *) storedPtr;

					printf ("	 table [%3u] [%3u] [%3u] = %6u %6u %6u (stored as %6.4f %6.4f %6.4f)\n",
							rIndex,
							gIndex,
							bIndex,
							(unsigned) samples [0],
							(unsigned) samples [1],
							(unsigned) samples [2],
							sPtr32 [0],
							sPtr32 [1],
							sPtr32 [2]);

					storedPtr += (3 * 4);

					}

				samples += 4;

				++linesPrinted;

				} // b

			} // g

		} // r

	if (linesPrinted < divs * divs * divs)
		{
		
		printf ("%s... %u entries omitted ...\n",
				indentBuf,
				(divs * divs * divs) - linesPrinted);
		
		}

	}

#endif	// qDNGValidate

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_masked_rgb_tables::dng_masked_rgb_tables ()
	{
	
	}

/*****************************************************************************/

dng_masked_rgb_tables::dng_masked_rgb_tables
	(const std::vector<std::shared_ptr<dng_masked_rgb_table> > &tables,
	 composite_method compositeMethod)

	:	fCompositeMethod (compositeMethod)

	,	fTables (tables)

	{

	Validate ();
	
	}

/*****************************************************************************/

bool dng_masked_rgb_tables::IsNOP () const
	{
	
	if (fTables.empty ())
		{
		return true;
		}

	return false;

	}

/*****************************************************************************/

void dng_masked_rgb_tables::Validate () const
	{

	// Check number of tables.
	
	if (fTables.size () > kMaxTables)
		{
		ThrowBadFormat ("Too many tables in RGBTables");
		}

	// Check each table and keep track of # of tables with empty semantic
	// names.

	uint32 numEmptyNames = 0;

	for (const auto &t : fTables)
		{
		
		DNG_REQUIRE (t, "Invalid table pointer in RGBTables");

		t->Validate ();

		if (t->SemanticName ().IsEmpty ())
			{
			++numEmptyNames;
			}
		
		}

	// There can be at most 1 table with an empty semantic name (i.e., at most
	// one background table).

	if (numEmptyNames > 1)
		{
		
		ThrowBadFormat ("Only one table in RGBTables can "
						"have empty semantic name");
		
		}
	
	}

/*****************************************************************************/

void dng_masked_rgb_tables::AddDigest (dng_md5_printer_stream &printer) const
	{

	// Header.
	
	printer.ProcessPtr ("dng_masked_rgb_tables", 21);

	// Number of tables.

	const uint32 numTables = (uint32) fTables.size ();

	printer.Put_uint32 (numTables);

	// Process each table.

	for (const auto &t : fTables)
		{
		t->AddDigest (printer);
		}

	// Composite method.

	printer.Put_uint32 (uint32 (fCompositeMethod));

	}

/*****************************************************************************/

void dng_masked_rgb_tables::PutStream (dng_stream &stream) const
	{

	// Write the number of tables.
	
	stream.Put_uint32 ((uint32) fTables.size ());

	// Write the composite method.

	stream.Put_uint32 ((uint32) fCompositeMethod);

	// Then write each table.

	for (const auto &t : fTables)
		{
		t->PutStream (stream);
		}
	
	}

/*****************************************************************************/

dng_masked_rgb_tables * dng_masked_rgb_tables::GetStream (dng_host &host,
														  dng_stream &stream,
														  const bool isDraft,
														  uint32 tagCount)
	{

	const uint64 tagEnd = SafeUint64Add (stream.Position (),
										 (uint64) tagCount);

	if (tagEnd > stream.Length ())
		{
		ThrowBadFormat ("Invalid RGBTables tag count");
		}

	// Read number of tables.

	RequireRGBTablesBytes (stream, tagEnd, 4);

	uint32 numTables = stream.Get_uint32 ();

	// A zero value is valid, which simply means the tag is empty and is a
	// NOP. Return nullptr in this case.

	if (numTables == 0)
		{
		return nullptr;
		}

	if (numTables > kMaxTables)
		{
		ThrowBadFormat ("RGBTables: numTables too large");
		}

	// In earlier DNG 1.6 drafts, there was no CompositeMethod field. The only
	// supported method was Weighted Sum.

	composite_method method = kWeightedSum;

	// In the final DNG 1.6 revision, there is a CompositeMethod field.

	if (!isDraft)
		{

		RequireRGBTablesBytes (stream, tagEnd, 4);

		method = (composite_method) stream.Get_uint32 ();

		if (method != kWeightedSum &&
			method != kSequential)
			{
			ThrowBadFormat ("RGBTables: invalid composite method");
			}
		
		}

	// Read each table.

	std::vector<std::shared_ptr<dng_masked_rgb_table> > tables;

	tables.resize (numTables);

	for (auto &t : tables)
		{
		
		t.reset (new dng_masked_rgb_table);

		t->GetStream (host, stream, tagEnd);
		
		}

	// Done reading all the tables.

	return new dng_masked_rgb_tables (tables,
									  method);

	}
		
/*****************************************************************************/

#if qDNGValidate

void dng_masked_rgb_tables::Dump () const
	{

	printf ("Number of tables: %u\n", (unsigned) fTables.size ());

	printf ("CompositeMethod: %s\n",
			UseWeightedSumMethod () ? "Weighted Sum"
									: "Sequential");

	for (size_t i = 0; i < fTables.size (); i++)
		{
		
		printf ("Table %u:\n", (unsigned) i);

		fTables [i]->Dump (4);
		
		}
	
	}

#endif	// qDNGValidate

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

class dng_rgb_to_rgb_1d_function : public dng_1d_function
	{

	private:

		const dng_rgb_table &fTable;

		uint32 fPlane;

	public:

		dng_rgb_to_rgb_1d_function (const dng_rgb_table &table,
									uint32 plane)

			:	fTable (table)
			,	fPlane (plane)

			{

			DNG_ASSERT (fTable.Dimensions () == 1, "1D table expected");

			}

		virtual real64 Evaluate (real64 x) const
			{

			uint32 divisions = fTable.Divisions ();

			real64 scaled = x * (real64) (divisions - 1);

			int32 index = Pin_int32 (0,
									 (int32) scaled,
									 divisions - 2);

			real64 fract = scaled - (real64) index;

			const uint16 *table = fTable.Samples () + (index * 4) + fPlane;

			real64 y = ((1.0 - fract) * (real64) table [0] +
						(	   fract) * (real64) table [4]) * (1.0 / 65535.0);

			return x + fTable.Amount () * (y - x);

			}

	};


/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_rgb_to_rgb_table_data::dng_rgb_to_rgb_table_data (dng_host &host,
													  const dng_rgb_table &table)

	:	fTable (table)

	,	fNeedMatrix (false)

	,	fEncodeMatrix ()
	,	fDecodeMatrix ()

	,	fEncodeTable ()
	,	fDecodeTable ()
	
	{
	
	// Find encode/decode matrix, if any.

		{

		const dng_color_space *space = NULL;

		switch (table.Primaries ())
			{

			case dng_rgb_table::primaries_sRGB:
				{
				space = &dng_space_sRGB::Get ();
				break;
				}

			case dng_rgb_table::primaries_Adobe:
				{
				space = &dng_space_AdobeRGB::Get ();
				break;
				}

			case dng_rgb_table::primaries_ProPhoto:
				{
				break;
				}

			case dng_rgb_table::primaries_P3:
				{
				space = &dng_space_DisplayP3::Get ();
				break;
				}

			case dng_rgb_table::primaries_Rec2020:
				{
				space = &dng_space_Rec2020::Get ();
				break;
				}

			default:
				{
				DNG_REPORT ("Unknown RGB table primaries");
				}

			}

		fNeedMatrix = (space != NULL);

		if (fNeedMatrix)
			{

			fEncodeMatrix = space->MatrixFromPCS () *
							dng_space_ProPhoto::Get ().MatrixToPCS ();

			fDecodeMatrix = dng_space_ProPhoto::Get ().MatrixFromPCS () *
							space->MatrixToPCS ();

			}

		}

	// Find encode/decode gamma tables, if any.

		{

		const dng_1d_function *gamma = NULL;

		switch (table.Gamma ())
			{

			case dng_rgb_table::gamma_Linear:
				{
				break;
				}

			case dng_rgb_table::gamma_sRGB:
				{
				gamma = &dng_function_GammaEncode_sRGB::Get ();
				break;
				}

			case dng_rgb_table::gamma_1_8:
				{
				gamma = &dng_function_GammaEncode_1_8::Get ();
				break;
				}

			case dng_rgb_table::gamma_2_2:
				{
				gamma = &dng_function_GammaEncode_2_2::Get ();
				break;
				}

			case dng_rgb_table::gamma_Rec2020:
				{
				gamma = &dng_function_GammaEncode_Rec709::Get ();
				break;
				}

			default:
				{
				DNG_REPORT ("Unknown RGB table gamma");
				}

			}

		if (fTable.Dimensions () == 1)
			{

			for (uint32 plane = 0; plane < 3; plane++)
				{

				fTable1D [plane].Reset (new dng_1d_table);

				dng_rgb_to_rgb_1d_function mapPlane (fTable,
													 plane);

				if (gamma == NULL)
					{

					fTable1D [plane]->Initialize (host.Allocator (),
												  mapPlane,
												  false);

					}

				else
					{

					dng_1d_inverse inverse (*gamma);

					dng_1d_concatenate firstPart (*gamma,
												  mapPlane);

					dng_1d_concatenate combined (firstPart,
												 inverse);

					fTable1D [plane]->Initialize (host.Allocator (),
												  combined,
												  false);

					}

				}

			}

		else if (gamma != NULL)
			{

			fEncodeTable.Reset (new dng_1d_table);
			fDecodeTable.Reset (new dng_1d_table);

			fEncodeTable->Initialize (host.Allocator (),
									  *gamma,
									  false);

			dng_1d_inverse inverse (*gamma);

			fDecodeTable->Initialize (host.Allocator (),
									  inverse,
									  false);

			}

		}
	
	}

/*****************************************************************************/

dng_rgb_to_rgb_table_data::~dng_rgb_to_rgb_table_data ()
	{

	}

/*****************************************************************************/

void dng_rgb_to_rgb_table_data::Process_32 (dng_pixel_buffer &buffer,
											dng_pixel_buffer *optMaskBuffer,
											uint32 optMaskPlane,
											const dng_rect &dstArea,
											uint32 bufferStartPlane,
											const bool needOverrange)
	{

	uint32 p0 = bufferStartPlane;
	uint32 p1 = bufferStartPlane + 1;
	uint32 p2 = bufferStartPlane + 2;
		
	const real32 *mPtr = nullptr;

	int32 mRowStep = 0;

	if (optMaskBuffer)
		{
		
		mPtr = optMaskBuffer->ConstPixel_real32 (dstArea.t,
												 dstArea.l,
												 optMaskPlane);

		mRowStep = optMaskBuffer->RowStep ();
		
		}

	if (fTable.Dimensions () == 3)
		{

		DoRGBtoRGBTable3D (buffer.DirtyPixel_real32 (dstArea.t, dstArea.l, p0),
						   buffer.DirtyPixel_real32 (dstArea.t, dstArea.l, p1),
						   buffer.DirtyPixel_real32 (dstArea.t, dstArea.l, p2),
						   mPtr,
						   dstArea.H (),
						   dstArea.W (),
						   buffer.RowStep (),
						   mRowStep,
						   fTable.Divisions (),
						   fTable.Samples (),
						   (real32) fTable.Amount (),
						   (uint32) fTable.Gamut (),
						   fNeedMatrix ? &fEncodeMatrix : NULL,
						   fNeedMatrix ? &fDecodeMatrix : NULL,
						   fEncodeTable.Get (),
						   fDecodeTable.Get (),
						   needOverrange);

		}

	else
		{

		DoRGBtoRGBTable1D (buffer.DirtyPixel_real32 (dstArea.t, dstArea.l, p0),
						   buffer.DirtyPixel_real32 (dstArea.t, dstArea.l, p1),
						   buffer.DirtyPixel_real32 (dstArea.t, dstArea.l, p2),
						   mPtr,
						   dstArea.H (),
						   dstArea.W (),
						   buffer.RowStep (),
						   mRowStep,
						   *fTable1D [0],
						   *fTable1D [1],
						   *fTable1D [2],
						   (uint32) fTable.Gamut (),
						   fNeedMatrix ? &fEncodeMatrix : NULL,
						   fNeedMatrix ? &fDecodeMatrix : NULL,
						   needOverrange);

		}

	}

/*****************************************************************************/

void dng_rgb_to_rgb_table_data::AddDigest (dng_md5_printer_stream &printer) const
	{

		{

		const dng_fingerprint tableFingerPrint = fTable.Fingerprint ();

		printer.Process (tableFingerPrint);

		}

	if (fNeedMatrix)
		{

		for (uint32 i = 0; i < 3; i++)
			{

			#if 1

			static_assert (sizeof (fEncodeMatrix [i] [0]) == 8, "matrix coeffs not 8 bytes");

			printer.Put_swap8 (fEncodeMatrix [i], uint32 (3 * sizeof (fEncodeMatrix [i] [0])));
			printer.Put_swap8 (fDecodeMatrix [i], uint32 (3 * sizeof (fEncodeMatrix [i] [0])));

			#else

			printer.Process (fEncodeMatrix [i], 3 * sizeof (fEncodeMatrix [i] [0]));
			printer.Process (fDecodeMatrix [i], 3 * sizeof (fEncodeMatrix [i] [0]));

			#endif

			}

		}

	if (fEncodeTable.Get () && fDecodeTable.Get ())
		{

		#if 1

		static_assert (sizeof (fEncodeTable->Table () [0]) == 4, "table data not 4 bytes");

		printer.Put_swap4 (fEncodeTable->Table (),
						   uint32 ((2 + fEncodeTable->Count ()) * sizeof (fEncodeTable->Table () [0])));

		printer.Put_swap4 (fDecodeTable->Table (),
						   uint32 ((2 + fEncodeTable->Count ()) * sizeof (fEncodeTable->Table () [0])));

		#else

		printer.Process (fEncodeTable->Table (),
						 (2 + fEncodeTable->Count ()) * sizeof (fEncodeTable->Table () [0]));

		printer.Process (fDecodeTable->Table (),
						 (2 + fEncodeTable->Count ()) * sizeof (fEncodeTable->Table () [0]));

		#endif
		
		}

	if (fTable.Dimensions () != 3)
		{

		for (uint32 i = 0; i < 3; i++)
			{

			static_assert (sizeof (fTable1D [i]->Table () [0]) == 4, "table data not 4 bytes");

			#if 1

			printer.Put_swap4 (fTable1D [i]->Table (),
							   uint32 ((2 + fTable1D [i]->Count ()) * sizeof (fTable1D [i]->Table () [0])));

			#else

			printer.Process (fTable1D [i]->Table (),
							 (2 + fTable1D [i]->Count ()) * sizeof (fTable1D [i]->Table () [0]));

			#endif
			
			}

		}

	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

#if qDNGUseXMP

/*****************************************************************************/

class MoveBigTablesToDictionaryContext
	{
	
	public:
	
		dng_xmp &fXMP;
		
		dng_big_table_dictionary &fDictionary;
		
	public:
	
		MoveBigTablesToDictionaryContext (dng_xmp &xmp,
										  dng_big_table_dictionary &dictionary)
									   
			:	fXMP (xmp)
			,	fDictionary (dictionary)
			
			{
			
			}
			
	};

/*****************************************************************************/

static bool MoveBigTablesToDictionaryCallback (const char *ns,
											   const char *path,
											   void *callbackData)
	{
	
	if (path == NULL || path [0] == 0)
		{
		return true;
		}
		
	dng_string s;
	
	s.Set (path);
	
	// Check if ends with Table_ and 32 characters.
			
	if (s.Length () < 38 ||
		strncmp (s.Get () + s.Length () - 38,
				 "Table_",
				 6) != 0)
		{
		return true;
		}
		
	// Make sure there is either nothing or a namespace before.
		
	if (s.Length () >= 39 &&
		s.Get () [s.Length () - 39] != ':')
		{
		return true;
		}
		
	// See if the last 32 characters are a valid fingerprint.
		
	char fingerString [32];
	
	memcpy (fingerString,
			s.Get () + s.Length () - 32,
			32);
			
	dng_fingerprint fingerprint;
			
	if (!fingerprint.FromUtf8HexString (fingerString))
		{
		return true;
		}
		
	if (!fingerprint.IsValid ())
		{
		return true;
		}
		
	MoveBigTablesToDictionaryContext *context =
				(MoveBigTablesToDictionaryContext *) callbackData;
				
	if (!context->fDictionary.HasTable (fingerprint))
		{
		
		dng_string tableString;
		
		if (context->fXMP.GetString (ns, path, tableString))
			{
			
			AutoPtr<dng_memory_block> dBlock;
			
			uint32 dCount = 0;
			
			dng_big_table::ASCIItoBinary (context->fXMP.Allocator (),
										  tableString.Get (),
										  tableString.Length (),
										  dBlock,
										  dCount);
										  
			if (dCount)
				{
				
				dng_ref_counted_block bigTableBlock (dCount);
				
				memcpy (bigTableBlock.Buffer (),
						dBlock->Buffer (),
						dCount);
						
				context->fDictionary.AddTable (fingerprint,
											   bigTableBlock);
				
				}
			
			}
		
		}
		
	// Now remove the big table string from the xmp.
		
	context->fXMP.Remove (ns, path);
			
	return true;
	
	}

/*****************************************************************************/

void MoveBigTablesToDictionary (dng_xmp &xmp,
								dng_big_table_dictionary &dictionary)
	{
	
	MoveBigTablesToDictionaryContext context (xmp, dictionary);
	
	xmp.IteratePaths (MoveBigTablesToDictionaryCallback,
					  (void *) &context,
					  XMP_NS_CRS,
					  nullptr,
					  true);
	
	xmp.IteratePaths (MoveBigTablesToDictionaryCallback,
					  (void *) &context,
					  XMP_NS_CRSS,
					  nullptr,
					  true);
	
	}

/*****************************************************************************/

void DualParseXMP (dng_host &host,
				   dng_xmp &xmp,
				   dng_big_table_dictionary &dictionary,
				   const void *blockData,
				   uint32 blockSize)
	{
		
	// Null pad XMP text so we can use string searching functions.
	
	const uint32 paddedBlockSize = SafeUint32Add (blockSize, 1u);

	AutoPtr<dng_memory_block> tempBlock (host.Allocate (paddedBlockSize));
	
	memcpy (tempBlock->Buffer (),
			blockData,
			blockSize);
			
	tempBlock->Buffer_uint8 () [blockSize] = 0;
		
	char *blockString = tempBlock->Buffer_char ();
	
	// Assume default namespace short names.  Since this is just
	// a performance optimization, don't worry about the rare case
	// of non-default namespace short names.
	
	dng_string ns_crs  ("crs:");
	dng_string ns_crss ("crss:");

	// Search for big tables in XMP using fast search.
		
	struct TableEntry
		{
		
		// Fingerprint of found big table.
		
		dng_fingerprint fFingerprint;
		
		// Offset and byte count of big table data.
		
		size_t			fDataOffset;
		size_t			fDataBytes;
		
		// Offset and byte count of entire big table tag, including wrapper.
		
		size_t			fWrapperOffset;
		size_t			fWrapperBytes;
		
		};
	
	std::vector<TableEntry> entries;
	
		{
		
		size_t offset = 0;
		
		while (const char *search = strstr (blockString + offset, "Table_"))
			{
			
			TableEntry entry;
			
			// Is the search result followed by a valid hex encoded fingerprint?
			
			if (search + 6 + 32 > blockString + blockSize)
				{
				break;		// Too near end of xmp block to even fit fingerprint
				}
				
			char fingerString [33];
			
			memcpy (fingerString,
					search + 6,
					32);
					
			fingerString [32] = 0;
					
			if (!entry.fFingerprint.FromUtf8HexString (fingerString))
				{
				
				// We did not find a table, so just start searching again just
				// after the "Table_" string.
				
				offset = (search - blockString) + 6;
				
				continue;	// Not followed by valid fingerprint
				
				}
				
			// Look for big tables in both the XMP_NS_CRS and XMP_NS_CRSS
			// namespaces.
			
			bool foundTable = false;
			
			for (uint32 nsIndex = 0; nsIndex < 2; nsIndex++)
				{
				
				dng_string ns = (nsIndex == 0 ? ns_crs : ns_crss);
				
				int32 nsLength = ns.Length ();
					
				// Look for compact mode tables.
				// Example:
				//	   crs:Table_fingerprint="data"
			
				if (search >= blockString + nsLength + 1 &&
					memcmp (search - nsLength, ns.Get (), nsLength) == 0 &&
					(search [-nsLength - 1] == ' '	||
					 search [-nsLength - 1] == '\t' ||
					 search [-nsLength - 1] == '\n' ||
					 search [-nsLength - 1] == '\r') &&
					search + 6 + 32 + 2 < blockString + blockSize &&
					memcmp (search + 6 + 32, "=\"", 2) == 0)
					{
					
					const char *dataStart = search + 6 + 32 + 2;
					
					// Find termination
					
					const char *endSearch = strstr (dataStart, "\"");
					
					if (endSearch)
						{
						
						entry.fDataOffset = dataStart - blockString;
						entry.fDataBytes  = endSearch - dataStart;
						
						entry.fWrapperOffset = entry.fDataOffset - 2 - 32 - 6 - nsLength;
						entry.fWrapperBytes	 = entry.fDataBytes + nsLength + 6 + 32 + 2 + 1;
						
						foundTable = true;
								 
						break;
						
						}
					
					}

				// Look for non-compact mode tables.
				// Example:
				//	   <crs:Table_fingerprint>data</crs:Table_fingerprint>
				
				if (search >= blockString + nsLength + 1 &&
					memcmp (search - nsLength, ns.Get (), nsLength) == 0 &&
					search [-nsLength - 1] == '<' &&
					search + 6 + 32 + 1 < blockString + blockSize &&
					search [6 + 32] == '>')
					{
					
					const char *dataStart = search + 6 + 32 + 1;
					
					dng_string endString ("</");
					
					endString.Append (ns.Get ());
					endString.Append ("Table_");
					endString.Append (fingerString);
					endString.Append (">");
										
					// Find termination
					
					const char *endSearch = strstr (dataStart, endString.Get ());
					
					if (endSearch)
						{
						
						entry.fDataOffset = dataStart - blockString;
						entry.fDataBytes  = endSearch - dataStart;
						
						entry.fWrapperOffset = entry.fDataOffset - 2 - 32 - 6 - nsLength;
						entry.fWrapperBytes	 = entry.fDataBytes + (nsLength + 6 + 32 + 2) * 2 + 1;
						
						foundTable = true;
						
						break;
						
						}
					
					}
			
				}
				
			// We found a table, start search again after this table's wrapper.
				
			if (foundTable)
				{
				
				entries.push_back (entry);
				
				offset = entry.fWrapperOffset +
						 entry.fWrapperBytes;
						 
				}
								 
			// If we did not find a table, just start searching again just
			// after the "Table_" string.
				
			else
				{
				
				offset = (search - blockString) + 6;
				
				}
			
			}
			
		}
		
	// Did we find any tables in our scan?
	
	if (entries.size ())
		{
		
		// Add any new tables to dictionary, and remove from xmp that will be passed
		// to parser.
		
		size_t srcOffset = 0;
		size_t dstOffset = 0;
		
		for (size_t index = 0; index < entries.size (); index++)
			{
			
			if (!dictionary.HasTable (entries [index].fFingerprint))
				{
				
				AutoPtr<dng_memory_block> dBlock;
				
				uint32 dCount = 0;
				
				dng_big_table::ASCIItoBinary (host.Allocator (),
											  ((const char *) blockData) + entries [index].fDataOffset,
											  (uint32) entries [index].fDataBytes,
											  dBlock,
											  dCount);
											  
				if (dCount)
					{
					
					dng_ref_counted_block bigTableBlock (dCount);
					
					memcpy (bigTableBlock.Buffer (),
							dBlock->Buffer (),
							dCount);
							
					dictionary.AddTable (entries [index].fFingerprint,
										 bigTableBlock);
					
					}
				
				}
				
			size_t copyBytes = entries [index].fWrapperOffset - srcOffset;
				
			memcpy (blockString + dstOffset,
					((const char *) blockData) + srcOffset,
					copyBytes);
					
			dstOffset += copyBytes;
			
			srcOffset = entries [index].fWrapperOffset +
						entries [index].fWrapperBytes;
			
			}
			
		// Copy bytes after last block.
		
		memcpy (blockString + dstOffset,
				((const char *) blockData) + srcOffset,
				blockSize - srcOffset);
				
		dstOffset += blockSize - srcOffset;
		
		// Parse the remaining XMP with the big table blocks removed.
		
		xmp.Parse (host,
				   blockString,
				   (uint32) dstOffset);
			   
		}
		
	// No tables founds, just parse the original XMP data.
		
	else
		{
		
		xmp.Parse (host,
				   blockData,
				   blockSize);
			   
		}
		
	// Slow path, in case fast parser missed something.
	
	MoveBigTablesToDictionary (xmp, dictionary);
	
	}

/*****************************************************************************/

#endif  // qDNGUseXMP

/*****************************************************************************/
