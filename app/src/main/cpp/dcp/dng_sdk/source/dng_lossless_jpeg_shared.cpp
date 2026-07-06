/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

// Lossless JPEG code adapted from:

/* Copyright (C) 1991, 1992, Thomas G. Lane.
 * Part of the Independent JPEG Group's software.
 * See the file Copyright for more details.
 *
 * Copyright (c) 1993 Brian C. Smith, The Regents of the University
 * of California
 * All rights reserved.
 * 
 * Copyright (c) 1994 Kongji Huang and Brian C. Smith.
 * Cornell University
 * All rights reserved.
 * 
 * Permission to use, copy, modify, and distribute this software and its
 * documentation for any purpose, without fee, and without written agreement is
 * hereby granted, provided that the above copyright notice and the following
 * two paragraphs appear in all copies of this software.
 * 
 * IN NO EVENT SHALL CORNELL UNIVERSITY BE LIABLE TO ANY PARTY FOR
 * DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING OUT
 * OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF CORNELL
 * UNIVERSITY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * CORNELL UNIVERSITY SPECIFICALLY DISCLAIMS ANY WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.  THE SOFTWARE PROVIDED HEREUNDER IS
 * ON AN "AS IS" BASIS, AND CORNELL UNIVERSITY HAS NO OBLIGATION TO
 * PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
 */
 
/*****************************************************************************/

#include "dng_lossless_jpeg.h"

#include "dng_assertions.h"
#include "dng_exceptions.h"
#include "dng_memory.h"
#include "dng_safe_arithmetic.h"
#include "dng_simd_type.h"
#include "dng_stream.h"
#include "dng_tag_codes.h"

#include <algorithm>

/*****************************************************************************/

// This module contains routines that should be as fast as possible, even
// at the expense of slight code size increases.

#include "dng_fast_module.h"

/*****************************************************************************/

// The qSupportCanon_sRAW stuff not actually required for DNG support, but
// only included to allow this code to be used on Canon sRAW files.

#ifndef qSupportCanon_sRAW
#define qSupportCanon_sRAW 1
#endif

// The qSupportSony_sRAW stuff not actually required for DNG support, but
// only included to allow this code to be used on Sony sRAW files.

#ifndef qSupportSony_sRAW
#define qSupportSony_sRAW 1
#endif

// The qSupportHasselblad_3FR stuff not actually required for DNG support, but
// only included to allow this code to be used on Hasselblad 3FR files.

#ifndef qSupportHasselblad_3FR
#define qSupportHasselblad_3FR 1
#endif

/*****************************************************************************/

/*
 * One of the following structures is created for each huffman coding
 * table.  We use the same structure for encoding and decoding, so there
 * may be some extra fields for encoding that aren't used in the decoding
 * and vice-versa.
 */
 
struct HuffmanTable
	{
	
	/*
	 * These two fields directly represent the contents of a JPEG DHT
	 * marker
	 */
	uint8 bits[17];
	uint8 huffval[256];

	/*
	 * The remaining fields are computed from the above to allow more
	 * efficient coding and decoding.  These fields should be considered
	 * private to the Huffman compression & decompression modules.
	 */

	uint16 mincode[17];
	int32 maxcode[18];
	int16 valptr[17];
	int32 numbits[256];
	int32 value[256];
	
	uint16 ehufco[256];
	int8 ehufsi[256];
	
	};

/*****************************************************************************/

// Computes the derived fields in the Huffman table structure.
 
static void FixHuffTbl (HuffmanTable *htbl)
	{
	
	int32 l;
	int32 i;
	
	const uint32 bitMask [] =
		{
		0xffffffff, 0x7fffffff, 0x3fffffff, 0x1fffffff,
		0x0fffffff, 0x07ffffff, 0x03ffffff, 0x01ffffff,
		0x00ffffff, 0x007fffff, 0x003fffff, 0x001fffff,
		0x000fffff, 0x0007ffff, 0x0003ffff, 0x0001ffff,
		0x0000ffff, 0x00007fff, 0x00003fff, 0x00001fff,
		0x00000fff, 0x000007ff, 0x000003ff, 0x000001ff,
		0x000000ff, 0x0000007f, 0x0000003f, 0x0000001f,
		0x0000000f, 0x00000007, 0x00000003, 0x00000001
		};
		
	// Figure C.1: make table of Huffman code length for each symbol
	// Note that this is in code-length order.

	int8 huffsize [257];
	
	int32 p = 0;
	
	for (l = 1; l <= 16; l++)
		{
		
		for (i = 1; i <= (int32) htbl->bits [l]; i++)
			huffsize [p++] = (int8) l;

		}
		
	huffsize [p] = 0;
	
	int32 lastp = p;

	// Figure C.2: generate the codes themselves
	// Note that this is in code-length order.

	uint16 huffcode [257];
	
	uint16 code = 0;
	
	int32 si = huffsize [0];
	
	p = 0;
	
	while (huffsize [p])
		{
		
		while (((int32) huffsize [p]) == si) 
			{
			huffcode [p++] = code;
			code++;
			}
			
		code <<= 1;
		
		si++;
		
		}

	// Figure C.3: generate encoding tables
	// These are code and size indexed by symbol value
	// Set any codeless symbols to have code length 0; this allows
	// EmitBits to detect any attempt to emit such symbols.

	memset (htbl->ehufsi, 0, sizeof (htbl->ehufsi));

	for (p = 0; p < lastp; p++)
		{
		
		htbl->ehufco [htbl->huffval [p]] = huffcode [p];
		htbl->ehufsi [htbl->huffval [p]] = huffsize [p];
		
		}
	
	// Figure F.15: generate decoding tables
 
	p = 0;
	
	for (l = 1; l <= 16; l++)
		{
		
		if (htbl->bits [l])
			{
			
			htbl->valptr  [l] = (int16) p;
			htbl->mincode [l] = huffcode [p];
			
			p += htbl->bits [l];
			
			htbl->maxcode [l] = huffcode [p - 1];
			
			}
			
		else 
			{
			htbl->maxcode [l] = -1;
			}

		}

	// We put in this value to ensure HuffDecode terminates.

	htbl->maxcode[17] = 0xFFFFFL;

	// Build the numbits, value lookup tables.
	// These table allow us to gather 8 bits from the bits stream,
	// and immediately lookup the size and value of the huffman codes.
	// If size is zero, it means that more than 8 bits are in the huffman
	// code (this happens about 3-4% of the time).

	memset (htbl->numbits, 0, sizeof (htbl->numbits));
	
	for (p = 0; p < lastp; p++)
		{
		
		int32 size = huffsize [p];
		
		if (size <= 8)
			{
			
			int32 value = htbl->huffval [p];
			
			code = huffcode [p];
			
			int32 ll = code << (8  -size);
			
			int32 ul = (size < 8 ? ll | bitMask [24 + size]
								 : ll);

			if (ul >= static_cast<int32> (sizeof(htbl->numbits) / sizeof (htbl->numbits [0])) ||
				ul >= static_cast<int32> (sizeof(htbl->value  ) / sizeof (htbl->value	[0])))
				{
				ThrowBadFormat ();
				}
				
			for (i = ll; i <= ul; i++)
				{
				htbl->numbits [i] = size;
				htbl->value	  [i] = value;
				}
				
			}

		}

	}

/*****************************************************************************/

// Validates the Huffman-table properties the decoder relies on in its
// hot per-sample helpers. We still keep a rare slow-path guard in
// HuffDecode because malformed scan data can land in an unused code gap
// even when the table shape itself is valid.

static void ValidateDecoderHuffTbl (const HuffmanTable *htbl)
	{

	int32 totalCodes = 0;
	int32 openSlots  = 1;

	for (int32 l = 1; l <= 16; l++)
		{

		totalCodes += htbl->bits [l];

		if (totalCodes > 256)
			{
			ThrowBadFormat ();
			}

		openSlots = (openSlots << 1) - htbl->bits [l];

		if (openSlots < 0)
			{
			ThrowBadFormat ();
			}

		}

	if (totalCodes == 0)
		{
		ThrowBadFormat ();
		}

	for (int32 p = 0; p < totalCodes; p++)
		{

		if (htbl->huffval [p] > 16)
			{
			ThrowBadFormat ();
			}

		}

	}

/*****************************************************************************/

/*
 * The following structure stores basic information about one component.
 */
 
struct JpegComponentInfo
	{
	
	/*
	 * These values are fixed over the whole image.
	 * They are read from the SOF marker.
	 */
	int16 componentId;		/* identifier for this component (0..255) */
	int16 componentIndex;	/* its index in SOF or cPtr->compInfo[]	  */

	/*
	 * Downsampling is not normally used in lossless JPEG, although
	 * it is permitted by the JPEG standard (DIS). We set all sampling 
	 * factors to 1 in this program.
	 */
	int16 hSampFactor;		/* horizontal sampling factor */
	int16 vSampFactor;		/* vertical sampling factor	  */

	/*
	 * Huffman table selector (0..3). The value may vary
	 * between scans. It is read from the SOS marker.
	 */
	int16 dcTblNo;

	};

/*
 * One of the following structures is used to pass around the
 * decompression information.
 */
 
struct DecompressInfo
	{
	
	/*
	 * Image width, height, and image data precision (bits/sample)
	 * These fields are set by ReadFileHeader or ReadScanHeader
	 */ 
	int32 imageWidth;
	int32 imageHeight;
	int32 dataPrecision;

	/*
	 * compInfo[i] describes component that appears i'th in SOF
	 * numComponents is the # of color components in JPEG image.
	 */
	JpegComponentInfo *compInfo;
	int16 numComponents;

	/*
	 * *curCompInfo[i] describes component that appears i'th in SOS.
	 * compsInScan is the # of color components in current scan.
	 */
	JpegComponentInfo *curCompInfo[4];
	int16 compsInScan;

	/*
	 * MCUmembership[i] indexes the i'th component of MCU into the
	 * curCompInfo array.
	 */
	int16 MCUmembership[10];

	/*
	 * ptrs to Huffman coding tables, or NULL if not defined
	 */
	HuffmanTable *dcHuffTblPtrs[4];

	/* 
	 * prediction selection value (PSV) and point transform parameter (Pt)
	 */
	int32 Ss;
	int32 Pt;

	/*
	 * In lossless JPEG, restart interval shall be an integer
	 * multiple of the number of MCU in a MCU row.
	 */
	int32 restartInterval;/* MCUs per restart interval, 0 = no restart */
	int32 restartInRows; /*if > 0, MCU rows per restart interval; 0 = no restart*/

	/*
	 * these fields are private data for the entropy decoder
	 */
	int32 restartRowsToGo;	/* MCUs rows left in this restart interval */
	int16 nextRestartNum;	/* # of next RSTn marker (0..7) */
	
	};

/*****************************************************************************/

// An MCU (minimum coding unit) is an array of samples.

typedef uint16 ComponentType;		// the type of image components

typedef ComponentType *MCU;			// MCU - array of samples

/*****************************************************************************/

