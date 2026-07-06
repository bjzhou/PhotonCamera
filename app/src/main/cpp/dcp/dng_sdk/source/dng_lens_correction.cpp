/*****************************************************************************/
// Copyright 2008-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include <cfloat>
#include <limits.h>

#include "dng_1d_table.h"
#include "dng_assertions.h"
#include "dng_bottlenecks.h"
#include "dng_exceptions.h"
#include "dng_filter_task.h"
#include "dng_globals.h"
#include "dng_host.h"
#include "dng_image.h"
#include "dng_lens_correction.h"
#include "dng_negative.h"
#include "dng_safe_arithmetic.h"
#include "dng_sdk_limits.h"
#include "dng_tag_values.h"

/*****************************************************************************/

dng_warp_params::dng_warp_params ()

	:	fPlanes (1)
	,	fCenter (0.5, 0.5)

	{

	}

/*****************************************************************************/

dng_warp_params::dng_warp_params (uint32 planes,
								  const dng_point_real64 &center)

	:	fPlanes (planes)
	,	fCenter (center)

	{
	
	DNG_ASSERT (planes >= 1,			   "Too few planes." );
	DNG_ASSERT (planes <= kMaxColorPlanes, "Too many planes.");

	DNG_ASSERT (fCenter.h >= 0.0 && fCenter.h <= 1.0, 
				"Center (horizontal) out of range.");

	DNG_ASSERT (fCenter.v >= 0.0 && fCenter.v <= 1.0, 
				"Center (vertical) out of range.");

	}

/*****************************************************************************/

dng_warp_params::~dng_warp_params ()
	{
	
	}

/*****************************************************************************/

bool dng_warp_params::IsNOPAll () const
	{

	return IsRadNOPAll () && 
		   IsTanNOPAll ();
	
	}

/*****************************************************************************/

bool dng_warp_params::IsNOP (uint32 plane) const
	{

	return IsRadNOP (plane) &&
		   IsTanNOP (plane);

	}

/*****************************************************************************/

bool dng_warp_params::IsRadNOPAll () const
	{
	
	for (uint32 plane = 0; plane < fPlanes; plane++)
		{
		
		if (!IsRadNOP (plane))
			{
			return false;
			}
		
		}

	return true;
	
	}

/*****************************************************************************/

bool dng_warp_params::IsRadNOP (uint32 /* plane */) const
	{

	return false;

	}

/*****************************************************************************/

bool dng_warp_params::IsTanNOPAll () const
	{
	
	for (uint32 plane = 0; plane < fPlanes; plane++)
		{
		
		if (!IsTanNOP (plane))
			{
			return false;
			}
		
		}

	return true;
	
	}

/*****************************************************************************/

bool dng_warp_params::IsTanNOP (uint32 /* plane */) const
	{

	return false;

	}

/*****************************************************************************/

bool dng_warp_params::IsValid () const
	{

	if (fPlanes < 1 || fPlanes > kMaxColorPlanes)
		{

		return false;

		}

	if (!std::isfinite (fCenter.h) ||
		!std::isfinite (fCenter.v) ||
		fCenter.h < 0.0 ||
		fCenter.h > 1.0 ||
		fCenter.v < 0.0 ||
		fCenter.v > 1.0)
		{

		return false;

		}

	return true;

	}

/*****************************************************************************/

bool dng_warp_params::IsValidForNegative (const dng_negative &negative) const
	{

	if (!IsValid ())
		{
		return false;
		}
	
	if ((fPlanes != 1) &&
		(fPlanes != negative.ColorChannels ()))
		{
		return false;
		}

	return true;

	}

/*****************************************************************************/

real64 dng_warp_params::EvaluateInverse (uint32 plane,
										 real64 y) const
	{
	
	const uint32 kMaxIterations = 30;
	const real64 kNearZero		= 1.0e-10;
	
	real64 x0 = 0.0;
	real64 y0 = Evaluate (plane,
						  x0);
	
	real64 x1 = 1.0;
	real64 y1 = Evaluate (plane,
						  x1);
	
	for (uint32 iteration = 0; iteration < kMaxIterations; iteration++)		
		{
		
		if (Abs_real64 (y1 - y0) < kNearZero)
			{
			break;
			}
		
		const real64 x2 = Pin_real64 (0.0, 
									  x1 + (y - y1) * (x1 - x0) / (y1 - y0),
									  1.0);
		
		const real64 y2 = Evaluate (plane,
									x2);
		
		x0 = x1;
		y0 = y1;
		
		x1 = x2;
		y1 = y2;
		
		}
	
	return x1;
	
	}

/*****************************************************************************/

dng_point_real64 dng_warp_params::EvaluateTangential2 (uint32 plane,
													   const dng_point_real64 &diff) const
	{
	
	const real64 dvdv = diff.v * diff.v;
	const real64 dhdh = diff.h * diff.h;

	const real64 rr = dvdv + dhdh;

	dng_point_real64 diffSqr (dvdv,
							  dhdh);

	return EvaluateTangential (plane,
							   rr,
							   diff,
							   diffSqr);
	
	}

/*****************************************************************************/
		
dng_point_real64 dng_warp_params::EvaluateTangential3 (uint32 plane,
													   real64 r2,
													   const dng_point_real64 &diff) const
	{
	
	dng_point_real64 diffSqr (diff.v * diff.v,
							  diff.h * diff.h);

	return EvaluateTangential (plane,
							   r2,
							   diff,
							   diffSqr);
	
	}

/*****************************************************************************/

