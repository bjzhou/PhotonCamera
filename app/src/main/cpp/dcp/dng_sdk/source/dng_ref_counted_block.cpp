/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include <new>

#include "dng_ref_counted_block.h"

#include "dng_exceptions.h"

/*****************************************************************************/

dng_ref_counted_block::dng_ref_counted_block ()
	
	:	fBuffer (NULL)
	
	{
	
	}

/*****************************************************************************/

dng_ref_counted_block::dng_ref_counted_block (uint32 size)

	:	fBuffer (NULL)
	
	{
	
	Allocate (size);
	
	}

/*****************************************************************************/

dng_ref_counted_block::~dng_ref_counted_block ()
	{
	
	Clear ();
	
	}
				
/*****************************************************************************/

void dng_ref_counted_block::Allocate (uint32 size)
	{
	
	Clear ();
	
	if (size)
		{

		size_t mallocSize = size + sizeof (header);

		if (mallocSize <= size)
			{

			ThrowOverflow ();

			}

		fBuffer = malloc (mallocSize);
		
		if (!fBuffer)
			{
			
			ThrowMemoryFull ();
						 
			}
		
		new (fBuffer) header (size);

		}
	
	}
				
/*****************************************************************************/

void dng_ref_counted_block::Clear ()
	{
	
	if (fBuffer)
		{

		bool doFree = false;

		header *blockHeader = (struct header *)fBuffer;

			{
		
			dng_lock_std_mutex lock (blockHeader->fMutex);

			if (--blockHeader->fRefCount == 0)
				doFree = true;
				
			}

		if (doFree)
			{
				
			blockHeader->~header ();

			free (fBuffer);

			}
		
		fBuffer = NULL;
		
		}
		
	}
				
/*****************************************************************************/

dng_ref_counted_block::dng_ref_counted_block (const dng_ref_counted_block &data)

	:	fBuffer (NULL)

	{

	header *blockHeader = (struct header *) data.fBuffer;
	
	if (blockHeader)
		{

		dng_lock_std_mutex lock (blockHeader->fMutex);

		blockHeader->fRefCount++;

		fBuffer = blockHeader;
		
		}

	}
		
/*****************************************************************************/

dng_ref_counted_block & dng_ref_counted_block::operator= (const dng_ref_counted_block &data)
	{

	if (this != &data)
		{
		
		Clear ();

		header *blockHeader = (struct header *) data.fBuffer;
		
		if (blockHeader)
			{

			dng_lock_std_mutex lock (blockHeader->fMutex);

			blockHeader->fRefCount++;

			fBuffer = blockHeader;
			
			}

		}

	return *this;

	}

/*****************************************************************************/

void dng_ref_counted_block::EnsureWriteable ()
	{

	if (fBuffer)
		{

		header *possiblySharedHeader = (header *) fBuffer;

			{
			
			dng_lock_std_mutex lock (possiblySharedHeader->fMutex);

			if (possiblySharedHeader->fRefCount > 1)
				{

				uint32 copySize = (uint32) possiblySharedHeader->fSize;

				const void *srcData =
					((const char *) possiblySharedHeader) +
					sizeof (struct header);

				possiblySharedHeader->fRefCount--;

				fBuffer = NULL;

				Allocate (copySize);

				memcpy (Buffer (), srcData, copySize);

				}

			}

		}
		
	}

/*****************************************************************************/
