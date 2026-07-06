/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_rect__
#define __dng_rect__

/*****************************************************************************/

#include "dng_exceptions.h"
#include "dng_point.h"
#include "dng_safe_arithmetic.h"
#include "dng_types.h"
#include "dng_utils.h"

#include <cstdint>

/*****************************************************************************/

#define DNG_RECT_FMT(x) (x).t, (x).l, (x).b, (x).r

/*****************************************************************************/

class dng_rect
	{
	
	public:
	
		int32 t;
		int32 l;
		int32 b;
		int32 r;
		
	public:
		
		dng_rect ()
			:	t (0)
			,	l (0)
			,	b (0)
			,	r (0)
			{
			}
			
		// Constructs a dng_rect from the top-left and bottom-right corner.
		// Throws an exception if the resulting height or width are too large
		// to be represented as an int32. The intent of this is to protect
		// code that may be computing the height or width directly from the
		// member variables (instead of going through H() or W()).

		dng_rect (int32 tt, int32 ll, int32 bb, int32 rr)
			:	t (tt)
			,	l (ll)
			,	b (bb)
			,	r (rr)
			{

			int32 dummy;

			if (!SafeInt32Sub (r, l, &dummy) ||
				!SafeInt32Sub (b, t, &dummy))
				{
				ThrowProgramError ("Overflow in dng_rect constructor");
				}

			}
			
		dng_rect (uint32 h, uint32 w)
			:	t (0)
			,	l (0)
			{

			if (!ConvertUint32ToInt32 (h, &b) ||
				!ConvertUint32ToInt32 (w, &r))
				{
				ThrowProgramError ("Overflow in dng_rect constructor");
				}

			}
			
		dng_rect (const dng_point &size)
			:	t (0)
			,	l (0)
			,	b (size.v)
			,	r (size.h)
			{
			}
		
		void Clear ()
			{
			*this = dng_rect ();
			}
		
		bool operator== (const dng_rect &rect) const;
		
		bool operator!= (const dng_rect &rect) const
			{
			return !(*this == rect);
			}
			
		bool IsZero () const;
			
		bool NotZero () const
			{
			return !IsZero ();
			}
			
		bool IsEmpty () const
			{
			return (t >= b) || (l >= r);
			}
			
		bool NotEmpty () const
			{
			return !IsEmpty ();
			}

		bool Contains (const dng_rect &rect) const
			{
			return (rect.IsEmpty () || (t <= rect.t && l <= rect.l &&
										b >= rect.b && r >= rect.r));
			}

		bool DoesNotContain (const dng_rect &rect) const
			{
			return !Contains (rect);
			}

		bool Contains (const dng_point &pt) const
			{
			return (t <= pt.v && l <= pt.h &&
					b >	 pt.v && r >  pt.h);
			}

		bool DoesNotContain (const dng_point &pt) const
			{
			return !Contains (pt);
			}

		// Returns the width of the rectangle, or 0 if r is smaller than l.
		// Throws an exception if the width is too large to be represented as
		// a _signed_ int32 (even if it would fit in a uint32). This is
		// consciously conservative -- there are existing uses of W() where
		// the result is converted to an int32 without an overflow check, and
		// we want to make sure no overflow can occur in such cases. We
		// provide this check in addition to the check performed in the
		// "two-corners" constructor to protect client code that produes a
		// dng_rect with excessive size by initializing or modifying the
		// member variables directly.

		uint32 W () const
			{

			if (r >= l)
				{

				int32 width;

				if (!SafeInt32Sub (r, l, &width))
					{
					ThrowProgramError ("Overflow computing rectangle width");
					}

				return static_cast<uint32> (width);

				}

			else
				{
				return 0;
				}

			}
	
		// Returns the height of the rectangle, or 0 if b is smaller than t.
		// Throws an exception if the height is too large to be represented as
		// a _signed_ int32 (see W() for rationale).

		uint32 H () const
			{

			if (b >= t)
				{

				int32 height;

				if (!SafeInt32Sub (b, t, &height))
					{
					ThrowProgramError ("Overflow computing rectangle height");
					}

				return static_cast<uint32> (height);

				}

			else
				{
				return 0;
				}

			}
		
		dng_point TL () const
			{
			return dng_point (t, l);
			}
			
		dng_point TR () const
			{
			return dng_point (t, r);
			}
			
		dng_point BL () const
			{
			return dng_point (b, l);
			}
			
		dng_point BR () const
			{
			return dng_point (b, r);
			}
			
		dng_point Size () const
			{
			return dng_point ((int32) H (), (int32) W ());
			}

		uint32 LongSide () const
			{
			return Max_uint32 (W (), H ());
			}
		
		uint32 ShortSide () const
			{
			return Min_uint32 (W (), H ());
			}
		
		real64 Diagonal () const
			{
			return hypot ((real64) W (),
						  (real64) H ());
			}
	
	};