template <SIMDType simd>
class dng_lossless_decoder: private dng_uncopyable
	{
	
	private:
	
		dng_stream *fStream;		// Input data.
		
		dng_spooler *fSpooler;		// Output data.
				
		bool fBug16;				// Decode data with the "16-bit" bug.

		dng_memory_data huffmanBuffer [4];
		
		dng_memory_data compInfoBuffer;
		
		DecompressInfo info;
		
		dng_memory_data mcuBuffer1;
		dng_memory_data mcuBuffer2;
		dng_memory_data mcuBuffer3;
		dng_memory_data mcuBuffer4;
	
		MCU *mcuROW1;
		MCU *mcuROW2;
		
		uint64 getBuffer;			// current bit-extraction buffer
		int32 bitsLeft;				// # of unused bits in it
				
		#if qSupportHasselblad_3FR
		bool fHasselblad3FR;
		#endif

	public:
	
		dng_lossless_decoder (dng_stream *stream,
							  dng_spooler *spooler,
							  bool bug16);
	
		void StartRead (uint32 &imageWidth,
						uint32 &imageHeight,
						uint32 &imageChannels);

		void FinishRead ();
		
		#if qSupportHasselblad_3FR
	
		bool IsHasselblad3FR ()
			{
			return fHasselblad3FR;
			}
		
		#endif

	private:

		DNG_ALWAYS_INLINE uint8 GetJpegChar ()
			{
			return fStream->Get_uint8 ();
			}
			
		DNG_ALWAYS_INLINE void UnGetJpegChar ()
			{
			fStream->SetReadPosition (fStream->Position () - 1);
			}
			
		uint16 Get2bytes ();
	
		void SkipVariable ();

		void GetDht ();

		void GetDri ();

		void GetApp0 ();

		void GetSof (int32 code);

		void GetSos ();

		void GetSoi ();
		
		int32 NextMarker ();

		JpegMarker ProcessTables ();
		
		void ReadFileHeader ();

		int32 ReadScanHeader ();

		void DecoderStructInit ();

		void HuffDecoderInit ();

		void ProcessRestart ();

		int32 QuickPredict (int32 col,
							int32 curComp,
							MCU *curRowBuf,
							MCU *prevRowBuf);

		void FillBitBuffer (int32 nbits);

		int32 show_bits8 ();

		void flush_bits (int32 nbits);

		int32 get_bits (int32 nbits);

		int32 get_bit ();

		int32 HuffDecode (HuffmanTable *htbl);

		void HuffExtend (int32 &x, int32 s);

		void PmPutRow (MCU *buf,
					   int32 numComp,
					   int32 numCol,
					   int32 row);

		void DecodeFirstRow (MCU *curRowBuf);

		void DecodeImage ();
		
	};

/*****************************************************************************/

template <SIMDType simd>
dng_lossless_decoder<simd>::dng_lossless_decoder (dng_stream *stream,
												  dng_spooler *spooler,
												  bool bug16)
									
	:	fStream	 (stream )
	,	fSpooler (spooler)
	,	fBug16	 (bug16	 )
	
	,	compInfoBuffer ()
	,	info		   ()
	,	mcuBuffer1	   ()
	,	mcuBuffer2	   ()
	,	mcuBuffer3	   ()
	,	mcuBuffer4	   ()
	,	mcuROW1		   (NULL)
	,	mcuROW2		   (NULL)
	,	getBuffer	   (0)
	,	bitsLeft	   (0)
	
	#if qSupportHasselblad_3FR
	,	fHasselblad3FR (false)
	#endif
	
	{
	
	memset (&info, 0, sizeof (info));
	
	}

/*****************************************************************************/

