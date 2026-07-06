/*****************************************************************************/
// Copyright 2006-2022 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 *	Basic support for Base Media File Format.
 */

/*****************************************************************************/

#ifndef __dng_bmff__
#define __dng_bmff__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_memory.h"
#include "dng_string.h"
#include "dng_types.h"

#include <memory>
#include <vector>

/*****************************************************************************/

class dng_bmff_box
	{
		
	public:

		// Byte length of box as stored in the file:
		//
		// 0	 = last box
		// 1	 = large box
		// other = actual byte length for a compact box

		uint32 fStoredLength = 0xFFFFFFFF;

		// Real byte length of box, if known. May be 0 if fStoredLength is 0,
		// denoting the last box.
		
		uint64 fRealLength = 0ULL;

		// Offset of box (specifically, offset to the first byte of the length
		// field) from the start of the file.

		uint64 fOffset = 0ULL;

		// 4-char box name.

		dng_string fName;

		// Box contents, excluding the 8-byte (compact or last box) or 16-byte
		// (large box) header.

		std::shared_ptr<dng_memory_block> fContent;

	};

/*****************************************************************************/

typedef std::shared_ptr<dng_bmff_box> dng_bmff_box_sptr;

typedef std::vector<dng_bmff_box_sptr> dng_bmff_box_list;

/*****************************************************************************/

class dng_bmff_io
	{

	public:

		dng_bmff_box_list fBoxes;
		
	public:

		virtual ~dng_bmff_io ();

		void Read (dng_host &host,
				   dng_stream &stream);

		void Write (dng_host &host,
					dng_stream &stream) const;

		void UpdateBigTables (dng_host &host,
							  const dng_big_table_dictionary &newTables,
							  bool deleteUnused);

		void Add (dng_bmff_box_sptr box)
			{
			if (box)
				fBoxes.push_back (box);
			}
		
	protected:

		virtual bool ShouldReadBox (const dng_string & /* str */,
									uint64 /* length */) const
			{
			return true;
			}
		
	};

/*****************************************************************************/

#endif	// __dng_bmff__
	
/*****************************************************************************/
