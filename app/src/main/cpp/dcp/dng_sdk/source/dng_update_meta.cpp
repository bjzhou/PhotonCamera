/*****************************************************************************/
// Copyright 2021 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_update_meta.h"

#include "dng_assertions.h"
#include "dng_bottlenecks.h"
#include "dng_exif.h"
#include "dng_fingerprint.h"
#include "dng_host.h"
#include "dng_negative.h"
#include "dng_parse_utils.h"
#include "dng_safe_arithmetic.h"
#include "dng_stream.h"
#include "dng_tag_codes.h"
#include "dng_tag_types.h"
#include "dng_tag_values.h"
#include "dng_xmp.h"

#include <algorithm>

/*****************************************************************************/

#define qLogDNGUpdateMetadata (qDNGDebug && 0)

static const uint32 kMaxUpdateBigTableEntries = 10000;
static const uint32 kMaxUpdateBigTableGroupFingerprints =
	kMaxUpdateBigTableEntries * 2;

#if qLogDNGUpdateMetadata
#include "cr_logging.h"
#endif

/*****************************************************************************/

class dng_file_updater;

/*****************************************************************************/

class dng_tag_updater
	{
	
	public:
	
		uint32 fTagCode	 = 0;
		uint32 fTagType	 = 0;
		uint64 fTagCount = 0;
		
		union
			{
			uint64 fTagValue64;
			uint32 fTagValue32 [2];
			uint16 fTagValue16 [4];
			uint8  fTagValue8  [8];
			};
			
		uint64 fTagOffset = 0;
		
	public:
	
		dng_tag_updater ()
			{
			fTagValue64 = 0;
			}
			
		bool operator== (const dng_tag_updater &rhs) const
			{
			return fTagCode	   == rhs.fTagCode	&&
				   fTagType	   == rhs.fTagType	&&
				   fTagCount   == rhs.fTagCount &&
				   fTagValue64 == rhs.fTagValue64;
			}
			
		bool operator!= (const dng_tag_updater &rhs) const
			{
			return !(*this == rhs);
			}

		bool operator< (const dng_tag_updater &rhs) const
			{
			return fTagCode < rhs.fTagCode;
			}

		static uint64 ComputeTagSize (uint32 tagType,
									  uint64 tagCount)
			{

			uint32 tagTypeSize = TagTypeSize (tagType);

			if (tagTypeSize != 0 &&
				tagCount > ((uint64) -1) / tagTypeSize)
				{
				ThrowBadFormat ("Tag size too large");
				}
			
			return tagTypeSize * tagCount;

			}

		uint64 TagSize () const
			{
			return ComputeTagSize (fTagType, fTagCount);
			}
			
		bool PrepareToSet (dng_file_updater &updater,
						   uint32 tagType,
						   uint64 tagCount,
						   bool allowPatch);
	
		uint64 Get_uint64 (dng_file_updater &updater) const;
			
		bool GetArray_uint64 (dng_file_updater &updater,
							  std::vector<uint64> &values) const;
	
		bool GetArray_Fingerprint (dng_file_updater &updater,
								   std::vector<dng_fingerprint> &values) const;
	
	};

/*****************************************************************************/

class dng_ifd_updater
	{
	
	private:
	
		uint64 fThisOffset = 0;
		uint64 fNextOffset = 0;
		
		std::vector<dng_tag_updater> fTag;
		
	public:
	
		bool operator== (const dng_ifd_updater &rhs) const
			{
			return fThisOffset == rhs.fThisOffset &&
				   fNextOffset == rhs.fNextOffset &&
				   fTag		   == rhs.fTag;
			}

		bool operator!= (const dng_ifd_updater &rhs) const
			{
			return !(*this == rhs);
			}

		uint32 EntryCount () const
			{
			return (uint32) fTag.size ();
			}
			
		uint64 Offset () const
			{
			return fThisOffset;
			}
			
		void SetOffset (uint64 offset)
			{
			fThisOffset = offset;
			}
		
		uint32 ByteCount (dng_file_updater &updater) const;
			
		bool HasTag (uint32 tagCode) const;
		
		const dng_tag_updater & ExistingTag (uint32 tagCode) const;
		
		dng_tag_updater & RequiredTag (uint32 tagCode);
		
		void DeleteTag (dng_file_updater &updater,
						uint32 tagCode);
		
		void UpdateTag (dng_file_updater &updater,
						uint32 tagCode,
						uint32 tagType,
						uint64 tagCount,
						const void *tagData,
						bool remove = false,
						bool allowPatch = true);
		
		void UpdateByteTag (dng_file_updater &updater,
							uint32 tagCode,
							uint8 value,
							bool remove = false)
			{
			
			UpdateTag (updater,
					   tagCode,
					   ttByte,
					   1,
					   &value,
					   remove);
			
			}

		void UpdateShortTag (dng_file_updater &updater,
							 uint32 tagCode,
							 uint16 value,
							 bool remove = false)
			{
			
			UpdateTag (updater,
					   tagCode,
					   ttShort,
					   1,
					   &value,
					   remove);
			
			}

		void UpdateRationalTag (dng_file_updater &updater,
								uint32 tagCode,
								const dng_urational &value)
			{
			
			UpdateTag (updater,
					   tagCode,
					   ttRational,
					   1,
					   &value,
					   !value.IsValid ());
			
			}

		void UpdateStringTag (dng_file_updater &updater,
							  uint32 tagCode,
							  const dng_string &s,
							  bool removeIfEmpty = true)
			{
			
			UpdateTag (updater,
					   tagCode,
					   ttAscii,
					   s.Length () + 1,
					   s.Get (),
					   removeIfEmpty && s.IsEmpty ());
			
			}
		
		void UpdateDualStringTag (dng_file_updater &updater,
								  uint32 tagCode,
								  const dng_string &s1,
								  const dng_string &s2);
		
		void UpdateEncodedTextTag (dng_file_updater &updater,
								   uint32 tagCode,
								   const dng_string &s);
		
		void UpdateVersionTag (dng_file_updater &updater,
							   uint32 tagCode,
							   uint32 tagType,
							   uint32 version,
							   bool removeIfZero = true);
			
		void UpdateDateTimeTag (dng_file_updater &updater,
								uint32 tagCode,
								const dng_date_time_info &info);
			
		void UpdateOffsetTimeTag (dng_file_updater &updater,
								  uint32 tagCode,
								  const dng_date_time_info &info);
			
		void Parse (dng_file_updater &updater);
		
		void SortTags ();
	
		void Write (dng_file_updater &updater) const;
		
		void ParseBigTableIndex (dng_file_updater &updater,
								 dng_big_table_index &bigTableIndex) const;
		
		void WriteBigTableIndex (dng_file_updater &updater,
								 dng_big_table_index &bigTableIndex);
								 
		void ParseBigTableGroupIndex (dng_file_updater &updater,
									  dng_big_table_group_index &index) const;
		
		void WriteBigTableGroupIndex (dng_file_updater &updater,
									  const dng_big_table_group_index &index);
								 
		bool MoveTagToIFD (dng_ifd_updater &dstIFD,
						   uint32 tagCode);

		void UpdateAdobeData (dng_file_updater &updater,
							  const dng_fingerprint &iptcDigest);

	};
	
/*****************************************************************************/

class dng_file_updater
	{
	
	private:
	
		dng_host & fHost;
	
		dng_stream & fStream;
		
		bool fTruncateOnFailure;
		
		uint64 fTruncateToLength;
		
		bool fBigTIFF = false;
		
		bool fIsDNG = false;
		
		dng_ifd_updater fIFD0_new;
		dng_ifd_updater fIFD0_old;
		
		dng_ifd_updater fEXIF_new;
		dng_ifd_updater fEXIF_old;
		
		dng_ifd_updater fGPS_new;
		dng_ifd_updater fGPS_old;
		
		class zero_range
			{
			
			public:
			
				uint64 fOffset = 0;
				uint64 fCount  = 0;
				
			public:
			
				bool operator< (const zero_range &rsh) const
					{
					return fOffset < rsh.fOffset;
					}
					
			};
			
		std::vector<zero_range> fZeroRanges;
		
	public:
	
		dng_file_updater (dng_host &host,
						  dng_stream &stream);
			
		~dng_file_updater ();
		
		dng_host & Host ()
			{
			return fHost;
			}
			
		dng_stream & Stream ()
			{
			return fStream;
			}
			
		bool BigTIFF () const
			{
			return fBigTIFF;
			}
			
		bool IsDNG () const
			{
			return fIsDNG;
			}
			
		uint32 InlineLimit () const
			{
			return fBigTIFF ? 8 : 4;
			}
			
		dng_ifd_updater & IFD0 ()
			{
			return fIFD0_new;
			}
			
		dng_ifd_updater & EXIF ()
			{
			return fEXIF_new;
			}
			
		dng_ifd_updater & GPS ()
			{
			return fGPS_new;
			}
			
		void ParseHeader ();
		
		void PrepareToAppend (uint64 count);
		
		void MoveIFD0toEXIF (uint32 tagCode);
		
		void MoveEXIFtoIFD0 (uint32 tagCode);
		
		void UpdateEXIF (dng_exif &exif);
		
		bool UpdateIFD (dng_ifd_updater &ifd_new,
						const dng_ifd_updater &ifd_old);
		
		void UpdateHeader ();
		
		void AddZeroRange (uint64 offset,
						   uint64 count);
			
		void ApplyZeroRanges ();
		
	};
	
/*****************************************************************************/

