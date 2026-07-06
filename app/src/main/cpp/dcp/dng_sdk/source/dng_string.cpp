/*****************************************************************************/
// Copyright 2006-2020 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_string.h"

#include "dng_assertions.h"
#include "dng_exceptions.h"
#include "dng_fingerprint.h"
#include "dng_flags.h"
#include "dng_mutex.h"
#include "dng_utils.h"
#include "dng_safe_arithmetic.h"

#if qMacOS
#include <TargetConditionals.h>
#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
#include <MobileCoreServices/MobileCoreServices.h>
#else
#include <CoreServices/CoreServices.h>
#endif
#include <CoreServices/CoreServices.h>
#endif

#if qWinOS
#include <windows.h>
#endif

#if qiPhone || qAndroid || qLinux
#include <ctype.h> // for isdigit
#endif

/*****************************************************************************/

const uint32 kREPLACEMENT_CHARACTER	= 0x0000FFFD;

/*****************************************************************************/

// Returns the length of the zero-terminated string 's'. Throws a dng_exception
// if the length of 's' is too large to be represented as a uint32.

static uint32 strlenAsUint32 (const char *s)
	{
	
	uint32 lengthAsUint32 = 0;

	ConvertUnsigned (strlen (s), &lengthAsUint32);
	
	return lengthAsUint32;
	
	}

/*****************************************************************************/

#if qMacOS

static void Assign_Multibyte (dng_string &dngString,
							  const char *otherString,
							  TextEncoding encoding)
	{
	
	dng_safe_uint32 aSize (strlenAsUint32 (otherString));
	
	if (aSize.Get () > 0)
		{

		dng_safe_uint32 aBufSize = aSize * 6u + 256u;
		
		dng_memory_data aBuf (aBufSize + 1u);
		
		UnicodeMapping aMapping;
		
		aMapping.unicodeEncoding = ::CreateTextEncoding (kTextEncodingUnicodeV3_0,
														 kUnicodeNoSubset,
														 kUnicodeUTF8Format);
														 
		aMapping.otherEncoding	 = encoding;
		aMapping.mappingVersion	 = kUnicodeUseLatestMapping;

		TextToUnicodeInfo aInfo = NULL;
		
		if (::CreateTextToUnicodeInfo (&aMapping, &aInfo) == noErr)
			{
		
			ByteCount aInput  = 0;
			ByteCount aOutput = 0;
			
			::ConvertFromTextToUnicode (aInfo,
										aSize.Get (),
										otherString,
										kUnicodeUseFallbacksMask |
										kUnicodeLooseMappingsMask,
										0,
										NULL,
										NULL,
										NULL,
										aBufSize.Get (),
										&aInput,
										&aOutput,
										(UniChar *) aBuf.Buffer ());
									   
			::DisposeTextToUnicodeInfo (&aInfo);
			
			if (aOutput > 0 && aOutput <= aBufSize.Get ())
				{
			
				char *aBufChar = aBuf.Buffer_char ();
			
				aBufChar [aOutput] = 0;
				
				dngString.Set (aBufChar);
				
				return;
				
				}
							
			}

		}
		
	dngString.Clear ();

	}

static uint32 Extract_Multibyte (const dng_string &dngString,
								 dng_memory_data &buffer,
								 TextEncoding encoding)
	{
	
	dng_safe_uint32 aSize (dngString.Length ());
	
	if (aSize.Get () > 0)
		{
	
		dng_safe_uint32 aBufSize = aSize * 2u + 256u;
		
		dng_memory_data tempBuffer (aBufSize);
		
		UnicodeMapping aMapping;
		
		aMapping.unicodeEncoding = ::CreateTextEncoding (kTextEncodingUnicodeV3_0,
														 kUnicodeNoSubset,
														 kUnicodeUTF8Format);
														 
		aMapping.otherEncoding	 = encoding;
		aMapping.mappingVersion	 = kUnicodeUseLatestMapping;

		UnicodeToTextInfo aInfo = NULL;
		
		if (::CreateUnicodeToTextInfo (&aMapping, &aInfo) == noErr)
			{
			
			ByteCount aInput  = 0;
			ByteCount aOutput = 0;
			
			::ConvertFromUnicodeToText (aInfo,
										aSize.Get (),
										(const UniChar *) dngString.Get (),
										kUnicodeUseFallbacksMask  |
										kUnicodeLooseMappingsMask |
										kUnicodeDefaultDirectionMask,
										0,
										NULL,
										NULL,
										NULL,
										aBufSize.Get (),
										&aInput,
										&aOutput,
										tempBuffer.Buffer_char ());
										
			::DisposeUnicodeToTextInfo (&aInfo);
			
			if (aOutput > 0)
				{

				uint32 aOutputAsUint32 = 0;

				ConvertUnsigned (aOutput, &aOutputAsUint32);
				
				buffer.Allocate (dng_safe_uint32 (aOutputAsUint32) + 1u);
				
				memcpy (buffer.Buffer (),
						tempBuffer.Buffer (),
						aOutputAsUint32);
						
				buffer.Buffer_char () [aOutputAsUint32] = 0;
				
				return aOutputAsUint32;
				
				}
				
			}
			
		}
		
	buffer.Allocate (1);
	
	buffer.Buffer_char () [0] = 0;
	
	return 0;
	
	}
	
static void Assign_SystemEncoding (dng_string &dngString,
								   const char *otherString)
	{ 
	
	TextEncoding aEncoding;
	
	::UpgradeScriptInfoToTextEncoding (smCurrentScript,
									   //smSystemScript,
									   //kTextScriptDontCare,
									   kTextLanguageDontCare,
									   kTextRegionDontCare,
									   NULL,
									   &aEncoding);
									   
	Assign_Multibyte (dngString,
					  otherString,
					  aEncoding);

	}
	
