/*****************************************************************************/
// Copyright 2008-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_opcode_list.h"

#include "dng_exceptions.h"
#include "dng_globals.h"
#include "dng_host.h"
#include "dng_memory_stream.h"
#include "dng_negative.h"
#include "dng_tag_values.h"
#include "dng_utils.h"

#include <algorithm>

/*****************************************************************************/

dng_opcode_list::dng_opcode_list (uint32 stage)
	
	:	fList		 ()
	,	fAlwaysApply (false)
	,	fStage		 (stage)
	
	{
	
	}
	
/******************************************************************************/

dng_opcode_list::~dng_opcode_list ()
	{
	
	Clear ();
	
	}
			
/******************************************************************************/

void dng_opcode_list::Clear ()
	{
	
	for (size_t index = 0; index < fList.size (); index++)
		{
		
		if (fList [index])
			{
		
			delete fList [index];
			
			fList [index] = NULL;
			
			}
		
		}
		
	fList.clear ();
	
	fAlwaysApply = false;
	
	}

/******************************************************************************/

void dng_opcode_list::Remove (uint32 index)
	{
		
	DNG_REQUIRE (size_t (index) < fList.size (),
				 "Index out of range in dng_opcode_list::Remove");
			
	if (fList [index])
		{
		
		delete fList [index];
		
		}
		
	fList.erase (fList.begin () + index);
		
	if (fList.empty ())
		{
			
		fAlwaysApply = false;
			
		}
	
	}
			
/******************************************************************************/

void dng_opcode_list::Swap (dng_opcode_list &otherList)
	{
	
	fList.swap (otherList.fList);
	
	std::swap (fAlwaysApply, otherList.fAlwaysApply);
		
	std::swap (fStage, otherList.fStage);
		
	}

/******************************************************************************/

uint32 dng_opcode_list::MinVersion (bool includeOptional) const
	{
	
	uint32 result = dngVersion_None;
	
	for (size_t index = 0; index < fList.size (); index++)
		{
		
		if (includeOptional || !fList [index]->Optional ())
			{
			
			result = Max_uint32 (result, fList [index]->MinVersion ());
			
			}
		
		}
	
	return result;
	
	}

/*****************************************************************************/

void dng_opcode_list::Apply (dng_host &host,
							 dng_negative &negative,
							 AutoPtr<dng_image> &image)
	{

	DNG_REQUIRE (image.Get (), "Bad image in dng_opcode_list::Apply");

	bool prevOpcodeWasOptionalWarpRectilinear2 = false;
	
	for (uint32 index = 0; index < Count (); index++)
		{
		
		dng_opcode &opcode (Entry (index));

		// Deal with WarpRectilinear2 skip rule.

		if (prevOpcodeWasOptionalWarpRectilinear2 &&
			(opcode.OpcodeID () == dngOpcode_WarpRectilinear ||
			 opcode.OpcodeID () == dngOpcode_WarpFisheye))
			{
			continue;
			}

		if (opcode.AboutToApply (host,
								 negative,
								 image->Bounds (),
								 image->Planes ()))
			{
						
			opcode.Apply (host,
						  negative,
						  image);

			prevOpcodeWasOptionalWarpRectilinear2 =
				(opcode.Optional () &&
				 opcode.OpcodeID () == dngOpcode_WarpRectilinear2);

			}
		
		}

	}

/*****************************************************************************/

void dng_opcode_list::Append (AutoPtr<dng_opcode> &opcode)
	{
	
	if (opcode->OpcodeID () == dngOpcode_Private)
		{
		SetAlwaysApply ();
		}
		
	opcode->SetStage (fStage);
	
	fList.push_back (NULL);

	fList [fList.size () - 1] = opcode.Release ();
	
	}
		
/*****************************************************************************/

