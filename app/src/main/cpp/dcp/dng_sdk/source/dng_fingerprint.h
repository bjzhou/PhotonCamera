/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Fingerprint (cryptographic hashing) support for generating strong hashes of image
 * data.
 */

/*****************************************************************************/

#ifndef __dng_fingerprint__
#define __dng_fingerprint__

/*****************************************************************************/

#include "dng_exceptions.h"
#include "dng_types.h"
#include "dng_stream.h"
#include "dng_string.h"

#include <cstring>
#include <unordered_set>
#include <vector>

/*****************************************************************************/

/// \brief Container fingerprint (MD5 only at present).

class dng_fingerprint
	{

	friend struct dng_fingerprint_less_than;
	friend class dng_md5_printer;
	
	public:
	
		static const size_t kDNGFingerprintSize = 16;

	private:
		
		uint8 data [kDNGFingerprintSize];
		
	public:
	
		dng_fingerprint ();
		
		explicit dng_fingerprint (const char *hex);
		
		dng_fingerprint (const dng_fingerprint& print);

		dng_fingerprint& operator= (const dng_fingerprint& print);

		/// Check if fingerprint is all zeros.

		bool IsNull () const;

		/// Same as IsNull but expresses intention of testing validity.

		bool IsValid () const
			{
			return !IsNull ();
			}

		/// Set to all zeros, a value used to indicate an invalid fingerprint.

		void Clear ()
			{
			*this = dng_fingerprint ();
			}

		const uint8 * Data () const
			{
			return data;
			}

		uint8 * MutableData ()
			{
			return data;
			}

		/// Test if two fingerprints are equal.
			
		bool operator== (const dng_fingerprint &print) const;
		
		/// Test if two fingerprints are not equal.

		bool operator!= (const dng_fingerprint &print) const
			{
			return !(*this == print);
			}
			
		/// Comparison test for fingerprints.
			
		bool operator< (const dng_fingerprint &print) const;
		
		/// Produce a 32-bit hash value from fingerprint used for faster hashing of
		/// fingerprints.
			
		uint32 Collapse32 () const; 

		/// Convert fingerprint to UTF-8 string.
		///
		/// \param resultStr The output array to which the UTF-8 encoding of the
		/// fingerprint will be written.

		void ToUtf8HexString (char resultStr [2 * kDNGFingerprintSize + 1]) const;

		/// Convert fingerprint to UTF-8 string and return result as a dng_string.

		dng_string ToUtf8HexString () const;
		
		/// Utility function to convert hex char to a numbrer.
		/// Returns -1 if invalid hex charactor.

		static int HexCharToNum (char hexChar);
		
		/// Convert UTF-8 string to fingerprint. Returns true on success, false on
		/// failure.
		///
		/// \param inputStr The input array from which the UTF-8 encoding of the
		/// fingerprint will be read.
		///
		/// \retval True indicates success.

		bool FromUtf8HexString (const char inputStr [2 * kDNGFingerprintSize + 1]);

		/// Convert dng_string string to fingerprint. Returns true on success,
		/// false on failure.
		///
		/// \param inputStr The input dng_string from which the UTF-8 encoding of the
		/// fingerprint will be read.
		///
		/// \retval True indicates success.

		bool FromUtf8HexString (const dng_string &inputStr);

		/// Convert fingerprint to UTF-8 string in UUID format (with possibly
		/// a few bits modified to conform to the UUID format rules) and
		/// return result as a dng_string.

		dng_string ToUtf8ClosestUUIDString () const;

	};

/*****************************************************************************/

/// \brief Utility to compare fingerprints (e.g., for sorting).

struct dng_fingerprint_less_than
	{

	/// Less-than comparison.

	bool operator() (const dng_fingerprint &a, 
					 const dng_fingerprint &b) const
		{

		return memcmp (a.data, 
					   b.data, 
					   sizeof (a.data)) < 0;

		}

	};

/******************************************************************************/

/// \brief Utility to hash fingerprints (e.g., for hashtables).

struct dng_fingerprint_hash
	{

	/// Hash function.

	size_t operator () (const dng_fingerprint &digest) const
		{

		return (size_t) digest.Collapse32 ();

		}

	};

/******************************************************************************/

typedef std::unordered_set<dng_fingerprint,
						   dng_fingerprint_hash> dng_fingerprint_table;

/******************************************************************************/

typedef std::vector<dng_fingerprint> dng_fingerprint_vector;

/******************************************************************************/

// Derived from the RSA Data Security, Inc. MD5 Message-Digest Algorithm.

// Copyright (C) 1991-2, RSA Data Security, Inc. Created 1991. All
// rights reserved.
// 
// License to copy and use this software is granted provided that it
// is identified as the "RSA Data Security, Inc. MD5 Message-Digest
// Algorithm" in all material mentioning or referencing this software
// or this function.
// 
// License is also granted to make and use derivative works provided
// that such works are identified as "derived from the RSA Data
// Security, Inc. MD5 Message-Digest Algorithm" in all material
// mentioning or referencing the derived work.
// 
// RSA Data Security, Inc. makes no representations concerning either
// the merchantability of this software or the suitability of this
// software for any particular purpose. It is provided "as is"
// without express or implied warranty of any kind.
// 
// These notices must be retained in any copies of any part of this
// documentation and/or software.

/// \brief Class to hash binary data to a fingerprint using the MD5 Message-Digest
/// Algorithm.

