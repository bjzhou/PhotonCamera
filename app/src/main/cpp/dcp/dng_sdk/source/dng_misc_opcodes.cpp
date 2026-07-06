/*****************************************************************************/
// Copyright 2008-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_misc_opcodes.h"

#include "dng_bottlenecks.h"
#include "dng_exceptions.h"
#include "dng_globals.h"
#include "dng_host.h"
#include "dng_image.h"
#include "dng_negative.h"
#include "dng_rect.h"
#include "dng_safe_arithmetic.h"
#include "dng_stream.h"
#include "dng_tag_values.h"

/*****************************************************************************/

static uint32 DeltaScaleTableDataSize (uint32 count)
	{

	return SafeUint32Add (dng_area_spec::kDataSize,
						  4u,
						  SafeUint32Mult (count, 4u));

	}

/*****************************************************************************/

dng_opcode_TrimBounds::dng_opcode_TrimBounds (const dng_rect &bounds)

	:	dng_opcode (dngOpcode_TrimBounds,
					dngVersion_1_3_0_0,
					kFlag_None)
					
	,	fBounds (bounds)
	
	{
	
	}

/*****************************************************************************/

dng_opcode_TrimBounds::dng_opcode_TrimBounds (dng_stream &stream)
								 
	:	dng_opcode (dngOpcode_TrimBounds,
					stream,
					"TrimBounds")
					
	,	fBounds ()
	
	{
	
	if (stream.Get_uint32 () != 16)
		{
		ThrowBadFormat ();
		}
		
	fBounds.t = stream.Get_int32 ();
	fBounds.l = stream.Get_int32 ();
	fBounds.b = stream.Get_int32 ();
	fBounds.r = stream.Get_int32 ();
	
	if (fBounds.IsEmpty ())
		{
		ThrowBadFormat ();
		}
	
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		printf ("Bounds: t=%d, l=%d, b=%d, r=%d\n",
				(int) fBounds.t,
				(int) fBounds.l,
				(int) fBounds.b,
				(int) fBounds.r);
		
		}
		
	#endif
	
	}

/*****************************************************************************/

void dng_opcode_TrimBounds::PutData (dng_stream &stream) const
	{
	
	stream.Put_uint32 (16);
	
	stream.Put_int32 (fBounds.t);
	stream.Put_int32 (fBounds.l);
	stream.Put_int32 (fBounds.b);
	stream.Put_int32 (fBounds.r);
	
	}

/*****************************************************************************/

void dng_opcode_TrimBounds::Apply (dng_host & /* host */,
								   dng_negative & /* negative */,
								   AutoPtr<dng_image> &image)
	{
	
	if (fBounds.IsEmpty () || (fBounds & image->Bounds ()) != fBounds)
		{
		ThrowBadFormat ();
		}
		
	image->Trim (fBounds);
	
	}

/*****************************************************************************/

void dng_area_spec::GetData (dng_stream &stream)
	{
	
	fArea.t = stream.Get_int32 ();
	fArea.l = stream.Get_int32 ();
	fArea.b = stream.Get_int32 ();
	fArea.r = stream.Get_int32 ();
	
	fPlane	= stream.Get_uint32 ();
	fPlanes = stream.Get_uint32 ();
	
	fRowPitch = stream.Get_uint32 ();
	fColPitch = stream.Get_uint32 ();
	
	if (fPlanes < 1)
		{
		ThrowBadFormat ();
		}

	// CR-4208475 L-L1: Keep opcode plane intervals representable before
	// ProcessArea loops use Plane() + Planes() as an exclusive end.

	if (fPlane > 0xFFFFFFFFu - fPlanes)
		{
		ThrowBadFormat ();
		}

	if (fRowPitch < 1 || fColPitch < 1)
		{
		ThrowBadFormat ();
		}
	
	if (fRowPitch >= fArea.H () || fColPitch >= fArea.W ())
		{

		DNG_REPORT ("Bad rowPitch or colPitch in dng_area_spec::GetData");
		
		fRowPitch = Min_uint32 (fRowPitch, fArea.H ());
		fColPitch = Min_uint32 (fColPitch, fArea.W ());

		}
		
	if (fArea.IsEmpty ())
		{

		if (fRowPitch != 1 || fColPitch != 1)
			{
			ThrowBadFormat ();
			}

		}
		
	else
		{

		int32 width	 = 0;
		int32 height = 0;

		if (!SafeInt32Sub (fArea.b, fArea.t, &height) ||
			!SafeInt32Sub (fArea.r, fArea.l, &width)  ||
			fRowPitch > static_cast<uint32> (height)  ||
			fColPitch > static_cast<uint32> (width))
			{
			ThrowBadFormat ();
			}

		}
		
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		printf ("AreaSpec: t=%d, l=%d, b=%d, r=%d, p=%u:%u, rp=%u, cp=%u\n",
				(int) fArea.t,
				(int) fArea.l,
				(int) fArea.b,
				(int) fArea.r,
				(unsigned) fPlane,
				(unsigned) fPlanes,
				(unsigned) fRowPitch,
				(unsigned) fColPitch);
		
		}
	
	#endif
	
	}

/*****************************************************************************/

void dng_area_spec::PutData (dng_stream &stream) const
	{
	
	stream.Put_int32 (fArea.t);
	stream.Put_int32 (fArea.l);
	stream.Put_int32 (fArea.b);
	stream.Put_int32 (fArea.r);
	
	stream.Put_uint32 (fPlane);
	stream.Put_uint32 (fPlanes);
	
	stream.Put_uint32 (fRowPitch);
	stream.Put_uint32 (fColPitch);
	
	}

