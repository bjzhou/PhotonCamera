/*****************************************************************************/
// Copyright 2008-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * List of opcodes.
 */

/*****************************************************************************/

#ifndef __dng_opcode_list__
#define __dng_opcode_list__

/*****************************************************************************/

#include "dng_auto_ptr.h"
#include "dng_classes.h"
#include "dng_memory.h"
#include "dng_opcodes.h"
#include "dng_uncopyable.h"

#include <vector>

/*****************************************************************************/

/// A list of opcodes.

class dng_opcode_list: private dng_uncopyable
	{
	
	private:
	
		dng_std_vector<dng_opcode *> fList;
		
		bool fAlwaysApply;
		
		uint32 fStage;
		
	public:

		/// Create an empty opcode list for the specific image stage (1, 2, or 3).
	
		dng_opcode_list (uint32 stage);
		
		~dng_opcode_list ();

		/// Is the opcode list empty?
		
		bool IsEmpty () const
			{
			return fList.size () == 0;
			}

		/// Does the list contain at least 1 opcode?
			
		bool NotEmpty () const
			{
			return !IsEmpty ();
			}

		/// Should the opcode list always be applied to the image?
			
		bool AlwaysApply () const
			{
			return fAlwaysApply && NotEmpty ();
			}

		/// Set internal flag to indicate this opcode list should always be
		/// applied.
			
		void SetAlwaysApply ()
			{
			fAlwaysApply = true;
			}

		/// The number of opcodes in this list.
			
		uint32 Count () const
			{
			return (uint32) fList.size ();
			}

		/// Retrieve read/write opcode by index (must be in the range 0 to Count
		/// () - 1).
			
		dng_opcode & Entry (uint32 index)
			{
			return *fList [index];
			}

		/// Retrieve read-only opcode by index (must be in the range 0 to Count
		/// () - 1).
			
		const dng_opcode & Entry (uint32 index) const
			{
			return *fList [index];
			}

		/// Remove all opcodes from the list.

		void Clear ();
	
		/// Remove opcode from the list at a specific index.

		void Remove (uint32 index);

		/// Swap two opcode lists.
		
		void Swap (dng_opcode_list &otherList);

		/// Return minimum DNG version required to support all opcodes in this
		/// list. If includeOptional is set to true, then this calculation will
		/// include optional opcodes.
		
		uint32 MinVersion (bool includeOptional) const;
		
		/// Apply this opcode list to the specified image with corresponding
		/// negative.

		void Apply (dng_host &host,
					dng_negative &negative,
					AutoPtr<dng_image> &image);

		/// Append the specified opcode to this list.
					
		void Append (AutoPtr<dng_opcode> &opcode);

		/// Serialize this opcode list to a block of memory. The caller is
		/// responsible for deleting this block.
		
		dng_memory_block * Spool (dng_host &host) const;

		/// Write a fingerprint of this opcode list to the specified stream.
		
		void FingerprintToStream (dng_stream &stream) const;

		/// Read an opcode list from the specified stream, starting at the
		/// specified offset (streamOffset, in bytes). byteCount is provided for
		/// error checking purposes. A bad format exception
		/// will be thrown if the length of the opcode stream does not exactly
		/// match byteCount.

		void Parse (dng_host &host,
					dng_stream &stream,
					uint32 byteCount,
					uint64 streamOffset);

		/// Apply an area scale factor to all opcodes in the list. Useful if
		/// one of the image stages is scaled to a different resolution.
		/// Example is stage 3 image being scaled to 2x the linear dimension
		/// of the stage 2 image.

		void ApplyAreaScale (const dng_urational &scale);
		
	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
