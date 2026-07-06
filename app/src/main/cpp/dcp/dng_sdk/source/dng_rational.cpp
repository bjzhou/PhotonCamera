/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_rational.h"

#include "dng_utils.h"

/*****************************************************************************/

real64 dng_srational::As_real64 () const
	{

	if (d)
		return (real64) n / (real64) d;

	else
		return 0.0;

	}

/*****************************************************************************/

void dng_srational::Set_real64 (real64 x, int32 dd)
	{

	// CR-4208475 M-L2: Canonicalize the zero case and return. The
	// previous code set *this to (0, 1) and then fell through to the
	// dd-defaulting + Round_int32(x * dd) path, immediately overwriting
	// the canonical zero with (0, large_dd). Both represent the same
	// real value but the fall-through made the dedicated zero branch
	// dead code.

	if (x == 0.0)
		{

		*this = dng_srational (0, 1);

		return;

		}
	
	if (dd == 0)
		{
		
		real64 y = Abs_real64 (x);
	
		if (y >= 32768.0)
			{
			dd = 1;
			}
			
		else if (y >= 1.0)
			{
			dd = 32768;
			}
			
		else
			{
			dd = 32768 * 32768;
			}
			
		}
		
	*this = dng_srational (Round_int32 (x * dd), dd);

	}

/*****************************************************************************/

void dng_srational::ReduceByFactor (int32 factor)
	{
	
	while (n % factor == 0 &&
		   d % factor == 0 &&
		   d >= factor)
		{
		n /= factor;
		d /= factor;
		}
	
	}
		
/*****************************************************************************/

real64 dng_urational::As_real64 () const
	{

	if (d)
		return (real64) n / (real64) d;

	else
		return 0.0;

	}

/*****************************************************************************/

void dng_urational::Set_real64 (real64 x, uint32 dd)
	{

	// CR-4208475 M-L2: Mirror the srational fix. The previous code set
	// *this to (0, 1) on x <= 0.0 and then fell through to the
	// dd-defaulting + Round_uint32(x * dd) path, immediately overwriting
	// the canonical zero. Return after the zero branch.

	if (x <= 0.0)
		{

		*this = dng_urational (0, 1);

		return;

		}
	
	if (dd == 0)
		{
	
		if (x >= 32768.0)
			{
			dd = 1;
			}
			
		else if (x >= 1.0)
			{
			dd = 32768;
			}
			
		else
			{
			dd = 32768 * 32768;
			}
			
		}
		
	*this = dng_urational (Round_uint32 (x * dd), dd);
	
	}
		
/*****************************************************************************/

void dng_urational::ReduceByFactor (uint32 factor)
	{
	
	while (n % factor == 0 &&
		   d % factor == 0 &&
		   d >= factor)
		{
		n /= factor;
		d /= factor;
		}
	
	}
		
/*****************************************************************************/

void dng_urational::ScaleBy (real64 scale)
	{
	
	if (scale <= 0.0)
		{
		*this = dng_urational (0, 1);
		return;
		}
		
	if (IsValid ())
		{
		
		if (d > 1)
			{
			ReduceByFactor (d);
			}

		ReduceByFactor (2);
		ReduceByFactor (3);
		ReduceByFactor (5);

		while (true)
			{
		
			if (scale == 1.0)
				{
				break;
				}
		
			else if (scale > 1.0)
				{
				
				uint32 x = Round_uint32 (scale);
				
				if (scale == (real64) x)
					{
					
					if (d % x == 0)
						{
						d /= x;
						break;
						}
						
					else if (n * (uint64) x <= 0xFFFFFFFF)
						{
						n *= x;
						break;
						}
						
					}
					
				}
				
			else
				{
				
				uint32 x = Round_uint32 (1.0 / scale);
				
				if (scale == (1.0 / (real64) x))
					{
					
					if (n % x == 0)
						{
						n /= x;
						break;
						}
						
					else if (d * (uint64) x <= 0xFFFFFFFF)
						{
						d *= x;
						break;
						}
					
					}
				
				}
			
			Set_real64 (As_real64 () * scale);
			
			break;
			
			}
		
		ReduceByFactor (2);

		}
	
	}
		
/*****************************************************************************/
