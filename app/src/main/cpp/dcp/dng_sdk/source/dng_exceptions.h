/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * C++ exception support for DNG SDK.
*/

/*****************************************************************************/

#ifndef __dng_exceptions__
#define __dng_exceptions__

/*****************************************************************************/

#include "dng_errors.h"
#include "dng_flags.h"

#include <exception>
#include <string>

/*****************************************************************************/

// DNG_NO_RETURN
// DNG_NO_RETURN_ENABLED

#if defined(DNG_NO_RETURN) != defined(DNG_NO_RETURN_ENABLED)
#error DNG_NO_RETURN and DNG_NO_RETURN_ENABLED must both be defined or undefined here.
#endif

// Use DNG_NO_RETURN in header file declaration of a function that
// does not return.
//
// It should be placed
//     * before the return type of the function, AND
//     * before any 'inline' keyword, AND
//     * before any 'static' keyword.
//  as the gcc version supports this and the C++11 version requires it.

// If DNG_NO_RETURN not defined, attempt to define using C++11 attribute.

#ifndef DNG_NO_RETURN
#if defined(__cplusplus)
#if __cplusplus >= 201103L
#define DNG_NO_RETURN [[noreturn]]
#define DNG_NO_RETURN_ENABLED 1
#endif
#endif
#endif

// If DNG_NO_RETURN still not defined, use GCC version or define to nothing.

#ifndef DNG_NO_RETURN
#ifdef __GNUC__
#define DNG_NO_RETURN __attribute__((noreturn))
#define DNG_NO_RETURN_ENABLED 1
#else
#define DNG_NO_RETURN
#define DNG_NO_RETURN_ENABLED 0
#endif
#endif

/*****************************************************************************/

/// Display a warning message. Note that this may just eat the message.

void ReportWarning (const char *message,
					const char *sub_message = NULL);
	
/*****************************************************************************/

/// Display an error message. Note that this may just eat the message.

void ReportError (const char *message,
				  const char *sub_message = NULL);
	
/*****************************************************************************/

/// \brief All exceptions thrown by the DNG SDK use this exception class.

class dng_exception : public std::exception
	{
	
	private:
	
		dng_error_code fErrorCode;
		
		std::string fErrorMsg;
	
	public:
	
		/// Construct an exception representing the given error code.
		/// \param code Error code this exception is for.
		
		dng_exception (dng_error_code code)
		
			: fErrorCode (code)

			
			{
			fErrorMsg = "dng_error: ";
			fErrorMsg += std::to_string (fErrorCode);
			}
		
		#if qDNGVerboseExceptions
		
		dng_exception (dng_error_code code,
					   const char *message,
					   const char *sub_message)

			: fErrorCode (code)

			{
			
			fErrorMsg = "dng_error: ";
			fErrorMsg += std::to_string (fErrorCode);
			
			if (message)
				{
				fErrorMsg += ": ";
				fErrorMsg += message;
				}
			
			if (sub_message)
				{
				fErrorMsg += " (";
				fErrorMsg += sub_message;
				fErrorMsg += ")";
				}
			
			}
		
		#endif	// qDNGVerboseExceptions

		virtual ~dng_exception ()
			{ 
			}

		/// Getter for error code of this exception
		/// \retval The error code of this exception.
		
		dng_error_code ErrorCode () const
			{
			return fErrorCode;
			}

		virtual char const * what () const noexcept override
			{
			return fErrorMsg.c_str ();
			}

	};
	
/******************************************************************************/

/// \brief Throw an exception based on an arbitrary error code.

DNG_NO_RETURN void Throw_dng_error (dng_error_code err,
									const char * message = NULL,
									const char * sub_message = NULL,
									bool silent = false);

/******************************************************************************/

/// \brief Convenience function to throw dng_exception with error code if
/// error_code is not dng_error_none .

inline void Fail_dng_error (dng_error_code err)
	{
	
	if (err != dng_error_none)
		{
		
		Throw_dng_error (err);
		
		}
		
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_unknown .

DNG_NO_RETURN inline void ThrowProgramError (const char * sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_unknown, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_overflow.

DNG_NO_RETURN inline void ThrowOverflow (const char * sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_overflow, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code 
/// dng_error_not_yet_implemented .

DNG_NO_RETURN inline void ThrowNotYetImplemented (const char * sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_not_yet_implemented, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_silent .

DNG_NO_RETURN inline void ThrowSilentError (const char *sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_silent, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_user_canceled .

DNG_NO_RETURN inline void ThrowUserCanceled ()
	{
	
	Throw_dng_error (dng_error_user_canceled);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_host_insufficient .

DNG_NO_RETURN inline void ThrowHostInsufficient (const char * sub_message = NULL,
								   bool silent = false)
	{
	
	Throw_dng_error (dng_error_host_insufficient, NULL, sub_message, silent);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_memory .

DNG_NO_RETURN inline void ThrowMemoryFull (const char * sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_memory, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_bad_format .

DNG_NO_RETURN inline void ThrowBadFormat (const char * sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_bad_format, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_matrix_math .

DNG_NO_RETURN inline void ThrowMatrixMath (const char * sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_matrix_math, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_open_file .

DNG_NO_RETURN inline void ThrowOpenFile (const char * sub_message = NULL, bool silent = false)
	{
	
	Throw_dng_error (dng_error_open_file, NULL, sub_message, silent);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_read_file .

DNG_NO_RETURN inline void ThrowReadFile (const char *sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_read_file, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_write_file .

DNG_NO_RETURN inline void ThrowWriteFile (const char *sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_write_file, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_end_of_file .

DNG_NO_RETURN inline void ThrowEndOfFile (const char *sub_message = NULL)
	{
	
	Throw_dng_error (dng_error_end_of_file, NULL, sub_message);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_file_is_damaged .

DNG_NO_RETURN inline void ThrowFileIsDamaged ()
	{
	
	Throw_dng_error (dng_error_file_is_damaged);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_image_too_big_dng .

DNG_NO_RETURN inline void ThrowImageTooBigDNG ()
	{
	
	Throw_dng_error (dng_error_image_too_big_dng);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_image_too_big_tiff .

DNG_NO_RETURN inline void ThrowImageTooBigTIFF ()
	{
	
	Throw_dng_error (dng_error_image_too_big_tiff);
	
	}

/*****************************************************************************/

/// \brief Convenience function to throw dng_exception with error code
/// dng_error_unsupported_dng .

DNG_NO_RETURN inline void ThrowUnsupportedDNG ()
	{
	
	Throw_dng_error (dng_error_unsupported_dng);
	
	}

/*****************************************************************************/

#endif
	
/*****************************************************************************/
