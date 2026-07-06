/*****************************************************************************/
// Copyright 2006-2020 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Representation of colors in xy and XYZ coordinates.
 */

/*****************************************************************************/

#ifndef __dng_xy_coord__
#define __dng_xy_coord__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_rational.h"
#include "dng_types.h"

#include <vector>

/*****************************************************************************/

class dng_xy_coord
	{
	
	public:
	
		real64 x;
		real64 y;
		
	public:
	
		dng_xy_coord ()
			:	x (0.0)
			,	y (0.0)
			{
			}
			
		dng_xy_coord (real64 xx, real64 yy)
			:	x (xx)
			,	y (yy)
			{
			}
			
		void Clear ()
			{
			x = 0.0;
			y = 0.0;
			}
			
		bool IsValid () const
			{
			return x > 0.0 &&
				   y > 0.0;
			}

		bool NotValid () const
			{
			return !IsValid ();
			}

		bool operator== (const dng_xy_coord &coord) const
			{
			return coord.x == x &&
				   coord.y == y;
			}

		bool operator!= (const dng_xy_coord &coord) const
			{
			return !(*this == coord);
			}

	};

/*****************************************************************************/

inline dng_xy_coord operator+ (const dng_xy_coord &A,
							   const dng_xy_coord &B)
	{
	
	dng_xy_coord C;
	
	C.x = A.x + B.x;
	C.y = A.y + B.y;
	
	return C;
	
	}
			
/*****************************************************************************/

inline dng_xy_coord operator- (const dng_xy_coord &A,
							   const dng_xy_coord &B)
	{
	
	dng_xy_coord C;
	
	C.x = A.x - B.x;
	C.y = A.y - B.y;
	
	return C;
	
	}
			
/*****************************************************************************/

inline dng_xy_coord operator* (real64 scale,
							   const dng_xy_coord &A)
	{
	
	dng_xy_coord B;
	
	B.x = A.x * scale;
	B.y = A.y * scale;
	
	return B;
	
	}
			
/******************************************************************************/

inline real64 operator* (const dng_xy_coord &A,
						 const dng_xy_coord &B)
	{
	
	return A.x * B.x +
		   A.y * B.y;
	
	}

/*****************************************************************************/

// Standard xy coordinate constants.

inline dng_xy_coord StdA_xy_coord ()
	{
	return dng_xy_coord (0.4476, 0.4074);
	}

inline dng_xy_coord D50_xy_coord ()
	{
	return dng_xy_coord (0.3457, 0.3585);
	}

inline dng_xy_coord D55_xy_coord ()
	{
	return dng_xy_coord (0.3324, 0.3474);
	}

inline dng_xy_coord D65_xy_coord ()
	{
	return dng_xy_coord (0.3127, 0.3290);
	}

inline dng_xy_coord D75_xy_coord ()
	{
	return dng_xy_coord (0.2990, 0.3149);
	}

/*****************************************************************************/

// Convert between xy coordinates and XYZ coordinates.

dng_xy_coord XYZtoXY (const dng_vector_3 &coord);

dng_vector_3 XYtoXYZ (const dng_xy_coord &coord);

/*****************************************************************************/

// Returns the ICC XYZ profile connection space white point.

dng_xy_coord PCStoXY ();

dng_vector_3 PCStoXYZ ();

/*****************************************************************************/

class dng_illuminant_data
	{

	private:

		enum type
			{
			kWhiteXY,				   // x-y chromaticity coordinate
			kSpectrum,				   // spectral power distribution function
			};

		type fType = kWhiteXY;

		dng_xy_coord fDerivedWhite;

		// x-y representation.
		
		dng_urational fWhiteX;
		dng_urational fWhiteY;

		// Spectrum representation.

		dng_urational fMinLambda;

		dng_urational fLambdaSpacing;

		std::vector<dng_urational> fSpectrum;

	public:

		dng_illuminant_data ()
			{
			}

		dng_illuminant_data (uint32 tagCode,
							 const dng_illuminant_data *otherDataPtr);

		void Clear ();

		bool IsValid () const;
		
		void SetWhiteXY (const dng_xy_coord &white);

		void SetWhiteXY (const dng_urational &x,
						 const dng_urational &y);

		const dng_xy_coord & WhiteXY () const
			{
			return fDerivedWhite;
			}

		void SetSpectrum (const dng_urational &minLambda,
						  const dng_urational &lambdaSpacing,
						  const std::vector<dng_urational> &data);

		void Get (dng_stream &stream,
				  const uint32 tagCount,
				  const char *tagName);
		
		void Put (dng_stream &stream) const;

		uint32 TagCount () const;
		
	private:

		void CalculateSpectrumXY ();

	};

/*****************************************************************************/

void CalculateTripleIlluminantWeights (const dng_xy_coord &white,
									   const dng_illuminant_data &light1,
									   const dng_illuminant_data &light2,
									   const dng_illuminant_data &light3,
									   real64 &w1,
									   real64 &w2,
									   real64 &w3);

/*****************************************************************************/

#endif	// __dng_xy_coord__
	
/*****************************************************************************/
