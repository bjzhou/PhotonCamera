/*****************************************************************************/
// Copyright 2008-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_gain_map.h"

#include "dng_exceptions.h"
#include "dng_globals.h"
#include "dng_host.h"
#include "dng_negative.h"
#include "dng_pixel_buffer.h"
#include "dng_safe_arithmetic.h"
#include "dng_sdk_limits.h"
#include "dng_stream.h"
#include "dng_tag_values.h"

/*****************************************************************************/

class dng_gain_map_interpolator
	{
	
	private:
	
		const dng_gain_map &fMap;
		
		dng_point_real64 fScale;
		dng_point_real64 fOffset;
		
		int32 fColumn;
		int32 fPlane;
		
		uint32 fRowIndex1;
		uint32 fRowIndex2;
		real32 fRowFract;
		
		int32 fResetColumn;
		
		real32 fValueBase;
		real32 fValueStep;
		real32 fValueIndex;
			
	public:
	
		dng_gain_map_interpolator (const dng_gain_map &map,
								   const dng_rect &mapBounds,
								   int32 row,
								   int32 column,
								   uint32 plane);

		real32 Interpolate () const
			{
			
			return fValueBase + fValueStep * fValueIndex;
			
			}
			
		void Increment ()
			{
			
			if (++fColumn >= fResetColumn)
				{
				
				ResetColumn ();
				
				}
				
			else
				{
				
				fValueIndex += 1.0f;
				
				}
						
			}
	
	private:
			
		real32 InterpolateEntry (uint32 colIndex);
			
		void ResetColumn ();
			
	};
			
/*****************************************************************************/

dng_gain_map_interpolator::dng_gain_map_interpolator (const dng_gain_map &map,
													  const dng_rect &mapBounds,
													  int32 row,
													  int32 column,
													  uint32 plane)

	:	fMap (map)
	
	,	fScale (mapBounds.H () > 0 ? 1.0 / mapBounds.H () : 0.0,
				mapBounds.W () > 0 ? 1.0 / mapBounds.W () : 0.0)
	
	,	fOffset (0.5 - mapBounds.t,
				 0.5 - mapBounds.l)
	
	,	fColumn (column)
	,	fPlane	(plane)
	
	,	fRowIndex1 (0)
	,	fRowIndex2 (0)
	,	fRowFract  (0.0f)
	
	,	fResetColumn (0)
	
	,	fValueBase	(0.0f)
	,	fValueStep	(0.0f)
	,	fValueIndex (0.0f)
	
	{

	if (!(fMap.Spacing ().v > 0.0) ||
		!(fMap.Spacing ().h > 0.0))
		{
		ThrowBadFormat ("Invalid gain map spacing");
		}

	real64 rowIndexF = (fScale.v * (row + fOffset.v) -
						fMap.Origin ().v) / fMap.Spacing ().v;
	
	// NaN fails both <= and >= comparisons, falling through to the
	// cast at line below with undefined results. Treat NaN or infinite
	// values as 0.

	if (!std::isfinite (rowIndexF))
		rowIndexF = 0.0;

	if (rowIndexF <= 0.0)
		{
		
		fRowIndex1 = 0;
		fRowIndex2 = 0;
		
		fRowFract = 0.0f;

		}
		
	else
		{
		
		if (fMap.Points ().v < 1)
			{
			ThrowProgramError ("Empty gain map");
			}

		uint32 lastRow = static_cast<uint32> (fMap.Points ().v - 1);
		
		if (rowIndexF >= static_cast<real64> (lastRow))
			{
			
			fRowIndex1 = lastRow;
			fRowIndex2 = fRowIndex1;
			
			fRowFract = 0.0f;
			
			}
			
		else
			{
			
			// If we got here, we know that rowIndexF can safely be converted to
			// a uint32 and that static_cast<uint32> (rowIndexF) < lastRow. This
			// implies fRowIndex2 <= lastRow below.

			fRowIndex1 = static_cast<uint32> (rowIndexF);
			fRowIndex2 = fRowIndex1 + 1;
			
			fRowFract = (real32) (rowIndexF - (real64) fRowIndex1);
			
			}
			
		}
	
	ResetColumn ();
		
	}

/*****************************************************************************/

real32 dng_gain_map_interpolator::InterpolateEntry (uint32 colIndex)
	{
	
	return fMap.Entry (fRowIndex1, colIndex, fPlane) * (1.0f - fRowFract) +
		   fMap.Entry (fRowIndex2, colIndex, fPlane) * (	   fRowFract);
	
	}

/*****************************************************************************/