/*****************************************************************************/

dng_rect dng_area_spec::Overlap (const dng_rect &tile) const
	{
	
	// Special case - if the fArea is empty, then dng_area_spec covers
	// the entire image, no matter how large it is.
			
	if (fArea.IsEmpty ())
		{
		return tile;
		}
	
	dng_rect overlap = fArea & tile;
	
	if (overlap.NotEmpty ())
		{
		
		DNG_ASSERT (overlap.t >= fArea.t && overlap.l >= fArea.l,
					"Overlap outside area");

		overlap.t = fArea.t +
			ConvertUint32ToInt32 (RoundUpUint32ToMultiple
								  (static_cast<uint32> (overlap.t - fArea.t),
								   fRowPitch));
		
		overlap.l = fArea.l +
			ConvertUint32ToInt32 (RoundUpUint32ToMultiple
								  (static_cast<uint32> (overlap.l - fArea.l),
								   fColPitch));
		
		if (overlap.NotEmpty ())
			{
			
			overlap.b = overlap.t + ((overlap.H () - 1) / fRowPitch) * fRowPitch + 1;
			overlap.r = overlap.l + ((overlap.W () - 1) / fColPitch) * fColPitch + 1;
			
			return overlap;
			
			}
		
		}
		
	return dng_rect ();
	
	}

/*****************************************************************************/

dng_rect dng_area_spec::ScaledOverlap (const dng_rect &tile) const
	{
	
	// Special case - if the fArea is empty, then dng_area_spec covers
	// the entire image, no matter how large it is.
			
	if (fArea.IsEmpty ())
		{
		return tile;
		}

	dng_rect area = ScaledArea ();			 // Use ScaledArea instead of fArea
	
	dng_rect overlap = area & tile;
	
	if (overlap.NotEmpty ())
		{
		
		overlap.t = area.t + ((overlap.t - area.t + fRowPitch - 1) / fRowPitch) * fRowPitch;
		overlap.l = area.l + ((overlap.l - area.l + fColPitch - 1) / fColPitch) * fColPitch;
		
		if (overlap.NotEmpty ())
			{
			
			overlap.b = overlap.t + ((overlap.H () - 1) / fRowPitch) * fRowPitch + 1;
			overlap.r = overlap.l + ((overlap.W () - 1) / fColPitch) * fColPitch + 1;
			
			return overlap;
			
			}
		
		}
		
	return dng_rect ();
	
	}

/*****************************************************************************/

dng_rect dng_area_spec::ScaledArea () const
	{
	
	if (fAreaScale.n == fAreaScale.d)
		{
		return fArea;
		}

	dng_rect area = fArea;

	real64 x = fAreaScale.As_real64 ();

	area.t = Round_int32 (x * area.t);
	area.l = Round_int32 (x * area.l);
	area.b = Round_int32 (x * area.b);
	area.r = Round_int32 (x * area.r);

	return area;
	
	}

/*****************************************************************************/

void dng_area_spec::ApplyAreaScale (const dng_urational &scale)
	{

	DNG_REQUIRE (scale.n > 0 &&
				 scale.d > 0,
				 "invalid scale in dng_area_spec::Scale");

	fAreaScale = scale;
	
	}

/*****************************************************************************/

dng_opcode_MapTable::dng_opcode_MapTable (dng_host &host,
										  const dng_area_spec &areaSpec,
										  const uint16 *table,
										  uint32 count)
												  
	:	dng_inplace_opcode (dngOpcode_MapTable,
							dngVersion_1_3_0_0,
							kFlag_None)
												  
	,	fAreaSpec (areaSpec)
	,	fTable	  ()
	,	fCount	  (count)

	,	fBlackAdjustedTable ()
	
	{
	
	if (count == 0 || count > 0x10000)
		{
		ThrowProgramError ();
		}
	
	fTable.Reset (host.Allocate (0x10000 * sizeof (uint16)));
	
	DoCopyBytes (table,
				 fTable->Buffer (),
				 count * (uint32) sizeof (uint16));
				 
	ReplicateLastEntry ();
	
	}
	
/*****************************************************************************/

dng_opcode_MapTable::dng_opcode_MapTable (dng_host &host,
										  dng_stream &stream)

	:	dng_inplace_opcode (dngOpcode_MapTable,
							stream,
							"MapTable")
	
	,	fAreaSpec ()
	,	fTable	  ()
	,	fCount	  (0)
	
	,	fBlackAdjustedTable ()

	{
	
	uint32 dataSize = stream.Get_uint32 ();
	
	fAreaSpec.GetData (stream);
	
	fCount = stream.Get_uint32 ();
	
	uint32 requiredSize = SafeUint32Mult (fCount, 2);
	
	requiredSize = SafeUint32Add (requiredSize, dng_area_spec::kDataSize);
	requiredSize = SafeUint32Add (requiredSize, 4);
	
	if (dataSize != requiredSize)
		{
		ThrowBadFormat ();
		}
		
	if (fCount == 0 || fCount > 0x10000)
		{
		ThrowBadFormat ();
		}
	
	fTable.Reset (host.Allocate (0x10000 * sizeof (uint16)));
	
	uint16 *table = fTable->Buffer_uint16 ();
	
	for (uint32 index = 0; index < fCount; index++)
		{
		table [index] = stream.Get_uint16 ();
		}
		
	ReplicateLastEntry ();
	
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		printf ("Count: %u\n", (unsigned) fCount);
		
		for (uint32 j = 0; j < fCount && j < gDumpLineLimit; j++)
			{
			printf ("\tTable [%5u] = %5u\n", (unsigned) j, (unsigned) table [j]);
			}
			
		if (fCount > gDumpLineLimit)
			{
			printf ("\t ... %u table entries skipped\n", (unsigned) (fCount - gDumpLineLimit));
			}
		
		}
	
	#endif
	
	}