bool dng_tag_updater::PrepareToSet (dng_file_updater &updater,
									uint32 tagType,
									uint64 tagCount,
									bool allowPatch)
	{
	
	bool isBigTIFF = updater.BigTIFF ();
	
	uint32 inlineLimit = updater.InlineLimit ();
	
	uint64 oldSize = TagSize ();
	uint64 newSize = ComputeTagSize (tagType, tagCount);
	
	bool wasInline = (oldSize <= inlineLimit);
	bool canInline = (newSize <= inlineLimit);
	
	if (canInline)
		{
		
		if (!wasInline)
			{
			
			DNG_REQUIRE (fTagOffset, "Expected fTagOffset");
			
			updater.AddZeroRange (fTagOffset, oldSize);
			
			fTagOffset = 0;
			
			}
		
		fTagValue64 = 0;
		
		}
		
	else
		{
		
		if (allowPatch && fTagType == tagType && fTagCount == tagCount)
			{
			
			DNG_REQUIRE (fTagOffset, "Expected fTagOffset");
			
			updater.Stream ().SetWritePosition (fTagOffset);
			
			}
			
		else
			{
			
			if (!wasInline)
				{
				
				DNG_REQUIRE (fTagOffset, "Expected fTagOffset");
				
				updater.AddZeroRange (fTagOffset,
									  oldSize);

				}
			
			updater.PrepareToAppend (newSize);
			
			fTagOffset = updater.Stream ().Position ();
			
			if (isBigTIFF)
				{
				fTagValue64 = fTagOffset;
				}
			else
				{
				fTagValue32 [0] = (uint32) fTagOffset;
				fTagValue32 [1] = 0;
				}
		
			}
		
		}
		
	fTagType  = tagType;
	fTagCount = tagCount;
		
	return canInline;
	
	}
			
/*****************************************************************************/

uint64 dng_tag_updater::Get_uint64 (dng_file_updater &updater) const
	{
	
	std::vector<uint64> values;
	
	if (GetArray_uint64 (updater, values))
		{
		return values [0];
		}
		
	return 0;

	}
			
/*****************************************************************************/

bool dng_tag_updater::GetArray_uint64 (dng_file_updater &updater,
									   std::vector<uint64> &values) const
	{
	
	values.clear ();
	
	if (fTagCount >= 1)
		{
		
		if (fTagCount > 0xFFFFFFFFu)
			{
			ThrowBadFormat ("Tag count too large");
			}

		uint32 count32 = (uint32) fTagCount;

		if ((fTagCode == tcBigTableOffsets ||
			 fTagCode == tcBigTableByteCounts) &&
			count32 > kMaxUpdateBigTableEntries)
			{
			ThrowBadFormat ("Too many BigTable entries");
			}

		values.reserve (count32);
		
		if (TagSize () <= updater.InlineLimit ())
			{
			
			dng_stream tempStream (fTagValue8, updater.InlineLimit ());
			
			tempStream.SetSwapBytes (false);
		
			for (uint32 j = 0; j < count32; j++)
				{
				
				values.push_back (tempStream.TagValue_uint64 (fTagType));
				
				}
				
			}
			
		else
			{
			
			DNG_REQUIRE (fTagOffset, "Expected fTagOffset");
		
			updater.Stream ().SetReadPosition (fTagOffset);

			for (uint32 j = 0; j < count32; j++)
				{
				
				values.push_back (updater.Stream ().TagValue_uint64 (fTagType));
				
				}
				
			}
			
		return true;
		
		}
	
	return false;
	
	}
	
/*****************************************************************************/

bool dng_tag_updater::GetArray_Fingerprint (dng_file_updater &updater,
											std::vector<dng_fingerprint> &values) const
	{
	
	values.clear ();
	
	if (fTagType == ttByte && fTagCount >= 16)
		{
		
		uint64 count64 = fTagCount >> 4;

		if (count64 > 0xFFFFFFFFu)
			{
			ThrowBadFormat ("Fingerprint tag count too large");
			}

		uint32 count = (uint32) count64;

		uint32 maxCount = kMaxUpdateBigTableEntries;

		if (fTagCode == tcBigTableGroupIndex)
			{
			maxCount = kMaxUpdateBigTableGroupFingerprints;
			}

		if ((fTagCode == tcBigTableDigests ||
			 fTagCode == tcBigTableGroupIndex) &&
			count > maxCount)
			{
			ThrowBadFormat ("Too many BigTable entries");
			}
		
		values.reserve (count);
		
		updater.Stream ().SetReadPosition (fTagOffset);

		for (uint32 j = 0; j < count; j++)
			{
			
			dng_fingerprint fingerprint;
		
			updater.Stream ().Get (fingerprint);
			
			values.push_back (fingerprint);
			
			}
			
		return true;
		
		}
	
	return false;
	
	}
	
/*****************************************************************************/

void dng_ifd_updater::Parse (dng_file_updater &updater)
	{
	
	bool isBigTIFF = updater.BigTIFF ();

	uint32 inlineLimit = isBigTIFF ? 8 : 4;
	
	dng_stream &stream (updater.Stream ());

	fThisOffset = stream.Position ();
	
	uint64 entryCount = isBigTIFF ? stream.Get_uint64 ()
								  : stream.Get_uint16 ();
								  
	if (entryCount > 0xFFFF)
		{
		ThrowBadFormat ();
		}
	
	fTag.reserve (entryCount);
	
	for (uint64 j = 0; j < entryCount; j++)
		{
		
		dng_tag_updater tag;
		
		tag.fTagCode  = stream.Get_uint16 ();
		tag.fTagType  = stream.Get_uint16 ();
		
		tag.fTagCount = isBigTIFF ? stream.Get_uint64 ()
								  : stream.Get_uint32 ();
		
		uint32 tagTypeSize = TagTypeSize (tag.fTagType);
		
		uint64 tagSize = tag.TagSize ();
		
		if (tagSize > inlineLimit)
			{
			
			if (isBigTIFF)
				{
				tag.fTagValue64 = stream.Get_uint64 ();
				tag.fTagOffset	= tag.fTagValue64;
				}
			else
				{
				tag.fTagValue32 [0] = stream.Get_uint32 ();
				tag.fTagOffset		= tag.fTagValue32 [0];
				}
			
			}
			
		else
			{
			
			tag.fTagOffset = stream.Position ();
			
			if (tagTypeSize == 8)
				{
				tag.fTagValue64 = stream.Get_uint64 ();
				}
				
			else if (tagTypeSize == 4)
				{
				
				for (uint32 k = 0; k < inlineLimit >> 2; k++)
					{
					tag.fTagValue32 [k] = stream.Get_uint32 ();
					}
					
				}
				
			else if (tagTypeSize == 2)
				{
				
				for (uint32 k = 0; k < inlineLimit >> 1; k++)
					{
					tag.fTagValue16 [k] = stream.Get_uint16 ();
					}
					
				}
				
			else
				{
				
				for (uint32 k = 0; k < inlineLimit; k++)
					{
					tag.fTagValue8 [k] = stream.Get_uint8 ();
					}
					
				}
				
			}
		
		fTag.push_back (tag);
			
		}
		
	fNextOffset = isBigTIFF ? stream.Get_uint64 ()
							: stream.Get_uint32 ();
	
	}

/*****************************************************************************/

uint32 dng_ifd_updater::ByteCount (dng_file_updater &updater) const
	{
	
	if (EntryCount () == 0)
		{
		return 0;
		}

	const uint32 entryBytes = SafeUint32Mult (EntryCount (),
											  updater.BigTIFF () ? 20u : 12u);

	return SafeUint32Add (entryBytes,
						  updater.BigTIFF () ? 16u : 6u);

	}

/*****************************************************************************/

bool dng_ifd_updater::HasTag (uint32 tagCode) const
	{
	
	for (size_t j = 0; j < fTag.size (); j++)
		{
		
		if (fTag [j] . fTagCode == tagCode)
			{
			return true;
			}
			
		}
	
	return false;
		
	}
	
/*****************************************************************************/

const dng_tag_updater & dng_ifd_updater::ExistingTag (uint32 tagCode) const
	{
	
	for (size_t j = 0; j < fTag.size (); j++)
		{
		
		if (fTag [j] . fTagCode == tagCode)
			{
			return fTag [j];
			}
			
		}
		
	DNG_REPORT ("Unexpected missing tag");
	
	static dng_tag_updater dummy;
	
	return dummy;
	
	}
	
/*****************************************************************************/

dng_tag_updater & dng_ifd_updater::RequiredTag (uint32 tagCode)
	{
	
	for (size_t j = 0; j < fTag.size (); j++)
		{
		
		if (fTag [j] . fTagCode == tagCode)
			{
			return fTag [j];
			}
			
		}
		
	dng_tag_updater tag;
	
	tag.fTagCode = tagCode;
	
	fTag.push_back (tag);
	
	return fTag [fTag.size () - 1];
	
	}
		
/*****************************************************************************/

void dng_ifd_updater::DeleteTag (dng_file_updater &updater,
								 uint32 tagCode)
	{
	
	#if qLogDNGUpdateMetadata
	
	const char *tagName = LookupTagCode (tagCode <= 31 ? tcGPSInfo : 0, tagCode);
	
	#endif
			
	for (size_t j = 0; j < fTag.size (); j++)
		{
		
		dng_tag_updater &tag = fTag [j];
		
		if (tag.fTagCode == tagCode)
			{
			
			#if qLogDNGUpdateMetadata
			
			LogPrint ("DNGUpdateMetadata: Deleting tag %s, size = %llu, offset = %llu\n",
					  tagName,
					  (unsigned long long)tag.TagSize (),
					  (unsigned long long)tag.fTagOffset);
				
			#endif

			if (tag.TagSize () > updater.InlineLimit ())
				{
				
				DNG_REQUIRE (tag.fTagOffset, "Expected fTagOffset");
				
				updater.AddZeroRange (tag.fTagOffset, tag.TagSize ());
				
				}
				
			fTag.erase (fTag.begin () + j);
			
			return;
			
			}
			
		}
	
	}
		