void dng_gain_map_interpolator::ResetColumn ()
	{
	
	real64 colIndexF = ((fScale.h * (fColumn + fOffset.h)) - 
						fMap.Origin ().h) / fMap.Spacing ().h;
	
	// NaN fails both <= and >= comparisons, falling through to the
	// cast at line below with undefined results. Treat NaN or infinite
	// values as 0.

	if (!std::isfinite (colIndexF))
		colIndexF = 0.0;

	if (colIndexF <= 0.0)
		{
		
		fValueBase = InterpolateEntry (0);
		
		fValueStep = 0.0f;
		
		fResetColumn = (int32) ceil (fMap.Origin ().h / fScale.h - fOffset.h);

		}
		
	else
		{
	
		if (fMap.Points ().h < 1)
			{
			ThrowProgramError ("Empty gain map");
			}

		uint32 lastCol = static_cast<uint32> (fMap.Points ().h - 1);
		
		if (colIndexF >= static_cast<real64> (lastCol))
			{
			
			fValueBase = InterpolateEntry (lastCol);
			
			fValueStep = 0.0f;
			
			fResetColumn = 0x7FFFFFFF;
			
			}
		
		else
			{
			
			// If we got here, we know that colIndexF can safely be converted
			// to a uint32 and that static_cast<uint32> (colIndexF) < lastCol.
			// This implies colIndex + 1 <= lastCol, i.e. the argument to
			// InterpolateEntry() below is valid.

			uint32 colIndex = static_cast<uint32> (colIndexF);

			real64 base	 = InterpolateEntry (colIndex);
			real64 delta = InterpolateEntry (colIndex + 1) - base;
			
			fValueBase = (real32) (base + delta * (colIndexF - (real64) colIndex));
			
			fValueStep = (real32) ((delta * fScale.h) / fMap.Spacing ().h);
			
			fResetColumn =
				ConvertDoubleToInt32 (ceil (((colIndex + 1) * fMap.Spacing ().h +
											 fMap.Origin ().h) / fScale.h - fOffset.h));
			
			}
			
		}
	
	fValueIndex = 0.0f;
	
	}

/*****************************************************************************/

dng_gain_map::dng_gain_map (dng_memory_allocator &allocator,
							const dng_point &points,
							const dng_point_real64 &spacing,
							const dng_point_real64 &origin,
							uint32 planes)
					
	:	fPoints	 (points)
	,	fSpacing (spacing)
	,	fOrigin	 (origin)
	,	fPlanes	 (planes)
	
	,	fRowStep (SafeUint32Mult (planes, points.h))
	
	,	fBuffer ()
	
	{
	
	fBuffer.Reset (allocator.Allocate (ComputeBufferSize (ttFloat, 
														  fPoints, 
														  fPlanes, 
														  padSIMDBytes)));
	
	}
					  
/*****************************************************************************/

real32 dng_gain_map::Interpolate (int32 row,
								  int32 col,
								  uint32 plane,
								  const dng_rect &bounds) const
	{
	
	dng_gain_map_interpolator interp (*this,
									  bounds,
									  row,
									  col,
									  plane);
									  
	return interp.Interpolate ();
	
	}
					  
/*****************************************************************************/

uint32 dng_gain_map::PutStreamSize () const
	{
	
	return SafeUint32Add (44,
						  SafeUint32Mult (fPoints.v,
										  fPoints.h,
										  fPlanes,
										  4));
	
	}
					  
/*****************************************************************************/

void dng_gain_map::PutStream (dng_stream &stream) const
	{
	
	stream.Put_uint32 (fPoints.v);
	stream.Put_uint32 (fPoints.h);
	
	stream.Put_real64 (fSpacing.v);
	stream.Put_real64 (fSpacing.h);
	
	stream.Put_real64 (fOrigin.v);
	stream.Put_real64 (fOrigin.h);
	
	stream.Put_uint32 (fPlanes);
	
	for (int32 rowIndex = 0; rowIndex < fPoints.v; rowIndex++)
		{
		
		for (int32 colIndex = 0; colIndex < fPoints.h; colIndex++)
			{
			
			for (uint32 plane = 0; plane < fPlanes; plane++)
				{
				
				stream.Put_real32 (Entry (rowIndex,
										  colIndex,
										  plane));
										  
				}
				
			}
			
		}
	
	}

/*****************************************************************************/

