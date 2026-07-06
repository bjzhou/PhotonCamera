/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_1d_table.h"

#include "dng_1d_function.h"
#include "dng_assertions.h"
#include "dng_memory.h"
#include "dng_safe_arithmetic.h"
#include "dng_utils.h"

/*****************************************************************************/

dng_1d_table::dng_1d_table (uint32 count)

	:	fBuffer		  ()
	,	fTable		  (NULL)
	,	fTableCount   (count)
	,	fTableCount32 ((real32) count)
	
	{

	DNG_REQUIRE (count >= kMinTableSize,
				 "count must be at least kMinTableSize");

	DNG_REQUIRE ((count & (count - 1)) == 0,
				 "count must be power of 2");
	
	}

/*****************************************************************************/

dng_1d_table::~dng_1d_table ()
	{
	
	}
	
/*****************************************************************************/

void dng_1d_table::SubDivide (const dng_1d_function &function,
							  uint32 lower,
							  uint32 upper,
							  real32 maxDelta)
	{

	// CR-4208475 M-L8: Reject a zero-width range. Current call sites
	// (Initialize and recursive SubDivide gated by range > 2) cannot
	// produce range == 0, but the linear-fill else branch below
	// otherwise divides (y1 - y0) by range and yields 0.0 / 0.0 = NaN
	// in the unused delta. Bail early to keep the helper safe under
	// any future caller.

	if (upper <= lower)
		{
		return;
		}

	uint32 range = upper - lower;
		
	bool subDivide = (range > (fTableCount >> 8));
	
	if (!subDivide)
		{
		
		real32 delta = Abs_real32 (fTable [upper] - 
								   fTable [lower]);
								   
		if (delta > maxDelta)
			{
			
			subDivide = true;
			
			}
		
		}
		
	if (subDivide)
		{
		
		uint32 middle = (lower + upper) >> 1;
		
		fTable [middle] = (real32) function.Evaluate (middle * (1.0 / (real64) fTableCount));
		
		if (range > 2)
			{
			
			SubDivide (function, lower, middle, maxDelta);
			
			SubDivide (function, middle, upper, maxDelta);
			
			}
	
		}
		
	else
		{
		
		real64 y0 = fTable [lower];
		real64 y1 = fTable [upper];
		
		real64 delta = (y1 - y0) / (real64) range;
		
		for (uint32 j = lower + 1; j < upper; j++)
			{
			
			y0 += delta;
				
			fTable [j] = (real32) y0;
						
			}
		
		}
		
	}
	
/*****************************************************************************/

void dng_1d_table::Initialize (dng_memory_allocator &allocator,
							   const dng_1d_function &function,
							   bool subSample)
	{
	
	fBuffer.Reset (allocator.Allocate ((fTableCount + 2) * sizeof (real32)));
	
	fTable = fBuffer->Buffer_real32 ();
	
	if (subSample)
		{
		
		fTable [0		   ] = (real32) function.Evaluate (0.0);
		fTable [fTableCount] = (real32) function.Evaluate (1.0);
		
		real32 maxDelta = Max_real32 (Abs_real32 (fTable [fTableCount] -
												  fTable [0			 ]), 1.0f) *
						  (1.0f / 256.0f);
							   
		SubDivide (function,
				   0,
				   fTableCount,
				   maxDelta);
		
		}
		
	else
		{
			
		for (uint32 j = 0; j <= fTableCount; j++)
			{
			
			real64 x = j * (1.0 / (real64) fTableCount);
			
			real64 y = function.Evaluate (x);
			
			fTable [j] = ConvertDoubleToFloat (y);
			
			}
			
		}
		
	fTable [fTableCount + 1] = fTable [fTableCount];
	
	}

/*****************************************************************************/

void dng_1d_table::Expand16 (uint16 *table16) const
	{
	
	real64 step = (real64) fTableCount / 65535.0;
	
	real64 y0 = fTable [0];
	real64 y1 = fTable [1];
	
	real64 base	 = y0 * 65535.0 + 0.5;
	real64 slope = (y1 - y0) * 65535.0;
	
	uint32 index = 1;
	real64 fract = 0.0;
	
	for (uint32 j = 0; j < 0x10000; j++)
		{
		
		table16 [j] = (uint16) (base + slope * fract);
		
		fract += step;
		
		if (fract > 1.0)
			{
			
			index += 1;
			fract -= 1.0;
			
			y0 = y1;
			y1 = fTable [index];
			
			base  = y0 * 65535.0 + 0.5;
			slope = (y1 - y0) * 65535.0;
			
			}
		
		}
	
	}

/*****************************************************************************/
