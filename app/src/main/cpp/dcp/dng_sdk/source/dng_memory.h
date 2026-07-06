/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** Support for memory allocation.
 */

/*****************************************************************************/

#ifndef __dng_memory__
#define __dng_memory__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_exceptions.h"
#include "dng_flags.h"
#include "dng_safe_arithmetic.h"
#include "dng_types.h"
#include "dng_uncopyable.h"

#include <cstdlib>
#include <vector>

/*****************************************************************************/

#if qDNGAVXSupport
	#define DNG_ALIGN_SIMD(x) ((((uintptr) (x)) + 31) & ~((uintptr) 31))
#else
	#define DNG_ALIGN_SIMD(x) ((((uintptr) (x)) + 15) & ~((uintptr) 15))
#endif

/*****************************************************************************/

/// \brief Class to provide resource acquisition is instantiation discipline
/// for small memory allocations.
///
/// This class does not use dng_memory_allocator for memory allocation.

class dng_memory_data: private dng_uncopyable
	{
	
	private:
	
		char *fBuffer;
		
	public:
	
		/// Construct an empty memory buffer using malloc.
		/// \exception dng_memory_full with fErrorCode equal to dng_error_memory.

		dng_memory_data ();
		
		/// Construct memory buffer of size bytes using malloc.
		/// \param size Number of bytes of memory needed.
		/// \exception dng_memory_full with fErrorCode equal to dng_error_memory.

		dng_memory_data (uint32 size);
		
		dng_memory_data (const dng_safe_uint32 &size);
		
		/// Note: This constructor is for internal use only and should not be
		/// considered part of the DNG SDK API.
		///
		/// Construct memory buffer of count elements of elementSize bytes each.
		/// \param count Number of elements.
		/// \param elementSize Size of each element.
		/// \exception dng_memory_full with fErrorCode equal to dng_error_memory.

		dng_memory_data (uint32 count, 
						 std::size_t elementSize);

		/// Release memory buffer using free.

		~dng_memory_data ();

		/// Clear existing memory buffer and allocate new memory of size bytes.
		/// \param size Number of bytes of memory needed.
		/// \exception dng_memory_full with fErrorCode equal to dng_error_memory.

		void Allocate (uint32 size);

		void Allocate (const dng_safe_uint32 &size);

		/// Note: This method is for internal use only and should not be
		/// considered part of the DNG SDK API.
		///
		/// Clear existing memory buffer and allocate new memory of count
		/// elements of elementSize bytes each.
		/// \param count Number of elements.
		/// \param elementSize Size of each element.
		/// \exception dng_memory_full with fErrorCode equal to dng_error_memory.

		void Allocate (uint32 count, 
					   std::size_t elementSize);

		void Allocate (const dng_safe_uint32 &count, 
					   std::size_t elementSize);

		/// Release any allocated memory using free. Object is still valid and
		/// Allocate can be called again.
		
		void Clear ();
		
		/// Return pointer to allocated memory as a void *..
		/// \retval void * valid for as many bytes as were allocated.

		void * Buffer ()
			{
			return fBuffer;
			}
		
		/// Return pointer to allocated memory as a const void *.
		/// \retval const void * valid for as many bytes as were allocated.

		const void * Buffer () const
			{
			return fBuffer;
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

/// \brief Class to provide resource acquisition is instantiation discipline for
/// image buffers and other larger memory allocations.
///
/// This class requires a dng_memory_allocator for allocation.

class dng_memory_block: private dng_uncopyable
	{
	
	private:
	
		uint32 fLogicalSize;
		
		char *fBuffer;
		
	protected:
	
		dng_memory_block (uint32 logicalSize)
			:	fLogicalSize (logicalSize)
			,	fBuffer (NULL)
			{
			}
		
		uint32 PhysicalSize ()
			{
			
			// This size is padded for TWO reasons! The first is allow
			// alignment to 16-byte boundaries if the allocator does not do
			// that already. The second, which is very important, so to
			// provide safe overread areas for SSE2-type bottlenecks, which
			// can often be written faster by allowing them to reading
			// slightly block. Someone on the image core them did not
			// understand this and removed this padding. I'm undoing this
			// removal and restoring this padding, since removing it might
			// lead to memory access crashes in some cases.
			// 
			// Please do NOT change the following padding unless you are very
			// sure what you are doing.

			dng_safe_uint32 safeLogicalSize (fLogicalSize);

			#if qDNGAVXSupport

			// Allow 32-byte alignment + 64-byte overread in both directions:
			// 32 + 64 + 64 = 160.

			return (safeLogicalSize + 160u).Get ();

			#else

			// Allow 16-byte alignment + overread.

			return (safeLogicalSize + 64u).Get ();

			#endif	// qDNGAVXSupport

			}
		
		void SetBuffer (void *p)
			{
			fBuffer = (char *) DNG_ALIGN_SIMD (p);
			}
		
	public:
	
		virtual ~dng_memory_block ()
			{
			}

		dng_memory_block * Clone (dng_memory_allocator &allocator) const;
	
		/// Getter for available size, in bytes, of memory block.
		/// \retval size in bytes of available memory in memory block.

		uint32 LogicalSize () const
			{
			return fLogicalSize;
			}

		/// Return pointer to allocated memory as a void *..
		/// \retval void * valid for as many bytes as were allocated.

		void * Buffer ()
			{
			return fBuffer;
			}
		
		/// Return pointer to allocated memory as a const void *.
		/// \retval const void * valid for as many bytes as were allocated.

		const void * Buffer () const
			{
			return fBuffer;
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
			
		/// Return pointer to allocated memory as a const uint32 *.
		/// \retval const uint32 * valid for as many bytes as were allocated.

		const uint32 * Buffer_uint32 () const
			{
			return (const uint32 *) Buffer ();
			}
	
		/// Return pointer to allocated memory as a int32 *.
		/// \retval int32 * valid for as many bytes as were allocated.

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

/// \brief Interface for dng_memory_block allocator.

class dng_memory_allocator
	{
	
	public:
	
		virtual ~dng_memory_allocator () 
			{
			}
				
		/// Allocate a dng_memory block.
		/// \param size Number of bytes in memory block.
		/// \retval A dng_memory_block with at least size bytes of valid storage.
		/// \exception dng_exception with fErrorCode equal to dng_error_memory.

		virtual dng_memory_block * Allocate (uint32 size);

		/// Directly allocate a block of at least 'size' bytes.
		/// \param size Number of bytes in memory block.
		/// \retval A pointer to a contiguous block of memory with at least
		/// size bytes of valid storage.
		/// Caller is responsible for freeing the memory with Free.
		/// Default implementation uses standard library 'malloc' routine.

		virtual void * Malloc (size_t size);

		/// Free the specified block of memory previously allocated with Malloc.
		/// Default implementation uses standard library 'free' routine.
	
		virtual void Free (void *ptr);
	
	};

/*****************************************************************************/

class dng_malloc_block : public dng_memory_block
	{
	
	private:
	
		void *fMalloc;
	
	public:
	
		dng_malloc_block (uint32 logicalSize);
		
		virtual ~dng_malloc_block ();
		
	};
	
/*****************************************************************************/

/// \brief Default memory allocator used if NULL is passed in for allocator 
/// when constructing a dng_host.
///
/// Uses new and delete for memory block object and malloc/free for underlying
/// buffer. 

extern dng_memory_allocator gDefaultDNGMemoryAllocator;

/*****************************************************************************/

/// \brief C++ allocator (i.e. an implementation of the Allocator concept)
/// that throws a dng_exception with error code dng_error_memory if it cannot
/// allocate memory.

template <typename T>
class dng_std_allocator
	{
	
	public:

		typedef T value_type;
		
		#if defined(_MSC_VER) && _MSC_VER >= 1900

		// Default implementations of default constructor and copy
		// constructor.

		dng_std_allocator () = default;

		// dng_std_allocator (const dng_std_allocator &) = default;

		template<class U> dng_std_allocator (const dng_std_allocator<U> &) {}
		
		#endif

		T * allocate (size_t n)
			{
			const size_t size = SafeSizetMult (n, sizeof (T));
			T *retval = static_cast<T *> (malloc (size));
			if (!retval) 
				{
				ThrowMemoryFull ();
				}
			return retval;
			}
		
		void deallocate (T *ptr, 
						 size_t /* n */)
			{
			free (ptr);
			}

	};

template <class T>
bool operator== (const dng_std_allocator<T> & /* a1 */,
				 const dng_std_allocator<T> & /* a2 */)
	{
	return true;
	}

template <class T>
bool operator!= (const dng_std_allocator<T> & /* a1 */,
				 const dng_std_allocator<T> & /* a2 */)
	{
	return false;
	}

/*****************************************************************************/

// std::vector specialized to use dng_std_allocator for allocation.

#if 0
// original implementation without using custom allocator
#define dng_std_vector std::vector
#else
// preferred implementation using custom allocator, requires C++11 
template <class T> using dng_std_vector = std::vector<T, dng_std_allocator<T> >;
#endif

/*****************************************************************************/

#endif
	
/*****************************************************************************/
