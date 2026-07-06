/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Simple, portable, file read/write support.
 */

/*****************************************************************************/

#ifndef __dng_file_stream__
#define __dng_file_stream__

/*****************************************************************************/

#include "dng_stream.h"

/*****************************************************************************/

/// \brief A stream to/from a disk file. See dng_stream for read/write interface
///
/// Also see comment in dng_stream.h regarding the caller's responsibility for
/// calling the Flush method.

class dng_file_stream: public dng_stream
	{
	
	private:
	
		FILE *fFile;
	
	public:
	
		/// Open a stream on a filename by path.
		/// \param filename Pathname in platform syntax.
		/// \param output Set to true if writing, false otherwise.
		/// \param bufferSize size of internal buffer to use. Defaults to
		/// kDefaultBufferSize.

		dng_file_stream (const char *filename,
						 bool output = false,
						 uint32 bufferSize = kDefaultBufferSize);
	
		/// Open a stream on a FILE*.
		/// \param file FILE pointer. It should be opened in binary mode.
		/// I.e., use "rb" for reading and "wb" for writing.
		/// \param bufferSize size of internal buffer to use. Defaults to
		/// kDefaultBufferSize.
		
		dng_file_stream (FILE *file,
						 uint32 bufferSize = kDefaultBufferSize);
		
		#if qAndroid
		
		dng_file_stream (int fileDescriptor,
						 bool output = false,
						 uint32 bufferSize = kDefaultBufferSize);

		dng_file_stream (int fileDescriptor,
						 const char *mode,
						 uint32 bufferSize = kDefaultBufferSize);

		#endif	// qAndroid

		#if qWinOS

		dng_file_stream (const wchar_t *filename,
						 bool output = false,
						 uint32 bufferSize = kDefaultBufferSize);

		#endif	// qWinOS
		
		virtual ~dng_file_stream ();
	
	protected:
	
		virtual uint64 DoGetLength ();
	
		virtual void DoRead (void *data,
							 uint32 count,
							 uint64 offset);
		
		virtual void DoWrite (const void *data,
							  uint32 count,
							  uint64 offset);
		
	};
		
/*****************************************************************************/

#endif
	
/*****************************************************************************/