/*****************************************************************************/

void dng_ifd_updater::UpdateTag (dng_file_updater &updater,
								 uint32 tagCode,
								 uint32 tagType,
								 uint64 tagCount,
								 const void *tagData,
								 bool remove,
								 bool allowPatch)
	{
	
	#if qLogDNGUpdateMetadata
	
	const char *tagName = LookupTagCode (tagCode <= 31 ? tcGPSInfo : 0, tagCode);
	
	#endif
			
	if (remove)
		{
		
		if (HasTag (tagCode))
			{
		
			DeleteTag (updater, tagCode);
			
			}
			
		return;
		
		}
		
	uint32 byteSwapWidth = TagTypeSize (tagType);
	
	if (tagType == ttRational  ||
		tagType == ttSRational ||
		tagType == ttComplex)
		{
		
		// These types are pairs of values.
		
		byteSwapWidth = byteSwapWidth >> 1;
		
		}
		
	if (tagCode == tcIPTC_NAA && tagType == ttLong)
		{
		
		// Kludge: The IPTC uses type ttLong to store byte data,
		// but does not byte do correct byte swapping and actually
		// treats the data as type ttByte.
		
		byteSwapWidth = 1;
		
		}
		
	if (HasTag (tagCode))
		{
		
		dng_tag_updater &oldTag (RequiredTag (tagCode));
		
		if (oldTag.fTagType	 == tagType &&
			oldTag.fTagCount == tagCount)
			{
			
			bool dirty = false;
			
			uint64 tagSize = oldTag.TagSize ();
			
			if (tagSize <= updater.InlineLimit ())
				{
				
				switch (byteSwapWidth)
					{
					
					case 1:
						{
						
						const uint8 *newData8 = (const uint8 *) tagData;
						
						for (uint64 j = 0; j < tagSize; j++)
							{
							
							if (oldTag.fTagValue8 [j] != newData8 [j])
								{
								oldTag.fTagValue8 [j] = newData8 [j];
								dirty = true;
								}
							
							}
							
						break;
						
						}

					case 2:
						{
						
						const uint16 *newData16 = (const uint16 *) tagData;
						
						for (uint64 j = 0; j < (tagSize >> 1); j++)
							{
							
							if (oldTag.fTagValue16 [j] != newData16 [j])
								{
								oldTag.fTagValue16 [j] = newData16 [j];
								dirty = true;
								}
							
							}
							
						break;
						
						}

					case 4:
						{
						
						const uint32 *newData32 = (const uint32 *) tagData;
						
						for (uint64 j = 0; j < (tagSize >> 2); j++)
							{
							
							if (oldTag.fTagValue32 [j] != newData32 [j])
								{
								oldTag.fTagValue32 [j] = newData32 [j];
								dirty = true;
								}
							
							}
							
						break;
						
						}

					case 8:
						{
						
						const uint64 *newData64 = (const uint64 *) tagData;
						
						if (oldTag.fTagValue64 != newData64 [0])
							{
							oldTag.fTagValue64 = newData64 [0];
							dirty = true;
							}
							
						break;
						
						}
						
					default:
						ThrowProgramError ();

					}
					
				#if qLogDNGUpdateMetadata
				
				if (dirty)
					{
					
					LogPrint ("DNGUpdateMetadata: Inline tag %s updated\n",
							  tagName);
							 
					}
					
				#endif
				
				return;
				
				}
				
			else
				{
				
				DNG_REQUIRE (oldTag.fTagOffset, "Expected fTagOffset");
				
				updater.Stream ().SetReadPosition (oldTag.fTagOffset);
				
				switch (byteSwapWidth)
					{
					
					case 1:
						{
						
						const uint8 *newData8 = (const uint8 *) tagData;
						
						for (uint64 j = 0; j < tagSize; j++)
							{
							
							if (updater.Stream ().Get_uint8 () != newData8 [j])
								{
								dirty = true;
								break;
								}
							
							}
							
						break;
						
						}

					case 2:
						{
						
						const uint16 *newData16 = (const uint16 *) tagData;
						
						for (uint64 j = 0; j < (tagSize >> 1); j++)
							{
							
							if (updater.Stream ().Get_uint16 () != newData16 [j])
								{
								dirty = true;
								break;
								}
							
							}
							
						break;
						
						}

					case 4:
						{
						
						const uint32 *newData32 = (const uint32 *) tagData;
						
						for (uint64 j = 0; j < (tagSize >> 2); j++)
							{
							
							if (updater.Stream ().Get_uint32 () != newData32 [j])
								{
								dirty = true;
								break;
								}
							
							}
							
						break;
						
						}

					case 8:
						{
						
						const uint64 *newData64 = (const uint64 *) tagData;
						
						for (uint64 j = 0; j < (tagSize >> 3); j++)
							{
							
							if (updater.Stream ().Get_uint64 () != newData64 [j])
								{
								dirty = true;
								break;
								}
							
							}
							
						break;
						
						}
						
					default:
						ThrowProgramError ();

					}
				
				}
				
			if (!dirty)
				{
				
				return;
				
				}
				
			if (allowPatch)
				{
				
				#if qLogDNGUpdateMetadata
				
				LogPrint ("DNGUpdateMetadata: Patching existing tag %s\n",
						  tagName);
					
				#endif

				updater.Stream ().SetWritePosition (oldTag.fTagOffset);
				
				switch (byteSwapWidth)
					{
					
					case 1:
						{
						
						const uint8 *newData8 = (const uint8 *) tagData;
						
						for (uint64 j = 0; j < tagSize; j++)
							{
							updater.Stream ().Put_uint8 (newData8 [j]);
							}
							
						break;
						
						}

					case 2:
						{
						
						const uint16 *newData16 = (const uint16 *) tagData;
						
						for (uint64 j = 0; j < (tagSize >> 1); j++)
							{
							updater.Stream ().Put_uint16 (newData16 [j]);
							}
							
						break;
						
						}

					case 4:
						{
						
						const uint32 *newData32 = (const uint32 *) tagData;
						
						for (uint64 j = 0; j < (tagSize >> 2); j++)
							{
							updater.Stream ().Put_uint32 (newData32 [j]);
							}
							
						break;
						
						}

					case 8:
						{
						
						const uint64 *newData64 = (const uint64 *) tagData;
						
						for (uint64 j = 0; j < (tagSize >> 3); j++)
							{
							updater.Stream ().Put_uint64 (newData64 [j]);
							}
							
						break;
						
						}
						
					default:
						ThrowProgramError ();

					}

				return;
			
				}
								
			}
			
		DeleteTag (updater, tagCode);
		
		}
		
	// Add new tag.
	
	dng_tag_updater &newTag (RequiredTag (tagCode));
	
	if (newTag.PrepareToSet (updater,
							 tagType,
							 tagCount,
							 false))
		{
		
		uint64 tagSize = newTag.TagSize ();
		
		switch (byteSwapWidth)
			{
			
			case 1:
				{
				
				const uint8 *newData8 = (const uint8 *) tagData;
				
				for (uint64 j = 0; j < tagSize; j++)
					{
					newTag.fTagValue8 [j] = newData8 [j];
					}
					
				break;
				
				}

			case 2:
				{
				
				const uint16 *newData16 = (const uint16 *) tagData;
				
				for (uint64 j = 0; j < (tagSize >> 1); j++)
					{
					newTag.fTagValue16 [j] = newData16 [j];
					}
					
				break;
				
				}

			case 4:
				{
				
				const uint32 *newData32 = (const uint32 *) tagData;
				
				for (uint64 j = 0; j < (tagSize >> 2); j++)
					{
					newTag.fTagValue32 [j] = newData32 [j];
					}
					
				break;
				
				}

			case 8:
				{
				
				const uint64 *newData64 = (const uint64 *) tagData;
				
				newTag.fTagValue64 = newData64 [0];
					
				break;
				
				}
				
			default:
				ThrowProgramError ();

			}
		
		}
		
	else
		{
		
		uint64 tagSize = newTag.TagSize ();
		
		switch (byteSwapWidth)
			{
			
			case 1:
				{
				
				if (tagSize > 0xFFFFFFFF)
					{
					ThrowProgramError ();
					}
				
				updater.Stream ().Put (tagData, (uint32) tagSize);
									
				break;
				
				}

			case 2:
				{
				
				const uint16 *newData16 = (const uint16 *) tagData;
				
				for (uint64 j = 0; j < (tagSize >> 1); j++)
					{
					updater.Stream ().Put_uint16 (newData16 [j]);
					}
					
				break;
				
				}

			case 4:
				{
				
				const uint32 *newData32 = (const uint32 *) tagData;
				
				for (uint64 j = 0; j < (tagSize >> 2); j++)
					{
					updater.Stream ().Put_uint32 (newData32 [j]);
					}
					
				break;
				
				}

			case 8:
				{
				
				const uint64 *newData64 = (const uint64 *) tagData;
				
				for (uint64 j = 0; j < (tagSize >> 3); j++)
					{
					updater.Stream ().Put_uint64 (newData64 [j]);
					}
					
				break;
				
				}
				
			default:
				ThrowProgramError ();

			}
		
		}
		
	#if qLogDNGUpdateMetadata
	
	LogPrint ("DNGUpdateMetadata: Adding tag %s, size = %llu\n",
			  tagName,
			  (unsigned long long) newTag.TagSize ());
		
	#endif

	}