static uint32 Extract_SystemEncoding (const dng_string &dngString,
									  dng_memory_data &buffer)
	{ 
	
	TextEncoding aEncoding;
	
	::UpgradeScriptInfoToTextEncoding (smCurrentScript,
									   //smSystemScript,
									   //kTextScriptDontCare,
									   kTextLanguageDontCare,
									   kTextRegionDontCare,
									   NULL,
									   &aEncoding);
									   
	return Extract_Multibyte (dngString,
							  buffer,
							  aEncoding);

	}
	
static void Assign_JIS_X208_1990 (dng_string &dngString,
								  const char *otherString)
	{
	
	Assign_Multibyte (dngString,
					  otherString,
					  kTextEncodingJIS_X0208_90);

	}

#endif

/*****************************************************************************/

#if qWinOS

static void Assign_Multibyte (dng_string &dngString,
							  const char *otherString,
							  UINT encoding)
	{
	
	DNG_ASSERT (sizeof (WCHAR) == 2, "WCHAR must be 2 bytes");
	
	const dng_safe_uint32 otherStringLen (strlenAsUint32 (otherString));

	const dng_safe_int32 aSize (otherStringLen);

	if (aSize.Get () > 0)
		{
		
		dng_safe_uint32 aBufCharsUint32 = otherStringLen * 3u + 128u;

		dng_safe_int32 aBufChars (aBufCharsUint32);

		dng_safe_uint32 bytesToAllocate = (aBufCharsUint32 + 1u) * 2u;

		dng_memory_data aBuf (bytesToAllocate);
		
		int aResult = ::MultiByteToWideChar (encoding,
											 0,
											 otherString,
											 aSize.Get (),
											 (WCHAR *) aBuf.Buffer (),
											 aBufChars.Get ());
											 
		if (aResult > 0 && aResult <= aBufChars.Get ())
			{
			
			uint16 * aUTF16 = aBuf.Buffer_uint16 ();
			
			aUTF16 [aResult] = 0;
			
			dngString.Set_UTF16 (aUTF16);
		
			return;
			
			}
			
		}
		
	dngString.Clear ();
	
	}

static uint32 Extract_Multibyte (const dng_string &dngString,
								 dng_memory_data &buffer,
								 UINT encoding)
	{
	
	DNG_ASSERT (sizeof (WCHAR) == 2, "WCHAR must be 2 bytes");
	
	dng_memory_data sBuffer;
	
	int aCount = dngString.Get_UTF16 (sBuffer);

	if (aCount < 0)
		{
		return 0;
		}

	dng_safe_uint32 aCountAsUint32 (static_cast<uint32> (aCount));

	dng_safe_uint32 dBufSize = aCountAsUint32 * 2u + 256u;
	
	dng_memory_data dBuffer (dBufSize);
	
	int aResult = ::WideCharToMultiByte (encoding,
										 0,
										 (WCHAR *) sBuffer.Buffer (),
										 aCount,
										 dBuffer.Buffer_char (),
										 dBufSize.Get (),
										 NULL,
										 NULL);
										 
	if (aResult < 0)
		aResult = 0;

	dng_safe_uint32 aResultAsUint32 (static_cast<uint32> (aResult));
		
	buffer.Allocate (aResultAsUint32 + 1u);
	
	memcpy (buffer.Buffer (),
			dBuffer.Buffer (),
			aResult);
			
	buffer.Buffer_char () [aResult] = 0;

	return aResultAsUint32.Get ();
	
	}

static void Assign_SystemEncoding (dng_string &dngString,
								   const char *otherString)
	{ 
	
	Assign_Multibyte (dngString,
					  otherString,
					  ::GetACP ());

	}
	
static uint32 Extract_SystemEncoding (const dng_string &dngString,
									  dng_memory_data &buffer)
	{ 
	
	return Extract_Multibyte (dngString,
							  buffer,
							  ::GetACP ());

	}
	
static void Assign_JIS_X208_1990 (dng_string &dngString,
								  const char *otherString)
	{
	
	// From MSDN documentation: 20932 = JIS X 0208-1990 & 0121-1990
	
	const UINT kJIS = 20932;
	
	Assign_Multibyte (dngString,
					  otherString,
					  kJIS);

	}

#endif

/*****************************************************************************/

static bool IsASCII (const char *s)
	{
	
	if (!s)
		{
		
		return true;
		
		}
	
	while (true)
		{
		
		uint8 c = (uint8) *(s++);
		
		if (c == 0)
			{
			
			break;
			
			}
		
		if (c & 0x80)
			{
			
			return false;
			
			}
			
		}
		
	return true;
	
	}

/*****************************************************************************/

dng_string::dng_string ()

	:	fData ()
	
	{
	
	}

/*****************************************************************************/

dng_string::dng_string (const dng_string &s)

	:	fData (s.fData)
	
	{
	
	}

/*****************************************************************************/

dng_string::dng_string (const char *s)

	:	fData ()
	
	{
	
	Set (s);
	
	}

/*****************************************************************************/

dng_string & dng_string::operator= (const dng_string &s)
	{
	
	if (this != &s)
		{
		
		fData = s.fData;
				
		}
		
	return *this;
	
	}

/*****************************************************************************/

dng_string::~dng_string ()
	{
	
	}
				
/*****************************************************************************/

const char * dng_string::Get () const
	{
	
	if (fData.get ())
		{
		
		return fData->c_str ();
		
		}
		
	return "";
	
	}

/*****************************************************************************/

bool dng_string::IsASCII () const
	{
	
	return ::IsASCII (Get ());
		
	}
		
/*****************************************************************************/

void dng_string::Set (const char *s)
	{
	
	// Measure the new length.
	
	uint32 newLen = (s != NULL ? strlenAsUint32 (s) : 0);
	
	// If it is a NULL string, then clear the buffer.
	
	if (newLen == 0)
		{
		
		fData.reset ();
		
		}
		
	// Else we need to copy the bytes.
	
	else
		{
	
		if (!fData.get () || fData->compare (s) != 0)
			{
			
			fData.reset (new dng_std_string (s));
			
			}
		
		}
				
	}

/*****************************************************************************/

