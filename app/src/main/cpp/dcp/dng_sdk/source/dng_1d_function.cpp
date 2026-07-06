/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_1d_function.h"

#include "dng_assertions.h"
#include "dng_stream.h"
#include "dng_utils.h"

/*****************************************************************************/

dng_1d_function::~dng_1d_function ()
	{
	
	}

/*****************************************************************************/

bool dng_1d_function::IsIdentity () const
	{
	
	return false;
	
	}

/*****************************************************************************/

real64 dng_1d_function::EvaluateInverse (real64 y) const
	{
	
	const uint32 kMaxIterations = 30;
	const real64 kNearZero		= 1.0e-10;
	
	real64 x0 = 0.0;
	real64 y0 = Evaluate (x0);
	
	real64 x1 = 1.0;
	real64 y1 = Evaluate (x1);
	
	for (uint32 iteration = 0; iteration < kMaxIterations; iteration++)		
		{
		
		if (Abs_real64 (y1 - y0) < kNearZero)
			{
			break;
			}
		
		real64 x2 = Pin_real64 (0.0, 
								x1 + (y - y1) * (x1 - x0) / (y1 - y0),
								1.0);
		
		real64 y2 = Evaluate (x2);
		
		x0 = x1;
		y0 = y1;
		
		x1 = x2;
		y1 = y2;
		
		}
	
	return x1;
	
	}
	
/*****************************************************************************/

bool dng_1d_identity::IsIdentity () const
	{
	
	return true;
	
	}
		
/*****************************************************************************/

real64 dng_1d_identity::Evaluate (real64 x) const
	{
	
	return x;
	
	}
		
/*****************************************************************************/

real64 dng_1d_identity::EvaluateInverse (real64 x) const
	{
	
	return x;
	
	}
		
/*****************************************************************************/

const dng_1d_function & dng_1d_identity::Get ()
	{
	
	static dng_1d_identity static_function;
	
	return static_function;
	
	}

/*****************************************************************************/

dng_1d_concatenate::dng_1d_concatenate (const dng_1d_function &function1,
										const dng_1d_function &function2)
										
	:	fFunction1 (function1)
	,	fFunction2 (function2)
	
	{
	
	}
	
/*****************************************************************************/

bool dng_1d_concatenate::IsIdentity () const
	{
	
	return fFunction1.IsIdentity () &&
		   fFunction2.IsIdentity ();
	
	}
		
/*****************************************************************************/

real64 dng_1d_concatenate::Evaluate (real64 x) const
	{
	
	real64 y = Pin_real64 (0.0, fFunction1.Evaluate (x), 1.0);
	
	return fFunction2.Evaluate (y);
	
	}

/*****************************************************************************/

real64 dng_1d_concatenate::EvaluateInverse (real64 x) const
	{
	
	real64 y = fFunction2.EvaluateInverse (x);
	
	return fFunction1.EvaluateInverse (y);
	
	}
	
/*****************************************************************************/

dng_1d_inverse::dng_1d_inverse (const dng_1d_function &f)
	
	:	fFunction (f)
	
	{
	
	}
	
/*****************************************************************************/

bool dng_1d_inverse::IsIdentity () const
	{
	
	return fFunction.IsIdentity ();
	
	}
	
/*****************************************************************************/

real64 dng_1d_inverse::Evaluate (real64 x) const
	{
	
	return fFunction.EvaluateInverse (x);
	
	}

/*****************************************************************************/

real64 dng_1d_inverse::EvaluateInverse (real64 y) const
	{
	
	return fFunction.Evaluate (y);
	
	}
	
/*****************************************************************************/

dng_piecewise_linear::dng_piecewise_linear ()

	:	X ()
	,	Y ()

	{

	}
	
/*****************************************************************************/

dng_piecewise_linear::~dng_piecewise_linear ()
	{

	}
	
/*****************************************************************************/

void dng_piecewise_linear::Reset ()
	{
	
	X.clear ();
	Y.clear ();
	
	}

/*****************************************************************************/

void dng_piecewise_linear::Add (real64 x, real64 y)
	{
	
	X.push_back (x);
	Y.push_back (y);
	
	}

/*****************************************************************************/

bool dng_piecewise_linear::IsIdentity () const
	{
	
	return (X.size () == 2					&&
			X.size () == Y.size ()			&&
			X [0] == 0.0 && Y [0] == 0.0	&&
			X [1] == 1.0 && Y [1] == 1.0);
		
	}

/*****************************************************************************/

real64 dng_piecewise_linear::Evaluate (real64 x) const
	{

	DNG_ASSERT (X.size () >= 2, "Too few points.");

	DNG_ASSERT (X.size () == Y.size (), "Input/output vector size mismatch.");
	
	// Check for extremes.

	if (x <= X.front ())
		{
		return Y.front ();
		}

	else if (x >= X.back ())
		{
		return Y.back ();
		}

	// Binary search for the X index.
	
	int32 lower = 1;
	int32 upper = ((int32) (X.size ())) - 1;
	
	while (upper > lower)
		{
		
		int32 mid = (lower + upper) >> 1;
		
		if (x == X [mid]) return Y [mid];
			
		if (x > X [mid]) lower = mid + 1;

		else upper = mid;
		
		}
		
	DNG_ASSERT (upper == lower, "Binary search error in point list.");

	int32 index0 = lower - 1;
	int32 index1 = lower;

	real64 X0 = X [index0];
	real64 X1 = X [index1];

	real64 Y0 = Y [index0];
	real64 Y1 = Y [index1];

	if (X0 == X1) return 0.5 * (Y0 + Y1);

	real64 t = (x - X0) / (X1 - X0);

	return Y0 + t * (Y1 - Y0);

	}
		
/*****************************************************************************/

real64 dng_piecewise_linear::EvaluateInverse (real64 y) const
	{
	
	DNG_ASSERT (X.size () >= 2, "Too few points.");

	DNG_ASSERT (X.size () == Y.size (), "Input/output vector size mismatch.");
	
	// Binary search for the Y index.

	int32 lower = 1;
	int32 upper = ((int32) (Y.size ())) - 1;
	
	while (upper > lower)
		{
		
		int32 mid = (lower + upper) >> 1;
		
		if (y == Y [mid]) return X [mid];
			
		if (y > Y [mid]) lower = mid + 1;

		else upper = mid;
		
		}
		
	DNG_ASSERT (upper == lower, "Binary search error in point list.");

	int32 index0 = lower - 1;
	int32 index1 = lower;

	real64 X0 = X [index0];
	real64 X1 = X [index1];

	real64 Y0 = Y [index0];
	real64 Y1 = Y [index1];

	if (Y0 == Y1) return 0.5 * (X0 + X1);

	real64 t = (y - Y0) / (Y1 - Y0);

	return X0 + t * (X1 - X0);
	
	}

/*****************************************************************************/

void dng_piecewise_linear::PutFingerprintData (dng_stream &stream) const
	{
	
	const char *name = "dng_piecewise_linear";

	stream.Put (name, (uint32) strlen (name));
	
	if (IsValid ())
		{

		for (size_t i = 0; i < X.size (); i++)
			{

			stream.Put_real64 (X [i]);
			stream.Put_real64 (Y [i]);

			}
	
		}
	
	}

/*****************************************************************************/

bool dng_piecewise_linear::operator== (const dng_piecewise_linear &piecewise) const
	{
	
	return X == piecewise.X &&
		   Y == piecewise.Y;
	
	}

/*****************************************************************************/