/*****************************************************************************/

void dng_ifd_updater::UpdateDualStringTag (dng_file_updater &updater,
										   uint32 tagCode,
										   const dng_string &s1,
										   const dng_string &s2)
	{
	
	if (s2.IsEmpty ())
		{
		
		UpdateStringTag (updater,
						 tagCode,
						 s1);
						 
		}
		
	else
		{
	
		uint32 tagCount =
			SafeUint32Add (SafeUint32Add (s1.Length (),
										  s2.Length ()),
						   2);
		
		dng_memory_data buffer (tagCount);
								
		memcpy (buffer.Buffer_char (),
				s1.Get (),
				s1.Length () + 1);
							
		memcpy (buffer.Buffer_char () + s1.Length () + 1,
				s2.Get (),
				s2.Length () + 1);
				
		UpdateTag (updater,
				   tagCode,
				   ttAscii,
				   tagCount,
				   buffer.Buffer_char ());
				   
		}
	
	}

/*****************************************************************************/

void dng_ifd_updater::UpdateEncodedTextTag (dng_file_updater &updater,
											uint32 tagCode,
											const dng_string &s)
	{
	
	if (s.IsEmpty ())
		{
		
		DeleteTag (updater, tagCode);
		
		}
		
	else if (s.IsASCII ())
		{
		
		uint32 tagCount = SafeUint32Add (8, s.Length ());
		
		dng_memory_data buffer (tagCount);
		
		memcpy (buffer.Buffer_char (),
				"ASCII\000\000\000",
				8);
		
		memcpy (buffer.Buffer_char () + 8,
				s.Get (),
				s.Length ());
		
		UpdateTag (updater,
				   tagCode,
				   ttUndefined,
				   tagCount,
				   buffer.Buffer ());
		
		}
		
	else
		{
		
		dng_memory_data utf16;
		
		uint32 utf16_length = s.Get_UTF16 (utf16);
		
		uint32 tagCount =
			SafeUint32Add (8,
						   SafeUint32Mult (utf16_length, 2));
		
		if (updater.Stream ().SwapBytes ())
			{
			
			DoSwapBytes16 (utf16.Buffer_uint16 (),
						   utf16_length);
	
			}
			
		dng_memory_data buffer (tagCount);
		
		memcpy (buffer.Buffer_char (),
				"UNICODE\000",
				8);
		
		memcpy (buffer.Buffer_char () + 8,
				utf16.Buffer_char (),
				utf16_length * 2);

		UpdateTag (updater,
				   tagCode,
				   ttUndefined,
				   tagCount,
				   buffer.Buffer ());
		
		}
	
	}

/*****************************************************************************/

void dng_ifd_updater::UpdateVersionTag (dng_file_updater &updater,
										uint32 tagCode,
										uint32 tagType,
										uint32 version,
										bool removeIfZero)
	{
	
	uint8 b [4];
	
	b [0] = (uint8) (version >> 24);
	b [1] = (uint8) (version >> 16);
	b [2] = (uint8) (version >>	 8);
	b [3] = (uint8) (version	  );
	
	UpdateTag (updater,
			   tagCode,
			   tagType,
			   4,
			   b,
			   removeIfZero && version == 0);
	
	}

/*****************************************************************************/

void dng_ifd_updater::UpdateDateTimeTag (dng_file_updater &updater,
										 uint32 tagCode,
										 const dng_date_time_info &info)
	{
	
	const dng_date_time &dt (info.DateTime ());
	
	if (dt.IsValid ())
		{
		
		char buffer [20];
		
		snprintf (buffer,
				  20,
				  "%04d:%02d:%02d %02d:%02d:%02d",
				  (int) dt.fYear,
				  (int) dt.fMonth,
				  (int) dt.fDay,
				  (int) dt.fHour,
				  (int) dt.fMinute,
				  (int) dt.fSecond);
				 
		UpdateTag (updater,
				   tagCode,
				   ttAscii,
				   20,
				   buffer);
		
		}
		
	else
		{
		
		DeleteTag (updater, tagCode);
		
		}
	
	}
			
/*****************************************************************************/

void dng_ifd_updater::UpdateOffsetTimeTag (dng_file_updater &updater,
										   uint32 tagCode,
										   const dng_date_time_info &info)
	{
	
	if (info.DateTime ().IsValid () &&
		info.TimeZone ().IsValid ())
		{
		
		UpdateStringTag (updater,
						 tagCode,
						 info.OffsetTime ());

		}
		
	else
		{
		
		DeleteTag (updater, tagCode);
		
		}
	
	}
			
/*****************************************************************************/

void dng_ifd_updater::SortTags ()
	{
	
	if (fTag.size () > 1)
		{
	
		std::stable_sort (fTag.begin (), fTag.end ());
		
		}
	
	}
	
/*****************************************************************************/

void dng_ifd_updater::Write (dng_file_updater &updater) const
	{
	
	bool isBigTIFF = updater.BigTIFF ();

	uint32 inlineLimit = isBigTIFF ? 8 : 4;
	
	dng_stream &stream (updater.Stream ());

	stream.SetWritePosition (fThisOffset);
	
	if (isBigTIFF)
		{
		stream.Put_uint64 (EntryCount ());
		}
	else
		{
		stream.Put_uint16 ((uint16) EntryCount ());
		}
	
	for (uint32 j = 0; j < EntryCount (); j++)
		{
		
		const dng_tag_updater &tag (fTag [j]);
		
		stream.Put_uint16 (tag.fTagCode);
		stream.Put_uint16 (tag.fTagType);
		
		if (isBigTIFF)
			{
			stream.Put_uint64 (tag.fTagCount);
			}
		else
			{
			stream.Put_uint32 ((uint32) tag.fTagCount);
			}
		
		uint32 tagTypeSize = TagTypeSize (tag.fTagType);
		
		uint64 tagSize = tag.TagSize ();
		
		if (tagSize > inlineLimit)
			{
			
			if (isBigTIFF)
				{
				stream.Put_uint64 (tag.fTagValue64);
				}
			else
				{
				stream.Put_uint32 (tag.fTagValue32 [0]);
				}
				
			}
			
		else
			{
			
			if (tagTypeSize == 8)
				{
				stream.Put_uint64 (tag.fTagValue64);
				}
				
			else if (tagTypeSize == 4)
				{
				
				for (uint32 k = 0; k < inlineLimit >> 2; k++)
					{
					stream.Put_uint32 (tag.fTagValue32 [k]);
					}
					
				}
				
			else if (tagTypeSize == 2)
				{
				
				for (uint32 k = 0; k < inlineLimit >> 1; k++)
					{
					stream.Put_uint16 (tag.fTagValue16 [k]);
					}
					
				}
				
			else
				{
				
				for (uint32 k = 0; k < inlineLimit; k++)
					{
					stream.Put_uint8 (tag.fTagValue8 [k]);
					}
					
				}
				
			}
				
		}
		
	if (isBigTIFF)
		{
		stream.Put_uint64 (fNextOffset);
		}
	else
		{
		stream.Put_uint32 ((uint32) fNextOffset);
		}
	
	}
		
/*****************************************************************************/

void dng_ifd_updater::ParseBigTableIndex (dng_file_updater &updater,
										  dng_big_table_index &bigTableIndex) const
	{
	
	if (HasTag (tcBigTableDigests	) &&
		HasTag (tcBigTableOffsets	) &&
		HasTag (tcBigTableByteCounts))
		{
		
		const dng_tag_updater &digestsTag = ExistingTag (tcBigTableDigests);
		const dng_tag_updater &offsetsTag = ExistingTag (tcBigTableOffsets);
		const dng_tag_updater &countsTag  = ExistingTag (tcBigTableByteCounts);
		
		std::vector<dng_fingerprint> digests;
		
		if (digestsTag.GetArray_Fingerprint (updater, digests))
			{
			
			uint64 existingCount = digests.size ();
			
			if (offsetsTag.fTagCount == existingCount &&
				countsTag .fTagCount == existingCount)
				{
			
				std::vector<uint64> offsets;
				std::vector<uint64> counts;
				
				if (offsetsTag.GetArray_uint64 (updater, offsets) &&
					countsTag .GetArray_uint64 (updater, counts ))
					{
			
					for (uint32 j = 0; j < existingCount; j++)
						{
						
						if (digests [j].IsValid () && offsets [j] && counts [j])
							{
							
							if (offsets [j] <= updater.Stream ().Length () &&
								counts [j] <= updater.Stream ().Length () - offsets [j] &&
								counts [j] <= uint64 (0xFFFFFFFF))
								{
							
								bigTableIndex.AddEntry (digests [j],
														(uint32) counts [j],
														offsets [j]);
														
								}
							
							}
						
						}
						
					}
				
				}
				
			}
			
		}
	
	}

/*****************************************************************************/