class dng_md5_printer
	{
	
	protected:
	
		dng_md5_printer ();
		
	public:
	
		virtual ~dng_md5_printer ()
			{
			}
		
		/// Reset the fingerprint.

		void Reset ();
		
		/// Append the data to the stream to be hashed.
		/// \param data The data to be hashed.
		/// \param inputLen The length of data, in bytes.

		virtual void ProcessPtr (const void *data,
								 uint32 inputLen);
					  
		/// Append the string to the stream to be hashed.
		/// \param text The string to be hashed.

		void ProcessString (const char *text)
			{
			
			ProcessPtr (text, (uint32) strlen (text));
			
			}

		void Process (const dng_fingerprint &digest)
			{

			ProcessPtr (digest.data,
						uint32 (sizeof (digest.data)));

			}

		void Process (const dng_string &str)
			{

			ProcessPtr (str.Get	   (),
						str.Length ());

			}

		/// Process the Boolean value x.
		/// \param x The value to be hashed.

		void Process_bool (bool x);
		
		/// Process the size_t value x.
		/// \param x The value to be hashed.

		void Process_size (size_t x);
		
		/// Get the fingerprint (i.e., result of the hash).

		virtual const dng_fingerprint & Result ();
		
	private:
	
		static void Encode (uint8 *output,
							const uint32 *input,
							uint32 len);

		static void Decode (uint32 *output,
							const uint8 *input,
							uint32 len);
							
		// F, G, H and I are basic MD5 functions.

		static inline uint32 F (uint32 x,
								uint32 y,
								uint32 z)
			{
			return (x & y) | (~x & z);
			}
			
		static inline uint32 G (uint32 x,
								uint32 y,
								uint32 z)
			{
			return (x & z) | (y & ~z);
			}
			
		static inline uint32 H (uint32 x,
								uint32 y,
								uint32 z)
			{
			return x ^ y ^ z;
			}
			
		static inline uint32 I (uint32 x,
								uint32 y,
								uint32 z)
			{
			return y ^ (x | ~z);
			}
			
		// FF, GG, HH, and II transformations for rounds 1, 2, 3, and 4.
		
		DNG_ATTRIB_NO_SANITIZE("unsigned-integer-overflow")
		static inline void FF (uint32 &a,
							   uint32 b,
							   uint32 c,
							   uint32 d,
							   uint32 x,
							   uint32 s,
							   uint32 ac)
			{
			a += F (b, c, d) + x + ac;
			a = (a << s) | (a >> (32 - s));
			a += b;
			}

		DNG_ATTRIB_NO_SANITIZE("unsigned-integer-overflow")
		static inline void GG (uint32 &a,
							   uint32 b,
							   uint32 c,
							   uint32 d,
							   uint32 x,
							   uint32 s,
							   uint32 ac)
			{
			a += G (b, c, d) + x + ac;
			a = (a << s) | (a >> (32 - s));
			a += b;
			}

		DNG_ATTRIB_NO_SANITIZE("unsigned-integer-overflow")
		static inline void HH (uint32 &a,
							   uint32 b,
							   uint32 c,
							   uint32 d,
							   uint32 x,
							   uint32 s,
							   uint32 ac)
			{
			a += H (b, c, d) + x + ac;
			a = (a << s) | (a >> (32 - s));
			a += b;
			}

		DNG_ATTRIB_NO_SANITIZE("unsigned-integer-overflow")
		static inline void II (uint32 &a,
							   uint32 b,
							   uint32 c,
							   uint32 d,
							   uint32 x,
							   uint32 s,
							   uint32 ac)
			{
			a += I (b, c, d) + x + ac;
			a = (a << s) | (a >> (32 - s));
			a += b;
			}

		static void MD5Transform (uint32 state [4],
								  const uint8 block [64]);
		
	private:
	
		uint32 state [4];
		
		uint32 count [2];
		
		uint8 buffer [64];
		
		bool final;
		
		dng_fingerprint result;
		
	};

/*****************************************************************************/

/// \brief A dng_stream based interface to the MD5 printing logic.

class dng_md5_printer_stream : public dng_stream, public dng_md5_printer
	{
	
	private:
	
		uint64 fNextOffset;

	public:

		/// Create an empty MD5 printer stream.

		dng_md5_printer_stream ()
		
			:	fNextOffset (0)
			
			{
			}

		void ProcessPtr (const void *data,
						 uint32 inputLen) override
			{
			
			// Force data to be flushed, which ensures that interleaved
			// Process* and Put* calls get serialized correctly.

			Flush ();
			
			dng_md5_printer::ProcessPtr (data,
										 inputLen);
			
			}
					  
		uint64 DoGetLength () override
			{
			
			return fNextOffset;
			
			}
	
		void DoRead (void * /* data */,
					 uint32 /* count */,
					 uint64 /* offset */) override
			{
			
			ThrowProgramError ();
			
			}
							 
		void DoSetLength (uint64 length) override
			{
			
			if (length != fNextOffset)
				{
				ThrowProgramError ();
				}
				
			}
							 
		void DoWrite (const void *data,
					  uint32 count2,
					  uint64 offset) override
			{
			
			if (offset != fNextOffset)
				{
				ThrowProgramError ();
				}
				
			dng_md5_printer::ProcessPtr (data, count2);
			
			fNextOffset += count2;
			
			}

		const dng_fingerprint & Result () override
			{
			
			Flush ();
			
			return dng_md5_printer::Result ();
			
			}

	};

/*****************************************************************************/

/// \brief A version of dng_md5_printer_stream that is always little-endian.

class dng_md5_printer_le_stream : public dng_md5_printer_stream
	{

	public:

		dng_md5_printer_le_stream ()
			{
			SetLittleEndian ();
			}
	
	};

/*****************************************************************************/

// A MD5 printer intended to be used directly with no portability requirements.

class dng_md5_direct_printer: public dng_md5_printer
	{

	public:

		dng_md5_direct_printer ()
			{
			}

	};

/*****************************************************************************/

#endif	// __dng_fingerprint__
	
/*****************************************************************************/
