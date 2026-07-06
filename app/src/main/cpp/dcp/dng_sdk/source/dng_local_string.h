/*****************************************************************************/
// Copyright 2015-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_local_string__
#define __dng_local_string__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_string.h"
#include "dng_types.h"

#include <vector>

/*****************************************************************************/

class dng_local_string
	{

	private:

		dng_string fDefaultText;

		struct dictionary_entry
			{

			dng_string fLanguage;

			dng_string fTranslation;

			dictionary_entry (const dng_string &language,
							  const dng_string &translation)

				:	fLanguage	 (language)
				,	fTranslation (translation)

				{

				}

			};

		std::vector<dictionary_entry> fDictionary;

	public:

		dng_local_string ();

		dng_local_string (const dng_string &s);

		~dng_local_string ();

		void Clear ();

		void SetDefaultText (const dng_string &s);

		void AddTranslation (const dng_string &language,
							 const dng_string &translation);
		
		void Set (const char *s);

		const dng_string & DefaultText () const
			{
			return fDefaultText;
			}

		dng_string & DefaultText ()
			{
			return fDefaultText;
			}

		uint32 TranslationCount () const
			{
			return (uint32) fDictionary.size ();
			}

		const dng_string & Language (uint32 index) const
			{
			return fDictionary [index] . fLanguage;
			}

		const dng_string & Translation (uint32 index) const
			{
			return fDictionary [index] . fTranslation;
			}

		const dng_string & LocalText (const dng_string &locale) const;

		bool IsEmpty () const
			{
			return DefaultText ().IsEmpty ();
			}
		
		bool NotEmpty () const
			{
			return !IsEmpty ();
			}

		bool operator== (const dng_local_string &s) const;
		
		bool operator!= (const dng_local_string &s) const
			{
			return !(*this == s);
			}
		
		void Truncate (uint32 maxBytes);
			
	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