dng_gain_map * dng_gain_map::GetStream (dng_host &host,
										dng_stream &stream)
	{
	
	dng_point mapPoints;
	
	mapPoints.v = stream.Get_uint32 ();
	mapPoints.h = stream.Get_uint32 ();
	
	dng_point_real64 mapSpacing;
	
	mapSpacing.v = stream.Get_real64 ();
	mapSpacing.h = stream.Get_real64 ();
	
	dng_point_real64 mapOrigin;
	
	mapOrigin.v = stream.Get_real64 ();
	mapOrigin.h = stream.Get_real64 ();
	
	uint32 mapPlanes = stream.Get_uint32 ();
	
	#if qDNGValidate
	
	if (gVerbose)
		{
		
		printf ("Points: v=%d, h=%d\n", 
				(int) mapPoints.v,
				(int) mapPoints.h);
		
		printf ("Spacing: v=%.6f, h=%.6f\n", 
				mapSpacing.v,
				mapSpacing.h);
		
		printf ("Origin: v=%.6f, h=%.6f\n", 
				mapOrigin.v,
				mapOrigin.h);
		
		printf ("Planes: %u\n", 
				(unsigned) mapPlanes);
		
		}
		
	#endif
	
	if (mapPoints.v == 1)
		{
		mapSpacing.v = 1.0;
		mapOrigin.v	 = 0.0;
		}
	
	if (mapPoints.h == 1)
		{
		mapSpacing.h = 1.0;
		mapOrigin.h	 = 0.0;
		}
		
	// Downcast spacing and origin to real32 for validation. Checking the
	// real32 downcasts ensures both the real64 originals and any subsequent
	// real32 uses of these values are free from NaN, infinity, and
	// underflow-to-zero problems.

	real32 mapSpacingV32 = (real32) mapSpacing.v;
	real32 mapSpacingH32 = (real32) mapSpacing.h;
	real32 mapOriginV32  = (real32) mapOrigin.v;
	real32 mapOriginH32  = (real32) mapOrigin.h;

	if (mapPoints.v < 1 ||
		mapPoints.h < 1 ||
		!std::isfinite (mapSpacingV32) ||
		!std::isfinite (mapSpacingH32) ||
		mapSpacingV32 <= 0.0f ||
		mapSpacingH32 <= 0.0f ||
		!std::isfinite (mapOriginV32) ||
		!std::isfinite (mapOriginH32) ||
		mapPlanes < 1)
		{
		ThrowBadFormat ();
		}
	
	AutoPtr<dng_gain_map> map (new dng_gain_map (host.Allocator (),
												 mapPoints,
												 mapSpacing,
												 mapOrigin,
												 mapPlanes));
												 
	#if qDNGValidate
	
	uint32 linesPrinted = 0;
	uint32 linesSkipped = 0;
	
	#endif
	
	for (int32 rowIndex = 0; rowIndex < mapPoints.v; rowIndex++)
		{
		
		for (int32 colIndex = 0; colIndex < mapPoints.h; colIndex++)
			{
			
			for (uint32 plane = 0; plane < mapPlanes; plane++)
				{

				real32 x = stream.Get_real32 ();

				// CR-4208475 N-M3: reject NaN / Inf at the parser boundary so
				// non-finite entries cannot reach downstream interpolation,
				// Round_int32 (real32), or the writer Put path. Matches the
				// finiteness discipline already applied to mapSpacing /
				// mapOrigin above.

				if (!std::isfinite (x))
					{
					ThrowBadFormat ();
					}

				map->Entry (rowIndex, colIndex, plane) = x;
				
				#if qDNGValidate
				
				if (gVerbose)
					{
					
					if (linesPrinted < gDumpLineLimit)
						{
						
						printf ("\tMap [%3u] [%3u] [%u] = %.4f\n",
								(unsigned) rowIndex,
								(unsigned) colIndex,
								(unsigned) plane,
								x);
						
						linesPrinted++;
						
						}
						
					else
						linesSkipped++;
						
					}
					
				#endif

				}
				
			}
			
		}
												 
	#if qDNGValidate
	
	if (linesSkipped)
		{
		
		printf ("\t ... %u map entries skipped\n", (unsigned) linesSkipped);
		
		}
	
	#endif
				
	return map.Release ();
	
	}

/*****************************************************************************/

DNG_ATTRIB_NO_SANITIZE("unsigned-integer-overflow")
dng_gain_table_map::dng_gain_table_map (dng_memory_allocator &allocator,
										const dng_point &points,
										const dng_point_real64 &spacing,
										const dng_point_real64 &origin,
										uint32 numTablePoints,
										const real32 weights [5],
										uint32 dataType,
										real32 gamma,
										real32 gainMin,
										real32 gainMax)

	:	fPoints	 (points)
	,	fSpacing (spacing)
	,	fOrigin	 (origin)
	,	fNumTablePoints (numTablePoints)
	
	,	fRowStep (SafeUint32Mult (fNumTablePoints, points.h))
	,	fColStep (fNumTablePoints)

	,	fNumSamples (SafeUint32Mult (points.h,
									 points.v,
									 numTablePoints))

	,	fDataType (dataType)

	,	fGamma (gamma)

	,	fGainMin (gainMin)
	,	fGainMax (gainMax)

	{

	DNG_REQUIRE (dataType <= 3, "Unsupported DataType");

	DNG_REQUIRE (gamma >= kProfileGainTableMap_MinGamma &&
				 gamma <= kProfileGainTableMap_MaxGamma,
				 "Gamma out of range");
		
	DNG_REQUIRE (gainMin >= kProfileGainTableMap_MinGainValue,
				 "GainMin out of range");
		
	DNG_REQUIRE (gainMax <= kProfileGainTableMap_MaxGainValue,
				 "GainMax out of range");
		
	fSampleBytes = SafeUint32Mult (fNumSamples,
								   (uint32) sizeof (real32));

	if (fNumSamples >= kMaxProfileGainTableMapPoints)
		{
		
		ThrowBadFormat ("too many points in gain table map");
		
		}

	memcpy (fMapInputWeights,
			weights,
			sizeof (fMapInputWeights));
	
	fBuffer.Reset (allocator.Allocate (ComputeBufferSize (ttFloat, 
														  fPoints, 
														  numTablePoints,
														  padSIMDBytes)));
	
	}