void dng_ifd_updater::WriteBigTableIndex (dng_file_updater &updater,
										  dng_big_table_index &bigTableIndex)
	{
				
	uint32 updatedCount = (uint32) bigTableIndex.Map ().size ();
		
	std::vector<dng_fingerprint> digests   (updatedCount);
	std::vector<uint64>			 offsets64 (updatedCount);
	std::vector<uint32>			 offsets32 (updatedCount);
	std::vector<uint32>			 counts	   (updatedCount);
	
	uint32 index = 0;
	
	for (auto it = bigTableIndex.Map ().cbegin ();
		 it != bigTableIndex.Map ().cend ();
		 ++it)
		{
		
		digests	  [index] = it->first;
		offsets64 [index] = it->second.fTableOffset;
		offsets32 [index] = (uint32) it->second.fTableOffset;
		counts	  [index] = it->second.fTableSize;
		
		index++;
		
		}
		
	UpdateTag (updater,
			   tcBigTableDigests,
			   ttByte,
			   16 * updatedCount,
			   &digests [0],
			   updatedCount == 0,
			   false);
			   
	if (updater.BigTIFF ())
		{
		
		UpdateTag (updater,
				   tcBigTableOffsets,
				   ttLong8,
				   updatedCount,
				   &offsets64 [0],
				   updatedCount == 0,
				   false);

		}
		
	else
		{

		UpdateTag (updater,
				   tcBigTableOffsets,
				   ttLong,
				   updatedCount,
				   &offsets32 [0],
				   updatedCount == 0,
				   false);

		}
		
	UpdateTag (updater,
			   tcBigTableByteCounts,
			   ttLong,
			   updatedCount,
			   &counts [0],
			   updatedCount == 0,
			   false);

	}

/*****************************************************************************/

void dng_ifd_updater::ParseBigTableGroupIndex (dng_file_updater &updater,
											   dng_big_table_group_index &index) const
	{
	
	if (HasTag (tcBigTableGroupIndex))
		{
		
		const dng_tag_updater &tag = ExistingTag (tcBigTableGroupIndex);
		
		std::vector<dng_fingerprint> digests;
		
		if (tag.GetArray_Fingerprint (updater, digests))
			{
			
			const uint32 existingCount = uint32 (digests.size ());

			// This value should always be even, because this tag holds pairs
			// of digests.

			if ((existingCount & uint64 (1)) != 0)
				return;

			const uint32 numGroups = existingCount >> 1;

			for (uint32 i = 0; i < numGroups; i++)
				{
				
				index.AddEntry (digests [2 * i    ],
								digests [2 * i + 1]);
				
				}
			
			}
			
		}
	
	}

/*****************************************************************************/

void dng_ifd_updater::WriteBigTableGroupIndex (dng_file_updater &updater,
											   const dng_big_table_group_index &index)
	{
	
	const uint32 updatedCount = (uint32) index.Map ().size ();
		
	std::vector<dng_fingerprint> digests;

	digests.reserve (SafeUint32Mult (updatedCount, 2));

	for (const auto &group : index.Map ())
		{
		digests.push_back (group.first);
		digests.push_back (group.second);
		}

	const uint64 tagCount = uint64 (digests.size () * 16);

	const void *data = (!digests.empty ()) ? (&digests [0]) : nullptr;

	const bool doRemove = (updatedCount == 0);
	
	UpdateTag (updater,
			   tcBigTableGroupIndex,
			   ttByte,
			   tagCount,	   
			   data,
			   doRemove,
			   false);
			   
	}

/*****************************************************************************/

bool dng_ifd_updater::MoveTagToIFD (dng_ifd_updater &dstIFD,
									uint32 tagCode)
	{
	
	for (size_t j = 0; j < fTag.size (); j++)
		{
		
		if (fTag [j] . fTagCode == tagCode)
			{
			
			if (!dstIFD.HasTag (tagCode))
				{
	
				dng_tag_updater tag = fTag [j];
				
				dstIFD.fTag.push_back (tag);
				
				}
			
			fTag.erase (fTag.begin () + j);
			
			return true;
			
			}
			
		}
		
	return false;
			
	}

/*****************************************************************************/

void dng_ifd_updater::UpdateAdobeData (dng_file_updater &updater,
									   const dng_fingerprint &iptcDigest)
	{
	
	if (HasTag (tcAdobeData))
		{
		
		const dng_tag_updater &adobeData (ExistingTag (tcAdobeData));
		
		dng_stream &stream (updater.Stream ());
			
		TempBigEndian tempBigEndian (stream);
			
		stream.SetReadPosition (adobeData.fTagOffset);
			
		uint64 nextOffset = stream.Position ();
		uint64 lastOffset = SafeUint64Add (nextOffset,
										   adobeData.TagSize ());
	
		while (nextOffset <= lastOffset &&
			   12 <= lastOffset - nextOffset)
			{
			
			stream.SetReadPosition (nextOffset);
			
			// Tag signature (4-character code):
			
			uint32 tagSignature = stream.Get_uint32 ();
			
			// Tag ID (16-bit integer):
			
			uint32 tagID = stream.Get_uint16 ();
			
			// Tag name (pascal string):
			
			char tagName [256];
			
				{
			
				uint32 tagNameCount = stream.Get_uint8 ();

				const uint32 tagNamePad = (tagNameCount & 1) == 0 ? 1 : 0;

				if (lastOffset - stream.Position () <
					(uint64) tagNameCount + tagNamePad + 4)
					{
					return;
					}
			
				stream.Get (tagName, tagNameCount);
			
				tagName [tagNameCount] = 0;
			
				if ((tagNameCount & 1) == 0)
					{
					(void) stream.Get_uint8 ();
					}
					
				}
				
			// Tag data size:
				
			uint32 tagSize = stream.Get_uint32 ();
			
			// Check validity of size.
			
			if ((uint64) tagSize > lastOffset - stream.Position ())
				{
				return;
				}
			
			// Find next offset.

			if (tagSize == 0xFFFFFFFFu)
				{
				return;
				}

			const uint32 paddedTagSize = RoundUp2 (tagSize);

			uint64 newOffset = SafeUint64Add (stream.Position (),
											  paddedTagSize);

			if (newOffset <= nextOffset ||
				newOffset > lastOffset)
				{
				return;
				}

			nextOffset = newOffset;
			
			if (tagSignature == DNG_CHAR4 ('8', 'B', 'I', 'M') &&
				tagID == 1061 &&
				tagSize == 16)
				{
				
				dng_fingerprint oldDigest;
				
				stream.Get (oldDigest);
				
				if (iptcDigest != oldDigest)
					{
					
					stream.SetWritePosition (stream.Position () - 16);
					
					#if qLogDNGUpdateMetadata
					
					LogPrint ("DNGUpdateMetadata: Updating Adobe IPTC Digest, offset = %llu\n",
							  (unsigned long long) stream.Position ());
						
					#endif
 
					stream.Put (iptcDigest);
					
					}
				
				return;
				
				}
		
			}
		
		}
	 
	}

/*****************************************************************************/

dng_file_updater::dng_file_updater (dng_host &host,
									dng_stream &stream)
		
	:	fHost	(host)
	,	fStream (stream)
	
	,	fTruncateOnFailure (true)
	,	fTruncateToLength  (fStream.Length ())
	
	{
	
	}

/*****************************************************************************/

dng_file_updater::~dng_file_updater ()
	{
	
	if (fTruncateOnFailure)
		{
		
		try
			{
			fStream.Flush ();
			}
		catch (...)
			{
			}
			
		try
			{
			fStream.SetLength (fTruncateToLength);
			}
		catch (...)
			{
			}
			
		}
	
	}
	
/*****************************************************************************/

void dng_file_updater::ParseHeader ()
	{
	
	Stream ().SetReadPosition (0);
	
	uint16 byteOrder = Stream ().Get_uint16 ();
	
	if (byteOrder == byteOrderII)
		{
		Stream ().SetLittleEndian ();
		}
		
	else if (byteOrder == byteOrderMM)
		{
		Stream ().SetBigEndian ();
		}
		
	else
		{
		ThrowBadFormat ();
		}
		
	uint16 magic = Stream ().Get_uint16 ();
	
	if (magic != magicTIFF &&
		magic != magicBigTIFF)
		{
		ThrowBadFormat ();
		}
		
	fBigTIFF = (magic == magicBigTIFF);
	
	if (fBigTIFF)
		{
		
		uint16 byteSize = Stream ().Get_uint16 ();
		uint16 zeroPad	= Stream ().Get_uint16 ();
		
		if (byteSize != 8 || zeroPad != 0)
			{
			ThrowBadFormat ();
			}
		
		}
		
	// Parse IFD 0.
	
	uint64 ifd0_offset = fBigTIFF ? Stream ().Get_uint64 ()
								  : Stream ().Get_uint32 ();
	
	Stream ().SetReadPosition (ifd0_offset);
	
	IFD0 ().Parse (*this);
	
	fIFD0_old = IFD0 ();
	
	// See if this is a DNG format file (vs a normal TIFF file).
	
	fIsDNG = false;
	
	if (IFD0 ().HasTag (tcDNGVersion))
		{
		
		const dng_tag_updater &dngVersionTag (IFD0 ().ExistingTag (tcDNGVersion));
		
		uint32 dngVersion = (((uint32) dngVersionTag.fTagValue8 [0]) << 24) |
							(((uint32) dngVersionTag.fTagValue8 [1]) << 16) |
							(((uint32) dngVersionTag.fTagValue8 [2]) <<	 8) |
							(((uint32) dngVersionTag.fTagValue8 [3])	  );
							
		fIsDNG = (dngVersion != 0);
		
		}
		
	// Parse EXIF IFD, if any.
	
	if (IFD0 ().HasTag (tcExifIFD))
		{
		
		const dng_tag_updater &exifTag (IFD0 ().ExistingTag (tcExifIFD));
		
		uint64 exif_offset = exifTag.Get_uint64 (*this);
		
		if (exif_offset)
			{
		
			Stream ().SetReadPosition (exif_offset);
			
			EXIF ().Parse (*this);
			
			fEXIF_old = EXIF ();
			
			}
			
		}
		
	// Parse GPS IFD, if any.
	
	if (IFD0 ().HasTag (tcGPSInfo))
		{
		
		const dng_tag_updater &gpsTag (IFD0 ().ExistingTag (tcGPSInfo));
		
		uint64 gps_offset = gpsTag.Get_uint64 (*this);
		
		if (gps_offset)
			{
		
			Stream ().SetReadPosition (gps_offset);
			
			GPS ().Parse (*this);
			
			fGPS_old = GPS ();
			
			}
			
		}
		
	}

