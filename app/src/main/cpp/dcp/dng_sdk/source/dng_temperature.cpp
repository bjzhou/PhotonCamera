/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_temperature.h"

#include "dng_utils.h"
#include "dng_xy_coord.h"

#include <atomic>
#include <cmath>
#include <mutex>
#include <vector>

/*****************************************************************************/

// Scale factor between distances in uv space to a more user friendly "tint"
// parameter.

static const real64 kTintScale = -3000.0;

/*****************************************************************************/

// Table from Wyszecki & Stiles, "Color Science", second edition, page 228.

struct ruvt
	{
	real64 r;
	real64 u;
	real64 v;
	real64 t;
	};
	
static const ruvt kTempTable [] =
	{
	{	0, 0.18006, 0.26352, -0.24341 },
	{  10, 0.18066, 0.26589, -0.25479 },
	{  20, 0.18133, 0.26846, -0.26876 },
	{  30, 0.18208, 0.27119, -0.28539 },
	{  40, 0.18293, 0.27407, -0.30470 },
	{  50, 0.18388, 0.27709, -0.32675 },
	{  60, 0.18494, 0.28021, -0.35156 },
	{  70, 0.18611, 0.28342, -0.37915 },
	{  80, 0.18740, 0.28668, -0.40955 },
	{  90, 0.18880, 0.28997, -0.44278 },
	{ 100, 0.19032, 0.29326, -0.47888 },
	{ 125, 0.19462, 0.30141, -0.58204 },
	{ 150, 0.19962, 0.30921, -0.70471 },
	{ 175, 0.20525, 0.31647, -0.84901 },
	{ 200, 0.21142, 0.32312, -1.0182 },
	{ 225, 0.21807, 0.32909, -1.2168 },
	{ 250, 0.22511, 0.33439, -1.4512 },
	{ 275, 0.23247, 0.33904, -1.7298 },
	{ 300, 0.24010, 0.34308, -2.0637 },
	{ 325, 0.24702, 0.34655, -2.4681 },
	{ 350, 0.25591, 0.34951, -2.9641 },
	{ 375, 0.26400, 0.35200, -3.5814 },
	{ 400, 0.27218, 0.35407, -4.3633 },
	{ 425, 0.28039, 0.35577, -5.3762 },
	{ 450, 0.28863, 0.35714, -6.7262 },
	{ 475, 0.29685, 0.35823, -8.5955 },
	{ 500, 0.30505, 0.35907, -11.324 },
	{ 525, 0.31320, 0.35968, -15.628 },
	{ 550, 0.32129, 0.36011, -23.325 },
	{ 575, 0.32931, 0.36038, -40.770 },
	{ 600, 0.33724, 0.36051, -116.45 }
	};

/*****************************************************************************/

