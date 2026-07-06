/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_matrix.h"

#include "dng_assertions.h"
#include "dng_exceptions.h"
#include "dng_fingerprint.h"
#include "dng_utils.h"

/*****************************************************************************/
				
dng_matrix::dng_matrix ()
						
	:	fRows (0)
	,	fCols (0)
	
	{
	
	}
					
/*****************************************************************************/
				
dng_matrix::dng_matrix (uint32 rows,
						uint32 cols)
						
	:	fRows (0)
	,	fCols (0)
	
	{
	
	if (rows < 1 || rows > kMaxColorPlanes ||
		cols < 1 || cols > kMaxColorPlanes)
		{
		
		ThrowProgramError ();
		
		}
	
	fRows = rows;
	fCols = cols;
	
	for (uint32 row = 0; row < fRows; row++)
		for (uint32 col = 0; col < fCols; col++)
			{
			
			fData [row] [col] = 0.0;
			
			}
	
	}
					
/*****************************************************************************/
				
dng_matrix::dng_matrix (const dng_matrix &m)

	:	fRows (m.fRows)
	,	fCols (m.fCols)
	
	{
	
	for (uint32 row = 0; row < fRows; row++)
		for (uint32 col = 0; col < fCols; col++)
			{
			
			fData [row] [col] = m.fData [row] [col];
			
			}
	
	}
					
/*****************************************************************************/
				
void dng_matrix::Clear ()	
	{
	
	fRows = 0;
	fCols = 0;
	
	}
				
/*****************************************************************************/
				
void dng_matrix::SetIdentity (uint32 count)	
	{
	
	*this = dng_matrix (count, count);
	
	for (uint32 j = 0; j < count; j++)
		{
		
		fData [j] [j] = 1.0;
		
		}
	
	}
				
/******************************************************************************/

bool dng_matrix::operator== (const dng_matrix &m) const
	{
	
	if (Rows () != m.Rows () ||
		Cols () != m.Cols ())
		{
		
		return false;
		
		}
	
	for (uint32 j = 0; j < Rows (); j++)	
		for (uint32 k = 0; k < Cols (); k++)
			{
			
			if (fData [j] [k] != m.fData [j] [k])
				{
				
				return false;
				
				}
			
			}
			
	return true;
	
	}

/******************************************************************************/

bool dng_matrix::IsDiagonal () const
	{
	
	if (IsEmpty ())
		{
		return false;
		}
	
	if (Rows () != Cols ())
		{
		return false;
		}
	
	for (uint32 j = 0; j < Rows (); j++)
		for (uint32 k = 0; k < Cols (); k++)
			{
			
			if (j != k)
				{
				
				if (fData [j] [k] != 0.0)
					{
					return false;
					}
				
				}
			
			}
			
	return true;
	
	}

/******************************************************************************/

bool dng_matrix::IsIdentity () const
	{
	
	if (IsDiagonal ())
		{
		
		for (uint32 j = 0; j < Rows (); j++)
			{
				
			if (fData [j] [j] != 1.0)
				{
				return false;
				}
			 
			}
			
		return true;
			
		}
		
	return false;
	
	}

/******************************************************************************/

real64 dng_matrix::MaxEntry () const
	{
	
	if (IsEmpty ())
		{
		
		return 0.0;
		
		}
	
	real64 m = fData [0] [0];
	
	for (uint32 j = 0; j < Rows (); j++)
		for (uint32 k = 0; k < Cols (); k++)
			{
			
			m = Max_real64 (m, fData [j] [k]);
			
			}
			
	return m;
	
	}
		
/******************************************************************************/

real64 dng_matrix::MinEntry () const
	{
	
	if (IsEmpty ())
		{
		
		return 0.0;
		
		}
	
	real64 m = fData [0] [0];
	
	for (uint32 j = 0; j < Rows (); j++)
		for (uint32 k = 0; k < Cols (); k++)
			{
			
			m = Min_real64 (m, fData [j] [k]);
			
			}
			
	return m;
	
	}
		
/*****************************************************************************/

void dng_matrix::Scale (real64 factor)
	{
	
	for (uint32 j = 0; j < Rows (); j++)	
		for (uint32 k = 0; k < Cols (); k++)
			{
			
			fData [j] [k] *= factor;
			
			}
			
	}
			
/*****************************************************************************/