/*****************************************************************************/

void dng_opcode_MapTable::ReplicateLastEntry ()
	{
	
	uint16 *table = fTable->Buffer_uint16 ();
		
	uint16 lastEntry = table [fCount - 1];
	
	for (uint32 index = fCount; index < 0x10000; index++)
		{
		table [index] = lastEntry;
		}
	
	}

/*****************************************************************************/

void dng_opcode_MapTable::PutData (dng_stream &stream) const
	{
	
	stream.Put_uint32 (dng_area_spec::kDataSize + 4 + fCount * 2);
	
	fAreaSpec.PutData (stream);
	
	stream.Put_uint32 (fCount);
	
	uint16 *table = fTable->Buffer_uint16 ();
		
	for (uint32 index = 0; index < fCount; index++)
		{
		stream.Put_uint16 (table [index]);
		}
	
	}
			
/*****************************************************************************/

uint32 dng_opcode_MapTable::BufferPixelType (uint32 /* imagePixelType */)
	{
	
	return ttShort;
	
	}
	
/*****************************************************************************/

dng_rect dng_opcode_MapTable::ModifiedBounds (const dng_rect &imageBounds)
	{
	
	return fAreaSpec.ScaledOverlap (imageBounds);
	
	}

/*****************************************************************************/

void dng_opcode_MapTable::Prepare (dng_negative &negative,
								   uint32 /* threadCount */,
								   const dng_point & /* tileSize */,
								   const dng_rect & /* imageBounds */,
								   uint32 /* imagePlanes */,
								   uint32 /* bufferPixelType */,
								   dng_memory_allocator &allocator)
	{
	
	fBlackAdjustedTable.Reset ();
	
	int32 blackLevel = negative.Stage3BlackLevel ();
		
	if (Stage () >= 2 && blackLevel != 0)
		{
		
		fBlackAdjustedTable.Reset (allocator.Allocate (0x10000 * sizeof (uint16)));
		
		const uint16 *srcTable = fTable->Buffer_uint16 ();
		
		uint16 *dstTable = fBlackAdjustedTable->Buffer_uint16 ();
		
		real64 srcScale = (blackLevel < 65535) ? 65535.0 / (65535.0 - blackLevel) : 0.0;
		
		real64 dstScale = (65535.0 - blackLevel) / 65535.0;
		
		for (int32 index = 0; index < 0x10000; index++)
			{
			
			real64 x = (index - blackLevel) * srcScale;
			
			real64 y;
			
			if (x < 0.0)
				{
				
				uint32 idx = Min_uint32 (Round_uint32 (-x), 0xFFFF);
				y = srcTable [0] * 2.0 - (real64) srcTable [idx];
				
				}
				
			else
				{
				
				uint32 idx = Min_uint32 (Round_uint32 (x), 0xFFFF);
				y = srcTable [idx];
				
				}
				
			dstTable [index] = Pin_uint16 (Round_int32 (y * dstScale) + blackLevel);
			
			}
		
		}
	
	}

/*****************************************************************************/

void dng_opcode_MapTable::ProcessArea (dng_negative & /* negative */,
									   uint32 /* threadIndex */,
									   dng_pixel_buffer &buffer,
									   const dng_rect &dstArea,
									   const dng_rect & /* imageBounds */)
	{
	
	dng_rect overlap = fAreaSpec.ScaledOverlap (dstArea);
	
	if (overlap.NotEmpty ())
		{
  
		const uint16 *table = fBlackAdjustedTable.Get () ? fBlackAdjustedTable->Buffer_uint16 ()
														 : fTable			  ->Buffer_uint16 ();
		
		for (uint32 plane = fAreaSpec.Plane ();
			 plane < fAreaSpec.Plane () + fAreaSpec.Planes () &&
			 plane < buffer.Planes ();
			 plane++)
			{
			
			DoMapArea16 (buffer.DirtyPixel_uint16 (overlap.t, overlap.l, plane),
						 1,
						 (overlap.H () + fAreaSpec.RowPitch () - 1) / fAreaSpec.RowPitch (),
						 (overlap.W () + fAreaSpec.ColPitch () - 1) / fAreaSpec.ColPitch (),
						 0,
						 fAreaSpec.RowPitch () * buffer.RowStep (),
						 fAreaSpec.ColPitch (),
						 table);
			
			}
		
		}
	
	}
								  
/*****************************************************************************/

dng_opcode_MapPolynomial::dng_opcode_MapPolynomial (const dng_area_spec &areaSpec,
													uint32 degree,
													const real64 *coefficient)
												  
	:	dng_inplace_opcode (dngOpcode_MapPolynomial,
							dngVersion_1_3_0_0,
							kFlag_None)
												  
	,	fAreaSpec (areaSpec)
	,	fDegree	  (degree)
	
	{
	
	for (uint32 j = 0; j <= kMaxDegree; j++)
		{
		
		if (j <= fDegree)
			{
			fCoefficient [j] = coefficient [j];
			}
			
		else
			{
			fCoefficient [j] = 0.0;
			}

		}
		
	// Reduce degree if possible.
		
	while (fDegree > 0 && fCoefficient [fDegree] == 0.0)
		{
		fDegree--;
		}

	}

/*****************************************************************************/