namespace
	{

	const real64 kExtendedMinTemperature = 1500.0;
	const real64 kExtendedBlendStart	 = 1667.0;
	const real64 kExtendedBlendEnd		 = 2000.0;
	const real64 kExtendedMaxTemperature = 50000.0;
	const real64 kExtendedMinTint		 = -150.0;
	const real64 kExtendedMaxTint		 = +150.0;

	const int32 kExtendedLUTTempStep	 = 5;
	const int32 kExtendedLUTTintStep	 = 5;
	const int32 kExtendedLUTTempCount	 = 101;	// 1500..2000 inclusive
	const int32 kExtendedLUTTintCount	 = 61;	// -150..150 inclusive

	std::atomic<bool> gEnableLowTemperatureLimit (false);

	std::once_flag gExtendedLUTOnce;
	std::vector<dng_xy_coord> gExtendedLUT;

	inline real64 SmoothStep (real64 x)
		{
		x = Pin_real64 (0.0, x, 1.0);
		return x * x * (3.0 - 2.0 * x);
		}

	inline real64 LerpReal64 (real64 a,
							  real64 b,
							  real64 t)
		{
		return a + (b - a) * t;
		}

	static const real64 kCIE1931_2Deg5nm_380_830 [91][3] =
		{
		{0.001368000000, 0.000039000000, 0.006450001000},
		{0.002236000000, 0.000064000000, 0.010549990000},
		{0.004243000000, 0.000120000000, 0.020050010000},
		{0.007650000000, 0.000217000000, 0.036210000000},
		{0.014310000000, 0.000396000000, 0.067850010000},
		{0.023190000000, 0.000640000000, 0.110200000000},
		{0.043510000000, 0.001210000000, 0.207400000000},
		{0.077630000000, 0.002180000000, 0.371300000000},
		{0.134380000000, 0.004000000000, 0.645600000000},
		{0.214770000000, 0.007300000000, 1.039050100000},
		{0.283900000000, 0.011600000000, 1.385600000000},
		{0.328500000000, 0.016840000000, 1.622960000000},
		{0.348280000000, 0.023000000000, 1.747060000000},
		{0.348060000000, 0.029800000000, 1.782600000000},
		{0.336200000000, 0.038000000000, 1.772110000000},
		{0.318700000000, 0.048000000000, 1.744100000000},
		{0.290800000000, 0.060000000000, 1.669200000000},
		{0.251100000000, 0.073900000000, 1.528100000000},
		{0.195360000000, 0.090980000000, 1.287640000000},
		{0.142100000000, 0.112600000000, 1.041900000000},
		{0.095640000000, 0.139020000000, 0.812950100000},
		{0.057950010000, 0.169300000000, 0.616200000000},
		{0.032010000000, 0.208020000000, 0.465180000000},
		{0.014700000000, 0.258600000000, 0.353300000000},
		{0.004900000000, 0.323000000000, 0.272000000000},
		{0.002400000000, 0.407300000000, 0.212300000000},
		{0.009300000000, 0.503000000000, 0.158200000000},
		{0.029100000000, 0.608200000000, 0.111700000000},
		{0.063270000000, 0.710000000000, 0.078249990000},
		{0.109600000000, 0.793200000000, 0.057250010000},
		{0.165500000000, 0.862000000000, 0.042160000000},
		{0.225749900000, 0.914850100000, 0.029840000000},
		{0.290400000000, 0.954000000000, 0.020300000000},
		{0.359700000000, 0.980300000000, 0.013400000000},
		{0.433449900000, 0.994950100000, 0.008749999000},
		{0.512050100000, 1.000000000000, 0.005749999000},
		{0.594500000000, 0.995000000000, 0.003900000000},
		{0.678400000000, 0.978600000000, 0.002749999000},
		{0.762100000000, 0.952000000000, 0.002100000000},
		{0.842500000000, 0.915400000000, 0.001800000000},
		{0.916300000000, 0.870000000000, 0.001650001000},
		{0.978600000000, 0.816300000000, 0.001400000000},
		{1.026300000000, 0.757000000000, 0.001100000000},
		{1.056700000000, 0.694900000000, 0.001000000000},
		{1.062200000000, 0.631000000000, 0.000800000000},
		{1.045600000000, 0.566800000000, 0.000600000000},
		{1.002600000000, 0.503000000000, 0.000340000000},
		{0.938400000000, 0.441200000000, 0.000240000000},
		{0.854449900000, 0.381000000000, 0.000190000000},
		{0.751400000000, 0.321000000000, 0.000100000000},
		{0.642400000000, 0.265000000000, 0.000049999990},
		{0.541900000000, 0.217000000000, 0.000030000000},
		{0.447900000000, 0.175000000000, 0.000020000000},
		{0.360800000000, 0.138200000000, 0.000010000000},
		{0.283500000000, 0.107000000000, 0.000000000000},
		{0.218700000000, 0.081600000000, 0.000000000000},
		{0.164900000000, 0.061000000000, 0.000000000000},
		{0.121200000000, 0.044580000000, 0.000000000000},
		{0.087400000000, 0.032000000000, 0.000000000000},
		{0.063600000000, 0.023200000000, 0.000000000000},
		{0.046770000000, 0.017000000000, 0.000000000000},
		{0.032900000000, 0.011920000000, 0.000000000000},
		{0.022700000000, 0.008210000000, 0.000000000000},
		{0.015840000000, 0.005723000000, 0.000000000000},
		{0.011359160000, 0.004102000000, 0.000000000000},
		{0.008110916000, 0.002929000000, 0.000000000000},
		{0.005790346000, 0.002091000000, 0.000000000000},
		{0.004109457000, 0.001484000000, 0.000000000000},
		{0.002899327000, 0.001047000000, 0.000000000000},
		{0.002049190000, 0.000740000000, 0.000000000000},
		{0.001439971000, 0.000520000000, 0.000000000000},
		{0.000999949300, 0.000361100000, 0.000000000000},
		{0.000690078600, 0.000249200000, 0.000000000000},
		{0.000476021300, 0.000171900000, 0.000000000000},
		{0.000332301100, 0.000120000000, 0.000000000000},
		{0.000234826100, 0.000084800000, 0.000000000000},
		{0.000166150500, 0.000060000000, 0.000000000000},
		{0.000117413000, 0.000042400000, 0.000000000000},
		{0.000083075270, 0.000030000000, 0.000000000000},
		{0.000058706520, 0.000021200000, 0.000000000000},
		{0.000041509940, 0.000014990000, 0.000000000000},
		{0.000029353260, 0.000010600000, 0.000000000000},
		{0.000020673830, 0.000007465700, 0.000000000000},
		{0.000014559770, 0.000005257800, 0.000000000000},
		{0.000010253980, 0.000003702900, 0.000000000000},
		{0.000007221456, 0.000002607800, 0.000000000000},
		{0.000005085868, 0.000001836600, 0.000000000000},
		{0.000003581652, 0.000001293400, 0.000000000000},
		{0.000002522525, 0.000000910930, 0.000000000000},
		{0.000001776509, 0.000000641530, 0.000000000000},
		{0.000001251141, 0.000000451810, 0.000000000000}
		};

	void CIE1931ObserverTabulated (real64 lambdaNm,
								   real64 &xBar,
								   real64 &yBar,
								   real64 &zBar)
		{
		
		const real64 clampedLambda = Pin_real64 (380.0, lambdaNm, 830.0);
		const real64 idxFloat = (clampedLambda - 380.0) / 5.0;
		const int32 idx0 = Pin_int32 (0, (int32) floor (idxFloat), 90);
		const int32 idx1 = Pin_int32 (0, idx0 + 1, 90);
		const real64 t = idxFloat - (real64) idx0;

		const real64 *v0 = kCIE1931_2Deg5nm_380_830 [idx0];
		const real64 *v1 = kCIE1931_2Deg5nm_380_830 [idx1];

		xBar = (1.0 - t) * v0 [0] + t * v1 [0];
		yBar = (1.0 - t) * v0 [1] + t * v1 [1];
		zBar = (1.0 - t) * v0 [2] + t * v1 [2];
		
		}

	dng_xy_coord LegacyGetXY (real64 temperature,
							  real64 tint)
		{
		
		dng_xy_coord result;

		real64 r = 1.0E6 / temperature;
		real64 offset = tint * (1.0 / kTintScale);

		for (uint32 index = 0; index <= 29; index++)
			{

			if (r < kTempTable [index + 1] . r || index == 29)
				{

				real64 f = (kTempTable [index + 1] . r - r) /
						   (kTempTable [index + 1] . r - kTempTable [index] . r);

				real64 u = kTempTable [index	] . u * f +
						   kTempTable [index + 1] . u * (1.0 - f);

				real64 v = kTempTable [index	] . v * f +
						   kTempTable [index + 1] . v * (1.0 - f);

				real64 uu1 = 1.0;
				real64 vv1 = kTempTable [index] . t;

				real64 uu2 = 1.0;
				real64 vv2 = kTempTable [index + 1] . t;

				real64 len1 = sqrt (1.0 + vv1 * vv1);
				real64 len2 = sqrt (1.0 + vv2 * vv2);

				uu1 /= len1;
				vv1 /= len1;

				uu2 /= len2;
				vv2 /= len2;

				real64 uu3 = uu1 * f + uu2 * (1.0 - f);
				real64 vv3 = vv1 * f + vv2 * (1.0 - f);

				real64 len3 = sqrt (uu3 * uu3 + vv3 * vv3);

				uu3 /= len3;
				vv3 /= len3;

				u += uu3 * offset;
				v += vv3 * offset;

				result.x = 1.5 * u / (u - 4.0 * v + 2.0);
				result.y =		 v / (u - 4.0 * v + 2.0);

				break;

				}

			}

		return result;
		
		}

	void LegacySetXY (const dng_xy_coord &xy,
					  real64 &temperature,
					  real64 &tint)
		{
		
		real64 u = 2.0 * xy.x / (1.5 - xy.x + 6.0 * xy.y);
		real64 v = 3.0 * xy.y / (1.5 - xy.x + 6.0 * xy.y);

		real64 last_dt = 0.0;
		real64 last_dv = 0.0;
		real64 last_du = 0.0;

		for (uint32 index = 1; index <= 30; index++)
			{
			
			real64 du = 1.0;
			real64 dv = kTempTable [index] . t;

			real64 len = sqrt (1.0 + dv * dv);

			du /= len;
			dv /= len;

			real64 uu = u - kTempTable [index] . u;
			real64 vv = v - kTempTable [index] . v;

			real64 dt = - uu * dv + vv * du;

			if (dt <= 0.0 || index == 30)
				{
				if (dt > 0.0)
					{
					dt = 0.0;
					}

				dt = -dt;

				real64 f = index == 1
					? 0.0
					: dt / (last_dt + dt);

				temperature = 1.0E6 / (kTempTable [index - 1] . r * f +
									   kTempTable [index	 ] . r * (1.0 - f));

				uu = u - (kTempTable [index - 1] . u * f +
						  kTempTable [index	   ] . u * (1.0 - f));

				vv = v - (kTempTable [index - 1] . v * f +
						  kTempTable [index	   ] . v * (1.0 - f));

				du = du * (1.0 - f) + last_du * f;
				dv = dv * (1.0 - f) + last_dv * f;

				len = sqrt (du * du + dv * dv);

				du /= len;
				dv /= len;

				tint = (uu * du + vv * dv) * kTintScale;

				break;
				}

			last_dt = dt;
			last_du = du;
			last_dv = dv;
			
			}
		
		}

	dng_xy_coord PlanckReferenceXYForTemp (real64 tempK)
		{
		
		const real64 c2 = 1.438776877e-2;
		const real64 deltaNm = 5.0;
		const real64 lambdaMinNm = 380.0;
		const real64 lambdaMaxNm = 830.0;

		real64 X = 0.0;
		real64 Y = 0.0;
		real64 Z = 0.0;

		for (real64 lambdaNm = lambdaMinNm;
			 lambdaNm <= lambdaMaxNm;
			 lambdaNm += deltaNm)
			{
			
			const real64 lambdaM = lambdaNm * 1.0e-9;
			const real64 exponent = c2 / (lambdaM * tempK);
			const real64 denom = exp (exponent) - 1.0;

			if (denom <= 0.0)
				{
				continue;
				}

			const real64 spd = 1.0 / (pow (lambdaM, 5.0) * denom);

			real64 xBar = 0.0;
			real64 yBar = 0.0;
			real64 zBar = 0.0;
			
			CIE1931ObserverTabulated (lambdaNm, xBar, yBar, zBar);

			const real64 w =
				(lambdaNm == lambdaMinNm || lambdaNm == lambdaMaxNm) ? 0.5 : 1.0;

			X += spd * xBar * deltaNm * w;
			Y += spd * yBar * deltaNm * w;
			Z += spd * zBar * deltaNm * w;
			
			}

		const real64 sum = X + Y + Z;

		if (sum <= 0.0)
			{
			return LegacyGetXY (tempK, 0.0);
			}

		return dng_xy_coord (X / sum, Y / sum);

		}

	dng_xy_coord ExtendedReferenceXY (real64 temperature,
									  real64 tint)
		{
		
		temperature = Pin_real64 (kExtendedMinTemperature,
								  temperature,
								  kExtendedMaxTemperature);
		tint = Pin_real64 (kExtendedMinTint, tint, kExtendedMaxTint);

		const dng_xy_coord xyRef0 = PlanckReferenceXYForTemp (temperature);
		const dng_xy_coord xyDng0 = LegacyGetXY (temperature, 0.0);
		const dng_xy_coord xyDngT = LegacyGetXY (temperature, tint);

		return dng_xy_coord (xyRef0.x + (xyDngT.x - xyDng0.x),
							 xyRef0.y + (xyDngT.y - xyDng0.y));

		}

	size_t ExtendedLUTIndex (int32 tempIndex,
							 int32 tintIndex)
		{
		
		return (size_t) tempIndex * (size_t) kExtendedLUTTintCount +
			   (size_t) tintIndex;
		
		}

	void BuildExtendedTemperatureLUT ()
		{
		
		gExtendedLUT.resize ((size_t) kExtendedLUTTempCount *
							 (size_t) kExtendedLUTTintCount);

		for (int32 tIdx = 0; tIdx < kExtendedLUTTempCount; tIdx++)
			{
			const real64 temp = kExtendedMinTemperature +
								(real64) (tIdx * kExtendedLUTTempStep);

			for (int32 gIdx = 0; gIdx < kExtendedLUTTintCount; gIdx++)
				{
				const real64 tint = kExtendedMinTint +
									(real64) (gIdx * kExtendedLUTTintStep);

				gExtendedLUT [ExtendedLUTIndex (tIdx, gIdx)] =
					ExtendedReferenceXY (temp, tint);
				
				}
			
			}
		
		}

	dng_xy_coord LookupExtendedReferenceLUT (real64 temperature,
											 real64 tint)
		{

		// Ensure the LUT is initialized before we try to access it.
		
		InitExtendedTemperatureLUT ();

		temperature = Pin_real64 (kExtendedMinTemperature,
								  temperature,
								  kExtendedBlendEnd);
		
		tint = Pin_real64 (kExtendedMinTint, tint, kExtendedMaxTint);

		const real64 tempF =
			(temperature - kExtendedMinTemperature) / (real64) kExtendedLUTTempStep;
		const real64 tintF =
			(tint - kExtendedMinTint) / (real64) kExtendedLUTTintStep;

		const int32 t0 = Pin_int32 (0,
									(int32) floor (tempF),
									kExtendedLUTTempCount - 1);
		const int32 g0 = Pin_int32 (0,
									(int32) floor (tintF),
									kExtendedLUTTintCount - 1);
		const int32 t1 = Pin_int32 (0, t0 + 1, kExtendedLUTTempCount - 1);
		const int32 g1 = Pin_int32 (0, g0 + 1, kExtendedLUTTintCount - 1);

		const real64 wt = tempF - (real64) t0;
		const real64 wg = tintF - (real64) g0;

		const dng_xy_coord v00 = gExtendedLUT [ExtendedLUTIndex (t0, g0)];
		const dng_xy_coord v10 = gExtendedLUT [ExtendedLUTIndex (t1, g0)];
		const dng_xy_coord v01 = gExtendedLUT [ExtendedLUTIndex (t0, g1)];
		const dng_xy_coord v11 = gExtendedLUT [ExtendedLUTIndex (t1, g1)];

		const real64 x0 = LerpReal64 (v00.x, v10.x, wt);
		const real64 x1 = LerpReal64 (v01.x, v11.x, wt);
		const real64 y0 = LerpReal64 (v00.y, v10.y, wt);
		const real64 y1 = LerpReal64 (v01.y, v11.y, wt);

		return dng_xy_coord (LerpReal64 (x0, x1, wg),
							 LerpReal64 (y0, y1, wg));

		}

	dng_xy_coord ExtendedGetXY (real64 temperature,
								real64 tint)
		{
		
		temperature = Pin_real64 (kExtendedMinTemperature,
								  temperature,
								  kExtendedMaxTemperature);

		tint = Pin_real64 (kExtendedMinTint, tint, kExtendedMaxTint);

		if (temperature >= kExtendedBlendEnd)
			{
			return LegacyGetXY (temperature, tint);
			}

		const dng_xy_coord xyRef = LookupExtendedReferenceLUT (temperature, tint);

		if (temperature <= kExtendedBlendStart)
			{
			return xyRef;
			}

		const dng_xy_coord xyLegacy = LegacyGetXY (temperature, tint);

		const real64 t = (temperature - kExtendedBlendStart) /
						 (kExtendedBlendEnd - kExtendedBlendStart);

		const real64 w = SmoothStep (t);

		return dng_xy_coord (LerpReal64 (xyRef.x, xyLegacy.x, w),
							 LerpReal64 (xyRef.y, xyLegacy.y, w));

		}

	real64 XYErrorSq (const dng_xy_coord &a,
					  const dng_xy_coord &b)
		{
		
		const real64 dx = a.x - b.x;
		const real64 dy = a.y - b.y;
		
		return dx * dx + dy * dy;
		
		}

	}	// namespace

