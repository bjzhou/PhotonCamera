/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Conditionally compiled assertion check support.
 */

/*****************************************************************************/

#ifndef __dng_assertions__
#define __dng_assertions__

/*****************************************************************************/

#include "dng_exceptions.h"
#include "dng_flags.h"


/*****************************************************************************/

#if qWinOS

/// Windows-only function to emit a message to the Debugger Output pane
/// if a debug session is in progress.
/// \param s C string to emit.
/// \param nl Optional newline (or suffix) C string to be emitted after s.

void dng_outputdebugstring (const char *s,
							const char *nl = NULL);

#endif

/*****************************************************************************/

#if defined(__EMSCRIPTEN__)

/// Emscripten-only function to emit a message to the debugger console
/// if a debug session is in progress.

void dng_emscripten_log (int emLogType,
						 const char *s);

#endif

/*****************************************************************************/

/// Platform-specific function to display an assert.

void dng_show_message (const char *s);

/// Show a formatted error message.

void dng_show_message_f (const char *fmt, ...);

/*****************************************************************************/

#ifndef DNG_ASSERT

#if qDNGDebug

/// Conditionally compiled macro to check an assertion and display a message if
/// it fails and assertions are compiled in via qDNGDebug
/// \param x Predicate which must be true.
/// \param y String to display if x is not true.

#define DNG_ASSERT(x,y) { if (!(x)) dng_show_message (y); }

#else

/// Conditionally compiled macro to check an assertion and display a message if
/// it fails and assertions are compiled in via qDNGDebug
/// \param x Predicate which must be true.
/// \param y String to display if x is not true.

#define DNG_ASSERT(x,y)

#endif
#endif

/*****************************************************************************/

#ifndef DNG_REQUIRE

#if qDNGDebug

/// Conditionally compiled macro to check an assertion, display a message, and throw
/// an exception if it fails and assertions are compiled in via qDNGDebug
/// \param condition Predicate which must be true.
/// \param msg String to display if condition is not true.

#define DNG_REQUIRE(condition,msg)				\
	do											\
		{										\
												\
		if (!(condition))						\
			{									\
												\
			DNG_ASSERT(condition, msg);			\
												\
			ThrowProgramError (msg);			\
												\
			}									\
												\
		}										\
	while (0)

#else

/// Conditionally compiled macro to check an assertion, display a message, and throw
/// an exception if it fails and assertions are compiled in via qDNGDebug
/// \param condition Predicate which must be true.
/// \param msg String to display if condition is not true.

#define DNG_REQUIRE(condition,msg)				\
	do											\
		{										\
												\
		if (!(condition))						\
			{									\
												\
			ThrowProgramError (msg);			\
												\
			}									\
												\
		}										\
	while (0)

#endif
#endif

/*****************************************************************************/

#ifndef DNG_REPORT

/// Macro to display an informational message
/// \param x String to display.

#define DNG_REPORT(x) DNG_ASSERT (false, x)

#endif

/*****************************************************************************/

#endif

/*****************************************************************************/