/*****************************************************************************/

void * dng_gain_table_map::RawTablePtr () const
	{

	DNG_REQUIRE (fBuffer.Get (), "fBuffer");

	// The table currently starts at the beginning of the block's Buffer.

	return fBuffer->Buffer ();

	}

/*****************************************************************************/

uint32 dng_gain_table_map::RawTableNumBytes () const
	{

	// This is a real32 table.

	return SafeUint32Mult (fNumSamples,
						   static_cast<uint32> (sizeof (real32)));

	}

/*****************************************************************************/

uint32 dng_gain_table_map::PutStreamSize () const
	{

	return ((2 * 4) +						 // MapPointsV, MapPointsH
			(2 * 8) +						 // MapSpacingV, MapSpacingH
			(2 * 8) +						 // MapOriginV, MapOriginH
			(	 4) +						 // MapPoints
			(5 * 4) +						 // MapInputWeights
			(RequiresVersion2 () ? (4 * 4)
								 : 0) +		 // DataType, Gamma, GainMin & Max
			DataStorageBytes ());
		
	}

/*****************************************************************************/

void dng_gain_table_map::AddDigest (dng_md5_printer_stream &printer) const
	{

	if (SupportsVersion1 ())
		printer.ProcessPtr ("ProfileGainTableMap", 19);

	else
		printer.ProcessPtr ("ProfileGainTableMap2", 20);
		
	EnsureFingerprint ();

	printer.Process (fFingerprint);

	}

/*****************************************************************************/

void dng_gain_table_map::EnsureFingerprint () const
	{

	if (fFingerprint.IsNull ())
		{

		dng_md5_printer_le_stream stream;

		PutStream (stream);

		fFingerprint = stream.Result ();

		}

	}

/*****************************************************************************/

dng_fingerprint dng_gain_table_map::GetFingerprint () const
	{

	EnsureFingerprint ();

	return fFingerprint;

	}

/*****************************************************************************/