/*****************************************************************************/

void SetDNGEnableLowTemperatureLimit (bool enable)
	{
	gEnableLowTemperatureLimit.store (enable, std::memory_order_relaxed);
	}

/*****************************************************************************/

bool GetDNGEnableLowTemperatureLimit ()
	{
	return gEnableLowTemperatureLimit.load (std::memory_order_relaxed);
	}

/*****************************************************************************/

void InitExtendedTemperatureLUT ()
	{
	std::call_once (gExtendedLUTOnce, BuildExtendedTemperatureLUT);
	}

/*****************************************************************************/

void dng_temperature::Set_xy_coord (const dng_xy_coord &xy)
	{

	LegacySetXY (xy, fTemperature, fTint);

	if (!GetDNGEnableLowTemperatureLimit () || fTemperature >= kExtendedBlendEnd)
		{
		return;
		}

	real64 bestTemp = Pin_real64 (kExtendedMinTemperature,
								  fTemperature,
								  kExtendedBlendEnd);

	real64 bestTint = Pin_real64 (kExtendedMinTint, fTint, kExtendedMaxTint);

	real64 bestError = XYErrorSq (ExtendedGetXY (bestTemp, bestTint), xy);

	int32 tempStep = 128;
	int32 tintStep = 64;

	while (tempStep >= 1 || tintStep >= 1)
		{

		bool improved = false;

		for (int32 sign = -1; sign <= 1; sign += 2)
			{

			if (tempStep >= 1)
				{

				const real64 candidateTemp =
					Pin_real64 (kExtendedMinTemperature,
								bestTemp + (real64) (sign * tempStep),
								kExtendedBlendEnd);

				const real64 candidateErr =
					XYErrorSq (ExtendedGetXY (candidateTemp, bestTint), xy);

				if (candidateErr < bestError)
					{
					bestError = candidateErr;
					bestTemp = candidateTemp;
					improved = true;
					}

				}

			if (tintStep >= 1)
				{

				const real64 candidateTint =
					Pin_real64 (kExtendedMinTint,
								bestTint + (real64) (sign * tintStep),
								kExtendedMaxTint);

				const real64 candidateErr =
					XYErrorSq (ExtendedGetXY (bestTemp, candidateTint), xy);

				if (candidateErr < bestError)
					{
					bestError = candidateErr;
					bestTint = candidateTint;
					improved = true;
					}

				}

			}

		if (!improved)
			{
			tempStep = tempStep > 1 ? tempStep / 2 : 0;
			tintStep = tintStep > 1 ? tintStep / 2 : 0;
			}

		}

	fTemperature = bestTemp;
	fTint = bestTint;

	}
			
/*****************************************************************************/

dng_xy_coord dng_temperature::Get_xy_coord () const
	{

	if (!GetDNGEnableLowTemperatureLimit () || fTemperature >= kExtendedBlendEnd)
		{
		return LegacyGetXY (fTemperature, fTint);
		}

	return ExtendedGetXY (fTemperature, fTint);

	}
			
/*****************************************************************************/