void dng_warp_params::Dump () const
	{

	#if qDNGValidate

	printf ("Planes: %u\n", (unsigned) fPlanes);

	printf ("  Optical center:\n"
			"\th = %.6lf\n"
			"\tv = %.6lf\n",
			fCenter.h,
			fCenter.v);

	#endif
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_warp_params_radial::dng_warp_params_radial ()
	{

	SetNOP ();
	
	}

/*****************************************************************************/

bool dng_warp_params_radial::IsValid (uint32 plane) const
	{

	DNG_REQUIRE (plane < kMaxColorPlanes, "Bad plane");

	const real64 minValidRadius = fValidRange [plane] [0];
	const real64 maxValidRadius = fValidRange [plane] [1];

	if (!(0.0			 <= minValidRadius &&
		  minValidRadius <	maxValidRadius &&
		  maxValidRadius <= 1.0))
		{
		
		return false;
		
		}
	
	return true;
	
	}

/*****************************************************************************/

bool dng_warp_params_radial::IsNOP (uint32 plane) const
	{

	DNG_REQUIRE (plane < kMaxColorPlanes, "Bad plane");

	const real64 *data = fData [plane];
	
	if (data [0] != 1.0)
		{
		return false;
		}

	for (uint32 i = 1; i < kMaxTerms; i++)
		{
		
		if (data [i] != 0.0)
			{
			return false;
			}
		
		}

	return true;
	
	}

/*****************************************************************************/

void dng_warp_params_radial::SetNOP ()
	{

	for (uint32 i = 0; i < kMaxColorPlanes; i++)
		{
		SetNOP (i);
		}
	
	}

/*****************************************************************************/

void dng_warp_params_radial::SetNOP (uint32 plane)
	{

	DNG_REQUIRE (plane < kMaxColorPlanes, "Bad plane");

	real64 *data = fData [plane];
	
	data [0] = 1.0;

	for (uint32 i = 1; i < kMaxTerms; i++)
		{
		
		data [i] = 0.0;
		
		}

	fValidRange [plane] [0] = 0.0;
	fValidRange [plane] [1] = 1.0;
	
	}

/*****************************************************************************/

void dng_warp_params_radial::SetWarpRectilinear_1_3 (const uint32 plane,
													 const dng_vector &params)
	{

	DNG_REQUIRE (plane < kMaxColorPlanes, "Bad plane");

	real64 *dst = fData [plane];
	
	dst [0] = params [0];					 // offset
	dst [1] = 0.0;
	dst [2] = params [1];					 // r^2
	dst [3] = 0.0;
	dst [4] = params [2];					 // r^4
	dst [5] = 0.0;
	dst [6] = params [3];					 // r^6

	// Also clear the higher-order terms.
	
	for (uint32 i = 7; i < dng_warp_params_radial::kMaxTerms; i++)
		{
		dst [i] = 0.0;
		}

	// Don't use the reciprocal model.

	fUseReciprocal = false;

	// Set the valid range to wide-open.

	fValidRange [plane] [0] = 0.0;
	fValidRange [plane] [1] = 1.0;
	
	}

/*****************************************************************************/

bool dng_warp_params_radial::CompatibleWithWarpRectilinear_1_3 (const uint32 plane) const
	{

	// DNG 1.3 model doesn't support reciprocal mode.
	
	if (fUseReciprocal)
		{
		return false;
		}

	DNG_REQUIRE (plane < kMaxColorPlanes, "Bad plane");

	// Check valid range.

	if (fValidRange [plane] [0] != 0.0 ||
		fValidRange [plane] [1] != 1.0)
		{
		return false;
		}

	// Check low-order terms.

	const real64 *data = fData [plane];

	if (data [1] != 0.0 ||					 // r
		data [3] != 0.0 ||					 // r^3
		data [5] != 0.0)					 // r^5
		{
		return false;
		}

	// Also check higher-order terms.
		
	for (uint32 i = 7; i < dng_warp_params_radial::kMaxTerms; i++)
		{

		if (data [i] != 0.0)
			{
			return false;
			}

		}
	
	return true;	
	
	}

/*****************************************************************************/

real64 dng_warp_params_radial::Evaluate (uint32 plane,
										 real64 r) const
	{
	
	return r * EvaluateRatio (plane, r * r);
	
	}

/*****************************************************************************/

real64 dng_warp_params_radial::EvaluateRatio (uint32 plane,
											  real64 r2) const
	{

	DNG_REQUIRE (plane < kMaxColorPlanes, "Bad plane");

	const real64 minValidRadius = fValidRange [plane] [0];
	const real64 maxValidRadius = fValidRange [plane] [1];
	
	const real64 minValidRadiusSqr = minValidRadius * minValidRadius;
	const real64 maxValidRadiusSqr = maxValidRadius * maxValidRadius;
	
	const real64 *data = fData [plane];
	
	// Limit r2 to valid range.

	r2 = Pin_real64 (minValidRadiusSqr,
					 r2,
					 maxValidRadiusSqr);

	const real64 r = sqrt (r2);

	real64 poly = data [kMaxTerms - 1];

	for (int32 i = ((int32) kMaxTerms) - 2; i >= 0; i--)
		{
		
		poly = (poly * r) + data [i];
		
		}

	return fUseReciprocal ? (1.0 / poly) : poly;
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_warp_params_rectilinear::dng_warp_params_rectilinear ()

	:	dng_warp_params ()

	{

	for (uint32 plane = 0; plane < kMaxColorPlanes; plane++)
		{

		fTanParams [plane] = dng_vector (2);

		}
	
	}

/*****************************************************************************/

dng_warp_params_rectilinear::dng_warp_params_rectilinear (uint32 planes,
														  const dng_warp_params_radial &radParams,
														  const dng_vector tanParams [],
														  const dng_point_real64 &center)

	:	dng_warp_params (planes, 
						 center)

	,	fRadParams (radParams)

	{

	for (uint32 i = 0; i < fPlanes; i++)
		{
		fTanParams [i] = tanParams [i];
		}
	
	}

/*****************************************************************************/

dng_warp_params_rectilinear::~dng_warp_params_rectilinear ()
	{
	
	}

/*****************************************************************************/

bool dng_warp_params_rectilinear::IsRadNOP (uint32 plane) const
	{

	DNG_REQUIRE (plane < fPlanes, "plane out of range.");

	return fRadParams.IsNOP (plane);

	}

/*****************************************************************************/

bool dng_warp_params_rectilinear::IsTanNOP (uint32 plane) const
	{
	
	DNG_REQUIRE (plane < fPlanes, "plane out of range.");

	const dng_vector &t = fTanParams [plane];

	return (t [0] == 0.0 &&
			t [1] == 0.0);
	
	}

/*****************************************************************************/

bool dng_warp_params_rectilinear::IsValid () const
	{

	for (uint32 plane = 0; plane < fPlanes; plane++)
		{

		if (!fRadParams.IsValid (plane))
			{
			return false;
			}

		if (fTanParams [plane].Count () < 2)
			{
			return false;
			}
		
		}

	return dng_warp_params::IsValid ();
	
	}

/*****************************************************************************/

void dng_warp_params_rectilinear::PropagateToAllPlanes (uint32 totalPlanes)
	{

	if (totalPlanes > kMaxColorPlanes)
		{
		ThrowBadFormat ();
		}

	for (uint32 plane = fPlanes; plane < totalPlanes; plane++)
		{

		memcpy (fRadParams.fData [plane],
				fRadParams.fData [0],
				sizeof (fRadParams.fData [0]));

		memcpy (fRadParams.fValidRange [plane],
				fRadParams.fValidRange [0],
				sizeof (fRadParams.fValidRange [0]));

		fTanParams [plane] = fTanParams [0];

		}

	fPlanes = totalPlanes;

	}

/*****************************************************************************/

real64 dng_warp_params_rectilinear::Evaluate (uint32 plane,
											  real64 x) const
	{

	return fRadParams.Evaluate (plane, x);

	}

/*****************************************************************************/

real64 dng_warp_params_rectilinear::EvaluateRatio (uint32 plane,
												   real64 r2) const
	{

	return fRadParams.EvaluateRatio (plane, r2);

	}
		
/*****************************************************************************/

dng_point_real64 dng_warp_params_rectilinear::EvaluateTangential (uint32 plane,
																  real64 r2,
																  const dng_point_real64 &diff,
																  const dng_point_real64 &diff2) const
	{
	
	const real64 kt0 = fTanParams [plane][0];
	const real64 kt1 = fTanParams [plane][1];

	const real64 dh = diff.h;
	const real64 dv = diff.v;

	const real64 dhdh = diff2.h;
	const real64 dvdv = diff2.v;
	
	return dng_point_real64 (kt0 * (r2 + 2.0 * dvdv) + (2.0 * kt1 * dh * dv),  // v
							 kt1 * (r2 + 2.0 * dhdh) + (2.0 * kt0 * dh * dv)); // h
	
	}

/*****************************************************************************/

real64 dng_warp_params_rectilinear::MaxSrcRadiusGap (real64 maxDstGap) const
	{

	real64 maxSrcGap = 0.0;

	for (uint32 plane = 0; plane < fPlanes; plane++)
		{

		// Find minimum and maximum ratio by discretizing over r2.

		const int32 kSamples = 65000;

		real64 norm = 1.0 / (real64) (kSamples - 1);

		real64 minRatio = 1.0;
		real64 maxRatio = 1.0;

		for (int32 i = 1; i < kSamples; i++)
			{

			real64 r2 = i * norm;

			real64 s = EvaluateRatio (plane, r2);

			minRatio = Min_real64 (s, minRatio);
			maxRatio = Max_real64 (s, maxRatio);

			}

		real64 maxGapScaleFactor = maxRatio / minRatio;

		real64 srcGap = maxGapScaleFactor * maxDstGap;

		maxSrcGap = Max_real64 (maxSrcGap, srcGap);

		}

	return maxSrcGap;

	}

/*****************************************************************************/

dng_point_real64 dng_warp_params_rectilinear::MaxSrcTanGap (dng_point_real64 minDst,
															dng_point_real64 maxDst) const
	{
	
	const real64 v [] = { minDst.v, maxDst.v, 0.0 };
	const real64 h [] = { minDst.h, maxDst.h, 0.0 };

	dng_point_real64 maxGap;

	for (uint32 plane = 0; plane < fPlanes; plane++)
		{

		real64 hMin = +FLT_MAX;
		real64 hMax = -FLT_MAX;

		real64 vMin = +FLT_MAX;
		real64 vMax = -FLT_MAX;

		for (uint32 i = 0; i < 3; i++)
			{
		
			for (uint32 j = 0; j < 3; j++)
				{
			
				dng_point_real64 dstDiff (v [i], 
										  h [j]);

				dng_point_real64 srcDiff = EvaluateTangential2 (plane,
																dstDiff);

				hMin = Min_real64 (hMin, srcDiff.h);
				hMax = Max_real64 (hMax, srcDiff.h);
			
				vMin = Min_real64 (vMin, srcDiff.v);
				vMax = Max_real64 (vMax, srcDiff.v);
			
				}
		
			}

		const real64 hGap = hMax - hMin;
		const real64 vGap = vMax - vMin;

		maxGap.h = Max_real64 (maxGap.h, hGap);
		maxGap.v = Max_real64 (maxGap.v, vGap);

		}

	return maxGap;
	
	}
		
/*****************************************************************************/

real64 dng_warp_params_rectilinear::SafeMinRatio () const
	{
	
	return 0.5;
	
	}

/*****************************************************************************/

real64 dng_warp_params_rectilinear::SafeMaxRatio () const
	{
	
	return 2.0;	
	
	}

/*****************************************************************************/

void dng_warp_params_rectilinear::Dump () const
	{
	
	#if qDNGValidate

	dng_warp_params::Dump ();

	for (uint32 plane = 0; plane < fPlanes; plane++)
		{

		printf ("  Plane %u:\n", (unsigned) plane);

		printf ("\tRadial params:		");

		for (uint32 i = 0; i < dng_warp_params_radial::kMaxTerms; i++)
			{

			bool isLast = (i + 1 == dng_warp_params_radial::kMaxTerms);
			
			printf ("%.6lf%s",
					fRadParams.fData [plane] [i],
					isLast ? "\n" : ", ");
			
			}

		printf ("\tTangential params: %.6lf, %.6lf\n",
				fTanParams [plane][0],
				fTanParams [plane][1]);

		printf ("\tmin_valid_radius: %g\n",
				fRadParams.fValidRange [plane] [0]);

		printf ("\tmax_valid_radius: %g\n",
				fRadParams.fValidRange [plane] [1]);

		}

	printf ("\tUse radial reciprocal? %s\n",
			fRadParams.fUseReciprocal ? "yes" : "no");

	#endif	// qDNGValidate
	
	}

/*****************************************************************************/

dng_warp_params_fisheye::dng_warp_params_fisheye ()

	:	dng_warp_params ()

	{

	for (uint32 plane = 0; plane < kMaxColorPlanes; plane++)
		{

		fRadParams [plane] = dng_vector (4);

		}
	
	}

/*****************************************************************************/

dng_warp_params_fisheye::dng_warp_params_fisheye (uint32 planes,
												  const dng_vector radParams [],
												  const dng_point_real64 &center)

	:	dng_warp_params (planes, center)

	{
	
	for (uint32 i = 0; i < fPlanes; i++)
		{

		fRadParams [i] = radParams [i];

		}
	
	}

/*****************************************************************************/

dng_warp_params_fisheye::~dng_warp_params_fisheye ()
	{
	
	}

/*****************************************************************************/

bool dng_warp_params_fisheye::IsRadNOP (uint32 /* plane */) const
	{
	
	return false;
	
	}

/*****************************************************************************/

bool dng_warp_params_fisheye::IsTanNOP (uint32 /* plane */) const
	{
	
	return true;
	
	}

/*****************************************************************************/

bool dng_warp_params_fisheye::IsValid () const
	{

	for (uint32 plane = 0; plane < fPlanes; plane++)
		{
		
		if (fRadParams [plane].Count () != 4)
			{
			return false;
			}
		
		}

	return dng_warp_params::IsValid ();
	
	}

/*****************************************************************************/

void dng_warp_params_fisheye::PropagateToAllPlanes (uint32 totalPlanes)
	{

	if (totalPlanes > kMaxColorPlanes)
		{
		ThrowBadFormat ();
		}

	for (uint32 plane = fPlanes; plane < totalPlanes; plane++)
		{

		fRadParams [plane] = fRadParams [0];

		}

	fPlanes = totalPlanes;

	}

/*****************************************************************************/

real64 dng_warp_params_fisheye::Evaluate (uint32 plane,
										  real64 r) const
	{

	const real64 t = atan (r);

	const dng_vector &K = fRadParams [plane];

	const real64 t2 = t * t;
	
	return t * (K [0] + t2 * (K [1] + t2 * (K [2] + t2 * K [3])));
	
	}

/*****************************************************************************/

real64 dng_warp_params_fisheye::EvaluateRatio (uint32 plane,
											   real64 rSqr) const
	{

	const real64 eps = 1.0e-12;

	if (rSqr < eps)
		{
		
		// r is very close to zero.

		return 1.0;
		
		}

	const real64 r = sqrt (rSqr);

	return Evaluate (plane, r) / r;
	
	}

/*****************************************************************************/

dng_point_real64 dng_warp_params_fisheye::EvaluateTangential (uint32 /* plane */,
															  real64 /* r2 */,
															  const dng_point_real64 & /* diff */,
															  const dng_point_real64 & /* diff2 */) const
	{
	
	// This fisheye model does not support tangential warping.

	ThrowProgramError ();

	return dng_point_real64 (0.0, 0.0);
	
	}

/*****************************************************************************/

real64 dng_warp_params_fisheye::MaxSrcRadiusGap (real64 maxDstGap) const
	{
	
	//
	//	Let f (r) be the radius warp function. Consider the function
	//
	//	  gap (r) = f (r + maxDstGap) - f (r)
	//
	//	We wish to maximize gap (r) over the domain [0, 1 - maxDstGap]. This will
	//	give us a reasonable upper bound on the src tile size, independent of
	//	dstBounds.
	//
	//	Ideally, we'd like to maximize gap (r) by examining its critical points,
	//	i.e., by considering the roots of its derivative which lie in the domain [0,
	//	1 - maxDstGap]. However, gap' (r) is too complex to find its roots
	//	analytically.
	//

	real64 maxSrcGap = 0.0;

	DNG_REQUIRE (maxDstGap > 0.0, "maxDstGap must be positive.");

	const real64 kMaxValue = 1.0 - maxDstGap;

	const uint32 kSteps = 128;
		
	const real64 kNorm = kMaxValue / real64 (kSteps - 1);

	for (uint32 plane = 0; plane < fPlanes; plane++)
		{

		for (uint32 i = 0; i < kSteps; i++)
			{
			
			const real64 tt = i * kNorm;

			const real64 gap = Evaluate (plane, tt + maxDstGap)
							 - Evaluate (plane, tt);

			maxSrcGap = Max_real64 (maxSrcGap,
									gap);
			
			}

		}

	return maxSrcGap;
	
	}

/*****************************************************************************/

dng_point_real64 dng_warp_params_fisheye::MaxSrcTanGap (dng_point_real64 /* minDst */,
														dng_point_real64 /* maxDst */) const
	{

	// This fisheye model does not support tangential distortion.

	return dng_point_real64 (0.0, 0.0);

	}
	
/*****************************************************************************/

real64 dng_warp_params_fisheye::SafeMinRatio () const
	{
	
	return 0.2;
	
	}

/*****************************************************************************/

real64 dng_warp_params_fisheye::SafeMaxRatio () const
	{
	
	return 5.0;	
	
	}

/*****************************************************************************/

void dng_warp_params_fisheye::Dump () const
	{
	
	#if qDNGValidate

	dng_warp_params::Dump ();

	for (uint32 plane = 0; plane < fPlanes; plane++)
		{

		printf ("  Plane %u:\n", (unsigned) plane);

		printf ("\tRadial params: %.6lf, %.6lf, %.6lf, %.6lf\n",
				fRadParams [plane][0],
				fRadParams [plane][1],
				fRadParams [plane][2],
				fRadParams [plane][3]);

		}		
		
	#endif
	
	}

/*****************************************************************************/

class dng_filter_warp: public dng_filter_task
	{
	
	protected:

		AutoPtr<dng_warp_params> fParams;

		dng_point_real64 fCenter;
	
		dng_resample_weights_2d fWeights;

		real64 fNormRadius;
		real64 fInvNormRadius;

		bool fIsRadNOP;
		bool fIsTanNOP;

		const real64 fPixelScaleV;
		const real64 fPixelScaleVInv;

	public:
	
		dng_filter_warp (const dng_image &srcImage,
						 dng_image &dstImage,
						 const dng_negative &negative,
						 AutoPtr<dng_warp_params> &params);

		virtual void Initialize (dng_host &host);

		virtual dng_rect SrcArea (const dng_rect &dstArea);

		virtual dng_point SrcTileSize (const dng_point &dstTileSize);

		virtual void ProcessArea (uint32 threadIndex,
								  dng_pixel_buffer &srcBuffer,
								  dng_pixel_buffer &dstBuffer);

		virtual dng_point_real64 GetSrcPixelPosition (const dng_point_real64 &dst,
													  uint32 plane);

	};

/*****************************************************************************/

dng_filter_warp::dng_filter_warp (const dng_image &srcImage,
								  dng_image &dstImage,
								  const dng_negative &negative,
								  AutoPtr<dng_warp_params> &params)

	:	dng_filter_task ("dng_filter_warp",
						 srcImage,
						 dstImage)

	,	fParams			(params.Release ())

	,	fCenter			()

	,	fWeights		()

	,	fNormRadius		(1.0)
	,	fInvNormRadius	(1.0)

	,	fIsRadNOP		(false)
	,	fIsTanNOP		(false)

	,	fPixelScaleV	(1.0 / negative.PixelAspectRatio ())
	,	fPixelScaleVInv (1.0 / fPixelScaleV)

	{

	// Force float processing.

	fSrcPixelType = ttFloat;
	fDstPixelType = ttFloat;

	fIsRadNOP = fParams->IsRadNOPAll ();
	fIsTanNOP = fParams->IsTanNOPAll ();

	const uint32 negPlanes = negative.ColorChannels ();

	DNG_ASSERT (negPlanes >= 1,				  "Too few planes." );
	DNG_ASSERT (negPlanes <= kMaxColorPlanes, "Too many planes.");

	(void) negPlanes;

	if (dstImage.Planes () > kMaxColorPlanes)
		{
		ThrowBadFormat ();
		}
	
	// At least one set of params must do something interesting.

	if (fIsRadNOP && fIsTanNOP)
		{
		ThrowProgramError ();
		}

	// Make sure the warp params are valid for this negative.

	if (!fParams->IsValidForNegative (negative))
		{
		ThrowBadFormat ();
		}

	// Compute center.

	const dng_rect bounds = srcImage.Bounds ();

	fCenter.h = Lerp_real64 ((real64) bounds.l,
							 (real64) bounds.r,
							 fParams->fCenter.h);

	fCenter.v = Lerp_real64 ((real64) bounds.t,
							 (real64) bounds.b,
							 fParams->fCenter.v);

	// Compute max pixel radius and derive various normalized radius values. Note
	// that when computing the max pixel radius, we must take into account the pixel
	// aspect ratio.

		{

		dng_rect squareBounds (bounds);

		squareBounds.b = squareBounds.t + 
						 Round_int32 (fPixelScaleV * (real64) squareBounds.H ());

		const dng_point_real64 squareCenter (Lerp_real64 ((real64) squareBounds.t,
														  (real64) squareBounds.b,
														  fParams->fCenter.v),

											 Lerp_real64 ((real64) squareBounds.l,
														  (real64) squareBounds.r,
														  fParams->fCenter.h));

		fNormRadius = MaxDistancePointToRect (squareCenter,
											  squareBounds);

		fInvNormRadius = 1.0 / fNormRadius;

		}

	// Propagate warp params to other planes.

	fParams->PropagateToAllPlanes (fDstPlanes);

	}

/*****************************************************************************/

void dng_filter_warp::Initialize (dng_host &host)
	{

	// Make resample weights.

	const dng_resample_function &kernel = dng_resample_bicubic::Get ();
	
	fWeights.Initialize (kernel,
						 host.Allocator ());
	
	}

/*****************************************************************************/
	
dng_rect dng_filter_warp::SrcArea (const dng_rect &dstArea)
	{
	
	// Walk each pixel of the boundary of dstArea, map it to the uncorrected src
	// pixel position, and return the rectangle that contains all such src pixels.

	int32 xMin = INT_MAX;
	int32 xMax = INT_MIN;
	int32 yMin = INT_MAX;
	int32 yMax = INT_MIN;

	for (uint32 plane = 0; plane < fDstPlanes; plane++)
		{

		// Top and bottom edges.
		
		for (int32 c = dstArea.l; c < dstArea.r; c++)
			{
			
			// Top edge.

				{
				
				const dng_point_real64 dst (dstArea.t, c);

				const dng_point_real64 src = GetSrcPixelPosition (dst, plane);

				const int32 y = ConvertDoubleToInt32 (floor (src.v));
				
				yMin = Min_int32 (yMin, y);

				}

			// Bottom edge.

				{
				
				const dng_point_real64 dst (dstArea.b - 1, c);

				const dng_point_real64 src = GetSrcPixelPosition (dst, plane);

				const int32 y = ConvertDoubleToInt32 (ceil (src.v));
				
				yMax = Max_int32 (yMax, y);
				
				}
				
			}		
		
		// Left and right edges.
		
		for (int32 r = dstArea.t; r < dstArea.b; r++)
			{

			// Left edge.

				{
				
				const dng_point_real64 dst (r, dstArea.l);

				const dng_point_real64 src = GetSrcPixelPosition (dst, plane);

				const int32 x = ConvertDoubleToInt32 (floor (src.h));
				
				xMin = Min_int32 (xMin, x);

				}
				
			// Right edge.

				{
				
				const dng_point_real64 dst (r, dstArea.r - 1);

				const dng_point_real64 src = GetSrcPixelPosition (dst, plane);

				const int32 x = ConvertDoubleToInt32 (ceil (src.h));
				
				xMax = Max_int32 (xMax, x);

				}
				
			}		
		
		}

	// Pad each side by filter radius.

	const int32 pad = ConvertUint32ToInt32 (fWeights.Radius ());

	xMin = SafeInt32Sub (xMin, pad);
	yMin = SafeInt32Sub (yMin, pad);
	xMax = SafeInt32Add (xMax, pad);
	yMax = SafeInt32Add (yMax, pad);

	xMax = SafeInt32Add (xMax, 1);
	yMax = SafeInt32Add (yMax, 1);

	dng_rect srcArea (yMin,
					  xMin,
					  yMax,
					  xMax);

	// Limit to src image area.

	srcArea = srcArea & fSrcImage.Bounds ();

	return srcArea;
	
	}

/*****************************************************************************/

dng_point dng_filter_warp::SrcTileSize (const dng_point &dstTileSize)
	{

	// Obtain an upper bound on the source tile size. We'll do this by considering
	// upper bounds on the radial and tangential warp components separately, then add
	// them together. This is not a tight bound but is good enough because the
	// tangential terms are usually quite small.

	// Get upper bound on src tile size from radial warp.

	DNG_REQUIRE (dstTileSize.v > 0, "Invalid tile height.");
	DNG_REQUIRE (dstTileSize.h > 0, "Invalid tile width.");

	const real64 maxDstGap = fInvNormRadius * hypot ((real64) dstTileSize.h,
													 (real64) dstTileSize.v);

	dng_point srcTileSize;

	if (maxDstGap >= 1.0)
		{

		// The proposed tile size is unusually large, i.e., its hypotenuse is larger
		// than the maximum radius. Bite the bullet and just return a tile size big
		// enough to process the whole image.

		srcTileSize = SrcArea (fDstImage.Bounds ()).Size ();
		
		}

	else
		{

		// maxDstGap < 1.0.

		const real64 maxSrcGap = fParams->MaxSrcRadiusGap (maxDstGap);

		const int32 dim = ConvertDoubleToInt32 (ceil (maxSrcGap * fNormRadius));

		srcTileSize = dng_point (dim, dim);

		}

	// CR-4208475 N-L9: each += chains a ConvertUint32ToInt32 /
	// ConvertDoubleToInt32 result (which can reach INT32_MAX individually)
	// onto srcTileSize, so two adds back-to-back can signed-overflow. Route
	// through SafeInt32Add so the failure is a clean throw on overflow.
	// Mirrors the M-M7 dng_tile_iterator pattern.

	srcTileSize.h =
		SafeInt32Add (srcTileSize.h,
					  ConvertUint32ToInt32 (fWeights.Width ()));
	srcTileSize.v =
		SafeInt32Add (srcTileSize.v,
					  ConvertUint32ToInt32 (fWeights.Width ()));

	// Get upper bound on src tile size from tangential warp.

	const dng_rect_real64 bounds (fSrcImage.Bounds ());

	const dng_point_real64 minDst ((bounds.t - fCenter.v) * fInvNormRadius,
								   (bounds.l - fCenter.h) * fInvNormRadius);

	const dng_point_real64 maxDst ((bounds.b - 1.0 - fCenter.v) * fInvNormRadius,
								   (bounds.r - 1.0 - fCenter.h) * fInvNormRadius);

	const dng_point_real64 srcTanGap = fParams->MaxSrcTanGap (minDst,
															  maxDst);

	// Add the two bounds together.

	srcTileSize.v =
		SafeInt32Add (srcTileSize.v,
					  ConvertDoubleToInt32 (ceil (srcTanGap.v * fNormRadius)));
	srcTileSize.h =
		SafeInt32Add (srcTileSize.h,
					  ConvertDoubleToInt32 (ceil (srcTanGap.h * fNormRadius)));
	
	DNG_REQUIRE (srcTileSize.v > 0, "Bad srcTileSize.v in dng_filter_warp::SrcTileSize");
	DNG_REQUIRE (srcTileSize.h > 0, "Bad srcTileSize.h in dng_filter_warp::SrcTileSize");
	
	return srcTileSize;

	}

/*****************************************************************************/
		
void dng_filter_warp::ProcessArea (uint32 /* threadIndex */,
								   dng_pixel_buffer &srcBuffer,
								   dng_pixel_buffer &dstBuffer)
	{

	// Prepare resample constants.

	const int32 wCount = fWeights.Width ();

	const dng_point srcOffset (fWeights.Offset (),
							   fWeights.Offset ());

	const real64 numSubsamples = (real64) kResampleSubsampleCount2D;

	// Prepare area and step constants.

	const dng_rect srcArea = srcBuffer.fArea;
	const dng_rect dstArea = dstBuffer.fArea;

	const int32 srcRowStep = (int32) srcBuffer.RowStep ();

	const int32 hMin = srcArea.l;
	const int32 hMax = SafeInt32Sub (SafeInt32Sub (srcArea.r, wCount), 1);

	const int32 vMin = srcArea.t;
	const int32 vMax = SafeInt32Sub (SafeInt32Sub (srcArea.b, wCount), 1);

	if (hMax < hMin || 
		vMax < vMin)
		{
		
		ThrowBadFormat ("Empty source area in dng_filter_warp.");
		
		}

	// Warp each plane.

	const dng_rect_real64 srcImageArea (fSrcImage.Bounds ());

	for (uint32 plane = 0; plane < dstBuffer.fPlanes; plane++)
		{
	
		real32 *dPtr = dstBuffer.DirtyPixel_real32 (dstArea.t, 
													dstArea.l, 
													plane);

		for (int32 dstRow = dstArea.t; dstRow < dstArea.b; dstRow++)
			{

			uint32 dstIndex = 0;
			
			for (int32 dstCol = dstArea.l; dstCol < dstArea.r; dstCol++, dstIndex++)
				{

				// Get destination (corrected) pixel position.

				const dng_point_real64 dPos ((real64) dstRow,
											 (real64) dstCol);

				// Warp to source (uncorrected) pixel position.

				dng_point_real64 sPos = GetSrcPixelPosition (dPos,
															 plane);
				
				// Limit to source image area.

				sPos.h = Max_real64 (sPos.h, srcImageArea.l);
				sPos.h = Min_real64 (sPos.h, srcImageArea.r - 1.0);
				sPos.v = Max_real64 (sPos.v, srcImageArea.t);
				sPos.v = Min_real64 (sPos.v, srcImageArea.b - 1.0);

				// Decompose into integer and fractional parts.

				dng_point sInt (ConvertDoubleToInt32 (floor (sPos.v)),
								ConvertDoubleToInt32 (floor (sPos.h)));

				dng_point sFct (ConvertDoubleToInt32 ((sPos.v - (real64) sInt.v) * numSubsamples),
								ConvertDoubleToInt32 ((sPos.h - (real64) sInt.h) * numSubsamples));

				// Add resample offset.

				sInt = sInt + srcOffset;

				// Clip.
				
				if (sInt.h < hMin)
					{
					sInt.h = hMin;
					sFct.h = 0;
					}

				else if (sInt.h > hMax)
					{
					sInt.h = hMax;
					sFct.h = 0;
					}

				if (sInt.v < vMin)
					{
					sInt.v = vMin;
					sFct.v = 0;
					}

				else if (sInt.v > vMax)
					{
					sInt.v = vMax;
					sFct.v = 0;
					}

				// Perform 2D resample.

				const real32 *w = fWeights.Weights32 (sFct);

				const real32 *s = srcBuffer.ConstPixel_real32 (sInt.v,
															   sInt.h,
															   plane);

				real32 total = 0.0f;

				for (int32 i = 0; i < wCount; i++)
					{
						
					for (int32 j = 0; j < wCount; j++)
						{
							
						total += w [j] * s [j];
							
						}

					w += wCount;
					s += srcRowStep;
						
					}

				// Store final pixel value.

				dPtr [dstIndex] = Pin_real32 (total);
				
				}

			// Advance to next row.

			dPtr += dstBuffer.RowStep ();

			}

		}	

	}

/*****************************************************************************/

dng_point_real64 dng_filter_warp::GetSrcPixelPosition (const dng_point_real64 &dst,
													   uint32 plane)
	{

	const dng_point_real64 diff = dst - fCenter;

	const dng_point_real64 diffNorm (diff.v * fInvNormRadius,
									 diff.h * fInvNormRadius);

	const dng_point_real64 diffNormScaled (diffNorm.v * fPixelScaleV,
										   diffNorm.h);

	const dng_point_real64 diffNormSqr (diffNormScaled.v * diffNormScaled.v,
										diffNormScaled.h * diffNormScaled.h);

	const real64 rr = Min_real64 (diffNormSqr.v + diffNormSqr.h,
								  1.0);

	dng_point_real64 dSrc;

	if (fIsTanNOP)
		{

		// Radial only.
		
		const real64 ratio = fParams->EvaluateRatio (plane,
													 rr);

		dSrc.h = diff.h * ratio;
		dSrc.v = diff.v * ratio;
		
		}

	else if (fIsRadNOP)
		{

		// Tangential only.

		const dng_point_real64 tan = fParams->EvaluateTangential (plane,
																  rr,
																  diffNormScaled,
																  diffNormSqr);

		dSrc.h = diff.h + (fNormRadius * tan.h);
		dSrc.v = diff.v + (fNormRadius * tan.v * fPixelScaleVInv);

		}

	else
		{
		
		// Radial and tangential.

		const real64 ratio = fParams->EvaluateRatio (plane,
													 rr);

		const dng_point_real64 tan = fParams->EvaluateTangential (plane,
																  rr,
																  diffNormScaled,
																  diffNormSqr);

		dSrc.h = fNormRadius * (diffNorm.h * ratio + tan.h);
		dSrc.v = fNormRadius * (diffNorm.v * ratio + tan.v * fPixelScaleVInv);

		}

	return fCenter + dSrc;
	
	}

/*****************************************************************************/

dng_opcode_BaseWarpRectilinear::dng_opcode_BaseWarpRectilinear
	(uint32 opcodeTag,
	 uint32 minVersion,
	 const dng_warp_params_rectilinear &params,
	 uint32 flags)

	:	dng_opcode (opcodeTag,
					minVersion,
					flags)

	,	fWarpParams (params)

	{

	if (!params.IsValid ())
		{
		ThrowBadFormat ();
		}

	}

/*****************************************************************************/

dng_opcode_BaseWarpRectilinear::dng_opcode_BaseWarpRectilinear (uint32 opcodeTag,
																const char *name,
																dng_stream &stream)
																
	:	dng_opcode (opcodeTag,
					stream,
					name)

	{

	}

/*****************************************************************************/

bool dng_opcode_BaseWarpRectilinear::IsNOP () const
	{

	return fWarpParams.IsNOPAll ();
	
	}

/*****************************************************************************/

bool dng_opcode_BaseWarpRectilinear::IsValidForNegative (const dng_negative &negative) const
	{

	return fWarpParams.IsValidForNegative (negative);
	
	}

/*****************************************************************************/

void dng_opcode_BaseWarpRectilinear::Apply (dng_host &host,
											dng_negative &negative,
											AutoPtr<dng_image> &image)
	{

	#if qDNGValidate

	dng_timer timer ("BaseWarpRectilinear time");

	#endif

	// Allocate destination image.
	
	AutoPtr<dng_image> dstImage (host.Make_dng_image (image->Bounds	   (),
													  image->Planes	   (),
													  image->PixelType ()));
													  
	// Warp the image.

	AutoPtr<dng_warp_params> params (new dng_warp_params_rectilinear (fWarpParams));
	
	dng_filter_warp filter (*image,
							*dstImage,
							negative,
							params);

	filter.Initialize (host);
											
	host.PerformAreaTask (filter,
						  image->Bounds ());
						
	// Return the new image.
	
	image.Reset (dstImage.Release ());
	
	}

/*****************************************************************************/

bool dng_opcode_BaseWarpRectilinear::HasDistort () const
	{

	for (uint32 plane = 0; plane < fWarpParams.fPlanes; plane++)
		{
		
		if (fWarpParams.IsNOP (plane))
			{
			return false;
			}
		
		}

	return true;
	
	}

/*****************************************************************************/

bool dng_opcode_BaseWarpRectilinear::HasLateralCA () const
	{
	
	if (fWarpParams.fPlanes <= 1)
		{
		return false;
		}
	
	for (uint32 plane = 0; plane < fWarpParams.fPlanes; plane++)
		{
		
		if (!fWarpParams.IsNOP (plane))
			{
			return true;
			}
		
		}

	return false;
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_opcode_WarpRectilinear::dng_opcode_WarpRectilinear (const dng_warp_params_rectilinear &params,
														uint32 flags)

	:	dng_opcode_BaseWarpRectilinear (dngOpcode_WarpRectilinear,
										dngVersion_1_3_0_0,
										params,
										flags)

	{

	}

/*****************************************************************************/
		
dng_opcode_WarpRectilinear::dng_opcode_WarpRectilinear (dng_stream &stream)

	:	dng_opcode_BaseWarpRectilinear (dngOpcode_WarpRectilinear,
										"WarpRectilinear",
										stream)

	{

	// Grab the size in bytes.

	const uint32 bytes = stream.Get_uint32 ();

	// Grab the number of planes to warp.

	fWarpParams.fPlanes = stream.Get_uint32 ();

	// Verify number of planes.

	if (fWarpParams.fPlanes == 0 ||
		fWarpParams.fPlanes > kMaxColorPlanes)
		{
		ThrowBadFormat ();
		}

	// Verify the size.

	if (bytes != ParamBytes (fWarpParams.fPlanes))
		{
		ThrowBadFormat ();
		}

	// Read warp parameters for each plane.

	for (uint32 plane = 0; plane < fWarpParams.fPlanes; plane++)
		{

		fWarpParams.fRadParams.fData [plane][0] = stream.Get_real64 (); // offset
		fWarpParams.fRadParams.fData [plane][2] = stream.Get_real64 (); // r^2
		fWarpParams.fRadParams.fData [plane][4] = stream.Get_real64 (); // r^4
		fWarpParams.fRadParams.fData [plane][6] = stream.Get_real64 (); // r^6

		fWarpParams.fTanParams [plane][0] = stream.Get_real64 ();
		fWarpParams.fTanParams [plane][1] = stream.Get_real64 ();

		}

	// Read the image center.

	fWarpParams.fCenter.h = stream.Get_real64 ();
	fWarpParams.fCenter.v = stream.Get_real64 ();
	
	#if qDNGValidate
	
	if (gVerbose)
		{

		fWarpParams.Dump ();

		}
		
	#endif

	if (!fWarpParams.IsValid ())
		{
		ThrowBadFormat ();
		}
	
	}
	
/*****************************************************************************/

void dng_opcode_WarpRectilinear::PutData (dng_stream &stream) const
	{

	const uint32 bytes = ParamBytes (fWarpParams.fPlanes);
	
	stream.Put_uint32 (bytes);

	stream.Put_uint32 (fWarpParams.fPlanes);

	for (uint32 plane = 0; plane < fWarpParams.fPlanes; plane++)
		{

		DNG_ASSERT (fWarpParams.fRadParams.CompatibleWithWarpRectilinear_1_3 (plane),
					"Incompatible WarpRectilinear DNG 1.3 params");

		stream.Put_real64 (fWarpParams.fRadParams.fData [plane][0]); // offset
		stream.Put_real64 (fWarpParams.fRadParams.fData [plane][2]); // r^2
		stream.Put_real64 (fWarpParams.fRadParams.fData [plane][4]); // r^4
		stream.Put_real64 (fWarpParams.fRadParams.fData [plane][6]); // r^6

		stream.Put_real64 (fWarpParams.fTanParams [plane][0]);
		stream.Put_real64 (fWarpParams.fTanParams [plane][1]);

		}

	stream.Put_real64 (fWarpParams.fCenter.h);
	stream.Put_real64 (fWarpParams.fCenter.v);
	
	}

/*****************************************************************************/

uint32 dng_opcode_WarpRectilinear::ParamBytes (uint32 planes)
	{
	
	return (1 * (uint32) sizeof (uint32)		 ) +  // Number of planes.
		   (6 * (uint32) sizeof (real64) * planes) +  // Warp coefficients.
		   (2 * (uint32) sizeof (real64)		 );	  // Optical center.
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

/*

	WarpRectilinear2 format:

	uint32 planes

	for each plane:

		real64 kr0
		real64 kr1
		real64 kr2
		...
		real64 kr13
		real64 kr14

		real64 kt0
		real64 kt1

		real64 min_valid_radius
		real64 max_valid_radius

	real64 cx
	real64 cy

	uint32 useReciprocal

 */

/*****************************************************************************/

dng_opcode_WarpRectilinear2::dng_opcode_WarpRectilinear2 (const dng_warp_params_rectilinear &params,
														  uint32 flags)

	:	dng_opcode_BaseWarpRectilinear (dngOpcode_WarpRectilinear2,
										dngVersion_1_6_0_0,
										params,
										flags)

	{

	}

/*****************************************************************************/
		
dng_opcode_WarpRectilinear2::dng_opcode_WarpRectilinear2 (dng_stream &stream)

	:	dng_opcode_BaseWarpRectilinear (dngOpcode_WarpRectilinear2,
										"WarpRectilinear2",
										stream)

	{

	// Grab the size in bytes.

	const uint32 bytes = stream.Get_uint32 ();

	// Grab the number of planes to warp.

	fWarpParams.fPlanes = stream.Get_uint32 ();

	// Verify number of planes.

	if (fWarpParams.fPlanes == 0 ||
		fWarpParams.fPlanes > kMaxColorPlanes)
		{
		ThrowBadFormat ();
		}

	// Verify the size.

	if (bytes != ParamBytes (fWarpParams.fPlanes))
		{
		ThrowBadFormat ();
		}

	// Read warp parameters for each plane.

	for (uint32 plane = 0; plane < fWarpParams.fPlanes; plane++)
		{

		// Radial terms.

		for (uint32 i = 0; i < dng_warp_params_radial::kMaxTerms; i++)
			{

			fWarpParams.fRadParams.fData [plane] [i] = stream.Get_real64 ();

			}

		// Tangential terms.
		
		fWarpParams.fTanParams [plane] [0] = stream.Get_real64 ();
		fWarpParams.fTanParams [plane] [1] = stream.Get_real64 ();

		// Min & max valid radius.

		fWarpParams.fRadParams.fValidRange [plane] [0] = stream.Get_real64 ();
		fWarpParams.fRadParams.fValidRange [plane] [1] = stream.Get_real64 ();

		}

	// Read the image center.

	fWarpParams.fCenter.h = stream.Get_real64 ();
	fWarpParams.fCenter.v = stream.Get_real64 ();

	// Read the reciprocal radial flag.

	fWarpParams.fRadParams.fUseReciprocal = (stream.Get_uint32 () != 0);
	
	#if qDNGValidate
	
	if (gVerbose)
		{

		fWarpParams.Dump ();

		}
		
	#endif

	if (!fWarpParams.IsValid ())
		{
		ThrowBadFormat ();
		}
	
	}
	
/*****************************************************************************/

void dng_opcode_WarpRectilinear2::PutData (dng_stream &stream) const
	{

	// Write the variable tag size (byte count).

	const uint32 bytes = ParamBytes (fWarpParams.fPlanes);
	
	stream.Put_uint32 (bytes);

	// Write # of planes.

	stream.Put_uint32 (fWarpParams.fPlanes);

	// Write coefficient data for each plane.

	for (uint32 plane = 0; plane < fWarpParams.fPlanes; plane++)
		{

		// Radial.

		for (uint32 i = 0; i < dng_warp_params_radial::kMaxTerms; i++)
			{

			stream.Put_real64 (fWarpParams.fRadParams.fData [plane] [i]);

			}

		// Tangential.
		
		stream.Put_real64 (fWarpParams.fTanParams [plane] [0]);
		stream.Put_real64 (fWarpParams.fTanParams [plane] [1]);

		// Min & max valid radius.

		stream.Put_real64 (fWarpParams.fRadParams.fValidRange [plane] [0]);
		stream.Put_real64 (fWarpParams.fRadParams.fValidRange [plane] [1]);

		}

	// Optical center.

	stream.Put_real64 (fWarpParams.fCenter.h);
	stream.Put_real64 (fWarpParams.fCenter.v);

	// Reciprocal radial model.

	stream.Put_uint32 (fWarpParams.fRadParams.fUseReciprocal ? 1 : 0);
	
	}

/*****************************************************************************/

uint32 dng_opcode_WarpRectilinear2::ParamBytes (uint32 planes)
	{

	uint32 numRadialTerms = dng_warp_params_radial::kMaxTerms;

	uint32 numValidRangeTerms = 2;

	uint32 numTangentialTerms = 2;

	uint32 warpTerms = numRadialTerms + numValidRangeTerms + numTangentialTerms;

	return (1		  * (uint32) sizeof (uint32)		 ) + // Number of planes
		   (warpTerms * (uint32) sizeof (real64) * planes) + // Warp coefficients
		   (2		  * (uint32) sizeof (real64)		 ) + // Optical center
		   (1		  * (uint32) sizeof (uint32)		 );	 // Reciprocal
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_opcode_WarpFisheye::dng_opcode_WarpFisheye (const dng_warp_params_fisheye &params,
												uint32 flags)

	:	dng_opcode (dngOpcode_WarpFisheye,
					dngVersion_1_3_0_0,
					flags)

	,	fWarpParams (params)

	{

	if (!params.IsValid ())
		{
		ThrowBadFormat ();
		}

	}

/*****************************************************************************/
		
dng_opcode_WarpFisheye::dng_opcode_WarpFisheye (dng_stream &stream)

	:	dng_opcode (dngOpcode_WarpFisheye,
					stream,
					"WarpFisheye")

	,	fWarpParams ()

	{

	// Grab the size in bytes.

	const uint32 bytes = stream.Get_uint32 ();

	// Grab the number of planes to warp.

	fWarpParams.fPlanes = stream.Get_uint32 ();

	// Verify number of planes.

	if (fWarpParams.fPlanes == 0 ||
		fWarpParams.fPlanes > kMaxColorPlanes)
		{
		ThrowBadFormat ();
		}

	// Verify the size.

	if (bytes != ParamBytes (fWarpParams.fPlanes))
		{
		ThrowBadFormat ();
		}

	// Read warp parameters for each plane.

	for (uint32 plane = 0; plane < fWarpParams.fPlanes; plane++)
		{

		fWarpParams.fRadParams [plane][0] = stream.Get_real64 ();
		fWarpParams.fRadParams [plane][1] = stream.Get_real64 ();
		fWarpParams.fRadParams [plane][2] = stream.Get_real64 ();
		fWarpParams.fRadParams [plane][3] = stream.Get_real64 ();

		}

	// Read the image center.

	fWarpParams.fCenter.h = stream.Get_real64 ();
	fWarpParams.fCenter.v = stream.Get_real64 ();
	
	#if qDNGValidate
	
	if (gVerbose)
		{

		fWarpParams.Dump ();

		}
		
	#endif

	if (!fWarpParams.IsValid ())
		{
		ThrowBadFormat ();
		}
	
	}
	
/*****************************************************************************/

bool dng_opcode_WarpFisheye::IsNOP () const
	{

	return fWarpParams.IsNOPAll ();
	
	}

/*****************************************************************************/

bool dng_opcode_WarpFisheye::IsValidForNegative (const dng_negative &negative) const
	{

	return fWarpParams.IsValidForNegative (negative);
	
	}

/*****************************************************************************/

void dng_opcode_WarpFisheye::PutData (dng_stream &stream) const
	{

	const uint32 bytes = ParamBytes (fWarpParams.fPlanes);
	
	stream.Put_uint32 (bytes);

	// Write the number of planes.

	stream.Put_uint32 (fWarpParams.fPlanes);

	// Write the warp coefficients.

	for (uint32 plane = 0; plane < fWarpParams.fPlanes; plane++)
		{

		stream.Put_real64 (fWarpParams.fRadParams [plane][0]);
		stream.Put_real64 (fWarpParams.fRadParams [plane][1]);
		stream.Put_real64 (fWarpParams.fRadParams [plane][2]);
		stream.Put_real64 (fWarpParams.fRadParams [plane][3]);

		}

	// Write the optical center.

	stream.Put_real64 (fWarpParams.fCenter.h);
	stream.Put_real64 (fWarpParams.fCenter.v);
	
	}

/*****************************************************************************/

void dng_opcode_WarpFisheye::Apply (dng_host &host,
									dng_negative &negative,
									AutoPtr<dng_image> &image)
	{

	#if qDNGValidate

	dng_timer timer ("WarpFisheye time");

	#endif

	// Allocate destination image.
	
	AutoPtr<dng_image> dstImage (host.Make_dng_image (image->Bounds	   (),
													  image->Planes	   (),
													  image->PixelType ()));
													  
	// Warp the image.
	
	AutoPtr<dng_warp_params> params (new dng_warp_params_fisheye (fWarpParams));
	
	dng_filter_warp filter (*image,
							*dstImage,
							negative,
							params);

	filter.Initialize (host);
											
	host.PerformAreaTask (filter,
						  image->Bounds ());
						
	// Return the new image.
	
	image.Reset (dstImage.Release ());
	
	}

/*****************************************************************************/

uint32 dng_opcode_WarpFisheye::ParamBytes (uint32 planes)
	{
	
	return (1 * (uint32) sizeof (uint32)		 ) +	// Number of planes.
		   (4 * (uint32) sizeof (real64) * planes) +	// Warp coefficients.
		   (2 * (uint32) sizeof (real64)		 );		// Optical center.
	
	}

/*****************************************************************************/

dng_vignette_radial_params::dng_vignette_radial_params ()

	:	fParams (kNumTerms)
	,	fCenter (0.5, 0.5)

	{
	
	}

/*****************************************************************************/

dng_vignette_radial_params::dng_vignette_radial_params (const dng_std_vector<real64> &params,
														const dng_point_real64 &center)

	:	fParams (params)
	,	fCenter (center)

	{
	
	}

/*****************************************************************************/

dng_vignette_radial_params::dng_vignette_radial_params 
	(const dng_vignette_radial_params &params)
	{
	
	fParams = params.fParams;

	fCenter = params.fCenter;
	
	}

/*****************************************************************************/

bool dng_vignette_radial_params::IsNOP () const
	{

	for (uint32 i = 0; i < fParams.size (); i++)
		{
		
		if (fParams [i] != 0.0)
			{
			return false;
			}
		
		}

	return true;

	}

/*****************************************************************************/

bool dng_vignette_radial_params::IsValid () const
	{

	if (fParams.size () != kNumTerms)
		{
		return false;
		}

	if (!std::isfinite (fCenter.h) ||
		!std::isfinite (fCenter.v) ||
		fCenter.h < 0.0 ||
		fCenter.h > 1.0 ||
		fCenter.v < 0.0 ||
		fCenter.v > 1.0)
		{
		return false;
		}

	// CR-4208475 N-M3: reject NaN / Inf in the radial-vignette coefficient
	// terms. The finiteness check on fCenter above was insufficient; the
	// fParams array also feeds the per-pixel correction math and can
	// produce non-finite intermediates if it contains NaN / Inf entries.

	for (uint32 i = 0; i < kNumTerms; i++)
		{

		if (!std::isfinite (fParams [i]))
			{
			return false;
			}

		}

	return true;

	}

/*****************************************************************************/

void dng_vignette_radial_params::Dump () const
	{
	
	#if qDNGValidate

	printf ("  Radial vignette params: ");

	for (uint32 i = 0; i < fParams.size (); i++)
		{

		printf ("%s%.6lf",
				(i == 0) ? "" : ", ",
				fParams [i]);

		}

	printf ("\n");

	printf ("  Optical center:\n"
			"	 h = %.6lf\n"
			"	 v = %.6lf\n",
			fCenter.h,
			fCenter.v);

	#endif
	
	}

/*****************************************************************************/

class dng_vignette_radial_function: public dng_1d_function
	{
		
	protected:

		const dng_vignette_radial_params fParams;

	public:

		explicit dng_vignette_radial_function (const dng_vignette_radial_params &params)

			:	fParams (params)

			{

			}

		// x represents r^2, where r is the normalized Euclidean distance from the
		// optical center to a pixel. r lies in [0,1], so r^2 (and hence x) also lies
		// in [0,1].

		virtual real64 Evaluate (real64 x) const
			{

			DNG_REQUIRE (fParams.fParams.size () == dng_vignette_radial_params::kNumTerms,
						 "Bad number of vignette opcode coefficients.");

			real64 sum = 0.0;

			const dng_std_vector<real64> &v = fParams.fParams;

			for (dng_std_vector<real64>::const_reverse_iterator i = v.rbegin (); i != v.rend (); i++)
				{
				sum = x * ((*i) + sum);
				}

			sum += 1.0;

			return sum;

			}
		
	};

/*****************************************************************************/

dng_opcode_FixVignetteRadial::dng_opcode_FixVignetteRadial (const dng_vignette_radial_params &params,
															uint32 flags)

	:	dng_inplace_opcode (dngOpcode_FixVignetteRadial,
							dngVersion_1_3_0_0,
							flags)

	,	fParams (params)

	,	fImagePlanes (1)

	,	fSrcOriginH (0)
	,	fSrcOriginV (0)
	
	,	fSrcStepH (0)
	,	fSrcStepV (0)
	
	,	fTableInputBits	 (0)
	,	fTableOutputBits (0)
	
	,	fGainTable ()

	{
	
	if (!params.IsValid ())
		{
		ThrowBadFormat ();
		}
	
	}
		
/*****************************************************************************/

dng_opcode_FixVignetteRadial::dng_opcode_FixVignetteRadial (dng_stream &stream)

	:	dng_inplace_opcode (dngOpcode_FixVignetteRadial,
							stream,
							"FixVignetteRadial")

	,	fParams ()

	,	fImagePlanes (1)

	,	fSrcOriginH (0)
	,	fSrcOriginV (0)
	
	,	fSrcStepH (0)
	,	fSrcStepV (0)
	
	,	fTableInputBits	 (0)
	,	fTableOutputBits (0)

	,	fGainTable ()
	
	{
	
	// Grab the size in bytes.

	const uint32 bytes = stream.Get_uint32 ();

	// Verify the size.

	if (bytes != ParamBytes ())
		{
		ThrowBadFormat ();
		}

	// Read vignette coefficients.

	fParams.fParams = dng_std_vector<real64> (dng_vignette_radial_params::kNumTerms);

	for (uint32 i = 0; i < dng_vignette_radial_params::kNumTerms; i++)
		{
		fParams.fParams [i] = stream.Get_real64 ();
		}

	// Read the image center.

	fParams.fCenter.h = stream.Get_real64 ();
	fParams.fCenter.v = stream.Get_real64 ();

	// Debug.
	
	#if qDNGValidate
	
	if (gVerbose)
		{

		fParams.Dump ();

		}
		
	#endif

	if (!fParams.IsValid ())
		{
		ThrowBadFormat ();
		}
	
	}
	
/*****************************************************************************/

bool dng_opcode_FixVignetteRadial::IsNOP () const
	{
	
	return fParams.IsNOP ();
	
	}
		
/*****************************************************************************/

bool dng_opcode_FixVignetteRadial::IsValidForNegative (const dng_negative & /* negative */) const
	{
	
	return fParams.IsValid ();
	
	}
	
/*****************************************************************************/

void dng_opcode_FixVignetteRadial::PutData (dng_stream &stream) const
	{
	
	const uint32 bytes = ParamBytes ();
	
	stream.Put_uint32 (bytes);

	DNG_REQUIRE (fParams.fParams.size () == dng_vignette_radial_params::kNumTerms,
				 "Bad number of vignette opcode coefficients.");

	for (uint32 i = 0; i < dng_vignette_radial_params::kNumTerms; i++)
		{
		stream.Put_real64 (fParams.fParams [i]);
		}

	stream.Put_real64 (fParams.fCenter.h);
	stream.Put_real64 (fParams.fCenter.v);
	
	}

/*****************************************************************************/

void dng_opcode_FixVignetteRadial::Prepare (dng_negative &negative,
											uint32 threadCount,
											const dng_point &tileSize,
											const dng_rect &imageBounds,
											uint32 imagePlanes,
											uint32 bufferPixelType,
											dng_memory_allocator &allocator)
	{

	// This opcode is restricted to 32-bit images.
	
	if (bufferPixelType != ttFloat)
		{
		ThrowBadFormat ();
		}

	// Sanity check number of planes.

	DNG_ASSERT (imagePlanes >= 1 && imagePlanes <= kMaxColorPlanes, 
				"Bad number of planes.");

	if (imagePlanes < 1 || imagePlanes > kMaxColorPlanes)
		{
		ThrowProgramError ();
		}
	
	fImagePlanes = imagePlanes;

	// Get the vignette radial params.

	dng_vignette_radial_params params = MakeParamsForRender (negative);

	// Grab the destination image area.

	const dng_rect_real64 bounds (imageBounds);

	// Determine the optical center and maximum radius in pixel coordinates.

	const dng_point_real64 centerPixel (Lerp_real64 (bounds.t,
													 bounds.b,
													 params.fCenter.v),

										Lerp_real64 (bounds.l,
													 bounds.r,
													 params.fCenter.h));

	const real64 pixelScaleV = 1.0 / negative.PixelAspectRatio ();

	const real64 maxRadius = hypot (Max_real64 (Abs_real64 (centerPixel.v - bounds.t),
												Abs_real64 (centerPixel.v - bounds.b)) * pixelScaleV,

									Max_real64 (Abs_real64 (centerPixel.h - bounds.l),
												Abs_real64 (centerPixel.h - bounds.r)));

	const dng_point_real64 radius (maxRadius,
								   maxRadius);

	// Find origin and scale.

	const real64 pixelScaleH = 1.0;
	
	fSrcOriginH = Real64ToFixed64 (-centerPixel.h * pixelScaleH / radius.h);
	fSrcOriginV = Real64ToFixed64 (-centerPixel.v * pixelScaleV / radius.v);
	
	fSrcStepH = Real64ToFixed64 (pixelScaleH / radius.h);
	fSrcStepV = Real64ToFixed64 (pixelScaleV / radius.v);
	
	// Adjust for pixel centers.
	
	fSrcOriginH += fSrcStepH >> 1;
	fSrcOriginV += fSrcStepV >> 1;
	
	if (!fGainTable.Get ())
		{

		// Set the vignette correction curve.

		const dng_vignette_radial_function curve (params);

		// Evaluate 32-bit vignette correction table.
	
		dng_1d_table table32;
	
		table32.Initialize (allocator,
							curve,
							false);
	
		// Find maximum scale factor.
	
		const real64 maxScale = Max_real32 (table32.Interpolate (0.0f),
											table32.Interpolate (1.0f));
								  
		// Find table input bits.
	
		fTableInputBits = 16;
								  
		// Find table output bits.
	
		fTableOutputBits = 15;
	
		while (fTableOutputBits > 0 &&
			   (1 << fTableOutputBits) * maxScale > 65535.0)
			{
			fTableOutputBits--;
			}
	
		// Allocate 16-bit scale table.
	
		const uint32 tableEntries = (1 << fTableInputBits) + 1;
	
		fGainTable.Reset (allocator.Allocate (tableEntries * (uint32) sizeof (uint16)));
	
		uint16 *table16 = fGainTable->Buffer_uint16 ();
	
		// Interpolate 32-bit table into 16-bit table.
	
		const real32 scale0 = 1.0f / (1 << fTableInputBits );
		const real32 scale1 = 1.0f * (1 << fTableOutputBits);
	
		for (uint32 index = 0; index < tableEntries; index++)
			{
		
			real32 x = index * scale0;
		
			real32 y = table32.Interpolate (x) * scale1;
		
			ConvertUnsigned<uint32, uint16>(Round_uint32(y), &table16[index]);
		
			}

		}

	// Prepare vignette mask buffers.

		{

		const uint32 pixelType = ttShort;

		const uint32 bufferSize = ComputeBufferSize (pixelType, 
													 tileSize,
													 imagePlanes, 
													 padSIMDBytes);

		// Support repeated Prepare() calls by ensuring all buffers are reset.

		for (uint32 threadIndex = 0; threadIndex < kMaxMPThreads; threadIndex++)
			{
				
			fMaskBuffers [threadIndex] . Reset ();
				
			}

		for (uint32 threadIndex = 0; threadIndex < threadCount; threadIndex++)
			{
				
			fMaskBuffers [threadIndex] . Reset (allocator.Allocate (bufferSize));
				
			}

		}
				
	}

/*****************************************************************************/

void dng_opcode_FixVignetteRadial::ProcessArea (dng_negative &negative,
												uint32 threadIndex,
												dng_pixel_buffer &buffer,
												const dng_rect &dstArea,
												const dng_rect & /* imageBounds */)
	{

	// Setup mask pixel buffer.
			
	dng_pixel_buffer maskPixelBuffer (dstArea, 
									  0, 
									  fImagePlanes, 
									  ttShort,
									  pcRowInterleavedAlignSIMD,
									  fMaskBuffers [threadIndex]->Buffer ());

	// Compute mask.

	DoVignetteMask16 (maskPixelBuffer.DirtyPixel_uint16 (dstArea.t, dstArea.l),
					  dstArea.H (),
					  dstArea.W (),
					  maskPixelBuffer.RowStep (),
					  fSrcOriginH + fSrcStepH * dstArea.l,
					  fSrcOriginV + fSrcStepV * dstArea.t,
					  fSrcStepH,
					  fSrcStepV,
					  fTableInputBits,
					  fGainTable->Buffer_uint16 ());

	// Apply mask.
 
	uint16 blackLevel = (Stage () >= 2) ? negative.Stage3BlackLevel () : 0;

	DoVignette32 (buffer.DirtyPixel_real32 (dstArea.t, dstArea.l),
				  maskPixelBuffer.ConstPixel_uint16 (dstArea.t, dstArea.l),
				  dstArea.H (),
				  dstArea.W (),
				  fImagePlanes,
				  buffer.RowStep (),
				  buffer.PlaneStep (),
				  maskPixelBuffer.RowStep (),
				  fTableOutputBits,
				  blackLevel);

	}

/*****************************************************************************/

uint32 dng_opcode_FixVignetteRadial::ParamBytes ()
	{

	const uint32 N = dng_vignette_radial_params::kNumTerms;
	
	return ((N * sizeof (real64)) +	 // Vignette coefficients.
			(2 * sizeof (real64)));	 // Optical center.
	
	}

/*****************************************************************************/

dng_vignette_radial_params dng_opcode_FixVignetteRadial::MakeParamsForRender
	(const dng_negative &negative)
	{
	
	(void) negative;

	return fParams;
	
	}

/*****************************************************************************/
