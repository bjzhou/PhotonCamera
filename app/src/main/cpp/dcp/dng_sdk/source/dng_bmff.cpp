/*****************************************************************************/
// Copyright 2006-2022 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_assertions.h"
#include "dng_big_table.h"
#include "dng_bmff.h"
#include "dng_host.h"
#include "dng_memory_stream.h"
#include "dng_stream.h"

#include <unordered_map>
#include <utility>

/*****************************************************************************/

static dng_string ReadName (dng_stream &stream)
	{
	
	char name [5];
	
	stream.Get (name, 4);
	
	name [4] = 0;
	
	return dng_string (name);
	
	}

/*****************************************************************************/

dng_bmff_io::~dng_bmff_io ()
	{
	
	}

/*****************************************************************************/

void dng_bmff_io::Read (dng_host &host,
						dng_stream &stream)
	{
	
	stream.SetBigEndian ();
	
	stream.SetReadPosition (0);
	
	// Skip first 4 bytes (length field of first box).
	
	stream.Skip (4);
	
	// Quick check to see if this looks like a valid ISO BMFF or JXL file.

	dng_string firstName (ReadName (stream));
	
	if (!(firstName.Matches ("ftyp", true) ||
		  firstName.Matches ("JXL ", true))) // TODO(erichan): add compile flag
		{
		ThrowBadFormat ();
		}

	// Reset to reading.
	
	stream.SetReadPosition (0);

	uint64 totalOffset = 0;

	while (stream.Position () < stream.Length ())
		{

		const uint32 storedLength = stream.Get_uint32 ();

		uint64 length = uint64 (storedLength);

		dng_string name = ReadName (stream);

		uint64 headerOffset = 0;

		if (storedLength == 1)
			{

			// Large box.

			length = stream.Get_uint64 ();

			DNG_REQUIRE (length >= 16,
						 "Box 64-bit length too small");

			headerOffset = 16;

			}

		else if (storedLength == 0)
			{

			// Last box: extends to EOF.

			headerOffset = 8;

			length = headerOffset + (stream.Length () - stream.Position ());

			}

		else
			{

			// Compact box.

			DNG_REQUIRE (length >= 8,
						 "Box 32-bit length too small");

			headerOffset = 8;

			}

		DNG_REQUIRE (length >= headerOffset,
					 "logic error in computing contentLength");

		const uint64 contentLength = length - headerOffset;

		DNG_REQUIRE (stream.Position () <= stream.Length (),
					 "Box header past stream end");

		const uint64 bytesRemaining = stream.Length () - stream.Position ();

		DNG_REQUIRE (contentLength <= bytesRemaining,
					 "Box content past stream end");

		// Store the box data if desired.

		if (ShouldReadBox (name, length))
			{

			auto box = std::make_shared<dng_bmff_box> ();

			box->fStoredLength = storedLength;

			box->fRealLength = length;

			box->fOffset = totalOffset;

			box->fName = name;

			// Currently do not support contents above 4 GB.

			DNG_REQUIRE (contentLength <= uint64 (0xFFFFFFFF),
						 "Unsupported contentLength too larget");

			const uint32 contentLength32 = uint32 (contentLength);

			box->fContent.reset (host.Allocate (contentLength32));

			fBoxes.push_back (box);
		
			stream.Get (box->fContent->Buffer (),
						contentLength32);

			}

		// Skip the box.

		else
			{

			stream.Skip (contentLength);
			
			}
			
		// Update total offset.

		totalOffset += length;

		}

	}

/*****************************************************************************/