dng_opcode_MapPolynomial::dng_opcode_MapPolynomial (dng_stream &stream)

	:	dng_inplace_opcode (dngOpcode_MapPolynomial,
							stream,
							"MapPolynomial")
	
	,	fAreaSpec ()
	,	fDegree	  (0)
	
	{
	
	uint32 dataSize = stream.Get_uint32 ();
	
	fAreaSpec.GetData (stream);
	
	fDegree = stream.Get_uint32 ();
	
	if (dataSize != dng_area_spec::kDataSize + 4 + (fDegree + 1) * 8)
		{
		ThrowBadFormat ();
		}
		
	if (fDegree > kMaxDegree)
		{
		ThrowBadFormat ();
		}
			
	for (uint32 j = 0; j <= kMaxDegree; j++)
		{

		if (j <= fDegree)
			{

			fCoefficient [j] = stream.Get_real64 ();

			// CR-4208475 N-M3: reject NaN / Inf coefficients before they
			// propagate through DoBaselineMapPoly evaluations.

			if (!std::isfinite (fCoefficient [j]))
				{
				ThrowBadFormat ();
				}

			}
		else
			{
			fCoefficient [j] = 0.0;
			}

		}
	
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		for (uint32 k = 0; k <= fDegree; k++)
			{
			printf ("\tCoefficient [%u] = %f\n", (unsigned) k, fCoefficient [k]);
			}
			
		}
	
	#endif
	
	}
								  
/*****************************************************************************/

void dng_opcode_MapPolynomial::PutData (dng_stream &stream) const
	{
	
	stream.Put_uint32 (dng_area_spec::kDataSize + 4 + (fDegree + 1) * 8);
	
	fAreaSpec.PutData (stream);
	
	stream.Put_uint32 (fDegree);
	
	for (uint32 j = 0; j <= fDegree; j++)
		{
		stream.Put_real64 (fCoefficient [j]);
		}
	
	}
								  
/*****************************************************************************/

uint32 dng_opcode_MapPolynomial::BufferPixelType (uint32 imagePixelType)
	{
	
	// If we are operating on the stage 1 image, then we need
	// to adjust the coefficients to convert from the image
	// values to the 32-bit floating point values that this
	// opcode operates on.
	
	// If we are operating on the stage 2 or 3 image, the logical
	// range of the image is already 0.0 to 1.0, so we don't
	// need to adjust the values.
	
	real64 scale32 = 1.0;
	
	if (Stage () == 1)
		{
	
		switch (imagePixelType)
			{
			
			case ttFloat:
				break;
			
			case ttShort:
				{
				scale32 = (real64) 0xFFFF;
				break;
				}
				
			case ttLong:
				{
				scale32 = (real64) 0xFFFFFFFF;
				break;
				}
				
			default:
				ThrowBadFormat ();
				
			}
			
		}
		
	real64 factor32 = 1.0 / scale32;
		
	for (uint32 j = 0; j <= kMaxDegree; j++)
		{
		
		fCoefficient32 [j] = (real32) (fCoefficient [j] * factor32);
		
		factor32 *= scale32;
		
		}

	return ttFloat;
	
	}
								  
/*****************************************************************************/

dng_rect dng_opcode_MapPolynomial::ModifiedBounds (const dng_rect &imageBounds)
	{
	
	return fAreaSpec.ScaledOverlap (imageBounds);
	
	}
								  
/*****************************************************************************/

void dng_opcode_MapPolynomial::ProcessArea (dng_negative &negative,
											uint32 /* threadIndex */,
											dng_pixel_buffer &buffer,
											const dng_rect &dstArea,
											const dng_rect & /* imageBounds */)
	{
	
	dng_rect overlap = fAreaSpec.ScaledOverlap (dstArea);
	
	if (overlap.NotEmpty ())
		{
  
		uint16 blackLevel = Stage () >= 2 ? negative.Stage3BlackLevel () : 0;
		
		uint32 rowPitch = fAreaSpec.RowPitch ();
		uint32 colPitch = fAreaSpec.ColPitch ();
		
		for (uint32 plane = fAreaSpec.Plane ();
			 plane < fAreaSpec.Plane () + fAreaSpec.Planes () &&
			 plane < buffer.Planes ();
			 plane++)
			{

			DoProcess (buffer,
					   overlap,
					   plane,
					   rowPitch,
					   colPitch,
					   fCoefficient32, 
					   fDegree,
					   blackLevel);
			
			}
		
		}
	
	}

/*****************************************************************************/

void dng_opcode_MapPolynomial::DoProcess (dng_pixel_buffer &buffer,
										  const dng_rect &area,
										  const uint32 plane,
										  const uint32 rowPitch,
										  const uint32 colPitch,
										  const real32 *coefficients,
										  const uint32 degree,
										  uint16 blackLevel) const
	{

	DoBaselineMapPoly32 (buffer.DirtyPixel_real32 (area.t,
												   area.l,
												   plane),
						 buffer.RowStep () * (int32) rowPitch,
						 area.H (),
						 area.W (),
						 rowPitch,
						 colPitch,
						 coefficients,
						 degree,
						 blackLevel);

	}

/*****************************************************************************/

dng_opcode_DeltaPerRow::dng_opcode_DeltaPerRow (const dng_area_spec &areaSpec,
												AutoPtr<dng_memory_block> &table)
												  
	:	dng_inplace_opcode (dngOpcode_DeltaPerRow,
							dngVersion_1_3_0_0,
							kFlag_None)
												  
	,	fAreaSpec (areaSpec)
	,	fTable	  ()
	,	fScale	  (1.0f)
	
	{
	
	fTable.Reset (table.Release ());
	
	}