void dng_matrix::Round (real64 factor)
	{
	
	real64 invFactor = 1.0 / factor;
	
	for (uint32 j = 0; j < Rows (); j++)	
		for (uint32 k = 0; k < Cols (); k++)
			{
			
			fData [j] [k] = Round_int32 (fData [j] [k] * factor) * invFactor;
			
			}
			
	}
	
/*****************************************************************************/

void dng_matrix::SafeRound (real64 factor)
	{
	
	real64 invFactor = 1.0 / factor;
	
	for (uint32 j = 0; j < Rows (); j++)
		{
		
		// Round each row to the specified accuracy, but make sure the
		// a rounding does not affect the total of the elements in a row
		// more than necessary.
		
		real64 error = 0.0;
		
		for (uint32 k = 0; k < Cols (); k++)
			{
			
			fData [j] [k] += error;
			
			real64 rounded = Round_int32 (fData [j] [k] * factor) * invFactor;
			
			error = fData [j] [k] - rounded;
			
			fData [j] [k] = rounded;
			
			}
		
		}
		
	}

/*****************************************************************************/

bool dng_matrix::AlmostEqual (const dng_matrix &m,
							  real64 slop) const
	{
	
	if (Rows () != m.Rows () ||
		Cols () != m.Cols ())
		{
		return false;
		}
		
	for (uint32 j = 0; j < Rows (); j++)
		{
		
		for (uint32 k = 0; k < Cols (); k++)
			{
			
			if (Abs_real64 (fData [j] [k] - m [j] [k]) > slop)
				{
				return false;
				}
			
			}
			
		}
			
	return true;
	
	}

/*****************************************************************************/

bool dng_matrix::AlmostIdentity (real64 slop) const
	{
	
	dng_matrix m;
	
	m.SetIdentity (Rows ());
	
	return AlmostEqual (m, slop);
	
	}

/*****************************************************************************/

void dng_matrix::Process (dng_md5_printer_stream &printer) const
	{

	printer.Put_uint32 (fRows);
	printer.Put_uint32 (fCols);

	for (uint32 j = 0; j < Rows (); j++)
		{

		for (uint32 k = 0; k < Cols (); k++)
			{

			printer.Put_real64 (fData [j] [k]);

			}

		}

	}

/*****************************************************************************/

dng_matrix_3by3::dng_matrix_3by3 ()

	:	dng_matrix (3, 3)
	
	{
	}
		
/*****************************************************************************/

dng_matrix_3by3::dng_matrix_3by3 (const dng_matrix &m)

	:	dng_matrix (m)
	
	{
	
	if (Rows () != 3 ||
		Cols () != 3)
		{
		
		ThrowMatrixMath ();
		
		}
	
	}
		
/*****************************************************************************/

dng_matrix_3by3::dng_matrix_3by3 (real64 a00, real64 a01, real64 a02,
								  real64 a10, real64 a11, real64 a12,
								  real64 a20, real64 a21, real64 a22)
							   

	:	dng_matrix (3, 3)
	
	{
	
	fData [0] [0] = a00;
	fData [0] [1] = a01;
	fData [0] [2] = a02;
	
	fData [1] [0] = a10;
	fData [1] [1] = a11;
	fData [1] [2] = a12;
	
	fData [2] [0] = a20;
	fData [2] [1] = a21;
	fData [2] [2] = a22;
	
	}

/*****************************************************************************/

dng_matrix_3by3::dng_matrix_3by3 (real64 a00, real64 a11, real64 a22)

	:	dng_matrix (3, 3)
	
	{
	
	fData [0] [0] = a00;
	fData [1] [1] = a11;
	fData [2] [2] = a22;
	
	}

/*****************************************************************************/

dng_matrix_4by3::dng_matrix_4by3 ()

	:	dng_matrix (4, 3)
	
	{
	}
		
/*****************************************************************************/

dng_matrix_4by3::dng_matrix_4by3 (const dng_matrix &m)

	:	dng_matrix (m)
	
	{
	
	if (Rows () != 4 ||
		Cols () != 3)
		{
		
		ThrowMatrixMath ();
		
		}
	
	}
		
/*****************************************************************************/

dng_matrix_4by3::dng_matrix_4by3 (real64 a00, real64 a01, real64 a02,
								  real64 a10, real64 a11, real64 a12,
								  real64 a20, real64 a21, real64 a22,
								  real64 a30, real64 a31, real64 a32)
							   

	:	dng_matrix (4, 3)
	
	{
	
	fData [0] [0] = a00;
	fData [0] [1] = a01;
	fData [0] [2] = a02;
	
	fData [1] [0] = a10;
	fData [1] [1] = a11;
	fData [1] [2] = a12;
	
	fData [2] [0] = a20;
	fData [2] [1] = a21;
	fData [2] [2] = a22;
	
	fData [3] [0] = a30;
	fData [3] [1] = a31;
	fData [3] [2] = a32;
	
	}