void dng_gain_table_map::PutStream (dng_stream &stream,
									bool forceVersion2) const
	{
	
	stream.Put_uint32 (fPoints.v);
	stream.Put_uint32 (fPoints.h);
	
	stream.Put_real64 (fSpacing.v);
	stream.Put_real64 (fSpacing.h);
	
	stream.Put_real64 (fOrigin.v);
	stream.Put_real64 (fOrigin.h);
	
	stream.Put_uint32 (fNumTablePoints);

	for (uint32 i = 0; i < 5; i++)
		{
		stream.Put_real32 (fMapInputWeights [i]);
		}

	if (RequiresVersion2 () || forceVersion2)
		{
		stream.Put_uint32 (fDataType);
		stream.Put_real32 (fGamma);
		stream.Put_real32 (fGainMin);
		stream.Put_real32 (fGainMax);
		}

	const uint32 storageBytes = DataStorageBytes ();

	// If we have an original buffer, then just use that.

	if (fOriginalBuffer.Get () &&
		fOriginalBuffer->LogicalSize () == storageBytes)
		{
		
		stream.Put (fOriginalBuffer->Buffer (),
					storageBytes);
		
		}

	else
		{

		const bool isFloat32 = IsFloat32 ();
		const bool isFloat16 = IsFloat16 ();
		const bool is8bit	 = IsUint8	 ();
	
		for (int32 rowIndex = 0; rowIndex < fPoints.v; rowIndex++)
			{

			for (int32 colIndex = 0; colIndex < fPoints.h; colIndex++)
				{

				// Write 32-bit float values directly.

				if (isFloat32)
					{

					for (uint32 p = 0; p < fNumTablePoints; p++)
						{

						stream.Put_real32 (Entry (rowIndex,
												  colIndex,
												  p));

						}

					}

				// Convert fp32 values to fp16.

				else if (isFloat16)
					{

					for (uint32 p = 0; p < fNumTablePoints; p++)
						{

						real32 x = Entry (rowIndex, colIndex, p);

						uint16 x16 = DNG_FloatToHalf (*(const uint32 *) &x);
						
						stream.Put_uint16 (x16);

						}					

					}

				// Convert fp32 values to uint8.

				else if (is8bit)
					{

					DNG_REQUIRE (fGainMax >= fGainMin,
								 "Expected fGainMax >= fGainMin");

					if (fGainMax == fGainMin)
						{
						
						for (uint32 p = 0; p < fNumTablePoints; p++)
							stream.Put_uint8 (0);
						
						}

					else
						{
					
						const real32 scale = 1.0f / (fGainMax - fGainMin);

						const real32 offset = -fGainMin * scale;
					
						for (uint32 p = 0; p < fNumTablePoints; p++)
							{

							real32 x = Entry (rowIndex, colIndex, p);

							// Map via GainMin and GainMax.

							x = Pin_real32 (x * scale + offset);

							stream.Put_uint8 ((uint8) Round_int32 (x * 255.0f));

							}
					
						}

					}

				// Convert fp32 values to uint16.

				else						 // 16-bit
					{
					
					DNG_REQUIRE (fGainMax >= fGainMin,
								 "Expected fGainMax >= fGainMin");

					if (fGainMax == fGainMin)
						{
						
						for (uint32 p = 0; p < fNumTablePoints; p++)
							stream.Put_uint16 (0);
						
						}

					else
						{
					
						const real32 scale = 1.0f / (fGainMax - fGainMin);

						const real32 offset = -fGainMin * scale;
					
						for (uint32 p = 0; p < fNumTablePoints; p++)
							{

							real32 x = Entry (rowIndex, colIndex, p);

							// Map via GainMin and GainMax.

							x = Pin_real32 (x * scale + offset);

							stream.Put_uint16 ((uint16) Round_int32 (x * 65535.0f));

							}
					
						}

					} // fp32 vs u8 vs u16 cases

				} // cols

			} // rows

		} // original vs no original buffer
	
	}

/*****************************************************************************/