/*****************************************************************************/

dng_opcode_DeltaPerRow::dng_opcode_DeltaPerRow (dng_host &host,
												dng_stream &stream)

	:	dng_inplace_opcode (dngOpcode_DeltaPerRow,
							stream,
							"DeltaPerRow")
	
	,	fAreaSpec ()
	,	fTable	  ()
	,	fScale	  (1.0f)
	
	{
	
	uint32 dataSize = stream.Get_uint32 ();
	
	fAreaSpec.GetData (stream);
	
	uint32 deltas = SafeUint32DivideUp (fAreaSpec.Area ().H (),
										fAreaSpec.RowPitch ());
					 
	if (deltas != stream.Get_uint32 ())
		{
		ThrowBadFormat ();
		}
		
	if (dataSize != DeltaScaleTableDataSize (deltas))
		{
		ThrowBadFormat ();
		}
		
	fTable.Reset (host.Allocate
				  (SafeUint32Mult (deltas,
								   static_cast<uint32> (sizeof (real32)))));
	
	real32 *table = fTable->Buffer_real32 ();
	
	for (uint32 j = 0; j < deltas; j++)
		{

		table [j] = stream.Get_real32 ();

		// CR-4208475 N-M3: reject NaN / Inf at the parser boundary so
		// non-finite deltas cannot propagate into per-pixel scale loops.

		if (!std::isfinite (table [j]))
			{
			ThrowBadFormat ();
			}

		}
		
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		printf ("Count: %u\n", (unsigned) deltas);
		
		for (uint32 k = 0; k < deltas && k < gDumpLineLimit; k++)
			{
			printf ("\tDelta [%u] = %f\n", (unsigned) k, table [k]);
			}
			
		if (deltas > gDumpLineLimit)
			{
			printf ("\t ... %u deltas skipped\n", (unsigned) (deltas - gDumpLineLimit));
			}
		
		}
	
	#endif
	
	}

/*****************************************************************************/

void dng_opcode_DeltaPerRow::PutData (dng_stream &stream) const
	{
	
	uint32 deltas = SafeUint32DivideUp (fAreaSpec.Area ().H (),
										fAreaSpec.RowPitch ());
	
	stream.Put_uint32 (DeltaScaleTableDataSize (deltas));
	
	fAreaSpec.PutData (stream);
	
	stream.Put_uint32 (deltas);
	
	real32 *table = fTable->Buffer_real32 ();
	
	for (uint32 j = 0; j < deltas; j++)
		{
		stream.Put_real32 (table [j]);
		}
	
	}

/*****************************************************************************/

uint32 dng_opcode_DeltaPerRow::BufferPixelType (uint32 imagePixelType)
	{
	
	real64 scale32 = 1.0;
	
	switch (imagePixelType)
		{
		
		case ttFloat:
			break;
		
		case ttShort:
			{
			scale32 = (real64) 0xFFFF;
			break;
			}
			
		case ttLong:
			{
			scale32 = (real64) 0xFFFFFFFF;
			break;
			}
			
		default:
			ThrowBadFormat ();
			
		}
		
	fScale = (real32) (1.0 / scale32);
		
	return ttFloat;
	
	}

/*****************************************************************************/

dng_rect dng_opcode_DeltaPerRow::ModifiedBounds (const dng_rect &imageBounds)
	{
	
	return fAreaSpec.Overlap (imageBounds);
	
	}

/*****************************************************************************/

void dng_opcode_DeltaPerRow::ProcessArea (dng_negative &negative,
										  uint32 /* threadIndex */,
										  dng_pixel_buffer &buffer,
										  const dng_rect &dstArea,
										  const dng_rect & /* imageBounds */)
	{
	
	const dng_rect overlap = fAreaSpec.Overlap (dstArea);
	
	if (overlap.NotEmpty ())
		{
		
		const uint32 rowPitch = fAreaSpec.RowPitch ();
		const uint32 colPitch = fAreaSpec.ColPitch ();
  
		const uint32 rows = (overlap.H () + rowPitch - 1) / rowPitch;
		const uint32 cols = (overlap.W () + colPitch - 1) / colPitch;

		real32 scale = fScale;
		
		if (Stage () >= 2 && negative.Stage3BlackLevel () != 0)
			{
			scale *= (real32) (1.0 - negative.Stage3BlackLevelNormalized ());
			}
		
		for (uint32 plane = fAreaSpec.Plane ();
			 plane < fAreaSpec.Plane () + fAreaSpec.Planes () &&
			 plane < buffer.Planes ();
			 plane++)
			{
			
			const real32 *table = fTable->Buffer_real32 () +
								  ((overlap.t - fAreaSpec.Area ().t) /
								   rowPitch);

			int32 row = overlap.t;
			
			for (uint32 rowIdx = 0; rowIdx < rows; rowIdx++)
				{
				
				real32 rowDelta = *(table++) * scale;
				
				real32 *dPtr = buffer.DirtyPixel_real32 (row, overlap.l, plane);
				
				uint32 col = 0;
				
				for (uint32 colIdx = 0; colIdx < cols; colIdx++)
					{
					
					real32 x = dPtr [col];
					
					real32 y = x + rowDelta;
							   
					dPtr [col] = Pin_real32 (-1.0f, y, 1.0f);

					col += colPitch;
					
					} // cols

				row += rowPitch;
				
				} // rows
			
			} // planes
		
		} // overlap not empty
	
	}

/*****************************************************************************/