template <SIMDType simd>
uint16 dng_lossless_decoder<simd>::Get2bytes ()
	{
	
	uint16 a = GetJpegChar ();
	
	return (uint16) ((a << 8) + GetJpegChar ());
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * SkipVariable --
 *
 *	Skip over an unknown or uninteresting variable-length marker
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	Bitstream is parsed over marker.
 *
 *
 *--------------------------------------------------------------
 */
 
template <SIMDType simd>
void dng_lossless_decoder<simd>::SkipVariable ()
	{
	
	uint32 raw = Get2bytes ();

	if (raw < 2)
		{
		ThrowBadFormat ();
		}

	fStream->Skip (raw - 2);

	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * GetDht --
 *
 *	Process a DHT marker
 *
 * Results:
 *	None
 *
 * Side effects:
 *	A huffman table is read.
 *	Exits on error.
 *
 *--------------------------------------------------------------
 */
 
template <SIMDType simd>
void dng_lossless_decoder<simd>::GetDht ()
	{

	uint32 raw = Get2bytes ();

	if (raw < 2)
		{
		ThrowBadFormat ();
		}

	int32 length = (int32) (raw - 2);

	while (length > 0)
		{

		if (length < 1 + 16)
			{
			ThrowBadFormat ();
			}

		int32 index = GetJpegChar ();
		
		if (index < 0 || index >= 4)
			{
			ThrowBadFormat ();
			}

		HuffmanTable *&htblptr = info.dcHuffTblPtrs [index];

		if (htblptr == NULL)
			{
			
			huffmanBuffer [index] . Allocate (sizeof (HuffmanTable));
			
			htblptr = (HuffmanTable *) huffmanBuffer [index] . Buffer ();
			
			}

		htblptr->bits [0] = 0;
		
		int32 count = 0;
		
		for (int32 i = 1; i <= 16; i++)
			{
			
			htblptr->bits [i] = GetJpegChar ();
			
			count += htblptr->bits [i];
			
			}

		if (count > 256) 
			{
			ThrowBadFormat ();
			}

		if (count > length - (1 + 16))
			{
			ThrowBadFormat ();
			}

		for (int32 j = 0; j < count; j++)
			{
			
			htblptr->huffval [j] = GetJpegChar ();
			
			}

		length -= 1 + 16 + count;

		}
		
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * GetDri --
 *
 *	Process a DRI marker
 *
 * Results:
 *	None
 *
 * Side effects:
 *	Exits on error.
 *	Bitstream is parsed.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_decoder<simd>::GetDri ()
	{
	
	if (Get2bytes () != 4)
		{
		ThrowBadFormat ();
		}
	
	info.restartInterval = Get2bytes ();

	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * GetApp0 --
 *
 *	Process an APP0 marker.
 *
 * Results:
 *	None
 *
 * Side effects:
 *	Bitstream is parsed
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_decoder<simd>::GetApp0 ()
	{

	SkipVariable ();
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * GetSof --
 *
 *	Process a SOFn marker
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	Bitstream is parsed
 *	Exits on error
 *	info structure is filled in
 *
 *--------------------------------------------------------------
 */
 
template <SIMDType simd>
void dng_lossless_decoder<simd>::GetSof (int32 /*code*/)
	{
	
	int32 length = Get2bytes ();

	info.dataPrecision = GetJpegChar ();
	info.imageHeight   = Get2bytes	 ();
	info.imageWidth	   = Get2bytes	 ();
	info.numComponents = GetJpegChar ();

	// We don't support files in which the image height is initially
	// specified as 0 and is later redefined by DNL.  As long as we
	// have to check that, might as well have a general sanity check.
	 
	if ((info.imageHeight	<= 0) ||
		(info.imageWidth	<= 0) || 
		(info.numComponents <= 0))
		{
		ThrowBadFormat ();
		}

	// Lossless JPEG specifies data precision to be from 2 to 16 bits/sample.

	const int32 MinPrecisionBits = 2;
	const int32 MaxPrecisionBits = 16;

	if ((info.dataPrecision < MinPrecisionBits) ||
		(info.dataPrecision > MaxPrecisionBits))
		{
		ThrowBadFormat ();
		}
		
	// Check length of tag.

	if (length != (info.numComponents * 3 + 8))
		{
		ThrowBadFormat ();
		}
		
	// Allocate per component info.
	
	// We can cast info.numComponents to a uint32 because the check above
	// guarantees that it cannot be negative.

	compInfoBuffer.Allocate (static_cast<uint32> (info.numComponents),
							 sizeof (JpegComponentInfo));
	
	info.compInfo = (JpegComponentInfo *) compInfoBuffer.Buffer ();
								 
	// Read in the per compent info.

	for (int32 ci = 0; ci < info.numComponents; ci++)
		{
		
		JpegComponentInfo *compptr = &info.compInfo [ci];
		
		compptr->componentIndex = (int16) ci;
		
		compptr->componentId = GetJpegChar ();
		
		int32 c = GetJpegChar ();
		
		compptr->hSampFactor = (int16) ((c >> 4) & 15);
		compptr->vSampFactor = (int16) ((c	   ) & 15);
		
		(void) GetJpegChar ();	 /* skip Tq */
		
		}

	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * GetSos --
 *
 *	Process a SOS marker
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	Bitstream is parsed.
 *	Exits on error.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_decoder<simd>::GetSos ()
	{
	
	int32 length = Get2bytes ();

	// Get the number of image components.

	int32 n = GetJpegChar ();
	info.compsInScan = (int16) n;
	
	// Check length.
	
	length -= 3;

	if (length != (n * 2 + 3) || n < 1 || n > 4)
		{
		ThrowBadFormat ();
		}
	
	// Find index and huffman table for each component.

	for (int32 i = 0; i < n; i++)
		{
		
		int32 cc = GetJpegChar ();
		int32 c	 = GetJpegChar ();
		
		int32 ci;
		
		for (ci = 0; ci < info.numComponents; ci++)
			{
			
			if (cc == info.compInfo[ci].componentId)
				{
				break;
				}
				
			}

		if (ci >= info.numComponents) 
			{
			ThrowBadFormat ();
			}

		JpegComponentInfo *compptr = &info.compInfo [ci];
		
		info.curCompInfo [i] = compptr;
		
		compptr->dcTblNo = (int16) ((c >> 4) & 15);
		
		}

	// Get the PSV, skip Se, and get the point transform parameter.

	info.Ss = GetJpegChar (); 
	
	(void) GetJpegChar ();
	
	info.Pt = GetJpegChar () & 0x0F;
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * GetSoi --
 *
 *	Process an SOI marker
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	Bitstream is parsed.
 *	Exits on error.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_decoder<simd>::GetSoi ()
	{

	// Reset all parameters that are defined to be reset by SOI
	 
	info.restartInterval = 0;
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * NextMarker --
 *
 *		Find the next JPEG marker Note that the output might not
 *	be a valid marker code but it will never be 0 or FF
 *
 * Results:
 *	The marker found.
 *
 * Side effects:
 *	Bitstream is parsed.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
int32 dng_lossless_decoder<simd>::NextMarker ()
	{
	
	int32 c;

	do
		{

		// skip any non-FF bytes
		
		do 
			{
			c = GetJpegChar ();
			}
		while (c != 0xFF);
		
		// skip any duplicate FFs, since extra FFs are legal
		
		do 
			{
			c = GetJpegChar();
			} 
		while (c == 0xFF);
		
		}
	while (c == 0);		// repeat if it was a stuffed FF/00

	return c;
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * ProcessTables --
 *
 *	Scan and process JPEG markers that can appear in any order
 *	Return when an SOI, EOI, SOFn, or SOS is found
 *
 * Results:
 *	The marker found.
 *
 * Side effects:
 *	Bitstream is parsed.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
JpegMarker dng_lossless_decoder<simd>::ProcessTables ()
	{
	
	while (true)
		{
	
		int32 c = NextMarker ();
	
		switch (c)
			{
			
			case M_SOF0:
			case M_SOF1:
			case M_SOF2:
			case M_SOF3:
			case M_SOF5:
			case M_SOF6:
			case M_SOF7:
			case M_JPG:
			case M_SOF9:
			case M_SOF10:
			case M_SOF11:
			case M_SOF13:
			case M_SOF14:
			case M_SOF15:
			case M_SOI:
			case M_EOI:
			case M_SOS:
				return (JpegMarker) c;

			case M_DHT:
				GetDht ();
				break;

			case M_DQT:
				break;

			case M_DRI:
				GetDri ();
				break;

			case M_APP0:
				GetApp0 ();
				break;

			case M_RST0:	// these are all parameterless
			case M_RST1:
			case M_RST2:
			case M_RST3:
			case M_RST4:
			case M_RST5:
			case M_RST6:
			case M_RST7:
			case M_TEM:
				break;

			default:		// must be DNL, DHP, EXP, APPn, JPGn, COM, or RESn
				SkipVariable ();
				break;
				
			}
			
		}

		return M_ERROR;
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * ReadFileHeader --
 *
 *	Initialize and read the stream header (everything through
 *	the SOF marker).
 *
 * Results:
 *	None
 *
 * Side effects:
 *	Exit on error.
 *
 *--------------------------------------------------------------
 */
 
template <SIMDType simd>
void dng_lossless_decoder<simd>::ReadFileHeader ()
	{
	
	// Demand an SOI marker at the start of the stream --- otherwise it's
	// probably not a JPEG stream at all.

	int32 c	 = GetJpegChar ();
	int32 c2 = GetJpegChar ();
	
	if ((c != 0xFF) || (c2 != M_SOI)) 
		{
		ThrowBadFormat ();
		}
		
	// OK, process SOI

	GetSoi ();

	// Process markers until SOF

	c = ProcessTables ();

	switch (c)
		{
		
		case M_SOF0:
		case M_SOF1:
		case M_SOF3:
			GetSof (c);
			break;

		default:
			ThrowBadFormat ();
			break;
			
		}

	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * ReadScanHeader --
 *
 *	Read the start of a scan (everything through the SOS marker).
 *
 * Results:
 *	1 if find SOS, 0 if find EOI
 *
 * Side effects:
 *	Bitstream is parsed, may exit on errors.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
int32 dng_lossless_decoder<simd>::ReadScanHeader ()
	{

	// Process markers until SOS or EOI

	int32 c = ProcessTables ();

	switch (c)
		{
		
		case M_SOS:
			GetSos ();
			return 1;

		case M_EOI:
			return 0;

		default:
			ThrowBadFormat ();
			break;
			
		}
		
	return 0;
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * DecoderStructInit --
 *
 *	Initalize the rest of the fields in the decompression
 *	structure.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_decoder<simd>::DecoderStructInit ()
	{
	
	int32 ci;
	
	bool isVerifiedSamplingFactorSpecialCase = false;

	#if qSupportCanon_sRAW
	
	bool canon_sRAW = (info.numComponents == 3) &&
					  (info.compsInScan   == 3) &&
					  (info.compInfo [0].hSampFactor == 2) &&
					  (info.compInfo [1].hSampFactor == 1) &&
					  (info.compInfo [2].hSampFactor == 1) &&
					  (info.compInfo [0].vSampFactor == 1) &&
					  (info.compInfo [1].vSampFactor == 1) &&
					  (info.compInfo [2].vSampFactor == 1) &&
					  (info.dataPrecision == 15) &&
					  (info.Ss == 1) &&
					  ((info.imageWidth & 1) == 0);

	bool canon_sRAW2 = (info.numComponents == 3) &&
					   (info.compsInScan   == 3) &&
					   (info.compInfo [0].hSampFactor == 2) &&
					   (info.compInfo [1].hSampFactor == 1) &&
					   (info.compInfo [2].hSampFactor == 1) &&
					   (info.compInfo [0].vSampFactor == 2) &&
					   (info.compInfo [1].vSampFactor == 1) &&
					   (info.compInfo [2].vSampFactor == 1) &&
					   (info.dataPrecision == 15) &&
					   (info.Ss == 1) &&
					   ((info.imageWidth  & 1) == 0) &&
					   ((info.imageHeight & 1) == 0);
	
	if (canon_sRAW || canon_sRAW2)
		{
		isVerifiedSamplingFactorSpecialCase = true;
		}

	#endif
	
	#if qSupportSony_sRAW
		
	bool sony_sRAW = (info.numComponents == 3) &&
					 (info.compsInScan   == 3) &&
					 (info.compInfo [0].hSampFactor == 2) &&
					 (info.compInfo [1].hSampFactor == 1) &&
					 (info.compInfo [2].hSampFactor == 1) &&
					 (info.compInfo [0].vSampFactor == 2) &&
					 (info.compInfo [1].vSampFactor == 1) &&
					 (info.compInfo [2].vSampFactor == 1) &&
					 (info.dataPrecision == 16) &&
					 (info.Ss == 1) &&
					 ((info.imageWidth  & 1) == 0) &&
					 ((info.imageHeight & 1) == 0);

	bool sony_sRAW2 = (info.numComponents == 3) &&
					 (info.compsInScan   == 3) &&
					 (info.compInfo [0].hSampFactor == 2) &&
					 (info.compInfo [1].hSampFactor == 1) &&
					 (info.compInfo [2].hSampFactor == 1) &&
					 (info.compInfo [0].vSampFactor == 1) &&
					 (info.compInfo [1].vSampFactor == 1) &&
					 (info.compInfo [2].vSampFactor == 1) &&
					 (info.dataPrecision == 16) &&
					 (info.Ss == 1) &&
					 ((info.imageWidth  & 1) == 0) &&
					 ((info.imageHeight & 1) == 0);
					   
	if (sony_sRAW || sony_sRAW2)
		{
		isVerifiedSamplingFactorSpecialCase = true;
		}
	
	#endif
	
	if (!isVerifiedSamplingFactorSpecialCase)
		{
	
		// Check sampling factor validity.

		for (ci = 0; ci < info.numComponents; ci++)
			{
			
			JpegComponentInfo *compPtr = &info.compInfo [ci];
			
			if (compPtr->hSampFactor != 1 ||
				compPtr->vSampFactor != 1) 
				{
				ThrowBadFormat ();
				}
		
			}
			
		}
	
	// Prepare array describing MCU composition.

	if (info.compsInScan < 0 || 
		info.compsInScan > 4)
		{
		ThrowBadFormat ();
		}

	for (ci = 0; ci < info.compsInScan; ci++)
		{
		info.MCUmembership [ci] = (int16) ci;
		}

	// Initialize mucROW1 and mcuROW2 which buffer two rows of
	// pixels for predictor calculation.
	
	// This multiplication cannot overflow because info.compsInScan is
	// guaranteed to be between 0 and 4 inclusive (see checks above).

	int32 mcuSize = info.compsInScan * (uint32) sizeof (ComponentType);
	
	mcuBuffer1.Allocate (info.imageWidth, sizeof (MCU));
	mcuBuffer2.Allocate (info.imageWidth, sizeof (MCU));
	
	mcuROW1 = (MCU *) mcuBuffer1.Buffer ();
	mcuROW2 = (MCU *) mcuBuffer2.Buffer ();
	
	mcuBuffer3.Allocate (info.imageWidth, mcuSize);
	mcuBuffer4.Allocate (info.imageWidth, mcuSize);
	
	mcuROW1 [0] = (ComponentType *) mcuBuffer3.Buffer ();
	mcuROW2 [0] = (ComponentType *) mcuBuffer4.Buffer ();
	
	for (int32 j = 1; j < info.imageWidth; j++)
		{
		
		mcuROW1 [j] = mcuROW1 [j - 1] + info.compsInScan;
		mcuROW2 [j] = mcuROW2 [j - 1] + info.compsInScan;
	
		}
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * HuffDecoderInit --
 *
 *	Initialize for a Huffman-compressed scan.
 *	This is invoked after reading the SOS marker.
 *
 * Results:
 *	None
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_decoder<simd>::HuffDecoderInit ()
	{
	
	// Initialize bit parser state
 
	getBuffer = 0;
	bitsLeft  = 0;
	
	// Prepare Huffman tables.

	for (int16 ci = 0; ci < info.compsInScan; ci++)
		{
		
		JpegComponentInfo *compptr = info.curCompInfo [ci];
		
		// Make sure requested tables are present
		
		if (compptr->dcTblNo < 0 || compptr->dcTblNo > 3)
			{
			ThrowBadFormat ();
			}

		if (info.dcHuffTblPtrs [compptr->dcTblNo] == NULL) 
			{ 
			ThrowBadFormat ();
			}

		HuffmanTable *htbl = info.dcHuffTblPtrs [compptr->dcTblNo];

		// Validate the table invariants once so HuffExtend can stay
		// branch-free in the per-sample decode path.

		ValidateDecoderHuffTbl (htbl);

		// Compute derived values for Huffman tables.
		// We may do this more than once for same table, but it's not a
		// big deal

		FixHuffTbl (htbl);

		}

	// Initialize restart stuff

	info.restartInRows	 = info.restartInterval / info.imageWidth;
	info.restartRowsToGo = info.restartInRows;
	info.nextRestartNum	 = 0;
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * ProcessRestart --
 *
 *	Check for a restart marker & resynchronize decoder.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	BitStream is parsed, bit buffer is reset, etc.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_decoder<simd>::ProcessRestart ()
	{
	
	// Throw away and unused odd bits in the bit buffer.
	
	fStream->SetReadPosition (fStream->Position () - bitsLeft / 8);
	
	bitsLeft  = 0;
	getBuffer = 0;
	
	// Scan for next JPEG marker

	int32 c;

	do
		{
		
		// skip any non-FF bytes
		
		do 
			{ 
			c = GetJpegChar ();
			}
		while (c != 0xFF);
		
		// skip any duplicate FFs
		
		do
			{
			c = GetJpegChar ();
			}
		while (c == 0xFF);
		
		}
	while (c == 0);		// repeat if it was a stuffed FF/00
	
	// Verify correct restart code.

	if (c != (M_RST0 + info.nextRestartNum))
		{
		ThrowBadFormat ();
		}

	// Update restart state.

	info.restartRowsToGo = info.restartInRows;
	info.nextRestartNum	 = (info.nextRestartNum + 1) & 7;
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * QuickPredict --
 *
 *		Calculate the predictor for sample curRowBuf[col][curComp].
 *	It does not handle the special cases at image edges, such 
 *		as first row and first column of a scan. We put the special 
 *	case checkings outside so that the computations in main
 *	loop can be simpler. This has enhenced the performance
 *	significantly.
 *
 * Results:
 *		predictor is passed out.
 *
 * Side effects:
 *		None.
 *
 *--------------------------------------------------------------
 */
 
template <SIMDType simd>
DNG_ALWAYS_INLINE int32 dng_lossless_decoder<simd>::QuickPredict (int32 col,
																  int32 curComp,
																  MCU *curRowBuf,
																  MCU *prevRowBuf)
	{
	
	int32 diag	= prevRowBuf [col - 1] [curComp];
	int32 upper = prevRowBuf [col	 ] [curComp];
	int32 left	= curRowBuf	 [col - 1] [curComp];

	switch (info.Ss)
		{
		
		case 0:
			return 0;
			
		case 1:
			return left;

		case 2:
			return upper;

		case 3:
			return diag;

		case 4:
			return left + upper - diag;

		case 5:
			return left + ((upper - diag) >> 1);

		case 6:
			return upper + ((left - diag) >> 1);

		case 7:
			return (left + upper) >> 1;

		default:
			{
			ThrowBadFormat ();
			return 0;
			}
			  
		}
	 
	}
	
/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * FillBitBuffer --
 *
 *	Load up the bit buffer with at least nbits
 *	Process any stuffed bytes at this time.
 *
 * Results:
 *	None
 *
 * Side effects:
 *	The bitwise global variables are updated.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
DNG_ALWAYS_INLINE void dng_lossless_decoder<simd>::FillBitBuffer (int32 nbits)
	{
	
	const int32 kMinGetBits = sizeof (uint32) * 8 - 7;
	
	#if qSupportHasselblad_3FR
	
	if (fHasselblad3FR)
		{
		
		while (bitsLeft < kMinGetBits)
			{
			
			int32 c0 = 0;
			int32 c1 = 0;
			int32 c2 = 0;
			int32 c3 = 0;
			
			try
				{
				c0 = GetJpegChar ();
				c1 = GetJpegChar ();
				c2 = GetJpegChar ();
				c3 = GetJpegChar ();
				}
				
			catch (dng_exception &except)
				{
				
				// If we got any exception other than EOF, rethrow.
				
				if (except.ErrorCode () != dng_error_end_of_file)
					{
					throw; // rethrow except
					}
					
				// Some Hasselblad files now use the JPEG end of image marker.
				// If we DIDN'T hit that, rethrow.
				// This sequence also sometimes occurs in the image data, so
				// we can't simply check for it and exit - we need to wait until
				// we throw the EOF and then look to see if we had it.
					
				// Look for the marker in c1 and c2 as well.
				// (if we get it in c2 and c3, we won't throw.)
				
				if (!((c0 == 0xFF && c1 == 0xD9) ||
					  (c1 == 0xFF && c2 == 0xD9)))
					{
					throw; // rethrow except
					}
				
				// Swallow the case where we hit EOF with the JPEG EOI marker.
					
				}
			
			getBuffer = (getBuffer << 8) | c3;
			getBuffer = (getBuffer << 8) | c2;
			getBuffer = (getBuffer << 8) | c1;
			getBuffer = (getBuffer << 8) | c0;
			
			bitsLeft += 32;
			
			}
			
		return;
		
		}
	
	#endif
	
	while (bitsLeft < kMinGetBits)
		{
		
		int32 c = GetJpegChar ();

		// If it's 0xFF, check and discard stuffed zero byte

		if (c == 0xFF)
			{
			
			int32 c2 = GetJpegChar ();
			
			if (c2 != 0)
				{

				// Oops, it's actually a marker indicating end of
				// compressed data.	 Better put it back for use later.

				UnGetJpegChar ();
				UnGetJpegChar ();

				// There should be enough bits still left in the data
				// segment; if so, just break out of the while loop.

				if (bitsLeft >= nbits)
					break;

				// Uh-oh.  Corrupted data: stuff zeroes into the data
				// stream, since this sometimes occurs when we are on the
				// last show_bits8 during decoding of the Huffman
				// segment.

				c = 0;
				
				}
				
			}
			
		getBuffer = (getBuffer << 8) | c;
		
		bitsLeft += 8;
		
		}
 
	}

/*****************************************************************************/

template <SIMDType simd>
DNG_ALWAYS_INLINE int32 dng_lossless_decoder<simd>::show_bits8 ()
	{
	
	if (bitsLeft < 8)
		FillBitBuffer (8);
		
	return (int32) ((getBuffer >> (bitsLeft - 8)) & 0xff);
	
	}

/*****************************************************************************/

template <SIMDType simd>
DNG_ALWAYS_INLINE void dng_lossless_decoder<simd>::flush_bits (int32 nbits)
	{
	
	bitsLeft -= nbits;
	
	}

/*****************************************************************************/

#define qOptGetBitsMath 0

#if qOptGetBitsMath
#define MASK_ME(nbits) (0x0FFFF >> (16 - nbits))
static const int32 get_bits_mask[17] = {
	MASK_ME(0),
	MASK_ME(1),
	MASK_ME(2),
	MASK_ME(3),
	MASK_ME(4),
	MASK_ME(5),
	MASK_ME(6),
	MASK_ME(7),
	MASK_ME(8),
	MASK_ME(9),
	MASK_ME(10),
	MASK_ME(11),
	MASK_ME(12),
	MASK_ME(13),
	MASK_ME(14),
	MASK_ME(15),
	MASK_ME(16)
};
#endif

/*****************************************************************************/

template <SIMDType simd>
DNG_ALWAYS_INLINE int32 dng_lossless_decoder<simd>::get_bits (int32 nbits)
	{
	
	if (nbits > 16)
		{
		ThrowBadFormat ();
		}
	
	if (bitsLeft < nbits)
		FillBitBuffer (nbits);

	#if qOptGetBitsMath

	return (int32) ((getBuffer >> (bitsLeft -= nbits)) & get_bits_mask [nbits]);

	#else
		
	return (int32) ((getBuffer >> (bitsLeft -= nbits)) & (0x0FFFF >> (16 - nbits)));

	#endif
	
	}

/*****************************************************************************/

template <SIMDType simd>
DNG_ALWAYS_INLINE int32 dng_lossless_decoder<simd>::get_bit ()
	{
	
	if (!bitsLeft)
		FillBitBuffer (1);
		
	return (int32) ((getBuffer >> (--bitsLeft)) & 1);
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * HuffDecode --
 *
 *	Taken from Figure F.16: extract next coded symbol from
 *	input stream.  This should becode a macro.
 *
 * Results:
 *	Next coded symbol
 *
 * Side effects:
 *	Bitstream is parsed.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
DNG_ALWAYS_INLINE int32 dng_lossless_decoder<simd>::HuffDecode (HuffmanTable *htbl)
	{
	
	// If the huffman code is less than 8 bits, we can use the fast
	// table lookup to get its value.  It's more than 8 bits about
	// 3-4% of the time.

	int32 code = show_bits8 ();
	
	if (htbl->numbits [code])
		{
		
		flush_bits (htbl->numbits [code]);
		
		return htbl->value [code];
		
		}
		
	else
		{
		
		flush_bits (8);
		
		int32 l = 8;
		
		while (code > htbl->maxcode [l]) 
			{
			code = (code << 1) | get_bit ();
			l++;
			}

		// With garbage input we may reach the sentinel value l = 17.

		if (l > 16)
			{
			return 0;		// fake a zero as the safest result
			}
		else
			{

			const int32 offset = (int32) (code - htbl->mincode [l]);

			// Valid-but-incomplete tables can leave unused code gaps at a
			// given length. Reject those malformed-data cases here while
			// keeping the common path to one range check.

			if ((uint32) offset >= (uint32) htbl->bits [l])
				{
				return 0;
				}

			return htbl->huffval [htbl->valptr [l] + offset];

			}
			
		}
		
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * HuffExtend --
 *
 *	Code and table for Figure F.12: extend sign bit
 *
 * Results:
 *	The extended value.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
DNG_ALWAYS_INLINE void dng_lossless_decoder<simd>::HuffExtend (int32 &x, int32 s)
	{

	// s is validated once in HuffDecoderInit for the scan's active DC
	// tables. Keep this path branch-free, but use only defined unsigned
	// arithmetic so we preserve the hardening from the earlier fix.

	const uint32 shift		 = (uint32) s;
	const int32 signThreshold = (int32) (0x08000u >> (16 - shift));
	const uint32 extendMask	 = (1u << shift) - 1u;
	const uint32 needsExtend  = (x < signThreshold) ? 0xffffffffu : 0u;

	x -= (int32) (needsExtend & extendMask);

	}

/*****************************************************************************/

// Called from DecodeImage () to write one row.

template <SIMDType simd>
DNG_ALWAYS_INLINE
void dng_lossless_decoder<simd>::PmPutRow (MCU *buf,
										   int32 numComp,
										   int32 numCol,
										   int32 /* row */)
	{
	
	uint16 *sPtr = &buf [0] [0];
	
	uint32 pixels = SafeUint32Mult ((uint32) numCol,
									(uint32) numComp);
	
	fSpooler->Spool (sPtr, SafeUint32Mult (pixels,
										   (uint32) sizeof (uint16)));
		
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * DecodeFirstRow --
 *
 *	Decode the first raster line of samples at the start of 
 *		the scan and at the beginning of each restart interval.
 *	This includes modifying the component value so the real
 *		value, not the difference is returned.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	Bitstream is parsed.
 *
 *--------------------------------------------------------------
 */
 
template <SIMDType simd>
void dng_lossless_decoder<simd>::DecodeFirstRow (MCU *curRowBuf)
	{
	
	int32 compsInScan = info.compsInScan;
	
	// Process the first column in the row.

	for (int32 curComp = 0; curComp < compsInScan; curComp++) 
		{
		
		int32 ci = info.MCUmembership [curComp];
		
		JpegComponentInfo *compptr = info.curCompInfo [ci];
		
		HuffmanTable *dctbl = info.dcHuffTblPtrs [compptr->dcTblNo];

		// Section F.2.2.1: decode the difference

		int32 d = 0;
	
		int32 s = HuffDecode (dctbl);
		
		if (s)
			{
			
			if (s == 16 && !fBug16)
				{
				d = -32768;
				}
			
			else
				{
				d = get_bits (s);
				HuffExtend (d, s);
				}

			}

		// Add the predictor to the difference.

		int32 Pr = info.dataPrecision;
		int32 Pt = info.Pt;
	
		curRowBuf [0] [curComp] = (ComponentType) (d + (1 << (Pr-Pt-1)));
		
		}
		
	// Process the rest of the row.
	
	int32 numCOL = info.imageWidth;
	
	for (int32 col = 1; col < numCOL; col++)
		{

		for (int32 curComp = 0; curComp < compsInScan; curComp++)
			{
			
			int32 ci = info.MCUmembership [curComp];
			
			JpegComponentInfo *compptr = info.curCompInfo [ci];
			
			HuffmanTable *dctbl = info.dcHuffTblPtrs [compptr->dcTblNo];

			// Section F.2.2.1: decode the difference

			int32 d = 0;
		
			int32 s = HuffDecode (dctbl);
			
			if (s)
				{

				if (s == 16 && !fBug16)
					{
					d = -32768;
					}
				
				else
					{
					d = get_bits (s);
					HuffExtend (d, s);
					}

				}
				
			// Add the predictor to the difference.

			curRowBuf [col] [curComp] = (ComponentType) (d + curRowBuf [col-1] [curComp]);
			
			}
			
		}
		
	// Update the restart counter

	if (info.restartInRows)
		{
		info.restartRowsToGo--;
		}
		
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * DecodeImage --
 *
 *		Decode the input stream. This includes modifying
 *		the component value so the real value, not the
 *		difference is returned.
 *
 * Results:
 *		None.
 *
 * Side effects:
 *		Bitstream is parsed.
 *
 *--------------------------------------------------------------
 */
 
template <SIMDType simd>
void dng_lossless_decoder<simd>::DecodeImage ()
	{
	
	#if qSupportSony_sRAW
		
	bool sony_sRAW = (info.numComponents == 3) &&
					 (info.compInfo [0].hSampFactor == 2) &&
					 (info.compInfo [1].hSampFactor == 1) &&
					 (info.compInfo [2].hSampFactor == 1) &&
					 (info.compInfo [0].vSampFactor == 2) &&
					 (info.compInfo [1].vSampFactor == 1) &&
					 (info.compInfo [2].vSampFactor == 1) &&
					 (info.dataPrecision == 16) &&
					 (info.Ss == 1) &&
					 ((info.imageWidth  & 1) == 0) &&
					 ((info.imageHeight & 1) == 0);
		
	bool sony_sRAW2 = (info.numComponents == 3) &&
					 (info.compInfo [0].hSampFactor == 2) &&
					 (info.compInfo [1].hSampFactor == 1) &&
					 (info.compInfo [2].hSampFactor == 1) &&
					 (info.compInfo [0].vSampFactor == 1) &&
					 (info.compInfo [1].vSampFactor == 1) &&
					 (info.compInfo [2].vSampFactor == 1) &&
					 (info.dataPrecision == 16) &&
					 (info.Ss == 1) &&
					 ((info.imageWidth  & 1) == 0) &&
					 ((info.imageHeight & 1) == 0);

	#endif
	
	#define swap(type,a,b) {type c; c=(a); (a)=(b); (b)=c;}

	int32 numCOL	  = info.imageWidth;
	int32 numROW	  = info.imageHeight;
	int32 compsInScan = info.compsInScan;
	
	// Precompute the decoding table for each table.
	
	HuffmanTable *ht [4];

	memset (ht, 0, sizeof (ht));
	
	for (int32 curComp = 0; curComp < compsInScan; curComp++)
		{
		
		int32 ci = info.MCUmembership [curComp];
		
		JpegComponentInfo *compptr = info.curCompInfo [ci];
		
		ht [curComp] = info.dcHuffTblPtrs [compptr->dcTblNo];

		}
		
	MCU *prevRowBuf = mcuROW1;
	MCU *curRowBuf	= mcuROW2;
	
	#if qSupportCanon_sRAW && qSupportSony_sRAW
		
	// Canon sRAW support and Sony sRAW.
	
	if (info.compInfo [0].hSampFactor == 2 &&
		info.compInfo [0].vSampFactor == 1 &&
		compsInScan >= 3)
		{

		for (int32 row = 0; row < numROW; row++)
			{

			// Initialize predictors.

			int32 p0;
			int32 p1;
			int32 p2;
			
			if (row == 0)
				{
				
				if (sony_sRAW2)
					{
					p0 = 1 << 15;
					}
				
				else // Canon.
					{
					p0 = 1 << 14;
					}
				
				p1 = 1 << 14;
				p2 = 1 << 14;
				
				}
				
			else
				{
				p0 = prevRowBuf [0] [0];
				p1 = prevRowBuf [0] [1];
				p2 = prevRowBuf [0] [2];
				}
			
			for (int32 col = 0; col < numCOL; col += 2)
				{
				
				// Read first luminance component.
				
					{
				
					int32 d = 0;
				
					int32 s = HuffDecode (ht [0]);
					
					if (s)
						{

						if (s == 16)
							{
							d = -32768;
							}
						
						else
							{
							d = get_bits (s);
							HuffExtend (d, s);
							}

						}
						
					p0 += d;
					
					curRowBuf [col] [0] = (ComponentType) p0;
				
					}
				
				// Read second luminance component.
				
					{
				
					int32 d = 0;
				
					int32 s = HuffDecode (ht [0]);
					
					if (s)
						{

						if (s == 16)
							{
							d = -32768;
							}
						
						else
							{
							d = get_bits (s);
							HuffExtend (d, s);
							}

						}
						
					p0 += d;
					
					curRowBuf [col + 1] [0] = (ComponentType) p0;
				
					}
				
				// Read first chroma component.
				
					{
				
					int32 d = 0;
				
					int32 s = HuffDecode (ht [1]);
					
					if (s)
						{

						if (s == 16)
							{
							d = -32768;
							}
						
						else
							{
							d = get_bits (s);
							HuffExtend (d, s);
							}

						}
						
					p1 += d;
					
					curRowBuf [col	  ] [1] = (ComponentType) p1;
					curRowBuf [col + 1] [1] = (ComponentType) p1;
				
					}
				
				// Read second chroma component.
				
					{
				
					int32 d = 0;
				
					int32 s = HuffDecode (ht [2]);
					
					if (s)
						{

						if (s == 16)
							{
							d = -32768;
							}
						
						else
							{
							d = get_bits (s);
							HuffExtend (d, s);
							}

						}
						
					p2 += d;
					
					curRowBuf [col	  ] [2] = (ComponentType) p2;
					curRowBuf [col + 1] [2] = (ComponentType) p2;
				
					}
								
				}
			
			PmPutRow (curRowBuf, compsInScan, numCOL, row);

			swap (MCU *, prevRowBuf, curRowBuf);
			
			}
			
		return;
		
		}
	
	if (info.compInfo [0].hSampFactor == 2 &&
		info.compInfo [0].vSampFactor == 2 &&
		compsInScan >= 3)
		{

		for (int32 row = 0; row < numROW; row += 2)
			{

			// Sony sRaw.
			
			if (sony_sRAW)
				{
			
				// Initialize predictors.

				int32 p00 = 0;
				int32 p01 = 0;
				int32 p10 = 0;
				int32 p11 = 0;
				
				int32 p1 = 0;
				int32 p2 = 0;
				
				if (row == 0)
					{
					
					p00 = 1 << 15;
					p1  = 1 << 14;
					p2  = 1 << 14;
					
					}
					
				else
					{
					p00 = prevRowBuf [0] [0];
					p1  = prevRowBuf [0] [1];
					p2  = prevRowBuf [0] [2];
					}

				for (int32 col = 0; col < numCOL; col += 2)
					{
			
					// Read first luminance component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [0]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}

						p00 = d + ((col == 0) ? p00 : p01);

						prevRowBuf [col] [0] = (ComponentType) p00;
					
						}
					
					// Read second luminance component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [0]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}

						p01 = p00 + d;
						
						prevRowBuf [col + 1] [0] = (ComponentType) p01;
					
						}
					
					// Read third luminance component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [0]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
						
						p10 = d + ((col == 0) ? p00 : p11);

						curRowBuf [col] [0] = (ComponentType) p10;
					
						}
					
					// Read fourth luminance component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [0]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
							
						p11 = p10 + d;
						
						curRowBuf [col + 1] [0] = (ComponentType) p11;
					
						}
					
					// Read first chroma component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [1]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
							
						p1 += d;
						
						prevRowBuf [col	   ] [1] = (ComponentType) p1;
						prevRowBuf [col + 1] [1] = (ComponentType) p1;

						curRowBuf [col	  ] [1] = (ComponentType) p1;
						curRowBuf [col + 1] [1] = (ComponentType) p1;
					
						}
					
					// Read second chroma component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [2]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
							
						p2 += d;
						
						prevRowBuf [col	   ] [2] = (ComponentType) p2;
						prevRowBuf [col + 1] [2] = (ComponentType) p2;
					
						curRowBuf [col	  ] [2] = (ComponentType) p2;
						curRowBuf [col + 1] [2] = (ComponentType) p2;
					
						}
									
					}
				
				PmPutRow (prevRowBuf, compsInScan, numCOL, row);
				PmPutRow (curRowBuf, compsInScan, numCOL, row);
				
				}
			
			// Canon sRaw.
			
			else
				{
				
				// Initialize predictors.
				
				int32 p0;
				int32 p1;
				int32 p2;
				
				if (row == 0)
					{
					p0 = 1 << 14;
					p1 = 1 << 14;
					p2 = 1 << 14;
					}
					
				else
					{
					p0 = prevRowBuf [0] [0];
					p1 = prevRowBuf [0] [1];
					p2 = prevRowBuf [0] [2];
					}
				
				for (int32 col = 0; col < numCOL; col += 2)
					{
					
					// Read first luminance component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [0]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
							
						p0 += d;
						
						prevRowBuf [col] [0] = (ComponentType) p0;
					
						}
					
					// Read second luminance component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [0]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
							
						p0 += d;
						
						prevRowBuf [col + 1] [0] = (ComponentType) p0;
					
						}
					
					// Read third luminance component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [0]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
							
						p0 += d;
						
						curRowBuf [col] [0] = (ComponentType) p0;
					
						}
					
					// Read fourth luminance component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [0]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
							
						p0 += d;
						
						curRowBuf [col + 1] [0] = (ComponentType) p0;
					
						}
					
					// Read first chroma component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [1]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
							
						p1 += d;
						
						prevRowBuf [col	   ] [1] = (ComponentType) p1;
						prevRowBuf [col + 1] [1] = (ComponentType) p1;

						curRowBuf [col	  ] [1] = (ComponentType) p1;
						curRowBuf [col + 1] [1] = (ComponentType) p1;
					
						}
					
					// Read second chroma component.
					
						{
					
						int32 d = 0;
					
						int32 s = HuffDecode (ht [2]);
						
						if (s)
							{

							if (s == 16)
								{
								d = -32768;
								}
							
							else
								{
								d = get_bits (s);
								HuffExtend (d, s);
								}

							}
							
						p2 += d;
						
						prevRowBuf [col	   ] [2] = (ComponentType) p2;
						prevRowBuf [col + 1] [2] = (ComponentType) p2;
					
						curRowBuf [col	  ] [2] = (ComponentType) p2;
						curRowBuf [col + 1] [2] = (ComponentType) p2;
					
						}
									
					}
				
				PmPutRow (prevRowBuf, compsInScan, numCOL, row);
				PmPutRow (curRowBuf, compsInScan, numCOL, row);
				
				}

			}
			
		return;
		
		}

	#endif
	
	#if qSupportHasselblad_3FR
	
	// CR-4209036: the 3FR path only writes component 0, so restrict it to
	// single-component scans before PmPutRow spools the row.

	if (info.Ss == 8 &&
		compsInScan == 1 &&
		(numCOL & 1) == 0)
		{
		
		fHasselblad3FR = true;
		
		for (int32 row = 0; row < numROW; row++)
			{
			
			int32 p0 = 32768;
			int32 p1 = 32768;
			
			for (int32 col = 0; col < numCOL; col += 2)
				{
				
				int32 s0 = HuffDecode (ht [0]);
				int32 s1 = HuffDecode (ht [0]);
				
				if (s0)
					{
					int32 d = get_bits (s0);
					if (s0 == 16)
						{
						d = -32768;
						}
					else
						{
						HuffExtend (d, s0);
						}
					p0 += d;
					}

				if (s1)
					{
					int32 d = get_bits (s1);
					if (s1 == 16)
						{
						d = -32768;
						}
					else
						{
						HuffExtend (d, s1);
						}
					p1 += d;
					}

				curRowBuf [col	  ] [0] = (ComponentType) p0;
				curRowBuf [col + 1] [0] = (ComponentType) p1;
				
				}
			
			PmPutRow (curRowBuf, compsInScan, numCOL, row);

			}

		return;
		
		}
	
	#endif
	
	// Decode the first row of image. Output the row and
	// turn this row into a previous row for later predictor
	// calculation.

	DecodeFirstRow (mcuROW1);
	
	PmPutRow (mcuROW1, compsInScan, numCOL, 0);
	
	// Process each row.

	for (int32 row = 1; row < numROW; row++)
		{

		// Account for restart interval, process restart marker if needed.

		if (info.restartInRows)
			{
			
			if (info.restartRowsToGo == 0)
				{
				
				ProcessRestart ();
			
				// Reset predictors at restart.
				
				DecodeFirstRow (curRowBuf);
				
				PmPutRow (curRowBuf, compsInScan, numCOL, row);
				
				swap (MCU *, prevRowBuf, curRowBuf);
				
				continue;
				
				}
				
			info.restartRowsToGo--;
		   
			}
			
		// The upper neighbors are predictors for the first column.

		for (int32 curComp = 0; curComp < compsInScan; curComp++)
			{
			
			// Section F.2.2.1: decode the difference

			int32 d = 0;
		
			int32 s = HuffDecode (ht [curComp]);
			
			if (s)
				{

				if (s == 16 && !fBug16)
					{
					d = -32768;
					}
				
				else
					{
					d = get_bits (s);
					HuffExtend (d, s);
					}

				}
				
			// First column of row above is predictor for first column.

			curRowBuf [0] [curComp] = (ComponentType) (d + prevRowBuf [0] [curComp]);
			
			}

		// For the rest of the column on this row, predictor
		// calculations are based on PSV. 

		if (compsInScan == 2 && info.Ss == 1 && numCOL > 1)
			{
			
			// This is the combination used by both the Canon and Kodak raw formats. 
			// Unrolling the general case logic results in a significant speed increase.
			
			uint16 *dPtr = &curRowBuf [1] [0];
			
			int32 prev0 = dPtr [-2];
			int32 prev1 = dPtr [-1];
			
			for (int32 col = 1; col < numCOL; col++)
				{
				
				int32 s = HuffDecode (ht [0]);
				
				if (s)
					{
					
					int32 d;

					if (s == 16 && !fBug16)
						{
						d = -32768;
						}
					
					else
						{
						d = get_bits (s);
						HuffExtend (d, s);
						}

					prev0 += d;
					
					}
					
				s = HuffDecode (ht [1]);
				
				if (s)
					{
					
					int32 d;

					if (s == 16 && !fBug16)
						{
						d = -32768;
						}
					
					else
						{
						d = get_bits (s);
						HuffExtend (d, s);
						}

					prev1 += d;
					
					}
				
				dPtr [0] = (uint16) prev0;
				dPtr [1] = (uint16) prev1;
				
				dPtr += 2;
				
				}
				
			}
			
		else
			{
			
			for (int32 col = 1; col < numCOL; col++)
				{
				
				for (int32 curComp = 0; curComp < compsInScan; curComp++)
					{
					
					// Section F.2.2.1: decode the difference

					int32 d = 0;
				
					int32 s = HuffDecode (ht [curComp]);
					
					if (s)
						{
						
						if (s == 16 && !fBug16)
							{
							d = -32768;
							}
						
						else
							{
							d = get_bits (s);
							HuffExtend (d, s);
							}

						}
						
					// Predict the pixel value.
					
					int32 predictor = QuickPredict (col,
													curComp,
													curRowBuf,
													prevRowBuf);
												  
					// Save the difference.

					curRowBuf [col] [curComp] = (ComponentType) (d + predictor);
					
					}
					
				}

			}

		PmPutRow (curRowBuf, compsInScan, numCOL, row);
		
		swap (MCU *, prevRowBuf, curRowBuf);
		
		}
		
	#undef swap
	
	}

/*****************************************************************************/

template <SIMDType simd>
void dng_lossless_decoder<simd>::StartRead (uint32 &imageWidth,
											uint32 &imageHeight,
											uint32 &imageChannels)
	{ 
	
	ReadFileHeader	  ();
	ReadScanHeader	  ();
	DecoderStructInit ();
	HuffDecoderInit	  ();
	
	imageWidth	  = info.imageWidth;
	imageHeight	  = info.imageHeight;
	imageChannels = info.compsInScan;
	
	}

/*****************************************************************************/

template <SIMDType simd>
void dng_lossless_decoder<simd>::FinishRead ()
	{
	
	DecodeImage ();
		
	}

/*****************************************************************************/

template <SIMDType simd>
class dng_lossless_encoder
	{
	
	private:
	
		const uint16 *fSrcData;
		
		uint32 fSrcRows;
		uint32 fSrcCols;
		uint32 fSrcChannels;
		uint32 fSrcBitDepth;
		
		int32 fSrcRowStep;
		int32 fSrcColStep;
	
		dng_stream &fStream;
	
		HuffmanTable huffTable [4];
		
		uint32 freqCount [4] [257];
		
		// Current bit-accumulation buffer

		uint64 huffPutBuffer;
		uint64 huffPutBits;
		
		// Lookup table for number of bits in an 8 bit value.
		
		int numBitsTable [256];
		
		std::vector<uint8> streamBuffer;
		size_t streamBufferOffset;

	public:
	
		dng_lossless_encoder (const uint16 *srcData,
							  uint32 srcRows,
							  uint32 srcCols,
							  uint32 srcChannels,
							  uint32 srcBitDepth,
							  int32 srcRowStep,
							  int32 srcColStep,
							  dng_stream &stream);
		
		void Encode ();
		
	private:
	
		void EmitByte (uint8 value);
	
		void EmitBits (int code, int size);

		void FlushBits ();

		void PushBits ();

		void FlushBuffer();

		int EmitBitsToBuffer (int buffered_bits,
							  uint64 bit_buffer);

		int EncodeOneDiffToBuffer (int diff,
								   HuffmanTable *dctbl,
								   int buffered_bits,
								   uint64 &bit_buffer);

		void CountOneDiff (int diff, uint32 *countTable);

		void EncodeOneDiff (int diff, HuffmanTable *dctbl);
		
		void FreqCountSet ();

		void HuffEncode ();

		void GenHuffCoding (HuffmanTable *htbl, uint32 *freq);

		void HuffOptimize ();

		void EmitMarker (JpegMarker mark);

		void Emit2bytes (int value);

		void EmitDht (int index);

		void EmitSof (JpegMarker code);

		void EmitSos ();

		void WriteFileHeader ();

		void WriteScanHeader ();

		void WriteFileTrailer ();

	};
	
/*****************************************************************************/

template <SIMDType simd>
dng_lossless_encoder<simd>::dng_lossless_encoder (const uint16 *srcData,
											uint32 srcRows,
											uint32 srcCols,
											uint32 srcChannels,
											uint32 srcBitDepth,
											int32 srcRowStep,
											int32 srcColStep,
											dng_stream &stream)
									
	:	fSrcData	 (srcData	 )
	,	fSrcRows	 (srcRows	 )
	,	fSrcCols	 (srcCols	 )
	,	fSrcChannels (srcChannels)
	,	fSrcBitDepth (srcBitDepth)
	,	fSrcRowStep	 (srcRowStep )
	,	fSrcColStep	 (srcColStep )
	,	fStream		 (stream	 )
	
	,	huffPutBuffer (0)
	,	huffPutBits	  (0)

	,	streamBufferOffset (0)

	{
	
	// Initialize number of bits lookup table.
	
	numBitsTable [0] = 0;
		
	for (int i = 1; i < 256; i++)
		{
		
		int temp = i;
		int nbits = 1;
		
		while (temp >>= 1)
			{
			nbits++;
			}
			
		numBitsTable [i] = nbits;
		
		}
		
	// Get an upper bound of the size of encoded output for one chunk
	// of output. Chunks are the headers and then one per row.
	//
	// First calculate the number of symbols -- one per sample
	//	  this is srcCols * srcChannels
	// Scale by number of bits to get bytes.
	// Assume each byte output is a bit count plus symbol and each can
	// be 2 bytes worst case. This gives us a loose worst case upper bound
	// per row. It may be possible to tighten these bounds, but it is better
	// to be conservative.

	// Maximum buffering for one row of output. Add one for carryover bits
	// from previous row.

	uint32 streamBufferExtent32 = SafeUint32Mult (srcCols,
												  srcChannels);

	const uint32 bytesPerSample = SafeUint32Add (srcBitDepth, 7u) / 8u;

	streamBufferExtent32 = SafeUint32Mult (streamBufferExtent32,
										   bytesPerSample);

	streamBufferExtent32 = SafeUint32Mult (streamBufferExtent32, 2u);
	streamBufferExtent32 = SafeUint32Mult (streamBufferExtent32, 2u);
	streamBufferExtent32 = SafeUint32Add  (streamBufferExtent32, 1u);

	// Maximum output for header blocks and such.
	// 296 is the DHT size, 64 is a round up of overhead.

	uint32 streamHeaderExtent32 = SafeUint32Mult (srcChannels, 296u);

	streamHeaderExtent32 = SafeUint32Add (streamHeaderExtent32, 64u);

	const size_t streamBufferExtent = std::max<size_t> (streamBufferExtent32,
														streamHeaderExtent32);
	streamBuffer.resize (streamBufferExtent);

	}

/*****************************************************************************/

template <SIMDType simd>
inline void dng_lossless_encoder<simd>::EmitByte (uint8 value)
	{

	if (streamBufferOffset >= streamBuffer.size ())
		{
		ThrowProgramError ("Lossless JPEG output buffer overflow");
		}
	
	streamBuffer[streamBufferOffset++] = value;
	
	}
	
/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * PushBits --
 *
 *	Force bits in the internal shift register out to the I/O buffer.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	huffPutBuffer and huffPutBits are updated, I/O buffer is written.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::PushBits ()
	{
	while (huffPutBits >= 8)
		{
		uint8 c = (uint8) (huffPutBuffer >> (huffPutBits - 8));
		EmitByte (c);
		if (c == 0xff)
			{
			EmitByte(0x00);
			}
		huffPutBits -= 8;
		}
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * EmitBits --
 *
 *	Code for outputting bits to the file
 *
 *	Bits are packed such that older values (earlier in the stream)
 *	are in the high order bits of an unsigned 64-bit value. As bits
 *	are added, the value is shiffted left and new bits are or'ed in
 *	to the lower order part. (Bits are never removed from the high
 *	part, they are read to be output to the I/O buffer and shift out
 *	the left as more are added.)
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	huffPutBuffer and huffPutBits are updated.
 *
 *--------------------------------------------------------------
 */
 
template <SIMDType simd>
inline void dng_lossless_encoder<simd>::EmitBits (int code, int size)
	{
	
	DNG_ASSERT (size != 0, "Bad Huffman table entry");

	if ((huffPutBits + size) > 64)
		{
		PushBits();
			}
	huffPutBuffer <<= size;
	huffPutBuffer |= code;
	huffPutBits += size;
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * FlushBits --
 *
 *	Flush any remaining bits in the bit buffer. Used before emitting
 *	a marker.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	huffPutBuffer and huffPutBits are reset
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::FlushBits ()
	{
	
	// The first call forces output of any partial bytes.

	EmitBits (0x007F, 7);

	PushBits();

	// We can then zero the buffer.

	huffPutBuffer = 0;
	huffPutBits	  = 0;
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * Flush internal buffer to file stream.
 *
 */
template <SIMDType simd>
void dng_lossless_encoder<simd>::FlushBuffer()
	{
	  fStream.Put(&streamBuffer[0], (uint32) streamBufferOffset);
	  streamBufferOffset = 0;
	}

/*****************************************************************************/
/*
 *--------------------------------------------------------------
 *
 * CountOneDiff --
 *
 *		Count the difference value in countTable.
 *
 * Results:
 *		diff is counted in countTable.
 *
 * Side effects:
 *		None. 
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
inline void dng_lossless_encoder<simd>::CountOneDiff (int diff, uint32 *countTable)
	{
	
	// Encode the DC coefficient difference per section F.1.2.1
	 
	int temp = diff;
	
	if (temp < 0)
		{
		
		temp = -temp;
 
		}

	// Find the number of bits needed for the magnitude of the coefficient

	int nbits = temp >= 256 ? numBitsTable [temp >> 8  ] + 8
							: numBitsTable [temp & 0xFF];
			
	// Update count for this bit length

	countTable [nbits] ++;
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * EncodeOneDiff --
 *
 *	Encode a single difference value.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
inline void dng_lossless_encoder<simd>::EncodeOneDiff (int diff, HuffmanTable *dctbl)
	{

	// Encode the DC coefficient difference per section F.1.2.1
	 
	int temp  = diff;
	int temp2 = diff;
	
	if (temp < 0)
		{
		
		temp = -temp;
		
		// For a negative input, want temp2 = bitwise complement of
		// abs (input).	 This code assumes we are on a two's complement
		// machine.

		temp2--;
		
		}

	// Find the number of bits needed for the magnitude of the coefficient

	int nbits = temp >= 256 ? numBitsTable [temp >> 8  ] + 8
							: numBitsTable [temp & 0xFF];

	// Emit the Huffman-coded symbol for the number of bits

	EmitBits (dctbl->ehufco [nbits],
			  dctbl->ehufsi [nbits]);

	// Emit that number of bits of the value, if positive,
	// or the complement of its magnitude, if negative.
	
	// If the number of bits is 16, there is only one possible difference
	// value (-32786), so the lossless JPEG spec says not to output anything
	// in that case.  So we only need to output the diference value if
	// the number of bits is between 1 and 15.

	if (nbits & 15)
		{
		
		EmitBits (temp2 & (0x0FFFF >> (16 - nbits)),
				  nbits);
		
		}

	}

/*****************************************************************************/

template <SIMDType simd>
inline int dng_lossless_encoder<simd>::EmitBitsToBuffer (int buffered_bits,
														 uint64 bit_buffer)
	{
	DNG_ASSERT(buffered_bits < 64, "buffered_bits too big(3)");
	while (buffered_bits >= 8)
			{
		uint8 c = (uint8)(bit_buffer >> (buffered_bits - 8));

		if (streamBufferOffset >= streamBuffer.size ())
			{
			ThrowProgramError ("Lossless JPEG output buffer overflow");
			}

		streamBuffer[streamBufferOffset++] = c;
		if (c == 0xff)
			{

			if (streamBufferOffset >= streamBuffer.size ())
				{
				ThrowProgramError ("Lossless JPEG output buffer overflow");
				}

			streamBuffer[streamBufferOffset++] = 0x00;
			}
		buffered_bits -= 8;
		}
	return buffered_bits;
	}

/*****************************************************************************/

template <SIMDType simd>
inline int dng_lossless_encoder<simd>::EncodeOneDiffToBuffer (int diff,
															  HuffmanTable *dctbl,
															  int buffered_bits,
															  uint64 &bit_buffer)
	{
	
	DNG_ASSERT(buffered_bits < 64, "buffered_bits too big(1)");
	
	if (buffered_bits > 32)
		{
		buffered_bits = EmitBitsToBuffer(buffered_bits, bit_buffer);
		}
		
	// Encode the DC coefficient difference per section F.1.2.1

	int temp  = diff;
	int temp2 = diff;

	if (temp < 0)
		{

		temp = -temp;

		// For a negative input, want temp2 = bitwise complement of
		// abs (input).	 This code assumes we are on a two's complement
		// machine.

		temp2--;

		}

	// Find the number of bits needed for the magnitude of the coefficient

	int nbits = temp >= 256 ? numBitsTable [temp >> 8  ] + 8
							: numBitsTable [temp & 0xFF];

	// Emit the Huffman-coded symbol for the number of bits
	int bits_bits = dctbl->ehufsi [nbits];
	bit_buffer <<= bits_bits;
	bit_buffer |= dctbl->ehufco [nbits];
	buffered_bits += bits_bits;

	// Emit that number of bits of the value, if positive,
	// or the complement of its magnitude, if negative.

	// If the number of bits is 16, there is only one possible difference
	// value (-32786), so the lossless JPEG spec says not to output anything
	// in that case.  So we only need to output the difference value if
	// the number of bits is between 1 and 15.

	if (nbits & 15)
		{
		bit_buffer <<= nbits;
		bit_buffer |= temp2 & (0x0FFFF >> (16 - nbits));
		buffered_bits += nbits;
		}

	DNG_ASSERT(buffered_bits < 64, "buffered_bits too big(2)");
	
	return buffered_bits;
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * FreqCountSet --
 *
 *		Count the times each category symbol occurs in this image.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	The freqCount has counted all category 
 *	symbols appeared in the image.		  
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::FreqCountSet ()
	{
	
	memset (freqCount, 0, sizeof (freqCount));
	
	DNG_ASSERT ((int32)fSrcRows >= 0, "dng_lossless_encoder::FreqCountSet: fSrcRpws too large.");

	for (int32 row = 0; row < (int32)fSrcRows; row++)
		{
		
		const uint16 *sPtr = fSrcData + row * fSrcRowStep;
		
		// Initialize predictors for this row.
		
		int32 predictor [4] = { 0, 0, 0, 0 };
		
		for (int32 channel = 0; channel < (int32)fSrcChannels; channel++)
			{
			
			if (row == 0)
				predictor [channel] = 1 << (fSrcBitDepth - 1);
				
			else
				predictor [channel] = sPtr [channel - fSrcRowStep];
			
			}
			
		// Unroll most common case of two channels
		
		if (fSrcChannels == 2)
			{
			
			int32 pred0 = predictor [0];
			int32 pred1 = predictor [1];
			
			uint32 srcCols	  = fSrcCols;
			int32  srcColStep = fSrcColStep;
			
			for (uint32 col = 0; col < srcCols; col++)
				{
				
				int32 pixel0 = sPtr [0];
				int32 pixel1 = sPtr [1];
				
				int16 diff0 = (int16) (pixel0 - pred0);
				int16 diff1 = (int16) (pixel1 - pred1);
				
				CountOneDiff (diff0, freqCount [0]);
				CountOneDiff (diff1, freqCount [1]);
				
				pred0 = pixel0;
				pred1 = pixel1;
					
				sPtr += srcColStep;
					
				}
			
			}
			
		// General case.
			
		else
			{
			
			for (uint32 col = 0; col < fSrcCols; col++)
				{
				
				for (uint32 channel = 0; channel < fSrcChannels; channel++)
					{
					
					int32 pixel = sPtr [channel];
					
					int16 diff = (int16) (pixel - predictor [channel]);
					
					CountOneDiff (diff, freqCount [channel]);
					
					predictor [channel] = pixel;
					
					}
					
				sPtr += fSrcColStep;
					
				}
				
			}
			
		}

	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * HuffEncode --
 *
 *		Encode and output Huffman-compressed image data.
 *
 * Results:
 *		None.
 *
 * Side effects:
 *		None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::HuffEncode ()
	{
	
	DNG_ASSERT ((int32)fSrcRows >= 0, "dng_lossless_encoder::HuffEncode: fSrcRows too large.");

	uint64 bit_buffer = 0;
	int buffered_bits = 0;

	if (fSrcChannels == 2)
		{
		bit_buffer = huffPutBuffer;
		buffered_bits = (int) huffPutBits;
		}

	for (int32 row = 0; row < (int32)fSrcRows; row++)
		{
		
		const uint16 *sPtr = fSrcData + row * fSrcRowStep;
		
		// Initialize predictors for this row.
		
		int32 predictor [4] = { 0, 0, 0, 0 };
		
		for (int32 channel = 0; channel < (int32)fSrcChannels; channel++)
			{
			
			if (row == 0)
				predictor [channel] = 1 << (fSrcBitDepth - 1);
				
			else
				predictor [channel] = sPtr [channel - fSrcRowStep];
			
			}
			
		// Unroll most common case of two channels
		
		if (fSrcChannels == 2)
			{
			
			int32 pred0 = predictor [0];
			int32 pred1 = predictor [1];
			
			uint32 srcCols	  = fSrcCols;
			int32  srcColStep = fSrcColStep;
			
			for (uint32 col = 0; col < srcCols; col++)
				{
				
				int32 pixel0 = sPtr [0];
				int32 pixel1 = sPtr [1];
				
				int16 diff0 = (int16) (pixel0 - pred0);
				int16 diff1 = (int16) (pixel1 - pred1);
				
				buffered_bits = EncodeOneDiffToBuffer (diff0, &huffTable [0], buffered_bits, bit_buffer);
				buffered_bits = EncodeOneDiffToBuffer (diff1, &huffTable [1], buffered_bits, bit_buffer);

				pred0 = pixel0;
				pred1 = pixel1;
					
				sPtr += srcColStep;
					
				}
			
			buffered_bits = EmitBitsToBuffer(buffered_bits, bit_buffer);

			}
			
		// General case.
			
		else
			{
			
			for (uint32 col = 0; col < fSrcCols; col++)
				{
				
				for (uint32 channel = 0; channel < fSrcChannels; channel++)
					{
					
					int32 pixel = sPtr [channel];
					
					int16 diff = (int16) (pixel - predictor [channel]);
					
					EncodeOneDiff (diff, &huffTable [channel]);
					
					predictor [channel] = pixel;
					
					}
					
				sPtr += fSrcColStep;
					
				}
				
			}
			
		FlushBuffer();
		
		}
  
	if (fSrcChannels == 2)
		{
		huffPutBuffer = bit_buffer;
		huffPutBits = buffered_bits;
		}

	FlushBits ();
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * GenHuffCoding --
 *
 *	Generate the optimal coding for the given counts. 
 *	This algorithm is explained in section K.2 of the
 *	JPEG standard. 
 *
 * Results:
 *		htbl->bits and htbl->huffval are constructed.
 *
 * Side effects:
 *		None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::GenHuffCoding (HuffmanTable *htbl, uint32 *freq)
	{
	
	int i;
	int j;
	
	const int MAX_CLEN = 32;		// assumed maximum initial code length
	
	uint8 bits [MAX_CLEN + 1];	// bits [k] = # of symbols with code length k
	short codesize [257];			// codesize [k] = code length of symbol k
	short others   [257];			// next symbol in current branch of tree
	
	memset (bits	, 0, sizeof (bits	 ));
	memset (codesize, 0, sizeof (codesize));
	
	for (i = 0; i < 257; i++)
		others [i] = -1;			// init links to empty

	// Including the pseudo-symbol 256 in the Huffman procedure guarantees
	// that no real symbol is given code-value of all ones, because 256
	// will be placed in the largest codeword category.

	freq [256] = 1;					// make sure there is a nonzero count

	// Huffman's basic algorithm to assign optimal code lengths to symbols
	
	while (true)
		{

		// Find the smallest nonzero frequency, set c1 = its symbol.
		// In case of ties, take the larger symbol number.

		int c1 = -1;
		
		uint32 v = 0xFFFFFFFF;
		
		for (i = 0; i <= 256; i++)
			{
			
			if (freq [i] && freq [i] <= v)
				{
				v = freq [i];
				c1 = i;
				}
	
			}

		// Find the next smallest nonzero frequency, set c2 = its symbol.
		// In case of ties, take the larger symbol number.

		int c2 = -1;
		
		v = 0xFFFFFFFF;
		
		for (i = 0; i <= 256; i++)
			{
			
			if (freq [i] && freq [i] <= v && i != c1) 
				{
				v = freq [i];
				c2 = i;
				}
				
			}

		// Done if we've merged everything into one frequency.

		if (c2 < 0)
			break;
	
		// Else merge the two counts/trees.

		freq [c1] += freq [c2];
		freq [c2] = 0;

		// Increment the codesize of everything in c1's tree branch.

		codesize [c1] ++;
		
		while (others [c1] >= 0)
			{
			c1 = others [c1];
			codesize [c1] ++;
			}
	
		// chain c2 onto c1's tree branch 

		others [c1] = (short) c2;
	
		// Increment the codesize of everything in c2's tree branch.

		codesize [c2] ++;
		
		while (others [c2] >= 0) 
			{
			c2 = others [c2];
			codesize [c2] ++;
			}

		}

	// Now count the number of symbols of each code length.

	for (i = 0; i <= 256; i++)
		{
		
		if (codesize [i])
			{

			// The JPEG standard seems to think that this can't happen,
			// but I'm paranoid...
			
			if (codesize [i] > MAX_CLEN)
				{
	   
				ThrowOverflow ("Huffman code size table overflow");
				
				}

			bits [codesize [i]]++;
			
			}

		}

	// JPEG doesn't allow symbols with code lengths over 16 bits, so if the pure
	// Huffman procedure assigned any such lengths, we must adjust the coding.
	// Here is what the JPEG spec says about how this next bit works:
	// Since symbols are paired for the longest Huffman code, the symbols are
	// removed from this length category two at a time.	 The prefix for the pair
	// (which is one bit shorter) is allocated to one of the pair; then,
	// skipping the BITS entry for that prefix length, a code word from the next
	// shortest nonzero BITS entry is converted into a prefix for two code words
	// one bit longer.
  
	for (i = MAX_CLEN; i > 16; i--)
		{
		
		while (bits [i] > 0)
			{
			
			// Kludge: I have never been able to test this logic, and there
			// are comments on the web that this encoder has bugs with 16-bit
			// data, so just throw an error if we get here and revert to a
			// default table.	 - tknoll 12/1/03.
			
			DNG_REPORT ("Info: Optimal huffman table bigger than 16 bits");
			
			ThrowProgramError ();
			
			// Original logic:
			
			j = i - 2;		// find length of new prefix to be used
			
			while (bits [j] == 0)
				j--;
	  
			bits [i	   ] -= 2;		// remove two symbols
			bits [i - 1] ++;		// one goes in this length
			bits [j + 1] += 2;		// two new symbols in this length
			bits [j	   ] --;		// symbol of this length is now a prefix
			
			}
			
		}

	// Remove the count for the pseudo-symbol 256 from
	// the largest codelength.
	
	while (bits [i] == 0)		// find largest codelength still in use
		i--;
		
	bits [i] --;
  
	// Return final symbol counts (only for lengths 0..16).

	memcpy (htbl->bits, bits, sizeof (htbl->bits));
  
	// Return a list of the symbols sorted by code length. 
	// It's not real clear to me why we don't need to consider the codelength
	// changes made above, but the JPEG spec seems to think this works.
   
	int p = 0;
	
	for (i = 1; i <= MAX_CLEN; i++)
		{
		
		for (j = 0; j <= 255; j++)
			{
			
			if (codesize [j] == i)
				{
				htbl->huffval [p] = (uint8) j;
				p++;
				}

			}
			
		}
 
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * HuffOptimize --
 *
 *	Find the best coding parameters for a Huffman-coded scan.
 *	When called, the scan data has already been converted to
 *	a sequence of MCU groups of source image samples, which
 *	are stored in a "big" array, mcuTable.
 *
 *	It counts the times each category symbol occurs. Based on
 *	this counting, optimal Huffman tables are built. Then it
 *	uses this optimal Huffman table and counting table to find
 *	the best PSV. 
 *
 * Results:
 *	Optimal Huffman tables are retured in cPtr->dcHuffTblPtrs[tbl].
 *	Best PSV is retured in cPtr->Ss.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::HuffOptimize ()
	{
	
	// Collect the frequency counts.
	 
	FreqCountSet ();
	
	// Generate Huffman encoding tables.
	
	for (uint32 channel = 0; channel < fSrcChannels; channel++)
		{
		
		try
			{
			
			GenHuffCoding (&huffTable [channel], freqCount [channel]);
			
			}
			
		catch (...)
			{
			
			DNG_REPORT ("Info: Reverting to default huffman table");
			
			for (uint32 j = 0; j <= 256; j++)
				{
				
				freqCount [channel] [j] = (j <= 16 ? 1 : 0);
				
				}
			
			GenHuffCoding (&huffTable [channel], freqCount [channel]);
			
			}
		
		FixHuffTbl (&huffTable [channel]);
		
		}
 
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * EmitMarker --
 *
 *	Emit a marker code into the output stream.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::EmitMarker (JpegMarker mark)
	{
	
	EmitByte (0xFF);
	EmitByte ((uint8) mark);
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * Emit2bytes --
 *
 *	Emit a 2-byte integer; these are always MSB first in JPEG
 *	files
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::Emit2bytes (int value)
	{
	
	EmitByte ((value >> 8) & 0xFF);
	EmitByte (value & 0xFF);
 
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * EmitDht --
 *
 *	Emit a DHT marker, follwed by the huffman data.
 *
 * Results:
 *	None
 *
 * Side effects:
 *	None
 *
 *--------------------------------------------------------------
 */
 
template <SIMDType simd>
void dng_lossless_encoder<simd>::EmitDht (int index)
	{
	
	int i;
	
	HuffmanTable *htbl = &huffTable [index];
	
	EmitMarker (M_DHT);

	int length = 0;
	
	for (i = 1; i <= 16; i++)
		length += htbl->bits [i];

	Emit2bytes (length + 2 + 1 + 16);
	
	EmitByte ((uint8) index);

	for (i = 1; i <= 16; i++)
		EmitByte (htbl->bits [i]);

	for (i = 0; i < length; i++)
		EmitByte (htbl->huffval [i]);

	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * EmitSof --
 *
 *	Emit a SOF marker plus data.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::EmitSof (JpegMarker code)
	{
	
	EmitMarker (code);

	Emit2bytes (3 * fSrcChannels + 2 + 5 + 1);	// length

	EmitByte ((uint8) fSrcBitDepth);
	
	Emit2bytes (fSrcRows);
	Emit2bytes (fSrcCols);

	EmitByte ((uint8) fSrcChannels);

	for (uint32 i = 0; i < fSrcChannels; i++)
		{
		
		EmitByte ((uint8) i);
		
		EmitByte ((uint8) ((1 << 4) + 1));		// Not subsampled.
				 
		EmitByte (0);					// Tq shall be 0 for lossless.
		
		}
   
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * EmitSos --
 *
 *	Emit a SOS marker plus data.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::EmitSos ()
	{
	
	EmitMarker (M_SOS);

	Emit2bytes (2 * fSrcChannels + 2 + 1 + 3);	// length

	EmitByte ((uint8) fSrcChannels);			// Ns

	for (uint32 i = 0; i < fSrcChannels; i++) 
		{ 
		
		// Cs,Td,Ta
		
		EmitByte ((uint8) i);
		EmitByte ((uint8) (i << 4));
		
		}

	EmitByte (1);		// PSV - hardcoded - tknoll
	EmitByte (0);		// Spectral selection end  - Se
	EmitByte (0);		// The point transform parameter 
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * WriteFileHeader --
 *
 *	Write the file header.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::WriteFileHeader ()
	{
	
	EmitMarker (M_SOI);		// first the SOI
	
	EmitSof (M_SOF3);
	
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * WriteScanHeader --
 *
 *	Write the start of a scan (everything through the SOS marker).
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::WriteScanHeader ()
	{

	// Emit Huffman tables.
	
	for (uint32 i = 0; i < fSrcChannels; i++)
		{
		
		EmitDht (i);
		
		}

	EmitSos ();
	 
	}

/*****************************************************************************/

/*
 *--------------------------------------------------------------
 *
 * WriteFileTrailer --
 *
 *	Write the End of image marker at the end of a JPEG file.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	None.
 *
 *--------------------------------------------------------------
 */

template <SIMDType simd>
void dng_lossless_encoder<simd>::WriteFileTrailer ()
	{
	
	EmitMarker (M_EOI);
	
	}

/*****************************************************************************/

template <SIMDType simd>
void dng_lossless_encoder<simd>::Encode ()
	{
	
	DNG_ASSERT (fSrcChannels <= 4, "Too many components in scan");
	
	// Count the times each difference category occurs. 
	// Construct the optimal Huffman table.
	
	HuffOptimize ();

	// Write the frame and scan headers.

	WriteFileHeader (); 
	
	WriteScanHeader ();

	FlushBuffer ();

	// Encode the image.
	
	HuffEncode ();

	FlushBuffer ();

	// Clean up everything.
	
	WriteFileTrailer ();

	FlushBuffer ();

	}

/*****************************************************************************/

template <SIMDType simd>
void DecodeLosslessJPEG (dng_stream &stream,
						 dng_spooler &spooler,
						 uint32 minDecodedSize,
						 uint32 maxDecodedSize,
						 bool bug16,
						 uint64 endOfData)
	{

	dng_lossless_decoder<simd> decoder (&stream,
										&spooler,
										bug16);
	
	uint32 imageWidth;
	uint32 imageHeight;
	uint32 imageChannels;
	
	decoder.StartRead (imageWidth,
					   imageHeight,
					   imageChannels);
					   
	uint32 decodedSize = SafeUint32Mult (imageWidth,
										 imageHeight,
										 imageChannels,
										 (uint32) sizeof (uint16));
					   
	if (decodedSize < minDecodedSize ||
		decodedSize > maxDecodedSize)
		{
		ThrowBadFormat ();
		}
	
	decoder.FinishRead ();
	
	uint64 streamPos = stream.Position ();
	
	if (streamPos > endOfData)
		{
		
		bool throwBadFormat = true;
		
		// Per Hasselblad's request:
		// If we have a Hassy file with exactly four extra bytes,
		// let it through; the file is likely still valid.
		
		#if qSupportHasselblad_3FR
		
		if (decoder.IsHasselblad3FR () &&
			streamPos - endOfData == 4)
			{
			throwBadFormat = false;
			}
			
		#endif
		
		if (throwBadFormat)
			{
			ThrowBadFormat ();
			}

		}
	
	}

/*****************************************************************************/

template <SIMDType simd>
void EncodeLosslessJPEG (const uint16 *srcData,
						 uint32 srcRows,
						 uint32 srcCols,
						 uint32 srcChannels,
						 uint32 srcBitDepth,
						 int32 srcRowStep,
						 int32 srcColStep,
						 dng_stream &stream)
	{
	
	dng_lossless_encoder<simd> encoder (srcData,
										srcRows,
										srcCols,
										srcChannels,
										srcBitDepth,
										srcRowStep,
										srcColStep,
										stream);

	encoder.Encode ();

	}

/*****************************************************************************/