dng_memory_block * dng_opcode_list::Spool (dng_host &host) const
	{
	
	if (IsEmpty ())
		{
		return NULL;
		}
		
	if (AlwaysApply ())
		{
		ThrowProgramError ();
		}
		
	dng_memory_stream stream (host.Allocator ());
	
	stream.SetBigEndian ();
	
	stream.Put_uint32 ((uint32) fList.size ());
	
	for (size_t index = 0; index < fList.size (); index++)
		{
		
		stream.Put_uint32 (fList [index]->OpcodeID	 ());
		stream.Put_uint32 (fList [index]->MinVersion ());
		stream.Put_uint32 (fList [index]->Flags		 ());
		
		fList [index]->PutData (stream);
	
		}
	
	return stream.AsMemoryBlock (host.Allocator ());
	
	}
		
/*****************************************************************************/

void dng_opcode_list::FingerprintToStream (dng_stream &stream) const
	{
	
	if (IsEmpty ())
		{
		return;
		}
		
	stream.Put_uint32 ((uint32) fList.size ());
	
	for (size_t index = 0; index < fList.size (); index++)
		{
		
		stream.Put_uint32 (fList [index]->OpcodeID	 ());
		stream.Put_uint32 (fList [index]->MinVersion ());
		stream.Put_uint32 (fList [index]->Flags		 ());
		
		if (fList [index]->OpcodeID () != dngOpcode_Private)
			{
		
			fList [index]->PutData (stream);
			
			}
	
		}
		
	}

/*****************************************************************************/

void dng_opcode_list::Parse (dng_host &host,
							 dng_stream &stream,
							 uint32 byteCount,
							 uint64 streamOffset)
	{
	
	Clear ();
	
	if (byteCount < 4 ||
		streamOffset > 0xFFFFFFFFFFFFFFFFull - byteCount)
		{
		ThrowBadFormat ("Invalid opcode list size");
		}

	const uint64 listEnd = streamOffset + byteCount;
	const uint32 kMinOpcodeBytes = 16;

	TempBigEndian tempBigEndian (stream);
	
	stream.SetReadPosition (streamOffset);
	
	uint32 count = stream.Get_uint32 ();

	if (count > (byteCount - 4) / kMinOpcodeBytes)
		{
		ThrowBadFormat ("Invalid opcode count");
		}
	
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		if (count == 1)
			{
			printf ("1 opcode\n");
			}
			
		else
			{
			printf ("%u opcodes\n", (unsigned) count);
			}
	
		}
		
	#endif
	
	for (uint32 index = 0; index < count; index++)
		{

		const uint64 opcodeStart = stream.Position ();

		if (opcodeStart > listEnd ||
			kMinOpcodeBytes > listEnd - opcodeStart)
			{
			ThrowBadFormat ("Invalid opcode list entry");
			}
		
		uint32 opcodeID = stream.Get_uint32 ();

		const uint64 opcodeHeaderStart = stream.Position ();
		const uint64 opcodeDataSizePosition = opcodeHeaderStart + 8;

		stream.SetReadPosition (opcodeDataSizePosition);

		uint32 opcodeDataSize = stream.Get_uint32 ();

		const uint64 opcodeDataStart = opcodeHeaderStart + 12;

		if (opcodeDataSize > listEnd - opcodeDataStart)
			{
			ThrowBadFormat ("Invalid opcode data size");
			}

		stream.SetReadPosition (opcodeHeaderStart);
		
		AutoPtr<dng_opcode> opcode (host.Make_dng_opcode (opcodeID,
														  stream));
														  
		Append (opcode);
		
		}
		
	if (stream.Position () != streamOffset + byteCount)
		{
		
		ThrowBadFormat ("Error parsing opcode list");
		
		}
	
	}
		
/*****************************************************************************/

void dng_opcode_list::ApplyAreaScale (const dng_urational &scale)
	{
	
	if (scale.NotValid ())
		{
		return;
		}

	if (scale.n == scale.d)
		{
		return;
		}

	DNG_REQUIRE (scale.n > 0, "Bad scale factor in dng_opcode_list::Scale");

	for (auto &opcode : fList)
		{

		opcode->ApplyAreaScale (scale);
		
		}	
	
	}

/*****************************************************************************/
