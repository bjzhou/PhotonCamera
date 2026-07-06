/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_orientation__
#define __dng_orientation__

/******************************************************************************/

#include "dng_matrix.h"
#include "dng_types.h"

/******************************************************************************/

class dng_orientation
	{
	
	private:
	
		// We internally use an orientation encoding ("Adobe") that is
		// different than the TIFF orientation encoding ("TIFF").
		
		uint32 fAdobeOrientation;

	public:

		enum
			{
			kNormal		 = 0,
			kRotate90CW	 = 1,
			kRotate180	 = 2,
			kRotate90CCW = 3,
			kMirror		 = 4,
			kMirror90CW	 = 5,
			kMirror180	 = 6,
			kMirror90CCW = 7,
			kUnknown	 = 8
			};
	
		dng_orientation ()
		
			:	fAdobeOrientation (kNormal)
			
			{
			}
			
		void SetAdobe (uint32 adobe)
			{
			fAdobeOrientation = adobe;
			}
			
		uint32 GetAdobe () const
			{
			return fAdobeOrientation;
			}
			
		void SetTIFF (uint32 tiff);
		
		uint32 GetTIFF () const;
		
		static dng_orientation AdobeToDNG (uint32 adobe)
			{
			
			dng_orientation result;
			
			result.SetAdobe (adobe);
			
			return result;
			
			}
		
		static dng_orientation TIFFtoDNG (uint32 tiff)
			{
			
			dng_orientation result;
			
			result.SetTIFF (tiff);
			
			return result;
			
			}
		
		static dng_orientation Normal ()
			{
			return AdobeToDNG (kNormal);
			}
			
		static dng_orientation Rotate90CW ()
			{
			return AdobeToDNG (kRotate90CW);
			}
			
		static dng_orientation Rotate180 ()
			{
			return AdobeToDNG (kRotate180);
			}
			
		static dng_orientation Rotate90CCW ()
			{
			return AdobeToDNG (kRotate90CCW);
			}
			
		static dng_orientation Mirror ()
			{
			return AdobeToDNG (kMirror);
			}
			
		static dng_orientation Mirror90CW ()
			{
			return AdobeToDNG (kMirror90CW);
			}
			
		static dng_orientation Mirror180 ()
			{
			return AdobeToDNG (kMirror180);
			}
			
		static dng_orientation Mirror90CCW ()
			{
			return AdobeToDNG (kMirror90CCW);
			}
			
		static dng_orientation Unknown ()
			{
			return AdobeToDNG (kUnknown);
			}
			
		bool IsValid () const
			{
			return fAdobeOrientation < kUnknown;
			}
			
		bool NotValid () const
			{
			return !IsValid ();
			}
			
		bool FlipD () const;
		
		bool FlipH () const;
		
		bool FlipV () const;
		
		bool IsMirrored () const;
		
		bool operator== (const dng_orientation &b) const
			{
			return fAdobeOrientation == b.fAdobeOrientation;
			}
			
		bool operator!= (const dng_orientation &b) const
			{
			return !(*this == b);
			}
		
		dng_orientation operator- () const;
		
		// Be careful when composing orientations using the + and - operators.
		// In mathematics, the + operator is commutative, namely,
		//
		//	 a + b == b + a
		//
		// An orientation transform represents a linear transform, so
		// composing two orientation transforms amounts to a matrix
		// multiplication, which is associative but NOT commutative.
		//
		// For example, suppose we know that A, B, and C are dng_orientation
		// objects such that
		//
		//	 C = A + B
		//
		// That is, C is the orientation obtained by applying A then B. If
		// we're given A and C and want to calculate B, the correct expression
		// is:
		//
		//	 B = -A + C		// correct
		//
		// and not
		//
		//	 B =  C - A		// incorrect
		//
		// On first glance, these appear to be the same expressions but they
		// are not.
		
		dng_orientation operator+ (const dng_orientation &b) const;
		
		dng_orientation operator- (const dng_orientation &b) const
			{
			return (*this) + (-b);
			}
			
		void operator+= (const dng_orientation &b)
			{
			*this = *this + b;
			}
		
		void operator-= (const dng_orientation &b)
			{
			*this = *this - b;
			}

		// If horizontalFirstRow is true, then the x (horizontal h) component
		// of the transform will be in the first row of the resulting matrix,
		// and the y (vertical v) component will be in the second row.
		// 
		// If horizontalFirstRow is false, then the y (vertical v) component
		// of the transform will be in the first row of the resulting matrix,
		// and the x (horizontal h) component will be in the second row.

		bool CalcForwardMatrix3by3 (dng_matrix &matrix,
									bool horizontalFirstRow) const;
		
		bool CalcForwardMatrix4by4 (dng_matrix &matrix,
									bool horizontalFirstRow) const;
		
	};

/******************************************************************************/

#endif
	
/******************************************************************************/