void dng_bmff_io::Write (dng_host & /* host */,
						 dng_stream &stream) const
	{

	stream.SetBigEndian ();

	for (const auto &box : fBoxes)
		{

		// Skip missing/invalid boxes.

		if (!box)
			continue;

		DNG_REQUIRE (box->fName.Length () == 4,
					 "name length wrong size");

		const uint32 dataLen = box->fContent ? box->fContent->LogicalSize () : 0;

		bool useLargeSize = ((box->fStoredLength == 1) ||
							 (uint64 (dataLen) + 8) > uint64 (0xFFFFFFFF));
		
		if (useLargeSize)
			{
			
			stream.Put_uint32 (1);		 // use large size

			stream.Put (box->fName.Get (), 4);

			stream.Put_uint64 (uint64 (dataLen) + 16);

			if (box->fContent && (dataLen > 0))
				stream.Put (box->fContent->Buffer (),
							dataLen);
				
			}

		else
			{

			// Compact or last box.

			if (box->fStoredLength == 0)	 // last box
				stream.Put_uint32 (0);

			else							 // compact box
				stream.Put_uint32 (dataLen + 8);

			stream.Put (box->fName.Get (), 4);

			if (box->fContent && (dataLen > 0))
				stream.Put (box->fContent->Buffer (),
							dataLen);

			}

		} // all boxes

	stream.Flush ();
	
	}

/*****************************************************************************/

void dng_bmff_io::UpdateBigTables (dng_host &host,
								   const dng_big_table_dictionary &newTables,
								   const bool deleteUnused)
	{
	
	// 1 box per table.
	// 
	// Box tag: btbl (big table), registered here: https://mp4ra.org/#/request
	// 
	// Box layout is big-endian.
	// 
	//   length:   overall length of box  4 bytes
	//   tag code: btbl                   4 bytes
	//   version:  version identifier     4 bytes
	//   data                             variable
	// 
	// version 1 data:
	//   md5 fingerprint                  16 bytes
	//   big table data                   variable

	// LogPrint ("Writing Big Tables to JXL boxes\n");

	const dng_string kBigTableTagName ("btbl");

	// Step 1: Find all existing tables in the file. Along the way, we clean
	// up duplicate tables and no-longer-used tables (tables that aren't in
	// the given 'metadata' object).
		
	const auto &dictMap = newTables.Map ();

	std::unordered_map<dng_fingerprint,
					   dng_bmff_box_sptr,
					   dng_fingerprint_hash> digests;

	for (auto &box : fBoxes)
		{
			
		if (box &&
			(box->fName == kBigTableTagName) &&
			box->fContent &&
			(box->fContent->LogicalSize () > 20))
			{

			dng_stream tableStream (box->fContent->Buffer (),
									box->fContent->LogicalSize ());

			tableStream.SetBigEndian ();

			// Get version (4 bytes).

			uint32 version = tableStream.Get_uint32 ();

			if (version == 1)
				{
					
				// Get fingerprint (16 bytes).

				dng_fingerprint digest;

				tableStream.Get (digest);

				if (digest.IsValid () &&
					(digests.find (digest) == digests.end ()))
					{
						
					// Not seen yet.

					if (dictMap.find (digest) == dictMap.end ())
						{
							
						// Not found in newTables, so we don't need this
						// table. If requested to delete unused tables, then
						// mark for delete.

						if (deleteUnused)
							box.reset ();
							
						}

					else
						{

						// Found in newTables, so we do need this table.
						// Remember that we saw it.

						digests.insert (std::make_pair (digest, box));

						}

					}

				else
					{
						
					// Already seen this table earlier in this loop, so
					// this is a duplicate.

					box.reset ();
						
					}

				}					
				
			}
			
		}

	// Step 2: Write new tables.

	for (auto it = dictMap.cbegin (); it != dictMap.cend (); ++it)
		{

		const dng_fingerprint &fingerprint = it->first;

		// LogPrint ("big table: %s\n",
		//		  fingerprint.ToUtf8HexString ().Get ());

		// Skip tables that we already have.

		if (digests.find (fingerprint) != digests.end ())
			continue;

		// Add this table.

		auto temp = std::make_shared<dng_bmff_box> ();

		temp->fName = kBigTableTagName;

		const dng_ref_counted_block &block = it->second;
		
		const uint32 blockSize = block.LogicalSize ();

		dng_memory_stream memStream (host.Allocator ());

		memStream.SetBigEndian ();

		// Write version.

		memStream.Put_uint32 (1);

		// Write fingerprint.

		memStream.Put (fingerprint);

		// Write table data.

		memStream.Put (block.Buffer (),
					   blockSize);

		temp->fContent.reset (memStream.AsMemoryBlock (host.Allocator ()));
		
		fBoxes.push_back (temp);
			
		}

	}

/*****************************************************************************/