/*****************************************************************************/
				
dng_matrix_4by4::dng_matrix_4by4 ()

	:	dng_matrix (4, 4)
	
	{

	}
		
/*****************************************************************************/

dng_matrix_4by4::dng_matrix_4by4 (const dng_matrix &m)

	:	dng_matrix (m)
	
	{

	// Input must be either 3x3 or 4x4.

	const bool is3by3 = (m.Rows () == 3 &&
						 m.Cols () == 3);
	
	const bool is4by4 = (m.Rows () == 4 &&
						 m.Cols () == 4);

	if (!is3by3 && !is4by4)
		{
		
		ThrowMatrixMath ();

		}

	// For 3x3 case, pad to 4x4 (equivalent 4x4 matrix).
	
	if (is3by3)
		{		

		fRows = 4;
		fCols = 4;

		fData [0] [3] = 0.0;
		fData [1] [3] = 0.0;
		fData [2] [3] = 0.0;

		fData [3] [0] = 0.0;
		fData [3] [1] = 0.0;
		fData [3] [2] = 0.0;

		fData [3] [3] = 1.0;
		
		}
	
	}
		
/*****************************************************************************/

dng_matrix_4by4::dng_matrix_4by4 (real64 a00, real64 a01, real64 a02, real64 a03,
								  real64 a10, real64 a11, real64 a12, real64 a13,
								  real64 a20, real64 a21, real64 a22, real64 a23,
								  real64 a30, real64 a31, real64 a32, real64 a33)

	:	dng_matrix (4, 4)
	
	{
	
	fData [0] [0] = a00;
	fData [0] [1] = a01;
	fData [0] [2] = a02;
	fData [0] [3] = a03;
	
	fData [1] [0] = a10;
	fData [1] [1] = a11;
	fData [1] [2] = a12;
	fData [1] [3] = a13;
	
	fData [2] [0] = a20;
	fData [2] [1] = a21;
	fData [2] [2] = a22;
	fData [2] [3] = a23;
	
	fData [3] [0] = a30;
	fData [3] [1] = a31;
	fData [3] [2] = a32;
	fData [3] [3] = a33;
	
	}

/*****************************************************************************/

dng_matrix_4by4::dng_matrix_4by4 (real64 a00, 
								  real64 a11, 
								  real64 a22, 
								  real64 a33)

	:	dng_matrix (4, 4)
	
	{
	
	fData [0] [0] = a00;
	fData [1] [1] = a11;
	fData [2] [2] = a22;
	fData [3] [3] = a33;
	
	}

/*****************************************************************************/

dng_vector::dng_vector ()

	:	fCount (0)
	
	{
	
	}
					
/*****************************************************************************/
				
dng_vector::dng_vector (uint32 count)

	:	fCount (0)
	
	{
	
	if (count < 1 || count > kMaxColorPlanes)
		{
		
		ThrowProgramError ();
		
		}
	
	fCount = count;
	
	for (uint32 index = 0; index < fCount; index++)
		{
		
		fData [index] = 0.0;
		
		}
	
	}
					
/*****************************************************************************/
				
dng_vector::dng_vector (const dng_vector &v)

	:	fCount (v.fCount)
	
	{
	
	for (uint32 index = 0; index < fCount; index++)
		{
		
		fData [index] = v.fData [index];
		
		}
	
	}
					
/*****************************************************************************/
				
void dng_vector::Clear ()	
	{
	
	fCount = 0;
	
	}
				
/*****************************************************************************/
				
void dng_vector::SetIdentity (uint32 count)	
	{
	
	*this = dng_vector (count);
	
	for (uint32 j = 0; j < count; j++)
		{
		
		fData [j] = 1.0;
		
		}
	
	}
				
/******************************************************************************/

bool dng_vector::operator== (const dng_vector &v) const
	{
	
	if (Count () != v.Count ())
		{
		
		return false;
		
		}
	
	for (uint32 j = 0; j < Count (); j++)	
		{
		
		if (fData [j] != v.fData [j])
			{
			
			return false;
			
			}
		
		}
			
	return true;
	
	}

/******************************************************************************/