dng_gain_table_map * dng_gain_table_map::GetStream (dng_host &host,
													dng_stream &stream,
													const bool useVersion2,
													uint32 tagByteCount)
	{

	const uint32 headerByteCount = useVersion2 ? 80u : 64u;

	if (tagByteCount < headerByteCount)
		{
		ThrowBadFormat ("ProfileGainTableMap tag is truncated");
		}
	
	dng_point mapPoints;
	
	mapPoints.v = stream.Get_uint32 ();
	mapPoints.h = stream.Get_uint32 ();
	
	dng_point_real64 mapSpacing;
	
	mapSpacing.v = stream.Get_real64 ();
	mapSpacing.h = stream.Get_real64 ();
	
	dng_point_real64 mapOrigin;
	
	mapOrigin.v = stream.Get_real64 ();
	mapOrigin.h = stream.Get_real64 ();
	
	uint32 numTablePoints = stream.Get_uint32 ();

	real32 weights [5];

	for (uint32 i = 0; i < 5; i++)
		{
		weights [i] = stream.Get_real32 ();
		}

	uint32 dataType = 3;
	real32 gamma    = 1.0f;
	real32 gainMin  = 1.0f;
	real32 gainMax  = 1.0f;

	if (useVersion2)
		{
		
		dataType = stream.Get_uint32 ();
		gamma    = stream.Get_real32 ();
		gainMin  = stream.Get_real32 ();
		gainMax  = stream.Get_real32 ();

		// NaN values bypass standard range comparisons (all comparisons
		// with NaN return false). Check finiteness first.

		if (!std::isfinite (gamma) ||
			gamma < kProfileGainTableMap_MinGamma ||
			gamma > kProfileGainTableMap_MaxGamma)
			{
			ThrowBadFormat ("Gamma out of range in ProfileGainTableMap2");
			}
		
		if (dataType > 3)
			{
			ThrowBadFormat ("Unsupported DataType in ProfileGainTableMap2");
			}
		
		if (!std::isfinite (gainMin) ||
			gainMin < kProfileGainTableMap_MinGainValue)
			{
			ThrowBadFormat ("GainMin out of range in ProfileGainTableMap2");
			}
		
		if (!std::isfinite (gainMax) ||
			gainMax > kProfileGainTableMap_MaxGainValue)
			{
			ThrowBadFormat ("GainMax out of range in ProfileGainTableMap2");
			}
		
		}
	
	#if qDNGValidate
	
	if (gVerbose)
		{

		printf ("GainTableMap:\n");
		
		printf ("  Points: v=%d, h=%d\n", 
				(int) mapPoints.v,
				(int) mapPoints.h);
		
		printf ("  Spacing: v=%.6f, h=%.6f\n", 
				mapSpacing.v,
				mapSpacing.h);
		
		printf ("  Origin: v=%.6f, h=%.6f\n", 
				mapOrigin.v,
				mapOrigin.h);
		
		printf ("  NumTablePoints: %u\n", 
				(unsigned) numTablePoints);

		printf ("  Weights: %.4f, %.4f, %.4f, %.4f, %.4f\n",
				(float) weights [0],
				(float) weights [1],
				(float) weights [2],
				(float) weights [3],
				(float) weights [4]);

		printf ("  DataType: %u\n", dataType);
		printf ("  Gamma: %.3f\n", gamma);
		printf ("  GainMin: %.4f\n", gainMin);
		printf ("  GainMax: %.4f\n", gainMax);
			
		}
		
	#endif
	
	if (mapPoints.v == 1)
		{
		mapSpacing.v = 1.0;
		mapOrigin.v	 = 0.0;
		}
	
	if (mapPoints.h == 1)
		{
		mapSpacing.h = 1.0;
		mapOrigin.h	 = 0.0;
		}
		
	// Downcast spacing and origin to real32 for validation. Checking the
	// real32 downcasts ensures both the real64 originals and any subsequent
	// real32 uses of these values are free from NaN, infinity, and
	// underflow-to-zero problems.

	real32 mapSpacingV32 = (real32) mapSpacing.v;
	real32 mapSpacingH32 = (real32) mapSpacing.h;
	real32 mapOriginV32  = (real32) mapOrigin.v;
	real32 mapOriginH32  = (real32) mapOrigin.h;

	if (mapPoints.v < 1 ||
		mapPoints.h < 1 ||
		!std::isfinite (mapSpacingV32) ||
		!std::isfinite (mapSpacingH32) ||
		mapSpacingV32 <= 0.0f ||
		mapSpacingH32 <= 0.0f ||
		!std::isfinite (mapOriginV32) ||
		!std::isfinite (mapOriginH32) ||
		numTablePoints < 1)
		{
		ThrowBadFormat ();
		}

	uint32 bytesPerEntry = 4;

	if (dataType == 0)
		{
		bytesPerEntry = 1;
		}

	else if (dataType <= 2)
		{
		bytesPerEntry = 2;
		}

	const uint32 dataByteCount =
		SafeUint32Mult ((uint32) mapPoints.v,
						(uint32) mapPoints.h,
						numTablePoints,
						bytesPerEntry);

	const uint32 requiredByteCount =
		SafeUint32Add (headerByteCount, dataByteCount);

	if (requiredByteCount > tagByteCount)
		{
		ThrowBadFormat ("ProfileGainTableMap table data is truncated");
		}

	// Read the weights.

	AutoPtr<dng_gain_table_map> map
		(new dng_gain_table_map (host.Allocator (),
								 mapPoints,
								 mapSpacing,
								 mapOrigin,
								 numTablePoints,
								 weights,
								 dataType,
								 gamma,
								 gainMin,
								 gainMax));

	const bool is8bit	 = map->IsUint8	  ();
	const bool isFloat16 = map->IsFloat16 ();
	const bool isFloat32 = map->IsFloat32 ();

	// If the data type is not 32-bit float, then keep a copy of the original
	// encoding around, for round-tripping purposes.

	void *origPtr = nullptr;

	if (!isFloat32)
		{
		
		map->fOriginalBuffer.Reset (host.Allocate (map->DataStorageBytes ()));

		origPtr = map->fOriginalBuffer->Buffer ();
		
		}
	
	uint8 *orig8ptr	  = (uint8	*) origPtr;
	uint16 *orig16ptr = (uint16 *) origPtr;

	constexpr real32 scale8	 = 1.0f /	255.0f;
	constexpr real32 scale16 = 1.0f / 65535.0f;

	#if qDNGValidate
	
	uint32 linesPrinted = 0;
	uint32 linesSkipped = 0;
	
	#endif
	
	for (int32 rowIndex = 0; rowIndex < mapPoints.v; rowIndex++)
		{
		
		for (int32 colIndex = 0; colIndex < mapPoints.h; colIndex++)
			{
			
			for (uint32 p = 0; p < numTablePoints; p++)
				{

				real32 x;

				if (isFloat32)
					{
				
					x = stream.Get_real32 ();

					#if qDNGValidate

					if (gVerbose)
						{

						if (linesPrinted < gDumpLineLimit)
							{

							printf ("\tMap [%3u] [%3u] [%3u] = %.4f\n",
									(unsigned) rowIndex,
									(unsigned) colIndex,
									(unsigned) p,
									x);

							linesPrinted++;

							}

						else
							linesSkipped++;

						}

					#endif

					}

				else if (isFloat16)
					{

					uint16 x16 = stream.Get_uint16 ();

					uint32 x32 = DNG_HalfToFloat (x16);

					x = *(const real32 *) &x32;

					#if qDNGValidate

					if (gVerbose)
						{

						if (linesPrinted < gDumpLineLimit)
							{

							printf ("\tMap [%3u] [%3u] [%3u] = %.4f\n",
									(unsigned) rowIndex,
									(unsigned) colIndex,
									(unsigned) p,
									x);

							linesPrinted++;

							}

						else
							linesSkipped++;

						}

					#endif

					}

				else if (is8bit)
					{

					uint8 x8 = stream.Get_uint8 ();

					x = gainMin + (x8 * scale8) * (gainMax - gainMin);

					*orig8ptr++ = x8;

					#if qDNGValidate

					if (gVerbose)
						{

						if (linesPrinted < gDumpLineLimit)
							{

							printf ("\tMap [%3u] [%3u] [%3u] = %3d (%.4f)\n",
									(unsigned) rowIndex,
									(unsigned) colIndex,
									(unsigned) p,
									(int) x8,
									x);

							linesPrinted++;

							}

						else
							linesSkipped++;

						}

					#endif

					}

				else
					{

					// uint16 path

					uint16 x16 = stream.Get_uint16 ();

					x = gainMin + (x16 * scale16) * (gainMax - gainMin);

					*orig16ptr++ = x16;

					#if qDNGValidate

					if (gVerbose)
						{

						if (linesPrinted < gDumpLineLimit)
							{

							printf ("\tMap [%3u] [%3u] [%3u] = %5d (%.4f)\n",
									(unsigned) rowIndex,
									(unsigned) colIndex,
									(unsigned) p,
									(int) x16,
									x);

							linesPrinted++;

							}

						else
							linesSkipped++;

						}

					#endif

					}

				// Check range and bad values.

				if (x < kProfileGainTableMap_MinGainValue ||
					x > kProfileGainTableMap_MaxGainValue)
					{
					ThrowBadFormat ("ProfileGainTableMap entry value out of range");
					}

				if (x != x)
					{
					ThrowBadFormat ("Invalid ProfileGainTableMap entry value");
					}

				// Store it in the fp32 table.

				map->Entry (rowIndex, colIndex, p) = x;

				} // for each point in the table
				
			} // for each column
			
		} // for each row
												 
	#if qDNGValidate
	
	if (linesSkipped)
		{
		
		printf ("\t ... %u map entries skipped\n", (unsigned) linesSkipped);
		
		}
	
	#endif
				
	return map.Release ();
	
	}