/*****************************************************************************/

class dng_rect_real64
	{
	
	public:
	
		real64 t;
		real64 l;
		real64 b;
		real64 r;
		
	public:
		
		dng_rect_real64 ()
			:	t (0.0)
			,	l (0.0)
			,	b (0.0)
			,	r (0.0)
			{
			}
			
		dng_rect_real64 (real64 tt, real64 ll, real64 bb, real64 rr)
			:	t (tt)
			,	l (ll)
			,	b (bb)
			,	r (rr)
			{
			}
			
		dng_rect_real64 (real64 h, real64 w)
			:	t (0)
			,	l (0)
			,	b (h)
			,	r (w)
			{
			}
			
		dng_rect_real64 (const dng_point_real64 &size)
			:	t (0)
			,	l (0)
			,	b (size.v)
			,	r (size.h)
			{
			}
			
		dng_rect_real64 (const dng_point_real64 &pt1,
						 const dng_point_real64 &pt2)
			:	t (Min_real64 (pt1.v, pt2.v))
			,	l (Min_real64 (pt1.h, pt2.h))
			,	b (Max_real64 (pt1.v, pt2.v))
			,	r (Max_real64 (pt1.h, pt2.h))
			{
			}
			
		dng_rect_real64 (const dng_rect &rect)
			:	t ((real64) rect.t)
			,	l ((real64) rect.l)
			,	b ((real64) rect.b)
			,	r ((real64) rect.r)
			{
			}
		
		void Clear ()
			{
			*this = dng_point_real64 ();
			}
		
		bool operator== (const dng_rect_real64 &rect) const;
		
		bool operator!= (const dng_rect_real64 &rect) const
			{
			return !(*this == rect);
			}
			
		bool IsZero () const;
			
		bool NotZero () const
			{
			return !IsZero ();
			}
			
		bool IsEmpty () const
			{
			return (t >= b) || (l >= r);
			}
			
		bool NotEmpty () const
			{
			return !IsEmpty ();
			}

		bool Contains (const dng_rect_real64 &rect) const
			{
			return (rect.IsEmpty () || (t <= rect.t && l <= rect.l &&
										b >= rect.b && r >= rect.r));
			}

		bool Contains (const dng_point_real64 &pt) const
			{
			return (t <= pt.v && l <= pt.h &&
					b >	 pt.v && r >  pt.h);
			}

		real64 W () const
			{
			return Max_real64 (r - l, 0.0);
			}
	
		real64 H () const
			{
			return Max_real64 (b - t, 0.0);
			}
		
		dng_point_real64 TL () const
			{
			return dng_point_real64 (t, l);
			}
			
		dng_point_real64 TR () const
			{
			return dng_point_real64 (t, r);
			}
			
		dng_point_real64 BL () const
			{
			return dng_point_real64 (b, l);
			}
			
		dng_point_real64 BR () const
			{
			return dng_point_real64 (b, r);
			}
			
		dng_point_real64 Size () const
			{
			return dng_point_real64 (H (), W ());
			}
			
		dng_rect Round () const
			{
			return dng_rect (Round_int32 (t),
							 Round_int32 (l),
							 Round_int32 (b),
							 Round_int32 (r));
			}
	
		real64 LongSide () const
			{
			return Max_real64 (W (), H ());
			}
		
		real64 ShortSide () const
			{
			return Min_real64 (W (), H ());
			}
		
		real64 Diagonal () const
			{
			return hypot (W (), H ());
			}
		
		dng_point_real64 Center () const
			{
			return dng_point_real64 ((t + b) * 0.5,
									 (l + r) * 0.5);
			}
	
	};