real64 dng_vector::MaxEntry () const
	{
	
	if (IsEmpty ())
		{
		
		return 0.0;
		
		}
	
	real64 m = fData [0];
	
	for (uint32 j = 0; j < Count (); j++)
		{
		
		m = Max_real64 (m, fData [j]);
		
		}
			
	return m;
	
	}
		
/******************************************************************************/

real64 dng_vector::MinEntry () const
	{
	
	if (IsEmpty ())
		{
		
		return 0.0;
		
		}
	
	real64 m = fData [0];
	
	for (uint32 j = 0; j < Count (); j++)
		{
		
		m = Min_real64 (m, fData [j]);
		
		}
			
	return m;
	
	}
		
/*****************************************************************************/

void dng_vector::Scale (real64 factor)
	{
	
	for (uint32 j = 0; j < Count (); j++)	
		{
		
		fData [j] *= factor;
		
		}
		
	}
			
/*****************************************************************************/

void dng_vector::Round (real64 factor)
	{
	
	real64 invFactor = 1.0 / factor;
	
	for (uint32 j = 0; j < Count (); j++)	
		{
		
		fData [j] = Round_int32 (fData [j] * factor) * invFactor;
		
		}
			
	}
	
/*****************************************************************************/
				
dng_matrix dng_vector::AsDiagonal () const
	{
	
	dng_matrix M (Count (), Count ());
	
	for (uint32 j = 0; j < Count (); j++)
		{
		
		M [j] [j] = fData [j];
		
		}
		
	return M;
	
	}

/*****************************************************************************/
				
dng_matrix dng_vector::AsColumn () const
	{
	
	dng_matrix M (Count (), 1);
	
	for (uint32 j = 0; j < Count (); j++)
		{
		
		M [j] [0] = fData [j];
		
		}
		
	return M;
	
	}

/*****************************************************************************/

void dng_vector::Process (dng_md5_printer_stream &printer) const
	{

	printer.Put_uint32 (fCount);

	for (uint32 j = 0; j < Count (); j++)
		{

		printer.Put_real64 (fData [j]);

		}

	}

/******************************************************************************/

dng_vector_3::dng_vector_3 ()

	:	dng_vector (3)
	
	{
	}
		
/******************************************************************************/

dng_vector_3::dng_vector_3 (const dng_vector &v)

	:	dng_vector (v)
	
	{
	
	if (Count () != 3)
		{
		
		ThrowMatrixMath ();
					 
		}
	
	}
		
/******************************************************************************/

dng_vector_3::dng_vector_3 (real64 a0,
							real64 a1,
							real64 a2)

	:	dng_vector (3)
	
	{
	
	fData [0] = a0;
	fData [1] = a1;
	fData [2] = a2;
	
	}
		
/******************************************************************************/

dng_vector_4::dng_vector_4 ()

	:	dng_vector (4)
	
	{
	}
		
/******************************************************************************/

dng_vector_4::dng_vector_4 (const dng_vector &v)

	:	dng_vector (v)
	
	{
	
	if (Count () != 4)
		{
		
		ThrowMatrixMath ();
					 
		}
	
	}
		
/******************************************************************************/

dng_vector_4::dng_vector_4 (real64 a0,
							real64 a1,
							real64 a2,
							real64 a3)

	:	dng_vector (4)
	
	{
	
	fData [0] = a0;
	fData [1] = a1;
	fData [2] = a2;
	fData [3] = a3;
	
	}
		
/******************************************************************************/

dng_matrix operator* (const dng_matrix &A,
					  const dng_matrix &B)
	{
	
	if (A.Cols () != B.Rows ())
		{
		
		ThrowMatrixMath ();
					 
		}
	
	dng_matrix C (A.Rows (), B.Cols ());
	
	for (uint32 j = 0; j < C.Rows (); j++)
		for (uint32 k = 0; k < C.Cols (); k++)
			{
			
			C [j] [k] = 0.0;
			
			for (uint32 m = 0; m < A.Cols (); m++)
				{
				
				real64 aa = A [j] [m];
				
				real64 bb = B [m] [k];
				
				C [j] [k] += aa * bb;
				
				}
			
			}
			
	return C;

	}

/******************************************************************************/

