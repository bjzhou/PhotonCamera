/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** Support for a refcounted block, with optional copy-on-write
 */

/*****************************************************************************/

#ifndef __dng_ref_counted_block__
#define __dng_ref_counted_block__

/*****************************************************************************/

#include "dng_types.h"
#include "dng_mutex.h"

#include <mutex>

/*****************************************************************************/

/// \brief Class to provide resource acquisition is instantiation discipline
/// for small memory allocations.
///
/// This class does not use dng_memory_allocator for memory allocation.

class dng_ref_counted_block
	{
	
	private:
	
		struct header
			{

			dng_std_mutex fMutex;

			uint32 fRefCount;
				
			uint32 fSize;

			header (uint32 size)
				:	fMutex	  ()
				,	fRefCount (1)
				,	fSize	  (size)
				{
				}

			~header ()
				{
				}

			};

		void *fBuffer;
		
	public:
	
		/// Construct an empty memory buffer using malloc.
		/// \exception dng_memory_full with fErrorCode equal to dng_error_memory.

		dng_ref_counted_block ();
		
		/// Construct memory buffer of size bytes using malloc.
		/// \param size Number of bytes of memory needed.
		/// \exception dng_memory_full with fErrorCode equal to dng_error_memory.

		dng_ref_counted_block (uint32 size);
		
		/// Release memory buffer using free.

		~dng_ref_counted_block ();

		/// Copy constructore, which takes a reference to data and does not copy the block.

		dng_ref_counted_block (const dng_ref_counted_block &data);
		
		/// Assignment operatore takes a reference to right hand side and does not copy the data.
		
		dng_ref_counted_block & operator= (const dng_ref_counted_block &data);

		/// Clear existing memory buffer and allocate new memory of size bytes.
		/// \param size Number of bytes of memory needed.
		/// \exception dng_memory_full with fErrorCode equal to dng_error_memory.

		void Allocate (uint32 size);

		/// Release any allocated memory using free. Object is still valid and
		/// Allocate can be called again.
		
		void Clear ();
		
		/// If there is only one reference, do nothing, otherwise copy the data into a new block and return an object with that block as the data.

		void EnsureWriteable ();

		/// Return pointer to allocated memory as a void *..
		/// \retval void * valid for as many bytes as were allocated.

		uint32 LogicalSize () const
			{
			return fBuffer ? ((header *) fBuffer)->fSize : 0;
			}

		void * Buffer ()
			{
			return fBuffer ? (void *) ((char *) fBuffer + sizeof (header)) : NULL;
			}
		
		/// Return pointer to allocated memory as a const void *.
		/// \retval const void * valid for as many bytes as were allocated.

		const void * Buffer () const
			{
			return fBuffer ? (const void *) ((char *) fBuffer + sizeof (header)) : NULL;
			}
		
		/// Return pointer to allocated memory as a char *.
		/// \retval char * valid for as many bytes as were allocated.

		char * Buffer_char ()
			{
			return (char *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a const char *.
		/// \retval const char * valid for as many bytes as were allocated.

		const char * Buffer_char () const
			{
			return (const char *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a uint8 *.
		/// \retval uint8 * valid for as many bytes as were allocated.

		uint8 * Buffer_uint8 ()
			{
			return (uint8 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a const uint8 *.
		/// \retval const uint8 * valid for as many bytes as were allocated.

		const uint8 * Buffer_uint8 () const
			{
			return (const uint8 *) Buffer ();
			}
	
		/// Return pointer to allocated memory as a uint16 *.
		/// \retval uint16 * valid for as many bytes as were allocated.

		uint16 * Buffer_uint16 ()
			{
			return (uint16 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a const uint16 *.
		/// \retval const uint16 * valid for as many bytes as were allocated.

		const uint16 * Buffer_uint16 () const
			{
			return (const uint16 *) Buffer ();
			}
	
		/// Return pointer to allocated memory as a int16 *.
		/// \retval int16 * valid for as many bytes as were allocated.

		int16 * Buffer_int16 ()
			{
			return (int16 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a const int16 *.
		/// \retval const int16 * valid for as many bytes as were allocated.

		const int16 * Buffer_int16 () const
			{
			return (const int16 *) Buffer ();
			}
	
		/// Return pointer to allocated memory as a uint32 *.
		/// \retval uint32 * valid for as many bytes as were allocated.

		uint32 * Buffer_uint32 ()
			{
			return (uint32 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a uint32 *.
		/// \retval uint32 * valid for as many bytes as were allocated.

		const uint32 * Buffer_uint32 () const
			{
			return (const uint32 *) Buffer ();
			}
	
		/// Return pointer to allocated memory as a const int32 *.
		/// \retval const int32 * valid for as many bytes as were allocated.

		int32 * Buffer_int32 ()
			{
			return (int32 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a const int32 *.
		/// \retval const int32 * valid for as many bytes as were allocated.

		const int32 * Buffer_int32 () const
			{
			return (const int32 *) Buffer ();
			}
	
		/// Return pointer to allocated memory as a uint64 *.
		/// \retval uint64 * valid for as many bytes as were allocated.

		uint64 * Buffer_uint64 ()
			{
			return (uint64 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a uint64 *.
		/// \retval uint64 * valid for as many bytes as were allocated.

		const uint64 * Buffer_uint64 () const
			{
			return (const uint64 *) Buffer ();
			}
	
		/// Return pointer to allocated memory as a const int64 *.
		/// \retval const int64 * valid for as many bytes as were allocated.

		int64 * Buffer_int64 ()
			{
			return (int64 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a const int64 *.
		/// \retval const int64 * valid for as many bytes as were allocated.

		const int64 * Buffer_int64 () const
			{
			return (const int64 *) Buffer ();
			}
	
		/// Return pointer to allocated memory as a real32 *.
		/// \retval real32 * valid for as many bytes as were allocated.

		real32 * Buffer_real32 ()
			{
			return (real32 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a const real32 *.
		/// \retval const real32 * valid for as many bytes as were allocated.

		const real32 * Buffer_real32 () const
			{
			return (const real32 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a real64 *.
		/// \retval real64 * valid for as many bytes as were allocated.

		real64 * Buffer_real64 ()
			{
			return (real64 *) Buffer ();
			}
			
		/// Return pointer to allocated memory as a const real64 *.
		/// \retval const real64 * valid for as many bytes as were allocated.

		const real64 * Buffer_real64 () const
			{
			return (const real64 *) Buffer ();
			}
			
	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
