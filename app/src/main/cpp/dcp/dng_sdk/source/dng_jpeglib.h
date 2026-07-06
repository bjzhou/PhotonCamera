// Convenience include file that includes jpeglib.h and jerror.h as well as the
// standard include files required by them.
#ifndef __dng_jpeglib__
#define __dng_jpeglib__

// jpeglib.h requires FILE and size_t to be defined before #including it (it
// doesn't pull in the required headers for those definitions itself).
#include <stdio.h>
#include <stdlib.h>

// The standard libjpeg headers don't seem to contain an 'extern "C"' (so it's
// required when including them from C++).
extern "C" {
#include "jpeglib.h"
#include "jerror.h"
}

#endif  // __dng_jpeglib__
