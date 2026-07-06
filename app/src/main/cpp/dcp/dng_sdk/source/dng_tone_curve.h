/*****************************************************************************/
// Copyright 2007-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Representation of 1-dimensional tone curve.
 */

/*****************************************************************************/

#ifndef __dng_tone_curve__
#define __dng_tone_curve__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_memory.h"
#include "dng_point.h"

/*****************************************************************************/

class dng_tone_curve
	{
	
	public:
		
		dng_std_vector<dng_point_real64> fCoord;
		
	public:

		dng_tone_curve ();

		bool operator== (const dng_tone_curve &curve) const;
		
		bool operator!= (const dng_tone_curve &curve) const
			{
			return !(*this == curve);
			}
			
		void SetNull ();

		bool IsNull () const;
		
		void SetInvalid ();
		
		bool IsValid () const;
		
		void Solve (dng_spline_solver &solver) const;
		
	};

/*****************************************************************************/

#endif

/*****************************************************************************/