/*****************************************************************************/

void dng_file_updater::PrepareToAppend (uint64 count)
	{
	
	uint64 length = Stream ().Length ();
	
	if (!BigTIFF ())
		{
	
		if (length + (length & 1) + count > 0x0FFFFFFFFL)
			{
			
			if (IsDNG ())
				{
				ThrowImageTooBigDNG ();
				}
			else
				{
				ThrowImageTooBigTIFF ();
				}
				
			}
			
		}
	
	Stream ().SetWritePosition (length);
	
	Stream ().PadAlign2 ();
	
	}
		
/*****************************************************************************/

void dng_file_updater::MoveIFD0toEXIF (uint32 tagCode)
	{
	
	#if qLogDNGUpdateMetadata
	bool moved =
	#endif
	
	IFD0 ().MoveTagToIFD (EXIF (), tagCode);
	
	#if qLogDNGUpdateMetadata
	if (moved)
		{
		LogPrint ("DNGUpdateMetadata: Moving tag %s from IFD0 to EXIF\n",
				  LookupTagCode (0, tagCode));
		}
	#endif
	
	}
		
/*****************************************************************************/

void dng_file_updater::MoveEXIFtoIFD0 (uint32 tagCode)
	{

	#if qLogDNGUpdateMetadata
	bool moved =
	#endif
	
	EXIF ().MoveTagToIFD (IFD0 (), tagCode);
	
	#if qLogDNGUpdateMetadata
	if (moved)
		{
		LogPrint ("DNGUpdateMetadata: Moving tag %s from EXIF to IFD0\n",
				  LookupTagCode (0, tagCode));
		}
	#endif
	
	}

/*****************************************************************************/

void dng_file_updater::UpdateEXIF (dng_exif &exif)
	{
	
	// DNG and TIFF-EP allow EXIF tags in IFD0 as an option.  Move to
	// preferred IFDs for update.
	
	// Updatable EXIF tags
	
	MoveIFD0toEXIF (tcExifVersion);
	MoveIFD0toEXIF (tcDateTimeOriginal);
	MoveIFD0toEXIF (tcDateTimeDigitized);
	MoveIFD0toEXIF (tcSubsecTime);
	MoveIFD0toEXIF (tcSubsecTimeOriginal);
	MoveIFD0toEXIF (tcSubsecTimeDigitized);
	MoveIFD0toEXIF (tcOffsetTime);
	MoveIFD0toEXIF (tcOffsetTimeOriginal);
	MoveIFD0toEXIF (tcOffsetTimeDigitized);
	MoveIFD0toEXIF (tcUserComment);
	MoveIFD0toEXIF (tcCameraOwnerNameExif);
	MoveIFD0toEXIF (tcLensModelExif);
	
	// Read only EXIF tags
	
	MoveIFD0toEXIF (tcExposureTime);
	MoveIFD0toEXIF (tcShutterSpeedValue);
	MoveIFD0toEXIF (tcFNumber);
	MoveIFD0toEXIF (tcApertureValue);
	MoveIFD0toEXIF (tcBrightnessValue);
	MoveIFD0toEXIF (tcExposureBiasValue);
	MoveIFD0toEXIF (tcMaxApertureValue);
	MoveIFD0toEXIF (tcSubjectDistance);
	MoveIFD0toEXIF (tcFocalLength);
	MoveIFD0toEXIF (tcISOSpeedRatings);
	MoveIFD0toEXIF (tcSensitivityType);
	MoveIFD0toEXIF (tcStandardOutputSensitivity);
	MoveIFD0toEXIF (tcRecommendedExposureIndex);
	MoveIFD0toEXIF (tcISOSpeed);
	MoveIFD0toEXIF (tcISOSpeedLatitudeyyy);
	MoveIFD0toEXIF (tcISOSpeedLatitudezzz);
	MoveIFD0toEXIF (tcFlash);
	MoveIFD0toEXIF (tcExposureProgram);
	MoveIFD0toEXIF (tcMeteringMode);
	MoveIFD0toEXIF (tcLightSource);
	MoveIFD0toEXIF (tcSensingMethodExif);
	MoveIFD0toEXIF (tcFocalLengthIn35mmFilm);
	MoveIFD0toEXIF (tcFileSource);
	MoveIFD0toEXIF (tcSceneType);
	MoveIFD0toEXIF (tcCFAPatternExif);
	MoveIFD0toEXIF (tcCustomRendered);
	MoveIFD0toEXIF (tcExposureMode);
	MoveIFD0toEXIF (tcWhiteBalance);
	MoveIFD0toEXIF (tcGainControl);
	MoveIFD0toEXIF (tcContrast);
	MoveIFD0toEXIF (tcSaturation);
	MoveIFD0toEXIF (tcSharpness);
	MoveIFD0toEXIF (tcSubjectDistanceRange);
	MoveIFD0toEXIF (tcDigitalZoomRatio);
	MoveIFD0toEXIF (tcExposureIndexExif);
	MoveIFD0toEXIF (tcColorSpace);
	MoveIFD0toEXIF (tcFocalPlaneXResolutionExif);
	MoveIFD0toEXIF (tcFocalPlaneYResolutionExif);
	MoveIFD0toEXIF (tcFocalPlaneResolutionUnitExif);
	MoveIFD0toEXIF (tcSubjectArea);
	MoveIFD0toEXIF (tcMakerNote);
	MoveIFD0toEXIF (tcImageUniqueID);
	MoveIFD0toEXIF (tcCameraSerialNumberExif);
	MoveIFD0toEXIF (tcLensSpecificationExif);
	MoveIFD0toEXIF (tcLensMakeExif);
	MoveIFD0toEXIF (tcLensSerialNumberExif);
	MoveIFD0toEXIF (tcTemperature);
	MoveIFD0toEXIF (tcHumidity);
	MoveIFD0toEXIF (tcPressure);
	MoveIFD0toEXIF (tcWaterDepth);
	MoveIFD0toEXIF (tcAcceleration);
	MoveIFD0toEXIF (tcCameraElevationAngle);
	
	// Updatable IFD0 tags
	
	MoveEXIFtoIFD0 (tcDateTime);
	MoveEXIFtoIFD0 (tcArtist);
	MoveEXIFtoIFD0 (tcSoftware);
	MoveEXIFtoIFD0 (tcCopyright);
	MoveEXIFtoIFD0 (tcImageDescription);
	MoveEXIFtoIFD0 (tcImageNumber);
	
	// Read only IFD0 tags
	
	MoveEXIFtoIFD0 (tcMake);
	MoveEXIFtoIFD0 (tcModel);
	MoveEXIFtoIFD0 (tcCameraSerialNumber);
	MoveEXIFtoIFD0 (tcMakerNoteSafety);
	MoveEXIFtoIFD0 (tcLensInfo);
	MoveEXIFtoIFD0 (tcSelfTimerMode);
	MoveEXIFtoIFD0 (tcBatteryLevel);
	
	// Update EXIF version tag
	
	EXIF ().UpdateVersionTag (*this,
							  tcExifVersion,
							  ttUndefined,
							  exif.fExifVersion);
							  
	// Update DateTime tags.
	
	IFD0 ().UpdateDateTimeTag (*this,
							   tcDateTime,
							   exif.fDateTime);
							   
	EXIF ().UpdateStringTag (*this,
							 tcSubsecTime,
							 exif.fDateTime.Subseconds ());
							 
	if (exif.AtLeastVersion0231 () || EXIF ().HasTag (tcOffsetTime))
		{
		
		EXIF ().UpdateOffsetTimeTag (*this,
									 tcOffsetTime,
									 exif.fDateTime);

		}
		
	// Update DateTimeOriginal tags.
	
	EXIF ().UpdateDateTimeTag (*this,
							   tcDateTimeOriginal,
							   exif.fDateTimeOriginal);
							   
	EXIF ().UpdateStringTag (*this,
							 tcSubsecTimeOriginal,
							 exif.fDateTimeOriginal.Subseconds ());
							 
	if (exif.AtLeastVersion0231 () || EXIF ().HasTag (tcOffsetTimeOriginal))
		{
		
		EXIF ().UpdateOffsetTimeTag (*this,
									 tcOffsetTimeOriginal,
									 exif.fDateTimeOriginal);

		}
				
	// Update DateTimeDigitized tags.
	
	EXIF ().UpdateDateTimeTag (*this,
							   tcDateTimeDigitized,
							   exif.fDateTimeDigitized);
							   
	EXIF ().UpdateStringTag (*this,
							 tcSubsecTimeDigitized,
							 exif.fDateTimeDigitized.Subseconds ());
							 
	if (exif.AtLeastVersion0231 () || EXIF ().HasTag (tcOffsetTimeDigitized))
		{
		
		EXIF ().UpdateOffsetTimeTag (*this,
									 tcOffsetTimeDigitized,
									 exif.fDateTimeDigitized);

		}
				
	// Updatable string tags.
	
	IFD0 ().UpdateStringTag (*this,
							 tcImageDescription,
							 exif.fImageDescription);
		
	IFD0 ().UpdateStringTag (*this,
							 tcArtist,
							 exif.fArtist);
		
	IFD0 ().UpdateStringTag (*this,
							 tcSoftware,
							 exif.fSoftware);
							 
	IFD0 ().UpdateDualStringTag (*this,
								 tcCopyright,
								 exif.fCopyright,
								 exif.fCopyright2);
		
	EXIF ().UpdateEncodedTextTag (*this,
								  tcUserComment,
								  exif.fUserComment);
								  
	// OwnerName can be updated.
	
	if (exif.AtLeastVersion0230 () || EXIF ().HasTag (tcCameraOwnerNameExif))
		{
		
		EXIF ().UpdateStringTag (*this,
								 tcCameraOwnerNameExif,
								 exif.fOwnerName);
		
		}

	// LensModel can be updated.
	
	if (exif.AtLeastVersion0230 () || EXIF ().HasTag (tcLensModelExif))
		{
		
		EXIF ().UpdateStringTag (*this,
								 tcLensModelExif,
								 exif.fLensName);
		
		}
	
	// ImageNumber can be updated.
	
	if (IsDNG () || IFD0 ().HasTag (tcImageNumber))
		{
		
		IFD0 ().UpdateTag (*this,
						   tcImageNumber,
						   ttLong,
						   1,
						   &exif.fImageNumber,
						   exif.fImageNumber == 0xFFFFFFFF);
		
		}
		
	// All the GPS tags can be updated.

	GPS ().UpdateVersionTag (*this,
							 tcGPSVersionID,
							 ttByte,
							 exif.fGPSVersionID);
		
	GPS ().UpdateStringTag (*this,
							tcGPSLatitudeRef,
							exif.fGPSLatitudeRef);
	
	GPS ().UpdateTag (*this,
					  tcGPSLatitude,
					  ttRational,
					  3,
					  exif.fGPSLatitude,
					  !exif.fGPSLatitude [0].IsValid ());
	
	GPS ().UpdateStringTag (*this,
							tcGPSLongitudeRef,
							exif.fGPSLongitudeRef);
	
	GPS ().UpdateTag (*this,
					  tcGPSLongitude,
					  ttRational,
					  3,
					  exif.fGPSLongitude,
					  !exif.fGPSLongitude [0].IsValid ());
					  
	GPS ().UpdateByteTag (*this,
						  tcGPSAltitudeRef,
						  (uint8) exif.fGPSAltitudeRef,
						  exif.fGPSAltitudeRef == 0xFFFFFFFF);
		
	GPS ().UpdateRationalTag (*this,
							  tcGPSAltitude,
							  exif.fGPSAltitude);
	
	GPS ().UpdateTag (*this,
					  tcGPSTimeStamp,
					  ttRational,
					  3,
					  exif.fGPSTimeStamp,
					  !exif.fGPSTimeStamp [0].IsValid ());
					  
	GPS ().UpdateStringTag (*this,
							tcGPSSatellites,
							exif.fGPSSatellites);

	GPS ().UpdateStringTag (*this,
							tcGPSStatus,
							exif.fGPSStatus);

	GPS ().UpdateStringTag (*this,
							tcGPSMeasureMode,
							exif.fGPSMeasureMode);

	GPS ().UpdateRationalTag (*this,
							  tcGPSDOP,
							  exif.fGPSDOP);

	GPS ().UpdateStringTag (*this,
							tcGPSSpeedRef,
							exif.fGPSSpeedRef);

	GPS ().UpdateRationalTag (*this,
							  tcGPSSpeed,
							  exif.fGPSSpeed);

	GPS ().UpdateStringTag (*this,
							tcGPSTrackRef,
							exif.fGPSTrackRef);

	GPS ().UpdateRationalTag (*this,
							  tcGPSTrack,
							  exif.fGPSTrack);

	GPS ().UpdateStringTag (*this,
							tcGPSImgDirectionRef,
							exif.fGPSImgDirectionRef);

	GPS ().UpdateRationalTag (*this,
							  tcGPSImgDirection,
							  exif.fGPSImgDirection);

	GPS ().UpdateStringTag (*this,
							tcGPSMapDatum,
							exif.fGPSMapDatum);

	GPS ().UpdateStringTag (*this,
							tcGPSDestLatitudeRef,
							exif.fGPSDestLatitudeRef);

	GPS ().UpdateTag (*this,
					  tcGPSDestLatitude,
					  ttRational,
					  3,
					  exif.fGPSDestLatitude,
					  !exif.fGPSDestLatitude [0].IsValid ());

	GPS ().UpdateStringTag (*this,
							tcGPSDestLongitudeRef,
							exif.fGPSDestLongitudeRef);

	GPS ().UpdateTag (*this,
					  tcGPSDestLongitude,
					  ttRational,
					  3,
					  exif.fGPSDestLongitude,
					  !exif.fGPSDestLongitude [0].IsValid ());

	GPS ().UpdateStringTag (*this,
							tcGPSDestBearingRef,
							exif.fGPSDestBearingRef);

	GPS ().UpdateRationalTag (*this,
							  tcGPSDestBearing,
							  exif.fGPSDestBearing);

	GPS ().UpdateStringTag (*this,
							tcGPSDestDistanceRef,
							exif.fGPSDestDistanceRef);

	GPS ().UpdateRationalTag (*this,
							  tcGPSDestDistance,
							  exif.fGPSDestDistance);

	GPS ().UpdateEncodedTextTag (*this,
								 tcGPSProcessingMethod,
								 exif.fGPSProcessingMethod);

	GPS ().UpdateEncodedTextTag (*this,
								 tcGPSAreaInformation,
								 exif.fGPSAreaInformation);

	GPS ().UpdateStringTag (*this,
							tcGPSDateStamp,
							exif.fGPSDateStamp);

	GPS ().UpdateShortTag (*this,
						   tcGPSDifferential,
						   (uint16) exif.fGPSDifferential,
						   exif.fGPSDifferential == 0xFFFFFFFF);

	GPS ().UpdateRationalTag (*this,
							  tcGPSHPositioningError,
							  exif.fGPSHPositioningError);
	
	}
		