/*****************************************************************************/

dng_rect operator& (const dng_rect &a,
					const dng_rect &b);

dng_rect operator| (const dng_rect &a,
					const dng_rect &b);

/*****************************************************************************/

dng_rect_real64 operator& (const dng_rect_real64 &a,
						   const dng_rect_real64 &b);

dng_rect_real64 operator| (const dng_rect_real64 &a,
						   const dng_rect_real64 &b);

/*****************************************************************************/

inline dng_rect operator+ (const dng_rect &a,
						   const dng_point &b)
	{
	
	return dng_rect (SafeInt32Add (a.t, b.v),
					 SafeInt32Add (a.l, b.h),
					 SafeInt32Add (a.b, b.v),
					 SafeInt32Add (a.r, b.h));
	
	}

/*****************************************************************************/

inline dng_rect_real64 operator+ (const dng_rect_real64 &a,
								  const dng_point_real64 &b)
	{
	
	return dng_rect_real64 (a.t + b.v,
							a.l + b.h,
							a.b + b.v,
							a.r + b.h);
	
	}

/*****************************************************************************/

inline dng_rect operator- (const dng_rect &a,
						   const dng_point &b)
	{
	
	return dng_rect (SafeInt32Sub (a.t, b.v),
					 SafeInt32Sub (a.l, b.h),
					 SafeInt32Sub (a.b, b.v),
					 SafeInt32Sub (a.r, b.h));
	
	}

/*****************************************************************************/

inline dng_rect_real64 operator- (const dng_rect_real64 &a,
								  const dng_point_real64 &b)
	{
	
	return dng_rect_real64 (a.t - b.v,
							a.l - b.h,
							a.b - b.v,
							a.r - b.h);
	
	}

/*****************************************************************************/

inline dng_rect Transpose (const dng_rect &a)
	{
	
	return dng_rect (a.l, a.t, a.r, a.b);
	
	}

/*****************************************************************************/

inline dng_rect_real64 Transpose (const dng_rect_real64 &a)
	{
	
	return dng_rect_real64 (a.l, a.t, a.r, a.b);
	
	}

/*****************************************************************************/

inline void HalfRect (dng_rect &rect)
	{

	rect.r = SafeInt32Add (rect.l, (int32) (rect.W () >> 1));
	rect.b = SafeInt32Add (rect.t, (int32) (rect.H () >> 1));

	}

/*****************************************************************************/

inline void DoubleRect (dng_rect &rect)
	{

	int32 w = (int32) rect.W ();
	int32 h = (int32) rect.H ();

	rect.r = SafeInt32Add (SafeInt32Add (rect.l, w), w);
	rect.b = SafeInt32Add (SafeInt32Add (rect.t, h), h);

	}

/*****************************************************************************/

inline void InnerPadRect (dng_rect &rect,
						  int32 pad)
	{

	rect.l = SafeInt32Add (rect.l, pad);
	rect.r = SafeInt32Sub (rect.r, pad);
	rect.t = SafeInt32Add (rect.t, pad);
	rect.b = SafeInt32Sub (rect.b, pad);

	}

/*****************************************************************************/

inline void OuterPadRect (dng_rect &rect,
						  int32 pad)
	{

	if (pad == INT32_MIN)
		{
		ThrowOverflow ("pad");
		}

	InnerPadRect (rect, -pad);

	}

/*****************************************************************************/

inline void InnerPadRectH (dng_rect &rect,
						   int32 pad)
	{

	rect.l = SafeInt32Add (rect.l, pad);
	rect.r = SafeInt32Sub (rect.r, pad);

	}

/*****************************************************************************/

inline void InnerPadRectV (dng_rect &rect,
						   int32 pad)
	{

	rect.t = SafeInt32Add (rect.t, pad);
	rect.b = SafeInt32Sub (rect.b, pad);

	}

/*****************************************************************************/

