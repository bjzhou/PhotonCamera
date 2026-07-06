/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_spline__
#define __dng_spline__

/*****************************************************************************/

#include "dng_1d_function.h"
#include "dng_assertions.h"
#include "dng_memory.h"

#include <vector>

/*****************************************************************************/

inline real64 EvaluateSplineSegment (real64 x,
									 real64 x0,
									 real64 y0,
									 real64 s0,
									 real64 x1,
									 real64 y1,
									 real64 s1)
	{
	
	real64 A = x1 - x0;

	// CR-4208475 M-L7: A == 0 would feed B and C below division by
	// zero and propagate NaN / Inf into the returned value. Callers in
	// dng_spline_solver normally pre-validate that X is strictly
	// increasing, but this is a public inline helper.

	DNG_REQUIRE (A > 0.0,
				 "EvaluateSplineSegment requires x1 > x0");

	real64 B = (x - x0) / A;

	real64 C = (x1 - x) / A;

	real64 D = ((y0 * (2.0 - C + B) + (s0 * A * B)) * (C * C)) +
			   ((y1 * (2.0 - B + C) - (s1 * A * C)) * (B * B));
			   
	return D;
	
	}

/*****************************************************************************/

inline real64 EvaluateSlopeSplineSegment (real64 x,
										  real64 x0,
										  real64 y0,
										  real64 s0,
										  real64 x1,
										  real64 y1,
										  real64 s1)
	{

	real64 A = x1 - x0;

	// CR-4208475 M-L7: Mirror the EvaluateSplineSegment precondition.
	// A2 / A3 below feed multiple divisions; A == 0 would propagate
	// Inf / NaN through every term.

	DNG_REQUIRE (A > 0.0,
				 "EvaluateSlopeSplineSegment requires x1 > x0");

	real64 A2 = A * A;
	
	real64 A3 = A2 * A;

	real64 c0 = ((s1 * x0 * x0) + (2.0 * s0 * x0 * x1) + (2.0 * s1 * x0 * x1) + (s0 * x1 * x1) - (4.0 * x1 * y0) - (4.0 * x0 * y1)) / A2;

	real64 c1 = ((2.0 * x0 * x1 * y0) + (4.0 * x1 * x1 * y0) - (4.0 * x0 * x0 * y1) - (2.0 * x0 * x1 * y1)) / A3;

	real64 quad_term = 3.0 * x * x * (((s0 + s1) / A2) + (2.0 * (y0 - y1) / A3));

	real64 linear_term = 2.0 * x * (((-((s0 * x0)) - (2.0 * s1 * x0) - (2.0 * s0 * x1) - (s1 * x1) + (2.0 * y0) + (2.0 * y1)) / A2) +
									((-(x0 * y0) - (5.0 * x1 * y0) + (5.0 * x0 * y1) + (x1 * y1)) / A3));

	return linear_term + quad_term + c0 + c1;
	
	}

/*****************************************************************************/

class dng_spline_solver: public dng_1d_function
	{
	
	public:
	
		dng_std_vector<real64> X;
		dng_std_vector<real64> Y;
		
		dng_std_vector<real64> S;

		// If true, then use linear slope extension before the first curve endpoint.

		bool fUseSlopeExtensionLo = false;
		
		// If true, then use linear slope extension after the last curve endpoint.

		bool fUseSlopeExtensionHi = false;
		
	public:
	
		dng_spline_solver ();
		
		virtual ~dng_spline_solver ();
			
		void Reset ();

		void Add (real64 x, real64 y);

		virtual void Solve ();

		virtual bool IsIdentity () const;

		virtual real64 Evaluate (real64 x) const;

		virtual real64 EvaluateSlope (real64 x) const;

		real64 UseSlopeExtensionLo () const
			{
			return fUseSlopeExtensionLo;
			}

		real64 UseSlopeExtensionHi () const
			{
			return fUseSlopeExtensionHi;
			}

		void SetUseSlopeExtension (bool flag)
			{
			fUseSlopeExtensionLo = flag;
			fUseSlopeExtensionHi = flag;
			}

		void SetUseSlopeExtensionLo (bool flag)
			{
			fUseSlopeExtensionLo = flag;
			}

		void SetUseSlopeExtensionHi (bool flag)
			{
			fUseSlopeExtensionHi = flag;
			}

	};

/*****************************************************************************/

#endif	// __dng_spline__
	
/*****************************************************************************/