/*****************************************************************************/

bool dng_file_updater::UpdateIFD (dng_ifd_updater &ifd_new,
								  const dng_ifd_updater &ifd_old)
	{
	
	// We don't attempt to preserve sort order while editing, so just
	// sort them here.
	
	ifd_new.SortTags ();
	
	if (ifd_new != ifd_old)
		{
		
		uint32 newByteCount = ifd_new.ByteCount (*this);
		uint32 oldByteCount = ifd_old.ByteCount (*this);
		
		if (newByteCount > oldByteCount)
			{
			
			PrepareToAppend (newByteCount);
											
			ifd_new.SetOffset (Stream ().Position ());
			
			ifd_new.Write (*this);
			
			AddZeroRange (ifd_old.Offset (),
						  oldByteCount);
			
			}
			
		else if (newByteCount == 0)
			{
			
			ifd_new.SetOffset (0);
			
			AddZeroRange (ifd_old.Offset (),
						  oldByteCount);
			
			}
			
		else
			{
			
			fTruncateOnFailure = false;
		
			ifd_new.Write (*this);
			
			AddZeroRange (ifd_new.Offset () + newByteCount,
						  oldByteCount - newByteCount);
			
			}
			
		return true;
		
		}
		
	return false;
	
	}

/*****************************************************************************/

void dng_file_updater::UpdateHeader ()
	{
	
	// Do we need to update EXIF IFD?
	
	if (UpdateIFD (EXIF (), fEXIF_old))
		{
		
		#if qLogDNGUpdateMetadata
		LogPrint ("DNGUpdateMetadata: Replaced EXIF IFD, old entries = %u, new entries = %u\n",
				  fEXIF_old.EntryCount (),
				  EXIF ().EntryCount ());
		#endif
				
		if (EXIF ().Offset () != fEXIF_old.Offset ())
			{
			
			if (BigTIFF ())
				{
				
				uint64 offset64 = EXIF ().Offset ();
				
				IFD0 ().UpdateTag (*this,
								   tcExifIFD,
								   ttLong8,
								   1,
								   &offset64,
								   EXIF ().EntryCount () == 0);
				
				}
				
			else
				{
				
				uint32 offset32 = (uint32) EXIF ().Offset ();
				
				IFD0 ().UpdateTag (*this,
								   tcExifIFD,
								   ttLong,
								   1,
								   &offset32,
								   EXIF ().EntryCount () == 0);
				
				}
			
			}
		
		}
	
	// Do we need to update GPS IFD?
	
	if (UpdateIFD (GPS (), fGPS_old))
		{
		
		#if qLogDNGUpdateMetadata
		LogPrint ("DNGUpdateMetadata: Replaced GPS IFD, old entries = %u, new entries = %u\n",
				  fGPS_old.EntryCount (),
				  GPS ().EntryCount ());
		#endif
				
		if (GPS ().Offset () != fGPS_old.Offset ())
			{
			
			if (BigTIFF ())
				{
				
				uint64 offset64 = GPS ().Offset ();
				
				IFD0 ().UpdateTag (*this,
								   tcGPSInfo,
								   ttLong8,
								   1,
								   &offset64,
								   GPS ().EntryCount () == 0);
				
				}
				
			else
				{
				
				uint32 offset32 = (uint32) GPS ().Offset ();
				
				IFD0 ().UpdateTag (*this,
								   tcGPSInfo,
								   ttLong,
								   1,
								   &offset32,
								   GPS ().EntryCount () == 0);
				
				}
			
			}
		
		}
		
	// Do we need to update IFD 0?
	
	if (UpdateIFD (IFD0 (), fIFD0_old))
		{

		#if qLogDNGUpdateMetadata
		LogPrint ("DNGUpdateMetadata: Replaced IFD0, old entries = %u, new entries = %u\n",
				  fIFD0_old.EntryCount (),
				  IFD0 ().EntryCount ());
		#endif
				
		fTruncateOnFailure = false;
		
		if (IFD0 ().Offset () != fIFD0_old.Offset ())
			{
		
			#if qLogDNGUpdateMetadata
			LogPrint ("DNGUpdateMetadata: Patching IFD0 offset\n");
			#endif
				
			if (BigTIFF ())
				{
			
				Stream ().SetWritePosition (8);
				
				Stream ().Put_uint64 (IFD0 ().Offset ());
				
				}
				
			else
				{
			
				Stream ().SetWritePosition (4);
				
				Stream ().Put_uint32 ((uint32) IFD0 ().Offset ());
				
				}
			
			}
			
		}
	
	Stream ().Flush ();
	
	fTruncateOnFailure = false;
			
	}

