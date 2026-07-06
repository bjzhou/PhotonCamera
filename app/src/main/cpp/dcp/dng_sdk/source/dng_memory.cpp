/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_memory.h"

#include "dng_bottlenecks.h"
#include "dng_exceptions.h"
#include "dng_safe_arithmetic.h"

#ifdef _MSC_VER
#include <Windows.h>
#endif

/*****************************************************************************/

dng_memory_data::dng_memory_data ()
	
	:	fBuffer (NULL)
	
	{
	
	}

/*****************************************************************************/

dng_memory_data::dng_memory_data (uint32 size)

	:	fBuffer (NULL)
	
	{
	
	Allocate (size);
	
	}

/*****************************************************************************/

dng_memory_data::dng_memory_data (const dng_safe_uint32 &size)

	:	fBuffer (NULL)
	
	{
	
	Allocate (size.Get ());
	
	}

/*****************************************************************************/

dng_memory_data::dng_memory_data (uint32 count, 
								  std::size_t elementSize)

	:	fBuffer (NULL)
	
	{
	
	Allocate (count, elementSize);
	
	}

/*****************************************************************************/

dng_memory_data::~dng_memory_data ()
	{
	
	Clear ();
	
	}
				
/*****************************************************************************/

void dng_memory_data::Allocate (uint32 size)
	{
	
	Clear ();
	
	if (size)
		{
		//printf("Calling malloc from %s\n", __FUNCTION__);
		fBuffer = (char *) malloc (size);
		
		if (!fBuffer)
			{
			
			ThrowMemoryFull ();
						 
			}
		
		}
	
	}
				
/*****************************************************************************/

void dng_memory_data::Allocate (const dng_safe_uint32 &size)
	{
	
	Allocate (size.Get ());
	
	}

/*****************************************************************************/

void dng_memory_data::Allocate (uint32 count, 
								std::size_t elementSize)
	{
	
	// Convert elementSize to a uint32.

	const uint32 elementSizeAsUint32 = static_cast<uint32> (elementSize);

	if (static_cast<std::size_t> (elementSizeAsUint32) != elementSize)
		{
		ThrowOverflow ("elementSize overflow");
		}
	
	// Compute required number of bytes and allocate memory.

	dng_safe_uint32 numBytes = dng_safe_uint32 (count) * elementSizeAsUint32;

	Allocate (numBytes.Get ());
	
	}

/*****************************************************************************/

void dng_memory_data::Allocate (const dng_safe_uint32 &count, 
								std::size_t elementSize)
	{

	Allocate (count.Get (), elementSize);

	}

/*****************************************************************************/

void dng_memory_data::Clear ()
	{
	
	if (fBuffer)
		{
		
		free (fBuffer);
		
		fBuffer = NULL;
		
		}
		
	}
				
/*****************************************************************************/

dng_memory_block * dng_memory_block::Clone (dng_memory_allocator &allocator) const
	{
	
	uint32 size = LogicalSize ();
	
	dng_memory_block * result = allocator.Allocate (size);
	
	DoCopyBytes (Buffer (), result->Buffer (), size);
		
	return result;
	
	}

/*****************************************************************************/

dng_malloc_block::dng_malloc_block (uint32 logicalSize)

	:	dng_memory_block (logicalSize)
	
	,	fMalloc (NULL)
	
	{

	#if qLinux

	// TO DO: Need to change this alignment for AVX support?

	int err = ::posix_memalign ((void **) &fMalloc, 
								16,
								(size_t) PhysicalSize ());

	if (err)
		{

		ThrowMemoryFull ();

		}

	#elif qAndroid
		
	fMalloc = memalign (16, (size_t) PhysicalSize ());
		
	if (!fMalloc)
		{
			
		ThrowMemoryFull ();
			
		}
	
	#else

	//fMalloc = (char *) VirtualAlloc (NULL, PhysicalSize (), MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
	//printf("Calling malloc from %s\n", __FUNCTION__);
	fMalloc = (char *)malloc(PhysicalSize());

	if (!fMalloc)
		{
		
		ThrowMemoryFull ();
					 
		}

	//*(size_t*)(fMalloc) = size_t(PhysicalSize() + 16);
	//fMalloc = (char*)fMalloc+16;

	#endif

	SetBuffer (fMalloc);
	
	}
		
/*****************************************************************************/

dng_malloc_block::~dng_malloc_block ()
	{
	
	if (fMalloc)
		{
		
		//size_t size = *(size_t*)((char*)fMalloc - 16);
		//VirtualFree(fMalloc, 0, MEM_RELEASE);
		free (fMalloc);
		
		}
	
	}
		
/*****************************************************************************/

dng_memory_block * dng_memory_allocator::Allocate (uint32 size)
	{
	
	dng_memory_block *result = new dng_malloc_block (size);
	
	if (!result)
		{
		
		ThrowMemoryFull ();
		
		}
	
	return result;
	
	}

/*****************************************************************************/

void * dng_memory_allocator::Malloc (size_t size)
	{
	
	return malloc (size);
	
	}

/*****************************************************************************/

void dng_memory_allocator::Free (void *ptr)
	{
	
	free (ptr);
	
	}

/*****************************************************************************/

dng_memory_allocator gDefaultDNGMemoryAllocator;

/*****************************************************************************/