/*****************************************************************************/

bool dng_gain_table_map::SupportsVersion1 () const
	{
	
	return (fGamma == 1.0f &&				 // NOP gamma
			fDataType == 3);				 // 32-bit float
	
	}

/*****************************************************************************/

uint32 dng_gain_table_map::DataStorageBytes () const
	{
	
	return SafeUint32Mult ((uint32) fPoints.v,
						   (uint32) fPoints.h,
						   fNumTablePoints,
						   BytesPerEntry ());
	
	}

/*****************************************************************************/

void dng_gain_table_map::ClearOriginalBuffer ()
	{
	
	fOriginalBuffer.Reset ();
	
	}

/*****************************************************************************/

bool dng_gain_table_map::HasOriginalBuffer () const
	{
	
	return fOriginalBuffer.Get () != nullptr;
	
	}

/*****************************************************************************/

const dng_memory_block * dng_gain_table_map::OriginalBuffer () const
	{
	
	return fOriginalBuffer.Get ();
	
	}

/*****************************************************************************/

void dng_gain_table_map::SetOriginalBuffer (AutoPtr<dng_memory_block> &block)
	{
	
	fOriginalBuffer.Reset (block.Release ());
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_opcode_GainMap::dng_opcode_GainMap (const dng_area_spec &areaSpec,
										AutoPtr<dng_gain_map> &gainMap)
	
	:	dng_inplace_opcode (dngOpcode_GainMap,
							dngVersion_1_3_0_0,
							kFlag_None)
							
	,	fAreaSpec (areaSpec)
					
	,	fGainMap ()
	
	{
	
	fGainMap.Reset (gainMap.Release ());
	
	}
		
/*****************************************************************************/

dng_opcode_GainMap::dng_opcode_GainMap (dng_host &host,
										dng_stream &stream)
												
	:	dng_inplace_opcode (dngOpcode_GainMap,
							stream,
							"GainMap")
							
	,	fAreaSpec ()
							
	,	fGainMap ()
							
	{
	
	uint32 byteCount = stream.Get_uint32 ();
	
	uint64 startPosition = stream.Position ();

	if (startPosition > 0xFFFFFFFFFFFFFFFFull - byteCount)
		{
		ThrowBadFormat ("Invalid GainMap opcode byte count");
		}

	const uint64 endPosition = startPosition + byteCount;
	
	fAreaSpec.GetData (stream);

	if (stream.Position () > endPosition ||
		44 > endPosition - stream.Position ())
		{
		ThrowBadFormat ("Truncated GainMap opcode data");
		}

	const uint64 gainMapPosition = stream.Position ();

	const uint32 mapPointsV = stream.Get_uint32 ();
	const uint32 mapPointsH = stream.Get_uint32 ();

	(void) stream.Get_real64 ();
	(void) stream.Get_real64 ();
	(void) stream.Get_real64 ();
	(void) stream.Get_real64 ();

	const uint32 mapPlanes = stream.Get_uint32 ();

	const uint32 gainMapBytes =
		SafeUint32Add (44,
					   SafeUint32Mult (mapPointsV,
										mapPointsH,
										mapPlanes,
										(uint32) sizeof (real32)));

	if (gainMapBytes > endPosition - gainMapPosition)
		{
		ThrowBadFormat ("Invalid GainMap opcode payload size");
		}

	stream.SetReadPosition (gainMapPosition);
	
	fGainMap.Reset (dng_gain_map::GetStream (host, stream));
	
	if (stream.Position () != startPosition + byteCount)
		{
		ThrowBadFormat ();
		}
		
	}
		
/*****************************************************************************/

void dng_opcode_GainMap::PutData (dng_stream &stream) const
	{
	
	stream.Put_uint32 (dng_area_spec::kDataSize +
					   fGainMap->PutStreamSize ());
					   
	fAreaSpec.PutData (stream);
	
	fGainMap->PutStream (stream);
	
	}
		
/*****************************************************************************/

void dng_opcode_GainMap::ProcessArea (dng_negative &negative,
									  uint32 /* threadIndex */,
									  dng_pixel_buffer &buffer,
									  const dng_rect &dstArea,
									  const dng_rect &imageBounds)
	{

	const dng_rect overlap = fAreaSpec.ScaledOverlap (dstArea);
	
	if (overlap.NotEmpty ())
		{
  
		uint16 blackLevel = (Stage () >= 2) ? negative.Stage3BlackLevel () : 0;
		
		real32 blackScale1	= 1.0f;
		real32 blackScale2	= 1.0f;
		real32 blackOffset1 = 0.0f;
		real32 blackOffset2 = 0.0f;

		if (blackLevel != 0)
			{
			
			blackOffset2 = ((real32) blackLevel) / 65535.0f;
			blackScale2	 = 1.0f - blackOffset2;
			blackScale1	 = (blackScale2 != 0.0) ? 1.0f / blackScale2 : 0.0;
			blackOffset1 = 1.0f - blackScale1;
			
			}
		
		const uint32 rowPitch = Min_uint32 (fAreaSpec.RowPitch (), overlap.H ());
		const uint32 colPitch = Min_uint32 (fAreaSpec.ColPitch (), overlap.W ());

		const uint32 rows = (overlap.H () + rowPitch - 1) / rowPitch;
		const uint32 cols = (overlap.W () + colPitch - 1) / colPitch;

		for (uint32 plane = fAreaSpec.Plane ();
			 plane < fAreaSpec.Plane () + fAreaSpec.Planes () &&
			 plane < buffer.Planes ();
			 plane++)
			{
			
			uint32 mapPlane = Min_uint32 (plane, fGainMap->Planes () - 1);

			int32 row = overlap.t;

			for (uint32 rowIdx = 0; rowIdx < rows; rowIdx++)
				{
				
				real32 *dPtr = buffer.DirtyPixel_real32 (row, overlap.l, plane);
				
				dng_gain_map_interpolator interp (*fGainMap,
												  imageBounds,
												  row,
												  overlap.l,
												  mapPlane);
			  
				if (blackLevel != 0)
					{

					for (uint32 colIdx = 0, col = 0; colIdx < cols; colIdx++)
						{

						dPtr [col] = dPtr [col] * blackScale1 + blackOffset1;
								
						col += colPitch;

						}
						
					}
					
				for (uint32 colIdx = 0, col = 0; colIdx < cols; colIdx++)
					{
					
					real32 gain = interp.Interpolate ();
					
					dPtr [col] = Min_real32 (dPtr [col] * gain, 1.0f);
					
					for (uint32 j = 0; j < colPitch; j++)
						{
						interp.Increment ();
						}
					
					col += colPitch;

					}
				
				if (blackLevel != 0)
					{
					
					for (uint32 colIdx = 0, col = 0; colIdx < cols; colIdx++)
						{

						dPtr [col] = dPtr [col] * blackScale2 + blackOffset2;
							
						col += colPitch;

						}
						
					}

				row += rowPitch;

				} // rows
			
			} // planes
		
		} // overlap not empty

	}
	
/*****************************************************************************/