dng_opcode_DeltaPerColumn::dng_opcode_DeltaPerColumn (const dng_area_spec &areaSpec,
													  AutoPtr<dng_memory_block> &table)
												  
	:	dng_inplace_opcode (dngOpcode_DeltaPerColumn,
							dngVersion_1_3_0_0,
							kFlag_None)
												  
	,	fAreaSpec (areaSpec)
	,	fTable	  ()
	,	fScale	  (1.0f)
	
	{
	
	fTable.Reset (table.Release ());
	
	}

/*****************************************************************************/

dng_opcode_DeltaPerColumn::dng_opcode_DeltaPerColumn (dng_host &host,
													  dng_stream &stream)

	:	dng_inplace_opcode (dngOpcode_DeltaPerColumn,
							stream,
							"DeltaPerColumn")
	
	,	fAreaSpec ()
	,	fTable	  ()
	,	fScale	  (1.0f)
	
	{
	
	uint32 dataSize = stream.Get_uint32 ();
	
	fAreaSpec.GetData (stream);
	
	uint32 deltas = SafeUint32DivideUp (fAreaSpec.Area ().W (),
										fAreaSpec.ColPitch ());
					 
	if (deltas != stream.Get_uint32 ())
		{
		ThrowBadFormat ();
		}
		
	if (dataSize != DeltaScaleTableDataSize (deltas))
		{
		ThrowBadFormat ();
		}
		
	fTable.Reset (host.Allocate
				  (SafeUint32Mult (deltas,
								   static_cast<uint32> (sizeof (real32)))));
	
	real32 *table = fTable->Buffer_real32 ();
	
	for (uint32 j = 0; j < deltas; j++)
		{

		table [j] = stream.Get_real32 ();

		// CR-4208475 N-M3: reject NaN / Inf at the parser boundary so
		// non-finite deltas cannot propagate into per-pixel scale loops.

		if (!std::isfinite (table [j]))
			{
			ThrowBadFormat ();
			}

		}
		
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		printf ("Count: %u\n", (unsigned) deltas);
		
		for (uint32 k = 0; k < deltas && k < gDumpLineLimit; k++)
			{
			printf ("\tDelta [%u] = %f\n", (unsigned) k, table [k]);
			}
			
		if (deltas > gDumpLineLimit)
			{
			printf ("\t ... %u deltas skipped\n", (unsigned) (deltas - gDumpLineLimit));
			}
		
		}
	
	#endif
	
	}

/*****************************************************************************/

void dng_opcode_DeltaPerColumn::PutData (dng_stream &stream) const
	{
	
	uint32 deltas = SafeUint32DivideUp (fAreaSpec.Area ().W (),
										fAreaSpec.ColPitch ());
	
	stream.Put_uint32 (DeltaScaleTableDataSize (deltas));
	
	fAreaSpec.PutData (stream);
	
	stream.Put_uint32 (deltas);
	
	real32 *table = fTable->Buffer_real32 ();
	
	for (uint32 j = 0; j < deltas; j++)
		{
		stream.Put_real32 (table [j]);
		}
	
	}

/*****************************************************************************/

uint32 dng_opcode_DeltaPerColumn::BufferPixelType (uint32 imagePixelType)
	{
	
	real64 scale32 = 1.0;
	
	switch (imagePixelType)
		{
		
		case ttFloat:
			break;
		
		case ttShort:
			{
			scale32 = (real64) 0xFFFF;
			break;
			}
			
		case ttLong:
			{
			scale32 = (real64) 0xFFFFFFFF;
			break;
			}
			
		default:
			ThrowBadFormat ();
			
		}
		
	fScale = (real32) (1.0 / scale32);
		
	return ttFloat;
	
	}

/*****************************************************************************/

dng_rect dng_opcode_DeltaPerColumn::ModifiedBounds (const dng_rect &imageBounds)
	{
	
	return fAreaSpec.Overlap (imageBounds);
	
	}

/*****************************************************************************/

void dng_opcode_DeltaPerColumn::ProcessArea (dng_negative &negative,
											 uint32 /* threadIndex */,
											 dng_pixel_buffer &buffer,
											 const dng_rect &dstArea,
											 const dng_rect & /* imageBounds */)
	{
	
	const dng_rect overlap = fAreaSpec.Overlap (dstArea);
	
	if (overlap.NotEmpty ())
		{
		
		const uint32 rowPitch = fAreaSpec.RowPitch ();
		const uint32 colPitch = fAreaSpec.ColPitch ();
  
		const uint32 rows = (overlap.H () + rowPitch - 1) / rowPitch;
		const uint32 cols = (overlap.W () + colPitch - 1) / colPitch;

		const int32 rowStep = buffer.RowStep () * rowPitch;
		
		real32 scale = fScale;
		
		if (Stage () >= 2 && negative.Stage3BlackLevel () != 0)
			{
			scale *= (real32) (1.0 - negative.Stage3BlackLevelNormalized ());
			}
		
		for (uint32 plane = fAreaSpec.Plane ();
			 plane < fAreaSpec.Plane () + fAreaSpec.Planes () &&
			 plane < buffer.Planes ();
			 plane++)
			{
			
			const real32 *table = fTable->Buffer_real32 () +
								  ((overlap.l - fAreaSpec.Area ().l) /
								   colPitch);
			
			int32 col = overlap.l;
				
			for (uint32 colIdx = 0; colIdx < cols; colIdx++)
				{
				
				real32 colDelta = *(table++) * scale;
				
				real32 *dPtr = buffer.DirtyPixel_real32 (overlap.t, col, plane);
				
				for (uint32 rowIdx = 0; rowIdx < rows; rowIdx++)
					{
					
					real32 x = dPtr [0];
					
					real32 y = x + colDelta;
							   
					dPtr [0] = Pin_real32 (-1.0f, y, 1.0f);
					
					dPtr += rowStep;
					
					} // rows

				col += colPitch;
				
				} // columns
			
			} // planes
		
		} // overlap not empty
	
	}

