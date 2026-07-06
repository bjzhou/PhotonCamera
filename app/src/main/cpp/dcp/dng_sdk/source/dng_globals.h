/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Definitions of global variables controling DNG SDK behavior.
 */

/*****************************************************************************/

#ifndef __dng_globals__
#define __dng_globals__

/*****************************************************************************/

#include "dng_flags.h"
#include "dng_types.h"

/*****************************************************************************/

#if qDNGValidate || qDNGDebug

/// When validation (qValidate) is turned on, this global enables verbose
/// output about DNG tags and other properties.

extern bool gVerbose;

/// When validation (qValidate) is turned on, and verbose mode (gVerbose) is
/// enabled, limits the number of lines of text that are dumped for each tag.

extern uint32 gDumpLineLimit;

#endif

/*****************************************************************************/

// Print out results from dng_timers?

extern bool gDNGShowTimers;

/******************************************************************************/

// MWG says don't use fake time zones in XMP, but there is some
// old software that requires them to work correctly.

extern bool gDNGUseFakeTimeZonesInXMP;

/*****************************************************************************/

// Stream block size.  Choose a size that the OS likes for file system
// efficient read/write alignment.

extern uint32 gDNGStreamBlockSize;

// Maximum stream buffer size to use on large reads and writes.

extern uint32 gDNGMaxStreamBufferSize;

/*****************************************************************************/

// Are we running as part of the imagecore library?

extern bool gImagecore;

// Print out timing info for area tasks?

extern bool gPrintTimings;

// Print assert messages?

extern bool gPrintAsserts;

// Break into debugger on asserts?

extern bool gBreakOnAsserts;

/*****************************************************************************/

#endif
	
/*****************************************************************************/
