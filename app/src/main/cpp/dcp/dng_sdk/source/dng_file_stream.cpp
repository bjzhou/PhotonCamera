/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_file_stream.h"

#include "dng_exceptions.h"
#include "dng_flags.h"

#include <limits>

#if qAndroid
#include <unistd.h>
#endif

/*****************************************************************************/

dng_file_stream::dng_file_stream (const char *filename,
								  bool output,
								  uint32 bufferSize)

	:	dng_stream ((dng_abort_sniffer *) NULL,
					bufferSize,
					0)
	
	,	fFile (NULL)
	
	{

	fFile = fopen (filename, output ? "wb" : "rb");

	if (!fFile)
		{
		
		#if qDNGValidate

		ReportError ("Unable to open file",
					 filename);
					 
		ThrowSilentError ();
		
		#else
		
		ThrowOpenFile ();
		
		#endif

		}
	
	}

/*****************************************************************************/

dng_file_stream::dng_file_stream (FILE *file,
								  uint32 bufferSize)

	:	dng_stream ((dng_abort_sniffer *) NULL,
					bufferSize,
					0)
	
	,	fFile (file)
	
	{

	if (!fFile)
		{
		
		ThrowOpenFile ("Unable to open FILE *");

		}
	
	}

/*****************************************************************************/

#if qAndroid

/*****************************************************************************/

dng_file_stream::dng_file_stream (int fd,
								  const char *mode,
								  uint32 bufferSize)

	:	dng_stream ((dng_abort_sniffer *) NULL,
					bufferSize,
					0)

	,	fFile (NULL)

	{

	// Note: Use dup here as caller is responsible for separately managing fd.

	fFile = fdopen (dup (fd), mode);

	if (!fFile)
		{

		#if qDNGValidate

		ReportError ("Unable to open file");

		ThrowSilentError ();

		#else

		ThrowOpenFile ();

		#endif

		}

	}

/*****************************************************************************/

dng_file_stream::dng_file_stream (int fd,
								  bool output,
								  uint32 bufferSize)

	:	dng_file_stream (fd,
						 output ? "wb" : "rb",
						 bufferSize)

	{

	}

/*****************************************************************************/

#endif	// qAndroid

/*****************************************************************************/

#if qWinOS

/*****************************************************************************/

dng_file_stream::dng_file_stream (const wchar_t *filename,
								  bool output,
								  uint32 bufferSize)

	:	dng_stream ((dng_abort_sniffer *) NULL,
					bufferSize,
					0)
	
	,	fFile (NULL)
	
	{

	fFile = _wfopen (filename, output ? L"wb" : L"rb");

	if (!fFile)
		{
		
		#if qDNGValidate

		char filenameCString[256];

		size_t returnCount;

		wcstombs_s (&returnCount, 
					filenameCString, 
					256, 
					filename, 
					_TRUNCATE);

		ReportError ("Unable to open file",
					 filenameCString);
					 
		ThrowSilentError ();
		
		#else
		
		ThrowOpenFile ();
		
		#endif	// qDNGValidate

		}
	
	}

/*****************************************************************************/

#endif	// qWinOS
		
/*****************************************************************************/

dng_file_stream::~dng_file_stream ()
	{
	
	if (fFile)
		{
		fclose (fFile);
		fFile = NULL;
		}
	
	}
		
/*****************************************************************************/

uint64 dng_file_stream::DoGetLength ()
	{
	
	#if qWinOS

	if (_fseeki64 (fFile, 0, SEEK_END) != 0)
		{

		ThrowReadFile ();

		}

	// CR-4208475 K-L2: Treat tell failures as read errors before
	// widening the position into the unsigned stream-length domain.

	const auto position = _ftelli64 (fFile);

	if (position < 0)
		{

		ThrowReadFile ();

		}

	return (uint64) position;

	#else

	if (fseeko (fFile, 0, SEEK_END) != 0)
		{

		ThrowReadFile ();

		}

	// CR-4208475 K-L2: Treat tell failures as read errors before
	// widening the position into the unsigned stream-length domain.

	const auto position = ftello (fFile);

	if (position < 0)
		{

		ThrowReadFile ();

		}

	return (uint64) position;

	#endif
	
	}
		
/*****************************************************************************/

static bool dng_file_stream_offset_fits_seek (uint64 offset)
	{

	#if qWinOS

	return offset <= 0x7FFFFFFFFFFFFFFFull;

	#else

	return offset <= (uint64) std::numeric_limits<off_t>::max ();

	#endif

	}

/*****************************************************************************/

void dng_file_stream::DoRead (void *data,
							  uint32 count,
							  uint64 offset)
	{
	
	if (!dng_file_stream_offset_fits_seek (offset))
		{
		ThrowReadFile ();
		}

	#if qWinOS

	if (_fseeki64 (fFile, (int64) offset, SEEK_SET) != 0)

	#else

	if (fseeko (fFile, (off_t) offset, SEEK_SET) != 0)

	#endif
		{
		
		ThrowReadFile ();

		}
	
	uint32 bytesRead = (uint32) fread (data, 1, count, fFile);
	
	if (bytesRead != count)
		{
		
		ThrowReadFile ();

		}
	
	}
		
/*****************************************************************************/

void dng_file_stream::DoWrite (const void *data,
							   uint32 count,
							   uint64 offset)
	{
	
	if (!dng_file_stream_offset_fits_seek (offset))
		{
		ThrowWriteFile ();
		}

	#if qWinOS

	if (_fseeki64 (fFile, (int64) offset, SEEK_SET) != 0)

	#else

	if (fseeko (fFile, (off_t) offset, SEEK_SET) != 0)

	#endif
		{
		
		ThrowWriteFile ();

		}
	
	uint32 bytesWritten = (uint32) fwrite (data, 1, count, fFile);
	
	if (bytesWritten != count)
		{
		
		ThrowWriteFile ();

		}
	
	}
		
/*****************************************************************************/