/*****************************************************************************/

dng_opcode_ScalePerRow::dng_opcode_ScalePerRow (const dng_area_spec &areaSpec,
												AutoPtr<dng_memory_block> &table)
												  
	:	dng_inplace_opcode (dngOpcode_ScalePerRow,
							dngVersion_1_3_0_0,
							kFlag_None)
												  
	,	fAreaSpec (areaSpec)
	,	fTable	  ()
	
	{
	
	fTable.Reset (table.Release ());
	
	}

/*****************************************************************************/

dng_opcode_ScalePerRow::dng_opcode_ScalePerRow (dng_host &host,
												dng_stream &stream)

	:	dng_inplace_opcode (dngOpcode_ScalePerRow,
							stream,
							"ScalePerRow")
	
	,	fAreaSpec ()
	,	fTable	  ()
	
	{
	
	uint32 dataSize = stream.Get_uint32 ();
	
	fAreaSpec.GetData (stream);
	
	uint32 scales = SafeUint32DivideUp (fAreaSpec.Area ().H (),
										fAreaSpec.RowPitch ());
					 
	if (scales != stream.Get_uint32 ())
		{
		ThrowBadFormat ();
		}
		
	if (dataSize != DeltaScaleTableDataSize (scales))
		{
		ThrowBadFormat ();
		}
		
	fTable.Reset (host.Allocate
				  (SafeUint32Mult (scales,
								   static_cast<uint32> (sizeof (real32)))));
	
	real32 *table = fTable->Buffer_real32 ();
	
	for (uint32 j = 0; j < scales; j++)
		{

		table [j] = stream.Get_real32 ();

		// CR-4208475 N-M3: reject NaN / Inf at the parser boundary so
		// non-finite scales cannot propagate into per-pixel scale loops.

		if (!std::isfinite (table [j]))
			{
			ThrowBadFormat ();
			}

		}
		
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		printf ("Count: %u\n", (unsigned) scales);
		
		for (uint32 k = 0; k < scales && k < gDumpLineLimit; k++)
			{
			printf ("\tScale [%u] = %f\n", (unsigned) k, table [k]);
			}
			
		if (scales > gDumpLineLimit)
			{
			printf ("\t ... %u scales skipped\n", (unsigned) (scales - gDumpLineLimit));
			}
		
		}
	
	#endif
	
	}

/*****************************************************************************/

void dng_opcode_ScalePerRow::PutData (dng_stream &stream) const
	{
	
	uint32 scales = SafeUint32DivideUp (fAreaSpec.Area ().H (),
										fAreaSpec.RowPitch ());
	
	stream.Put_uint32 (DeltaScaleTableDataSize (scales));
	
	fAreaSpec.PutData (stream);
	
	stream.Put_uint32 (scales);
	
	real32 *table = fTable->Buffer_real32 ();
	
	for (uint32 j = 0; j < scales; j++)
		{
		stream.Put_real32 (table [j]);
		}
	
	}

/*****************************************************************************/

uint32 dng_opcode_ScalePerRow::BufferPixelType (uint32 /* imagePixelType */)
	{
			
	return ttFloat;
	
	}

/*****************************************************************************/

dng_rect dng_opcode_ScalePerRow::ModifiedBounds (const dng_rect &imageBounds)
	{
	
	return fAreaSpec.Overlap (imageBounds);
	
	}

/*****************************************************************************/

void dng_opcode_ScalePerRow::ProcessArea (dng_negative &negative,
										  uint32 /* threadIndex */,
										  dng_pixel_buffer &buffer,
										  const dng_rect &dstArea,
										  const dng_rect & /* imageBounds */)
	{
	
	const dng_rect overlap = fAreaSpec.Overlap (dstArea);
	
	if (overlap.NotEmpty ())
		{
		
		const uint32 rowPitch = fAreaSpec.RowPitch ();
		const uint32 colPitch = fAreaSpec.ColPitch ();
  
		const uint32 rows = (overlap.H () + rowPitch - 1) / rowPitch;
		const uint32 cols = (overlap.W () + colPitch - 1) / colPitch;

		real32 blackOffset = 0.0f;
		
		if (Stage () >= 2 && negative.Stage3BlackLevel () != 0)
			{
			blackOffset = (real32) negative.Stage3BlackLevelNormalized ();
			}
		
		for (uint32 plane = fAreaSpec.Plane ();
			 plane < fAreaSpec.Plane () + fAreaSpec.Planes () &&
			 plane < buffer.Planes ();
			 plane++)
			{
			
			const real32 *table = fTable->Buffer_real32 () +
								  ((overlap.t - fAreaSpec.Area ().t) /
								   rowPitch);

			int32 row = overlap.t;
			
			for (uint32 rowIdx = 0; rowIdx < rows; rowIdx++)
				{
				
				real32 rowScale = *(table++);
				
				real32 *dPtr = buffer.DirtyPixel_real32 (row, overlap.l, plane);

				int32 col = 0;
				
				for (uint32 colIdx = 0; colIdx < cols; colIdx++)
					{
					
					real32 x = dPtr [col];
					
					real32 y = (x - blackOffset) * rowScale + blackOffset;
						
					dPtr [col] = Pin_real32 (-1.0f, y, 1.0f);

					col += colPitch;
					
					} // cols

				row += rowPitch;

				} // rows
			
			} // planes
		
		} // overlap not empty
	
	}