void dng_string::Set_ASCII (const char *s)
	{
	
	if (::IsASCII (s))
		{
		
		Set (s);
		
		}
		
	else
		{
	
		Set_SystemEncoding (s);

		}
	
	}
		
/*****************************************************************************/

static void AppendUnicodeChar32 (dng_std_string &buffer, uint32 aChar)
	{
	
	if (aChar < 0x00000080)
		{
		buffer.push_back ((char) aChar);
		}
		
	else if (aChar < 0x00000800)
		{
		buffer.push_back ((char) ((aChar >> 6) | 0x000000C0));
		buffer.push_back ((char) ((aChar & 0x0000003F) | 0x00000080));
		}
		
	else if (aChar < 0x00010000)
		{
		buffer.push_back ((char) ( (aChar >> 12) | 0x000000E0));
		buffer.push_back ((char) (((aChar >>  6) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) ( (aChar & 0x0000003F) | 0x00000080));
		}
		
	else if (aChar < 0x00200000)
		{
		buffer.push_back ((char) ( (aChar >> 18) | 0x000000F0));
		buffer.push_back ((char) (((aChar >> 12) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) (((aChar >>  6) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) ( (aChar & 0x0000003F) | 0x00000080));
		}
		
	else if (aChar < 0x04000000)
		{
		buffer.push_back ((char) ( (aChar >> 24) | 0x000000F8));
		buffer.push_back ((char) (((aChar >> 18) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) (((aChar >> 12) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) (((aChar >>  6) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) ( (aChar & 0x0000003F) | 0x00000080));
		}
		
	else
		{
		buffer.push_back ((char) ( (aChar >> 30) | 0x000000FC));
		buffer.push_back ((char) (((aChar >> 24) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) (((aChar >> 18) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) (((aChar >> 12) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) (((aChar >>  6) & 0x0000003F) | 0x00000080));
		buffer.push_back ((char) ( (aChar & 0x0000003F) | 0x00000080));
		}
	
	}

/*****************************************************************************/

void dng_string::Set_UTF8 (const char *s)
	{
	
	dng_safe_uint32 len (strlenAsUint32 (s));
	
	const char *sEnd = s + len.Get ();
	
	// Worst case expansion is 1-byte characters expanding to
	// replacement character, which requires 3 bytes.
	
	dng_safe_uint32 destBufferLength (len * 3u);

	dng_std_string buffer;
	
	buffer.reserve (destBufferLength.Get ());

	while (s < sEnd)
		{
		
		uint32 aChar = DecodeUTF8 (s, (uint32) (sEnd - s));
		
		if (aChar > 0x7FFFFFFF)
			{
			aChar = kREPLACEMENT_CHARACTER;
			}
			
		#if qDNGValidate
		
		if (aChar == kREPLACEMENT_CHARACTER)
			{
			ReportWarning ("Expected UTF-8 value is not valid UTF-8 (or contains a kREPLACEMENT_CHARACTER)");
			}
		
		#endif
		
		AppendUnicodeChar32 (buffer, aChar);
			
		}
		
	Set (buffer.c_str ());
	
	}
	
/*****************************************************************************/

uint32 dng_string::Get_SystemEncoding (dng_memory_data &buffer) const
	{
	
	if (IsASCII ())
		{
		
		dng_safe_uint32 len (Length ());
		
		const dng_safe_uint32 destBufferLength = len + 1u;

		buffer.Allocate (destBufferLength);

		memcpy (buffer.Buffer (), Get (), destBufferLength.Get ());
		
		return len.Get ();
		
		}
		
	else
		{
		
		#if qMacOS || qWinOS
		
		return Extract_SystemEncoding (*this, buffer);
		
		#else
		
		// Fallback logic to force the string to ASCII.
		
		dng_string temp (*this);
		
		temp.ForceASCII ();
		
		return temp.Get_SystemEncoding (buffer);
		
		#endif
		
		}
	
	}
		
/*****************************************************************************/

void dng_string::Set_SystemEncoding (const char *s)
	{
	
	if (::IsASCII (s))
		{
		
		Set (s);
		
		}
		
	else
		{
		
		#if qMacOS || qWinOS
	
		Assign_SystemEncoding (*this, s);
		
		#else
		
		// Fallback logic that just grabs the ASCII characters and
		// ignores the non-ASCII characters.
		
		dng_safe_uint32 len = strlenAsUint32 (s);
		
		dng_std_string buffer;
	
		buffer.reserve (len.Get ());
		
		while (*s)
			{
			
			uint8 c = (uint8) *(s++);
			
			if ((c & 0x80) == 0)
				{
				
				buffer.push_back ((char) c);
				
				}
				
			}
			
		Set (buffer.c_str ());
		
		#endif
	
		}

	}
		
/*****************************************************************************/

bool dng_string::ValidSystemEncoding () const
	{
	
	if (IsASCII ())
		{
		
		return true;
		
		}
		
	dng_memory_data buffer;
	
	Get_SystemEncoding (buffer);
	
	dng_string temp;
	
	temp.Set_SystemEncoding (buffer.Buffer_char ());
	
	return (*this == temp);
	
	}
		
/*****************************************************************************/

void dng_string::Set_JIS_X208_1990 (const char *s)
	{
	
	if (::IsASCII (s))
		{
		
		Set (s);
		
		}
		
	else
		{
		
		#if qMacOS || qWinOS
	
		Assign_JIS_X208_1990 (*this, s);
		
		#else
		
		// Fallback to the ASCII extraction logic.
		
		Set_SystemEncoding (s);
		
		#endif
	
		}
	
	}

/*****************************************************************************/

uint32 dng_string::DecodeUTF8 (const char *&s,
							   uint32 maxBytes,
							   bool *isValid)
	{
	
	static const uint8 gUTF8Bytes [256] =
		{
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
		3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,5,5,5,5,6,6,6,6
		};
		
	if (isValid)
		{
		*isValid = true;
		}
			
	const uint8 *nBuf = (const uint8 *) s;
	
	uint32 aChar = nBuf [0];
	
	uint32 aSize = gUTF8Bytes [aChar];
	
	if (aSize > maxBytes)
		{
		
		s += maxBytes;
		
		if (isValid)
			{
			*isValid = false;
			}
			
		return kREPLACEMENT_CHARACTER;
		
		}
		
	s += aSize;

	for (uint32 extra = 1; extra < aSize; extra++)
		{
		
		if ((nBuf [extra] & 0xC0) != 0x80)
			{
			
			if (isValid)
				{
				*isValid = false;
				}
				
			return kREPLACEMENT_CHARACTER;

			}
		
		}
	
	switch (aSize)
		{
		
		case 0:
			{
			
			s++;		// Don't get stuck in infinite loop
			
			if (isValid)
				{
				*isValid = false;
				}
			
			return kREPLACEMENT_CHARACTER;
			
			}
			
		case 1:
			{
			
			return aChar;
			
			}
			
		case 2:
			{
			
			aChar = ((aChar << 6) + nBuf [1]) - (uint32) 0x00003080UL;
			
			break;
			
			}
			
		case 3:
			{
			
			aChar =	 ((((aChar << 6) + nBuf [1])
							   << 6) + nBuf [2]) - (uint32) 0x000E2080UL;
							   
			break;
			
			}
							 
		case 4:
			{
			
			aChar = ((((((aChar << 6) + nBuf [1])
								<< 6) + nBuf [2])
								<< 6) + nBuf [3]) - (uint32) 0x03C82080UL;
								
			break;
			
			}
							   
		case 5:
			{
			
			aChar = ((((((((aChar << 6) + nBuf [1])
								  << 6) + nBuf [2])
								  << 6) + nBuf [3])
								  << 6) + nBuf [4]) - (uint32) 0xFA082080UL;
								  
			break;
			
			}
								 
		case 6:
			{
			
			aChar = ((((((((((aChar << 6) + nBuf [1])
									<< 6) + nBuf [2])
									<< 6) + nBuf [3])
									<< 6) + nBuf [4])
									<< 6) + nBuf [5]) - (uint32) 0x82082080UL;
									
			break;
			
			}
								   
		}
		
	if (aChar < 0x7F || aChar > 0x0010FFFF)
		{
		
		if (isValid)
			{
			*isValid = false;
			}
		
		return kREPLACEMENT_CHARACTER;
			
		}
	
	return aChar;
	
	}

/*****************************************************************************/

bool dng_string::IsUTF8 (const char *s)
	{
	
	uint32 len = strlenAsUint32 (s);
	
	const char *sEnd = s + len;
	
	while (s < sEnd)
		{
		
		bool isValid = true;
		
		(void) DecodeUTF8 (s, (uint32) (sEnd - s), &isValid);
		
		if (!isValid)
			{
			return false;
			}
			
		}
	
	return true;
	
	}

/*****************************************************************************/

void dng_string::Set_UTF8_or_System (const char *s)
	{
	
	if (::IsASCII (s))
		{
		
		Set (s);
		
		}
		
	else if (IsUTF8 (s))
		{
		
		Set_UTF8 (s);
		
		}
		
	else
		{
		
		Set_SystemEncoding (s);
		
		}
	
	}

/*****************************************************************************/

uint32 dng_string::Get_UTF16 (dng_memory_data &buffer) const
	{
	
	// Count *exactly* how many 16-bit words required in buffer.
	
	dng_safe_uint32 count = 0u;
	
	const char *sPtr = Get ();
	
	while (*sPtr)
		{
		
		uint32 x = DecodeUTF8 (sPtr);
		
		if (x <= 0x0000FFFF ||
			x >	 0x0010FFFF)
			{
			
			count += 1u;
			
			}
			
		else
			{
			
			count += 2u;
			
			}
			
		}

	const dng_safe_uint32 destBufferLength = count + 1u;

	buffer.Allocate (destBufferLength.Get (), 
					 sizeof (uint16));
	
	uint16 *dPtr = buffer.Buffer_uint16 ();
	
	sPtr = Get ();
	
	while (*sPtr)
		{
		
		uint32 x = DecodeUTF8 (sPtr);
		
		if (x <= 0x0000FFFF)
			{
			
			*(dPtr++) = (uint16) x;
			
			}
		
		else if (x > 0x0010FFFF)
			{
			
			*(dPtr++) = (uint16) kREPLACEMENT_CHARACTER;
			
			}
			
		else
			{
			
			x -= 0x00010000;
			
			*(dPtr++) = (uint16) ((x >> 10		 ) + 0x0000D800);
			*(dPtr++) = (uint16) ((x & 0x000003FF) + 0x0000DC00);
			
			}
			
		}
		
	*dPtr = 0;
	
	return count.Get ();

	}
		
/*****************************************************************************/

void dng_string::Set_UTF16 (const uint16 *s)
	{
	
	if (!s)
		{
		Clear ();
		return;
		}
	
	bool swap = false;
	
	if (s [0] == 0xFFFE)		// Swapped byte order marker
		{
		swap = true;
		s++;
		}
		
	else if (s [0] == 0xFEFF)	// Non-swapped byte order marker
		{
		s++;
		}

	dng_safe_uint32 length16 (0u);
	
	while (s [length16.Get ()] != 0)
		{
		length16 += 1u;
		}
		
	const uint16 *sEnd = s + length16.Get ();
	
	const dng_safe_uint32 destBufferSize = length16 * 6u;
	
	dng_std_string buffer;
	
	buffer.reserve (destBufferSize.Get ());

	while (s < sEnd)
		{
		
		uint32 aChar = *s++;
		
		if (swap)
			{
			aChar = ((aChar << 8) | (aChar >> 8)) & 0x0000FFFF;
			}
			
		if ((aChar >= 0x0000D800) && (aChar <= 0x0000DBFF) && (s < sEnd)) 
			{
				
			uint32 aLow = *s;
				
			if (swap)
				{
				aLow = ((aLow << 8) | (aLow >> 8)) & 0x0000FFFF;
				}
			
			if ((aLow >= 0x0000DC00) && (aLow <= 0x0000DFFF))
				{
				
				aChar = ((aChar - 0x0000D800) << 10) +
						(aLow - 0x0000DC00) +
						0x00010000;
				
				s++;
				
				}
				
			}
			
		if (aChar > 0x7FFFFFFF)
			{
			aChar = kREPLACEMENT_CHARACTER;
			}
			
		AppendUnicodeChar32 (buffer, aChar);
			
		}
		
	Set (buffer.c_str ());
	
	}
				
/*****************************************************************************/

void dng_string::Clear ()
	{
	
	fData.reset ();
	
	}
		
/*****************************************************************************/

void dng_string::Truncate (uint32 maxBytes)
	{
	
	uint32 len = Length ();
	
	if (len > maxBytes)
		{
		
		dng_std_string newData (*fData);
		
		uint8 *s = (uint8 *) newData.data ();
		
		// Don't truncate on an extension character.  Extensions characters
		// in UTF-8 have the 0x80 bit set and the 0x40 bit clear.
		
		while (maxBytes > 0 && ((s [maxBytes]) & 0xC0) == 0x80)
			{
			
			maxBytes--;
			
			}
			
		s [maxBytes] = 0;
		
		Set (newData.c_str ());

		}
	
	}
		
/*****************************************************************************/

bool dng_string::TrimTrailingBlanks ()
	{
	
	bool didTrim = false;
	
	if (fData.get () && !fData->empty () && fData->back () == ' ')
		{
		
		const char *s = fData->c_str ();
		
		uint32 len = strlenAsUint32 (s);
		
		while (len > 0 && s [len - 1] == ' ')
			{
			len--;
			didTrim = true;
			}
			
		dng_std_string newData (*fData);
		
		newData.erase (len);

		Set (newData.c_str ());
			
		}
		
	return didTrim;
		
	}
				
/*****************************************************************************/

bool dng_string::TrimLeadingBlanks ()
	{
	
	bool didTrim = false;
	
	const char *s = Get ();
	
	while (*s == ' ')
		{
		s++;
		didTrim = true;
		}
		
	if (didTrim)
		{
		Set (s);
		}
		
	return didTrim;
		
	}
				
/*****************************************************************************/

bool dng_string::IsEmpty () const
	{
	
	return !fData.get ();
	
	}
		
/*****************************************************************************/

uint32 dng_string::Length () const
	{
	
	uint32 lengthAsUint32 = 0;
	
	if (fData.get ())
		{
		ConvertUnsigned (fData->length (), &lengthAsUint32);
		}
		
	return lengthAsUint32;
	
	}

/*****************************************************************************/

bool dng_string::operator== (const dng_string &s) const
	{
	
	if (fData.get ())
		{
		if (s.fData.get ())
			{
			return *fData == *s.fData;
			}
		else
			{
			return false;
			}
		}
	else
		{
		if (s.fData.get ())
			{
			return false;
			}
		else
			{
			return true;
			}
		}
		
	}

/*****************************************************************************/

bool dng_string::Matches (const char *t,
						  const char *s,
						  bool case_sensitive)
	{
	
	while (*s != 0)
		{
		
		char c1 = *(s++);
		char c2 = *(t++);
		
		if (!case_sensitive)
			{
			c1 = ForceUppercase (c1);
			c2 = ForceUppercase (c2);
			}
			
		if (c1 != c2)
			{
			return false;
			}
			
		}
		
	return (*t == 0);
	
	}

/*****************************************************************************/

bool dng_string::Matches (const char *s,
						  bool case_sensitive) const
	{
	
	return dng_string::Matches (Get (), s, case_sensitive);
	
	}

/*****************************************************************************/

bool dng_string::StartsWith (const char *s,
							 bool case_sensitive) const
	{
	
	const char *t = Get ();
	
	while (*s != 0)
		{
		
		char c1 = *(s++);
		char c2 = *(t++);
		
		if (!case_sensitive)
			{
			c1 = ForceUppercase (c1);
			c2 = ForceUppercase (c2);
			}
			
		if (c1 != c2)
			{
			return false;
			}
			
		}
		
	return true;
	
	}

/*****************************************************************************/

bool dng_string::EndsWith (const char *s,
						   bool case_sensitive) const
	{
	
	uint32 len1 = Length ();
	
	uint32 len2 = strlenAsUint32 (s);
	
	if (len1 < len2)
		{
		return false;
		}
		
	const char *t = Get () + (len1 - len2);
	
	while (*s != 0)
		{
		
		char c1 = *(s++);
		char c2 = *(t++);
		
		if (!case_sensitive)
			{
			c1 = ForceUppercase (c1);
			c2 = ForceUppercase (c2);
			}
			
		if (c1 != c2)
			{
			return false;
			}
			
		}
		
	return true;
	
	}

/*****************************************************************************/

bool dng_string::Contains (const char *s,
						   bool case_sensitive,
						   int32 *match_offset) const
	{
	
	if (match_offset)
		{
		*match_offset = -1;
		}
	
	uint32 len1 = Length ();
	
	uint32 len2 = strlenAsUint32 (s);
	
	if (len1 < len2)
		{
		return false;
		}
		
	uint32 offsets = len1 - len2;
		
	for (uint32 offset = 0; offset <= offsets; offset++)
		{
		
		const char *ss = s;
		const char *tt = Get () + offset;
		
		while (*ss != 0)
			{
			
			char c1 = *(ss++);
			char c2 = *(tt++);
			
			if (!case_sensitive)
				{
				c1 = ForceUppercase (c1);
				c2 = ForceUppercase (c2);
				}
				
			if (c1 != c2)
				{
				goto tryNextOffset;
				}
				
			}
			
		if (match_offset)
			{
			*match_offset = offset;
			}
	
		return true;
		
		tryNextOffset:	;
		
		}
		
	return false;
	
	}
		
/*****************************************************************************/

bool dng_string::Replace (const char *old_string,
						  const char *new_string,
						  bool case_sensitive)
	{
	
	int32 match_offset = -1;

	if (Contains (old_string,
				  case_sensitive,
				  &match_offset))
		{
		
		uint32 len2 = strlenAsUint32 (old_string);
		
		dng_std_string newData (*fData);
		
		newData.replace (match_offset, len2, new_string);
		
		Set (newData.c_str ());
		
		return true;
		
		}
		
	return false;
	
	}
		
/*****************************************************************************/

void dng_string::ReplaceChars (char oldChar,
							   char newChar)
	{
	
	if (fData.get ())
		{
		
		// Find index of first character that needs to be changed.
		
		const char *sPtr = fData->c_str ();
		
		uint32 index = 0;
		
		while (char c = sPtr [index])
			{
			
			if (c == oldChar)
				{
				break;
				}
				
			index++;

			}
			
		// Did we find one?
			
		if (sPtr [index])
			{
			
			// Allocate new copy.
			
			dng_std_string * newData (new dng_std_string (*fData));
			
			// Start fixing at index of first character to change.
			
			while (char c = sPtr [index])
				{
				
				if (c == oldChar)
					{
					(*newData) [index] = newChar;
					}
					
				index++;

				}
				
			// Swap in new copy.
				
			fData.reset (newData);
			
			}
			
		}
		
	}
		
/*****************************************************************************/

bool dng_string::TrimLeading (const char *s,
							  bool case_sensitive)
	{
	
	if (StartsWith (s, case_sensitive))
		{
		
		Set (Get () + strlenAsUint32 (s));
		
		return true;
		
		}
	
	return false;
	
	}

/*****************************************************************************/

void dng_string::Append (const char *s)
	{
	
	if (*s)
		{
		
		if (fData.get ())
			{
			
			std::unique_ptr<dng_std_string> newData (new dng_std_string (*fData));
			
			newData->append (s);
			
			fData.reset (newData.release ());
			
			}
			
		else
			{
			
			Set (s);
			
			}
		
		}
	
	}
		
/*****************************************************************************/

void dng_string::SetUppercase ()
	{
	
	if (fData.get ())
		{
		
		// Find index of first character that needs to be changed.
		
		const char *sPtr = fData->c_str ();
		
		uint32 index = 0;
		
		while (char c = sPtr [index])
			{
			
			if (c >= 'a' && c <= 'z')
				{
				break;
				}
				
			index++;

			}
			
		// Did we find one?
			
		if (sPtr [index])
			{
			
			// Allocate new copy.
			
			dng_std_string * newData (new dng_std_string (*fData));
			
			// Start fixing at index of first character to change.
			
			while (char c = sPtr [index])
				{
				
				if (c >= 'a' && c <= 'z')
					{
					(*newData) [index] = c - 'a' + 'A';
					}
					
				index++;

				}
				
			// Swap in new copy.
				
			fData.reset (newData);
			
			}
			
		}
		
	}
		
/*****************************************************************************/

void dng_string::SetLowercase ()
	{
	
	if (fData.get ())
		{
		
		// Find index of first character that needs to be changed.
		
		const char *sPtr = fData->c_str ();
		
		uint32 index = 0;
		
		while (char c = sPtr [index])
			{
			
			if (c >= 'A' && c <= 'Z')
				{
				break;
				}
				
			index++;

			}
			
		// Did we find one?
			
		if (sPtr [index])
			{
			
			// Allocate new copy.
			
			dng_std_string * newData (new dng_std_string (*fData));
			
			// Start fixing at index of first character to change.
			
			while (char c = sPtr [index])
				{
				
				if (c >= 'A' && c <= 'Z')
					{
					(*newData) [index] = c - 'A' + 'a';
					}
					
				index++;

				}
				
			// Swap in new copy.
				
			fData.reset (newData);
			
			}
			
		}
		
	}
		
/*****************************************************************************/

void dng_string::SetLineEndings (char ending)
	{
	
	DNG_ASSERT (ending == '\n' || ending == '\r',
				"Unexpected line ending in dng_string::SetLineEndings");
	
	if (fData.get ())
		{
		
		char otherEnding = (ending == '\n' ? '\r' : '\n');
		
		if (fData->find (otherEnding) != dng_std_string::npos)
			{
			
			dng_std_string newData;
			
			newData.reserve (fData->length ());
			
			const char *sPtr = fData->c_str ();
			
			while (*sPtr)
				{
				
				char c = *(sPtr++);
				
				char nc = sPtr [0];
				
				if ((c == '\r' && nc == '\n') ||
					(c == '\n' && nc == '\r'))
					{
					
					sPtr++;
					
					if (ending)
						{
						newData.push_back (ending);
						}
					
					}
					
				else if (c == '\n' ||
						 c == '\r')
					{
					
					if (ending)
						{
						newData.push_back (ending);
						}
					
					}
					
				else
					{
					
					newData.push_back (c);
					
					}
					
				}
				
			Set (newData.c_str ());
			
			}
			
		}
		
	}
		
/*****************************************************************************/

void dng_string::StripLowASCII ()
	{
	
	if (fData.get ())
		{
		
		bool hasLowASCII = false;
		
		const char *sPtr = fData->c_str ();
		
		while (*sPtr)
			{
			
			char c = *(sPtr++);
		
			if (!(c == '\r' || c == '\n' || (uint8) c >= ' '))
				{
				hasLowASCII = true;
				break;
				}
				
			}
			
		if (hasLowASCII)
			{

			dng_std_string newData;
			
			newData.reserve (fData->length ());
			
			sPtr = fData->c_str ();
			
			while (*sPtr)
				{
				
				char c = *(sPtr++);
				
				if (c == '\r' || c == '\n' || (uint8) c >= ' ')
					{
					
					newData.push_back (c);
					
					}
								
				}
			
			Set (newData.c_str ());
			
			}

		}
		
	}

/*****************************************************************************/

void dng_string::NormalizeAsCommaSeparatedNumbers ()
	{
	
	if (fData.get ())
		{
		
		dng_std_string newData;
		
		newData.reserve (fData->length ());
		
		const char *sPtr = fData->c_str ();
			
		bool commaInserted = false;

		while (*sPtr)
			{
			
			uint32 c = DecodeUTF8 (sPtr);
			
			// Support number formats such as "3", "+3.0", "-3.1416", "314.16e-2",
			// "0.31416E1", but no hex/octal number representations.

			if (isdigit ((int) c) || c == '.' || c == '-' || c == '+' || c == 'e' || c == 'E')
				{
				
				newData.push_back ((char) c);
				
				if (commaInserted)
					{

					commaInserted = false;

					}
				
				}

			else if (!commaInserted)
				{
				
				newData.push_back (',');

				commaInserted = true;
				
				}
			
			}
		
		Set (newData.c_str ());
		
		}
	
	}

/******************************************************************************/

// Unicode to low-ASCII strings table.

struct UnicodeToLowASCIIEntry
	{
	uint32 unicode;
	const char *ascii;
	};
	
static const UnicodeToLowASCIIEntry kUnicodeToLowASCII [] =
	{
	{	0x00A0, " "		},
	{	0x00A1, "!"		},
	{	0x00A9, "(C)"	},
	{	0x00AA, "a"		},
	{	0x00AB, "<<"	},
	{	0x00AC, "!"		},
	{	0x00AE, "(R)"	},
	{	0x00B0, "dg"	},
	{	0x00B1, "+-"	},
	{	0x00B7, "."		},
	{	0x00BA, "o"		},
	{	0x00BB, ">>"	},
	{	0x00BF, "?"		},
	{	0x00C0, "A"		},
	{	0x00C1, "A"		},
	{	0x00C2, "A"		},
	{	0x00C3, "A"		},
	{	0x00C4, "A"		},
	{	0x00C5, "A"		},
	{	0x00C6, "AE"	},
	{	0x00C7, "C"		},
	{	0x00C8, "E"		},
	{	0x00C9, "E"		},
	{	0x00CA, "E"		},
	{	0x00CB, "E"		},
	{	0x00CC, "I"		},
	{	0x00CD, "I"		},
	{	0x00CE, "I"		},
	{	0x00CF, "I"		},
	{	0x00D1, "N"		},
	{	0x00D2, "O"		},
	{	0x00D3, "O"		},
	{	0x00D4, "O"		},
	{	0x00D5, "O"		},
	{	0x00D6, "O"		},
	{	0x00D8, "O"		},
	{	0x00D9, "U"		},
	{	0x00DA, "U"		},
	{	0x00DB, "U"		},
	{	0x00DC, "U"		},
	{	0x00DD, "Y"		},
	{	0x00E0, "a"		},
	{	0x00E1, "a"		},
	{	0x00E2, "a"		},
	{	0x00E3, "a"		},
	{	0x00E4, "a"		},
	{	0x00E5, "a"		},
	{	0x00E6, "ae"	},
	{	0x00E7, "c"		},
	{	0x00E8, "e"		},
	{	0x00E9, "e"		},
	{	0x00EA, "e"		},
	{	0x00EB, "e"		},
	{	0x00EC, "i"		},
	{	0x00ED, "i"		},
	{	0x00EE, "i"		},
	{	0x00EF, "i"		},
	{	0x00F1, "n"		},
	{	0x00F2, "o"		},
	{	0x00F3, "o"		},
	{	0x00F4, "o"		},
	{	0x00F5, "o"		},
	{	0x00F6, "o"		},
	{	0x00F7, "/"		},
	{	0x00F8, "o"		},
	{	0x00F9, "u"		},
	{	0x00FA, "u"		},
	{	0x00FB, "u"		},
	{	0x00FC, "u"		},
	{	0x00FD, "y"		},
	{	0x00FF, "y"		},
	{	0x0131, "i"		},
	{	0x0152, "OE"	},
	{	0x0153, "oe"	},
	{	0x0178, "Y"		},
	{	0x2013, "-"		},
	{	0x2014, "-"		},
	{	0x2018, "'"		},
	{	0x2019, "'"		},
	{	0x201A, ","		},
	{	0x201C, "\""	},
	{	0x201D, "\""	},
	{	0x201E, ",,"	},
	{	0x2022, "."		},
	{	0x2026, "..."	},
	{	0x2039, "<"		},
	{	0x203A, ">"		},
	{	0x2044, "/"		},
	{	0x2122, "TM"	},
	{	0x2206, "d"		},
	{	0x2211, "S"		},
	{	0x2260, "!="	},
	{	0x2264, "<="	},
	{	0x2265, ">="	},
	{	0x2318, "#"		},
	{	0xFB01, "fi"	},
	{	0xFB02, "fl"	}
	};
	
/******************************************************************************/

void dng_string::ForceASCII ()
	{
	
	if (!IsASCII ())
		{
		
		dng_safe_uint32 tempBufferSize = dng_safe_uint32 (Length ()) * 3u;
		
		dng_std_string buffer;
		
		buffer.reserve (tempBufferSize.Get ());

		const char *sPtr = Get ();
		
		while (*sPtr)
			{
			
			uint32 x = DecodeUTF8 (sPtr);
			
			if (x <= 0x007F)
				{
				
				buffer.push_back ((char) x);
				
				}
				
			else
				{
				
				const char *ascii = NULL;
				
				const uint32 kTableEntrys = sizeof (kUnicodeToLowASCII	  ) /
											sizeof (kUnicodeToLowASCII [0]);
				
				for (uint32 entry = 0; entry < kTableEntrys; entry++)
					{
					
					if (kUnicodeToLowASCII [entry] . unicode == x)
						{
						
						ascii = kUnicodeToLowASCII [entry] . ascii;
						
						break;
						
						}
						
					}
					
				if (ascii)
					{
					
					buffer.append (ascii);
											
					}
					
				else
					{
					
					buffer.push_back ('?');
				
					}
				
				}
				
			}
			
		Set (buffer.c_str ());
		
		}
	
	}
	
/******************************************************************************/

#if qMacOS
static dng_std_mutex gProtectUCCalls;
#endif
				
/******************************************************************************/

int32 dng_string::Compare (const dng_string &s,
						   bool digitsAsNumber) const
	{
	
	#if qMacOS
	
		{
	
		dng_memory_data aStrA;
		dng_memory_data aStrB;
		
		uint32 aLenA = this->Get_UTF16 (aStrA);
		uint32 aLenB = s	.Get_UTF16 (aStrB);
		
		if (aLenA > 0)
			{
			
			if (aLenB > 0)
				{
				
				// For some Mac OS versions anyway, UCCompareTextDefault is not
				// thread safe.
				
				dng_lock_std_mutex lockMutex (gProtectUCCalls);

				UCCollateOptions aOptions = static_cast<UCCollateOptions>(kUCCollateStandardOptions) |
											static_cast<UCCollateOptions>(kUCCollatePunctuationSignificantMask);
		   
				if (digitsAsNumber)
					{
					
					aOptions |= kUCCollateDigitsOverrideMask |
								kUCCollateDigitsAsNumberMask;
						
					}
											   
				SInt32 aOrder = -1;
				
				Boolean aEqual = false;
				
				OSStatus searchStatus = ::UCCompareTextDefault (aOptions,
																aStrA.Buffer_uint16 (),
																aLenA,
																aStrB.Buffer_uint16 (),
																aLenB,
																&aEqual,
																&aOrder);
																
				if (searchStatus == noErr)
					{
					
					if (aEqual || (aOrder == 0))
						{
						return 0;
						}
	
					else
						{
						return (aOrder > 0) ? 1 : -1;
						}
						
					}
					
				else
					{
					
					DNG_REPORT ("UCCompareTextDefault failed");
					
					return -1;
					
					}

				}

			else
				{
				return 1;
				}

			}
			
		else
			{
			
			if (aLenB > 0)
				{
				return -1;
				}
				
			else
				{
				return 0;
				}
				
			}
			
		}

	#elif qWinOS
	
		{

		dng_memory_data aStrA;
		dng_memory_data aStrB;
		
		uint32 aLenA = this->Get_UTF16 (aStrA);
		uint32 aLenB = s	.Get_UTF16 (aStrB);
			
		if (aLenA > 0)
			{
				
			if (aLenB > 0)
				{

				LCID locale = LOCALE_SYSTEM_DEFAULT;

				DWORD aFlags = NORM_IGNOREWIDTH;

				if (digitsAsNumber)
					{
					aFlags |= SORT_DIGITSASNUMBERS;
					}
				
				int aOrder = ::CompareStringW (locale, 
											   aFlags,
											   (const WCHAR *) aStrA.Buffer_uint16 (), 
											   aLenA,
											   (const WCHAR *) aStrB.Buffer_uint16 (), 
											   aLenB);

				if (aOrder == CSTR_EQUAL)
					{
					return 0;
					}

				else if (aOrder == CSTR_GREATER_THAN)
					{
					return 1;
					} 
				
				else 
					{
					return -1;
					}

				}

			else 
				{
				return 1;
				}

			}

		else 
			{

			if (aLenB > 0) 
				{
				return -1;
				} 
			else
				{
				return 0;
				}

			}
		
		}
		
	#else
	
	// Fallback to a pure Unicode sort order.
	
		{
		
		for (uint32 pass = 0; pass < 2; pass++)
			{
		
			const char *aPtr =	 Get ();
			const char *bPtr = s.Get ();
			
			while (*aPtr || *bPtr)
				{
				
				if (!*bPtr)
					{
					return 1;
					}
	
				else if (!*aPtr)
					{
					return -1;
					}
					
				uint32 a = DecodeUTF8 (aPtr);
				uint32 b = DecodeUTF8 (bPtr);
				
				// Ignore case on first compare pass.
				
				if (pass == 0)
					{
					
					if (a >= (uint32) 'a' && a <= (uint32) 'z')
						{
						a = a - (uint32) 'a' + (uint32) 'A';
						}
						
					if (b >= (uint32) 'a' && b <= (uint32) 'z')
						{
						b = b - (uint32) 'a' + (uint32) 'A';
						}
				
					}
	 
				if (digitsAsNumber)
					{
					
					uint32 aNumber = 0;
					uint32 aDigits = 0;
					
					if (a >= (uint32) '0' && a <= (uint32) '9')
						{
						
						aNumber = a - (uint32) '0';
						aDigits = 1;
						
						while (aDigits < 6 && *aPtr >= '0' && *aPtr <= '9')
							{
							aNumber = aNumber * 10 + ((uint32) *aPtr -
													  (uint32) '0');
							aDigits++;
							aPtr++;
							}
							
						}
					
					uint32 bNumber = 0;
					uint32 bDigits = 0;
					
					if (b >= (uint32) '0' && b <= (uint32) '9')
						{
						
						bNumber = b - (uint32) '0';
						bDigits = 1;
						
						while (bDigits < 6 && *bPtr >= '0' && *bPtr <= '9')
							{
							bNumber = bNumber * 10 + ((uint32) *bPtr -
													  (uint32) '0');
							bDigits++;
							bPtr++;
							}
							
						}
						
					if (aDigits > 0 && bDigits > 0)
						{
						
						if (aNumber > bNumber)
							{
							return 1;
							}
							
						if (aNumber < bNumber)
							{
							return -1;
							}
							
						if (aDigits > bDigits)
							{
							return 1;
							}
							
						if (aDigits < bDigits)
							{
							return -1;
							}
							
						continue;
						
						}
					
					}
					
				if (a > b)
					{
					return 1;
					}
					
				else if (a < b)
					{
					return -1;
					}
					
				}
				
			}
			
		}
		
	#endif
			
	return 0;
	
	}

/*****************************************************************************/

size_t dng_string_hash::operator () (const dng_string &s) const
	{

	dng_md5_direct_printer printer;

	printer.ProcessString (s.Get ());

	auto digest = printer.Result ();

	return (size_t) digest.Collapse32 ();
	
	}

/*****************************************************************************/
