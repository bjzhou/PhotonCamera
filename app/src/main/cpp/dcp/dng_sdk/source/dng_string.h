/*****************************************************************************/
// Copyright 2006-2020 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Text string representation.
 */

/*****************************************************************************/

#ifndef __dng_string__
#define __dng_string__

/*****************************************************************************/

#include "dng_types.h"
#include "dng_memory.h"

#include <memory>
#include <string>
#include <unordered_set>
#include <set>

/*****************************************************************************/

typedef std::basic_string<char,
						  std::char_traits<char>,
						  dng_std_allocator<char>> dng_std_string;
						  
/*****************************************************************************/

class dng_string
	{
	
	private:
	
		// Strings are always stored using UTF-8 encoding. Shared pointers
		// are used to provide copy-on-write optimizations.	 Null strings
		// are always encoded as a null shared pointer (not pointer to a
		// null string).
		
		std::shared_ptr<const dng_std_string> fData;
		
	public:
	
		dng_string ();
		
		dng_string (const dng_string &s);
		
		dng_string (const char *s);
		
		dng_string & operator= (const dng_string &s);
		
		~dng_string ();
		
		const char * Get () const;
		
		bool IsASCII () const;
		
		void Set (const char *s);
	
		void Set_ASCII (const char *s);
		
		void Set_UTF8 (const char *s);
		
		uint32 Get_SystemEncoding (dng_memory_data &buffer) const;
		
		void Set_SystemEncoding (const char *s);
		
		bool ValidSystemEncoding () const;
		
		void Set_JIS_X208_1990 (const char *s);
				  
		static uint32 DecodeUTF8 (const char *&s,
								  uint32 maxBytes = 6,
								  bool *isValid = NULL);
								  
		static bool IsUTF8 (const char *s);
		
		void Set_UTF8_or_System (const char *s);

		uint32 Get_UTF16 (dng_memory_data &buffer) const;
		
		void Set_UTF16 (const uint16 *s);
		
		void Clear ();
		
		void Truncate (uint32 maxBytes);
		
		bool TrimTrailingBlanks ();
		
		bool TrimLeadingBlanks ();
		
		bool IsEmpty () const;
		
		bool NotEmpty () const
			{
			return !IsEmpty ();
			}
			
		uint32 Length () const;
		
		bool operator== (const dng_string &s) const;
		
		bool operator!= (const dng_string &s) const
			{
			return !(*this == s);
			}
			
		// A utility for doing case insensitive comparisons on strings...
		
		static bool Matches (const char *t,
							 const char *s,
							 bool case_sensitive = false);
							 
		// ...wrapped up for use with dng_string.

		bool Matches (const char *s,
					  bool case_sensitive = false) const;

		bool StartsWith (const char *s,
						 bool case_sensitive = false) const;
						 
		bool EndsWith (const char *s,
					   bool case_sensitive = false) const;
					   
		bool Contains (const char *s,
					   bool case_sensitive = false,
					   int32 *match_offset = NULL) const;
						 
		bool Replace (const char *old_string,
					  const char *new_string,
					  bool case_sensitive = true);
		
		void ReplaceChars (char oldChar,
						   char newChar);
		
		bool TrimLeading (const char *s,
						  bool case_sensitive = false);
						  
		void Append (const char *s);
		
		void SetUppercase ();
		
		void SetLowercase ();
		
		void SetLineEndings (char ending);
		
		void SetLineEndingsToNewLines ()
			{
			SetLineEndings ('\n');
			}
			
		void SetLineEndingsToReturns ()
			{
			SetLineEndings ('\r');
			}
			
		void StripLowASCII ();
		
		void ForceASCII ();
		
		int32 Compare (const dng_string &s,
					   bool digitsAsNumber = true) const;

		// A utility to convert fields of numbers into comma separated numbers.

		void NormalizeAsCommaSeparatedNumbers ();

	};
	
/*****************************************************************************/

class dng_string_hash
	{

	public:
		
		size_t operator () (const dng_string &s) const;
		
	};

/*****************************************************************************/

typedef std::unordered_set<dng_string,
						   dng_string_hash> dng_string_table;

/*****************************************************************************/

struct dng_string_less
	{

	bool operator () (const dng_string& a, const dng_string& b) const
		{
		return (strcmp (a.Get(), b.Get()) < 0);
		}

	};

/*****************************************************************************/

typedef std::set<dng_string, dng_string_less> dng_string_ordered_table;

/*****************************************************************************/

#endif	// __dng_string__
	
/*****************************************************************************/