/*****************************************************************************/

void dng_file_updater::AddZeroRange (uint64 offset,
									 uint64 count)
	{
	
	if (count)
		{
	
		zero_range range;
		
		range.fOffset = offset;
		range.fCount  = count;
		
		fZeroRanges.push_back (range);
		
		}
	
	}

/*****************************************************************************/

void dng_file_updater::ApplyZeroRanges ()
	{
	
	if (!fZeroRanges.empty ())
		{
		
		std::sort (fZeroRanges.begin (), fZeroRanges.end ());
		
		for (size_t j = 0; j < fZeroRanges.size (); j++)
			{
			
			#if qLogDNGUpdateMetadata
			
			LogPrint ("DNGUpdateMetadata: Zeroing byte range, offset = %llu, count = %llu\n",
					  (unsigned long long) fZeroRanges [j].fOffset,
					  (unsigned long long) fZeroRanges [j].fCount);
						 
			#endif
					
			Stream ().SetWritePosition (fZeroRanges [j].fOffset);
			
			Stream ().PutZeros (fZeroRanges [j].fCount);
			
			}
			
		Stream ().Flush ();
	
		}
	
	}
		
/*****************************************************************************/

void CleanUpMetadataForUpdate (dng_host &host,
							   dng_metadata &metadata,
							   bool wantsIPTC)
	{
	
	if (metadata.GetXMP () && metadata.GetExif ())
		{
		
		dng_xmp	 &newXMP  (*metadata.GetXMP	 ());
		dng_exif &newEXIF (*metadata.GetExif ());
		
		// Resync EXIF, remove EXIF tags from XMP.
	
		newXMP.SyncExif (newEXIF,
						 metadata.GetOriginalExif (),
						 false,
						 true);
						 
		if (!wantsIPTC)
			{
			
			metadata.ClearIPTC ();
			
			newXMP.ClearIPTCDigest ();
			
			}
			
		else
			{
			
			metadata.RebuildIPTC (host.Allocator (),
								  true);
								  
			if (metadata.IPTCLength ())
				{
				
				dng_fingerprint digest = metadata.IPTCDigest ();
				
				newXMP.SetIPTCDigest (digest);
				
				}
				
			else
				{
				
				newXMP.ClearIPTCDigest ();
			
				}
			
			}
						 
		}

	}

/*****************************************************************************/

void DNGUpdateMetadata (dng_host &host,
						dng_stream &stream,
						const dng_negative &negative,
						const dng_metadata &metadata)
	{
	
	dng_file_updater updater (host, stream);
	
	// Read header and IFDs.

	updater.ParseHeader ();
	
	// Clean up metadata for update.
	
	AutoPtr<dng_metadata> updatedMetadata (metadata.Clone (host.Allocator ()));
	
	CleanUpMetadataForUpdate (host,
							  *updatedMetadata,
							  !updater.IsDNG ());
	
	// Some DNG files do not contain a RawDataUniqueID field,
	// Add tag with the computed value we are using.
	
	if (updater.IsDNG ())
		{
	
		dng_fingerprint rawDataUniqueID = negative.BaseRawDataUniqueID ();
		
		if (rawDataUniqueID.IsValid ())
			{
			
			updater.IFD0 ().UpdateTag (updater,
									   tcRawDataUniqueID,
									   ttByte,
									   16,
									   rawDataUniqueID.Data ());
																					 
			}
		
		}

	// Do we have big tables to embed?
	
	if (!metadata.BigTableDictionary ().IsEmpty ())
		{
		
		// Read in existing big table index, if any.
		
		dng_big_table_index bigTableIndex;
		
		updater.IFD0 ().ParseBigTableIndex (updater, bigTableIndex);
			
		// Write any new big tables to file and add to index.
		
		bool indexDirty = false;
		
		for (auto it = metadata.BigTableDictionary ().Map ().cbegin ();
			 it != metadata.BigTableDictionary ().Map ().cend ();
			 ++it)
			{
			
			const dng_fingerprint &fingerprint = it->first;
			
			if (!bigTableIndex.HasEntry (fingerprint))
				{
				
				const dng_ref_counted_block &block = it->second;
		
				uint32 blockSize = block.LogicalSize ();
				
				updater.PrepareToAppend (blockSize);
							
				uint64 blockOffset = stream.Position ();
									
				stream.Put (block.Buffer (), blockSize);
				
				#if qLogDNGUpdateMetadata
				
				LogPrint ("DNGUpdateMetadata: Adding big table <%s>, size = %u, offset = %llu\n",
						  dng_xmp::EncodeFingerprint (fingerprint).Get (),
						  blockSize,
						  (unsigned long long) blockOffset);

				#endif
				
				bigTableIndex.AddEntry (fingerprint,
										blockSize,
										blockOffset);
				
				indexDirty = true;
		
				}
				
			}

		// Write updated index back to ifd if dirty.
		
		if (indexDirty)
			{
			
			updater.IFD0 ().WriteBigTableIndex (updater,
												bigTableIndex);
										 
			}

		// Read in existing big table group index, if any.
		
		dng_big_table_group_index groupIndex;
		
		updater.IFD0 ().ParseBigTableGroupIndex (updater,
												 groupIndex);

		// Write any new groups to the group index.

		bool groupIndexDirty = false;
		
		for (const auto &group : metadata.BigTableGroupIndex ().Map ())
			{
			
			const auto &groupDigest = group.first;
			
			const auto &instanceDigest = group.second;
			
			if (!groupIndex.HasEntry (groupDigest))
				{

				// Also check that the group refers to an existing instance.

				if (bigTableIndex.HasEntry (instanceDigest))
					{

					groupIndex.AddEntry (groupDigest,
										 instanceDigest);

					groupIndexDirty = true;

					}

				}

			} // for all groups
		
		// Write updated group index back to ifd if dirty.
		
		if (groupIndexDirty)
			{
			
			updater.IFD0 ().WriteBigTableGroupIndex (updater,
													 groupIndex);
										 
			}

		}
		
	// Update XMP.
	
	if (updatedMetadata->GetXMP ())
		{
		
		uint32 existingSize = 0;
		
		if (updater.IFD0 ().HasTag (tcXMP))
			{
			
			const dng_tag_updater &xmpTag (updater.IFD0 ().ExistingTag (tcXMP));
			
			if (xmpTag.TagSize () <= 0xFFFFFFFF)
				{
				existingSize = (uint32) xmpTag.TagSize ();
				}
			
			}
			
		AutoPtr<dng_memory_block> xmpBlock (updatedMetadata->GetXMP ()->Serialize (true,
																				   existingSize));
																		   
		if (xmpBlock.Get ())
			{
			
			updater.IFD0 ().UpdateTag (updater,
									   tcXMP,
									   ttByte,
									   xmpBlock->LogicalSize (),
									   xmpBlock->Buffer (),
									   xmpBlock->LogicalSize () == 0);
									   
			}
			
		}
		
	// Update IPTC.
	
	updater.IFD0 ().UpdateTag (updater,
							   tcIPTC_NAA,
							   ttLong,
							   updatedMetadata->IPTCLength () >> 2,
							   updatedMetadata->IPTCData (),
							   updatedMetadata->IPTCLength () == 0);
		  
	// Update IPTC Digest inside Adobe data, if preset.
	
		{
		
		dng_fingerprint iptcDigest;
		
		if (updatedMetadata->IPTCLength ())
			{
			
			iptcDigest = updatedMetadata->IPTCDigest ();
			
			}
		
		updater.IFD0 ().UpdateAdobeData (updater,
										 iptcDigest);

		}
			
	// Update the EXIF/GPS metadata.
	
	if (updatedMetadata->GetExif ())
		{
	
		updater.UpdateEXIF (*updatedMetadata->GetExif ());
		
		}
  
	// Update orientation tag.
	
		{
		
		uint16 orientation = (uint16) negative.ComputeOrientation (*updatedMetadata).GetTIFF ();
		
		updater.IFD0 ().UpdateShortTag (updater,
										tcOrientation,
										orientation);
	 
		}
		
	// Update any modified IFDs.
	
	updater.UpdateHeader ();
	
	// Zero now unused data.
	
	updater.ApplyZeroRanges ();
	
	}

/*****************************************************************************/