inline dng_rect MakeHalfRect (const dng_rect &rect)
	{
	
	dng_rect out = rect;

	HalfRect (out);

	return out;
	
	}

/*****************************************************************************/

inline dng_rect MakeDoubleRect (const dng_rect &rect)
	{
	
	dng_rect out = rect;

	DoubleRect (out);

	return out;
	
	}

/*****************************************************************************/

inline dng_rect MakeInnerPadRect (const dng_rect &rect,
								  int32 pad)
	{
	
	dng_rect out = rect;

	InnerPadRect (out, pad);

	return out;
	
	}

/*****************************************************************************/

inline dng_rect_real64 MakeInnerPadRect (const dng_rect_real64 &rect,
										 const real64 pad)
	{
	
	dng_rect_real64 result = rect;

	result.t += pad;
	result.l += pad;
	result.b -= pad;
	result.r -= pad;

	return result;
	
	}

/*****************************************************************************/

inline dng_rect MakeOuterPadRect (const dng_rect &rect,
								  int32 pad)
	{
	
	dng_rect out = rect;

	OuterPadRect (out, pad);

	return out;
	
	}

/*****************************************************************************/

inline dng_rect_real64 MakeOuterPadRect (const dng_rect_real64 &rect,
										 const real64 pad)
	{

	dng_rect_real64 result = rect;
	
	result.t -= pad;
	result.l -= pad;
	result.b += pad;
	result.r += pad;

	return result;
	
	}

/*****************************************************************************/

inline dng_rect_real64 Lerp (const dng_rect_real64 &a,
							 const dng_rect_real64 &b,
							 const real64 t)
	{
	
	return dng_rect_real64 (Lerp_real64 (a.t, b.t, t),
							Lerp_real64 (a.l, b.l, t),
							Lerp_real64 (a.b, b.b, t),
							Lerp_real64 (a.r, b.r, t));
	
	}

/*****************************************************************************/

dng_rect_real64 Bounds (const dng_point_real64 &a,
						const dng_point_real64 &b,
						const dng_point_real64 &c,
						const dng_point_real64 &d);

/*****************************************************************************/

// An oriented bounding box (a dng_rect_real64 with rotation).

class dng_oriented_bounding_box
	{
	
	public:

		// The center of the OBB.

		dng_point_real64 fCenter;

		// The two normal vectors. These vectors should be perpendicular to
		// each other. The length of the vector is half the edge length.

		dng_point_real64 fVec1;
		dng_point_real64 fVec2;

	public:

		// Create an empty, invalid OBB.

		dng_oriented_bounding_box ()
			{
			}

		// Create an OBB from an axis-aligned bounding box (AABB).

		dng_oriented_bounding_box (const dng_rect_real64 &rect)
			{

			fCenter = rect.Center ();

			fVec1 = (0.5 * (rect.TR () + rect.BR ())) - fCenter;
			fVec2 = (0.5 * (rect.BL () + rect.BR ())) - fCenter;

			}

		// Create an OBB from four corners.

		dng_oriented_bounding_box (const dng_point_real64 &tl,
								   const dng_point_real64 &tr,
								   const dng_point_real64 &bl,
								   const dng_point_real64 &br)
			{

			fCenter = 0.25 * (tl + tr + bl + br);

			fVec1 = (0.5 * (tr + br)) - fCenter;
			fVec2 = (0.5 * (bl + br)) - fCenter;

			}

		// Calculate four corners from this OBB.

		void CalcCorners (dng_point_real64 &tl,
						  dng_point_real64 &tr,
						  dng_point_real64 &bl,
						  dng_point_real64 &br) const
			{

			tl = fCenter - fVec1 - fVec2;
			tr = fCenter + fVec1 - fVec2;

			bl = fCenter - fVec1 + fVec2;
			br = fCenter + fVec1 + fVec2;

			}
		
	};

/*****************************************************************************/

// Returns true iff the two oriented bounding boxes intersect.

bool Intersect (const dng_oriented_bounding_box &aBox,
				const dng_oriented_bounding_box &bBox);

/*****************************************************************************/

#endif
	
/*****************************************************************************/
