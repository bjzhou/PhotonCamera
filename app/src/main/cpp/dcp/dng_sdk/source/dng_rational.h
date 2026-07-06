/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Signed and unsigned rational data types.
 */

/*****************************************************************************/

#ifndef __dng_rational__
#define __dng_rational__

/*****************************************************************************/

#include "dng_types.h"

/*****************************************************************************/

class dng_srational
	{
	
	public:
	
		int32 n;		// Numerator
		int32 d;		// Denominator
		
	public:
	
		dng_srational ()
			:	n (0)
			,	d (0)
			{
			}
			
		dng_srational (int32 nn, int32 dd)
			:	n (nn)
			,	d (dd)
			{
			}

		void Clear ()
			{
			n = 0;
			d = 0;
			}

		bool IsValid () const
			{
			return d != 0;
			}
			
		bool NotValid () const
			{
			return !IsValid ();
			}
			
		bool operator== (const dng_srational &r) const
			{
			return (n == r.n) &&
				   (d == r.d);
			}
			
		bool operator!= (const dng_srational &r) const
			{
			return !(*this == r);
			}
			
		real64 As_real64 () const;
		
		void Set_real64 (real64 x, int32 dd = 0);

		void ReduceByFactor (int32 factor);
		
	};

/*****************************************************************************/

class dng_urational
	{
	
	public:
	
		uint32 n;		// Numerator
		uint32 d;		// Denominator
		
	public:
	
		dng_urational ()
			:	n (0)
			,	d (0)
			{
			}
			
		dng_urational (uint32 nn, uint32 dd)
			:	n (nn)
			,	d (dd)
			{
			}
			
		void Clear ()
			{
			n = 0;
			d = 0;
			}

		bool IsValid () const
			{
			return d != 0;
			}
			
		bool NotValid () const
			{
			return !IsValid ();
			}
			
		bool operator== (const dng_urational &r) const
			{
			return (n == r.n) &&
				   (d == r.d);
			}
			
		bool operator!= (const dng_urational &r) const
			{
			return !(*this == r);
			}
			
		real64 As_real64 () const;

		void Set_real64 (real64 x, uint32 dd = 0);

		void ReduceByFactor (uint32 factor);
		
		void ScaleBy (real64 scale);
		
	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