dng_vector operator* (const dng_matrix &A,
					  const dng_vector &B)
	{
	
	if (A.Cols () != B.Count ())
		{
		
		ThrowMatrixMath ();
					 
		}
	
	dng_vector C (A.Rows ());
	
	for (uint32 j = 0; j < C.Count (); j++)
		{
		
		C [j] = 0.0;
		
		for (uint32 m = 0; m < A.Cols (); m++)
			{
			
			real64 aa = A [j] [m];
			
			real64 bb = B [m];
			
			C [j] += aa * bb;
			
			}
		
		}
			
	return C;

	}

/******************************************************************************/

dng_matrix operator* (real64 scale,
					  const dng_matrix &A)
	{
	
	dng_matrix B (A);
	
	B.Scale (scale);
	
	return B;
		
	}

/******************************************************************************/

dng_vector operator* (real64 scale,
					  const dng_vector &A)
	{
	
	dng_vector B (A);
	
	B.Scale (scale);
	
	return B;
		
	}

/******************************************************************************/

dng_matrix operator+ (const dng_matrix &A,
					  const dng_matrix &B)
	{
	
	if (A.Cols () != B.Cols () ||
		A.Rows () != B.Rows ())
		{
		
		ThrowMatrixMath ();
					 
		}
	
	dng_matrix C (A);
	
	for (uint32 j = 0; j < C.Rows (); j++)
		for (uint32 k = 0; k < C.Cols (); k++)
			{
			
			C [j] [k] += B [j] [k];
						
			}
			
	return C;

	}

/******************************************************************************/

dng_vector operator- (const dng_vector &a,
					  const dng_vector &b)
	{

	uint32 count = a.Count ();
	
	DNG_REQUIRE (count == b.Count (), 
				 "Mismatch count in Dot");

	if (!count)
		{
		return dng_vector ();
		}

	dng_vector result (count);

	for (uint32 i = 0; i < count; i++)
		{
		
		result [i] = a [i] - b [i];
		
		}

	return result;
	
	}

/******************************************************************************/

const real64 kNearZero = 1.0E-10; 

/******************************************************************************/

static dng_matrix Invert2by2 (const dng_matrix &A)
	{
	
	real64 a00 = A [0] [0];
	real64 a01 = A [0] [1];
	real64 a10 = A [1] [0];
	real64 a11 = A [1] [1];
	
	real64 det = (a00 * a11 - a10 * a01);
	
	if (Abs_real64 (det) < kNearZero)
		{
		
		ThrowMatrixMath ();
					 
		}

	dng_matrix B (2, 2);
		
	B [0] [0] =	 a11 / det;
	B [0] [1] = -a01 / det;
	B [1] [0] = -a10 / det;
	B [1] [1] =	 a00 / det;
	
	return B;

	}
		
/******************************************************************************/

// Work around bug #1294195, which may be a hardware problem on a specific machine.
// This pragma turns on "improved" floating-point consistency.
#ifdef _MSC_VER
#if !defined(__clang__)
#pragma optimize ("p", on)
#endif
#endif

static dng_matrix Invert3by3 (const dng_matrix &A)
	{
	
	real64 a00 = A [0] [0];
	real64 a01 = A [0] [1];
	real64 a02 = A [0] [2];
	real64 a10 = A [1] [0];
	real64 a11 = A [1] [1];
	real64 a12 = A [1] [2];
	real64 a20 = A [2] [0];
	real64 a21 = A [2] [1];
	real64 a22 = A [2] [2];
	
	real64 temp [3] [3];

	temp [0] [0] = a11 * a22 - a21 * a12;
	temp [0] [1] = a21 * a02 - a01 * a22;
	temp [0] [2] = a01 * a12 - a11 * a02;
	temp [1] [0] = a20 * a12 - a10 * a22;
	temp [1] [1] = a00 * a22 - a20 * a02;
	temp [1] [2] = a10 * a02 - a00 * a12;
	temp [2] [0] = a10 * a21 - a20 * a11;
	temp [2] [1] = a20 * a01 - a00 * a21;
	temp [2] [2] = a00 * a11 - a10 * a01;

	real64 det = (a00 * temp [0] [0] +
				  a01 * temp [1] [0] +
				  a02 * temp [2] [0]);

	if (Abs_real64 (det) < kNearZero)
		{
		
		ThrowMatrixMath ();
					 
		}

	dng_matrix B (3, 3);
	
	for (uint32 j = 0; j < 3; j++)	
		for (uint32 k = 0; k < 3; k++)
			{
			
			B [j] [k] = temp [j] [k] / det;
			
			}
			
	return B;

	}
		
// Reset floating-point optimization. See comment above.
#ifdef _MSC_VER
#if !defined(__clang__)
#pragma optimize ("p", off)
#endif
#endif