/*****************************************************************************/

dng_opcode_ScalePerColumn::dng_opcode_ScalePerColumn (const dng_area_spec &areaSpec,
													  AutoPtr<dng_memory_block> &table)
												  
	:	dng_inplace_opcode (dngOpcode_ScalePerColumn,
							dngVersion_1_3_0_0,
							kFlag_None)
												  
	,	fAreaSpec (areaSpec)
	,	fTable	  ()
	
	{
	
	fTable.Reset (table.Release ());
	
	}

/*****************************************************************************/

dng_opcode_ScalePerColumn::dng_opcode_ScalePerColumn (dng_host &host,
													  dng_stream &stream)

	:	dng_inplace_opcode (dngOpcode_ScalePerColumn,
							stream,
							"ScalePerColumn")
	
	,	fAreaSpec ()
	,	fTable	  ()
	
	{
	
	uint32 dataSize = stream.Get_uint32 ();
	
	fAreaSpec.GetData (stream);
	
	uint32 scales = SafeUint32DivideUp (fAreaSpec.Area ().W (),
										fAreaSpec.ColPitch());
					 
	if (scales != stream.Get_uint32 ())
		{
		ThrowBadFormat ();
		}
		
	if (dataSize != DeltaScaleTableDataSize (scales))
		{
		ThrowBadFormat ();
		}
		
	fTable.Reset (host.Allocate
				  (SafeUint32Mult (scales,
								   static_cast<uint32> (sizeof (real32)))));
	
	real32 *table = fTable->Buffer_real32 ();
	
	for (uint32 j = 0; j < scales; j++)
		{

		table [j] = stream.Get_real32 ();

		// CR-4208475 N-M3: reject NaN / Inf at the parser boundary so
		// non-finite scales cannot propagate into per-pixel scale loops.

		if (!std::isfinite (table [j]))
			{
			ThrowBadFormat ();
			}

		}
		
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		printf ("Count: %u\n", (unsigned) scales);
		
		for (uint32 k = 0; k < scales && k < gDumpLineLimit; k++)
			{
			printf ("\tScale [%u] = %f\n", (unsigned) k, table [k]);
			}
			
		if (scales > gDumpLineLimit)
			{
			printf ("\t ... %u deltas skipped\n", (unsigned) (scales - gDumpLineLimit));
			}
		
		}
	
	#endif
	
	}

/*****************************************************************************/

void dng_opcode_ScalePerColumn::PutData (dng_stream &stream) const
	{
	
	uint32 scales = SafeUint32DivideUp (fAreaSpec.Area ().W (),
										fAreaSpec.ColPitch ());
	
	stream.Put_uint32 (DeltaScaleTableDataSize (scales));
	
	fAreaSpec.PutData (stream);
	
	stream.Put_uint32 (scales);
	
	real32 *table = fTable->Buffer_real32 ();
	
	for (uint32 j = 0; j < scales; j++)
		{
		stream.Put_real32 (table [j]);
		}
	
	}

/*****************************************************************************/

uint32 dng_opcode_ScalePerColumn::BufferPixelType (uint32 /* imagePixelType */)
	{
	
	return ttFloat;
	
	}

/*****************************************************************************/

dng_rect dng_opcode_ScalePerColumn::ModifiedBounds (const dng_rect &imageBounds)
	{
	
	return fAreaSpec.Overlap (imageBounds);
	
	}

/*****************************************************************************/

void dng_opcode_ScalePerColumn::ProcessArea (dng_negative &negative,
											 uint32 /* threadIndex */,
											 dng_pixel_buffer &buffer,
											 const dng_rect &dstArea,
											 const dng_rect & /* imageBounds */)
	{
	
	const dng_rect overlap = fAreaSpec.Overlap (dstArea);
	
	if (overlap.NotEmpty ())
		{
		
		const uint32 rowPitch = fAreaSpec.RowPitch ();
		const uint32 colPitch = fAreaSpec.ColPitch ();
  
		const uint32 rows = (overlap.H () + rowPitch - 1) / rowPitch;
		const uint32 cols = (overlap.W () + colPitch - 1) / colPitch;

		const int32 rowStep = buffer.RowStep () * rowPitch;
		
		real32 blackOffset = 0.0f;
		
		if (Stage () >= 2 && negative.Stage3BlackLevel () != 0)
			{
			blackOffset = (real32) negative.Stage3BlackLevelNormalized ();
			}
		
		for (uint32 plane = fAreaSpec.Plane ();
			 plane < fAreaSpec.Plane () + fAreaSpec.Planes () &&
			 plane < buffer.Planes ();
			 plane++)
			{
			
			const real32 *table = fTable->Buffer_real32 () +
								  ((overlap.l - fAreaSpec.Area ().l) /
								   colPitch);
			
			int32 col = overlap.l;
			
			for (uint32 colIdx = 0; colIdx < cols; colIdx++)
				{
				
				real32 colScale = *(table++);
				
				real32 *dPtr = buffer.DirtyPixel_real32 (overlap.t, col, plane);
				
				for (uint32 rowIdx = 0; rowIdx < rows; rowIdx++)
					{
					
					real32 x = dPtr [0];
					
					real32 y = (x - blackOffset) * colScale + blackOffset;
							   
					dPtr [0] = Pin_real32 (-1.0f, y, 1.0f);
					
					dPtr += rowStep;
					
					} // rows
				
				col += colPitch;
				
				} // cols
			
			} // planes
		
		} // overlap not empty
	
	}

/*****************************************************************************/
