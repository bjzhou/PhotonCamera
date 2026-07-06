// Provides an implementation of jpeg_source_mgr for in-memory data sources.

#ifndef __dng_jpeg_memory_source__
#define __dng_jpeg_memory_source__

#if qDNGUseLibJPEG

#include "dng_tag_types.h"
#include "dng_jpeglib.h"

#include <limits>

// Creates a jpeg_source_mgr for an in-memory data source based on the given
// buffer with length 'size'.
jpeg_source_mgr CreateJpegMemorySource(const uint8 *buffer, size_t size);

#endif  // qDNGUseLibJPEG

#endif  // __dng_jpeg_memory_source__