/******************************************************************************/

static dng_matrix InvertNbyN (const dng_matrix &A)
	{
	
	uint32 i;
	uint32 j;
	uint32 k;
	
	const uint32 n = A.Rows ();

	const uint32 augmented_cols = 2 * n;

	real64 temp [kMaxColorPlanes] [kMaxColorPlanes * 2];

	memset (temp, 0, sizeof (temp));
	
	for (i = 0; i < n; i++)
		for (j = 0; j < n; j++)
			{
			
			temp [i] [j	   ] = A [i] [j];
			
			temp [i] [j + n] = (i == j ? 1.0 : 0.0);
			
			}
			
	for (i = 0; i < n; i++)
		{

		// Find row iMax with largest absolute entry in column i.

		uint32 iMax =  i;
		real64 vMax = -1.0;

		for (k = i; k < n; k++)
			{
			
			real64 v = Abs_real64 (A [k] [i]);

			if (v > vMax)
				{
				vMax = v;
				iMax = k;
				}
			
			}

		real64 alpha = temp [iMax] [i];
		
		if (Abs_real64 (alpha) < kNearZero)
			{
			
			ThrowMatrixMath ();
						 
			}
			
		// Swap rows i and iMax, column by column.

		if (i != iMax)
			{

			for (j = 0; j < augmented_cols; j++)
				{

				std::swap (temp [i	 ] [j], 
						   temp [iMax] [j]);

				}

			}

		for (j = 0; j < augmented_cols; j++)
			{
			
			temp [i] [j] /= alpha;
			
			}
			
		for (k = 0; k < n; k++)
			{
			
			if (i != k)
				{
				
				real64 beta = temp [k] [i];
				
				for (j = 0; j < augmented_cols; j++)
					{
					
					temp [k] [j] -= beta * temp [i] [j];
					
					}
				
				}
			
			}
			
		}
		
	dng_matrix B (n, n);
	
	for (i = 0; i < n; i++)
		for (j = 0; j < n; j++)
			{
			
			B [i] [j] = temp [i] [j + n];
			
			}
			
	return B;

	}
		
/******************************************************************************/

dng_matrix Transpose (const dng_matrix &A)
	{
	
	dng_matrix B (A.Cols (), A.Rows ());
	
	for (uint32 j = 0; j < B.Rows (); j++)
		for (uint32 k = 0; k < B.Cols (); k++)
			{
			
			B [j] [k] = A [k] [j];
			
			}
			
	return B;	
	
	}

/******************************************************************************/

dng_matrix Invert (const dng_matrix &A)
	{
	
	if (A.Rows () < 2 || A.Cols () < 2)
		{
		
		ThrowMatrixMath ();
						 
		}
	
	if (A.Rows () == A.Cols ())
		{
		
		if (A.Rows () == 3)
			{
			
			return Invert3by3 (A);
			
			}
			
		else if (A.Rows () == 2)
			{
			
			return Invert2by2 (A);
			
			}
			
		return InvertNbyN (A);
		
		}
		
	else
		{
		
		// Compute the pseudo inverse.
	
		dng_matrix B = Transpose (A);
	
		return Invert (B * A) * B;
		
		}
		
	}
		
/******************************************************************************/

dng_matrix Invert (const dng_matrix &A,
				   const dng_matrix &hint)
	{
	
	if (A.Rows () == A	 .Cols () ||
		A.Rows () != hint.Cols () ||
		A.Cols () != hint.Rows ())
		{
		
		return Invert (A);
		
		}
		
	else
		{
		
		// Use the specified hint matrix.
		
		return Invert (hint * A) * hint;
		
		}
	
	}
	
/*****************************************************************************/

real64 Dot (const dng_vector &a,
			const dng_vector &b)
	{
	
	DNG_REQUIRE (a.Count () == b.Count (),
				 "Cannot take dot product between vectors of different size.");
	
	// DNG_REQUIRE (a.Count () > 0,
	//			 "Cannot take dot product with an empty vector.");

	real64 sum = 0.0;

	for (uint32 j = 0; j < a.Count (); j++)
		{
		
		sum += (a [j] * b [j]);
		
		}

	return sum;
	
	}

/*****************************************************************************/

real64 Distance (const dng_vector &a,
				 const dng_vector &b)
	{
	
	dng_vector c = a - b;

	return sqrt (Dot (c, c));
	
	}

/*****************************************************************************/
