/*****************************************************************************/
// Copyright 2008-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Opcode to fix 2D uniformity defects, such as shading.
 */

/*****************************************************************************/

#ifndef __dng_gain_map__
#define __dng_gain_map__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_fingerprint.h"
#include "dng_memory.h"
#include "dng_misc_opcodes.h"
#include "dng_safe_arithmetic.h"
#include "dng_tag_types.h"
#include "dng_uncopyable.h"

/*****************************************************************************/

/// \brief Holds a discrete (i.e., sampled) 2D representation of a gain map. This is
/// effectively an image containing scale factors. 

class dng_gain_map: private dng_uncopyable
	{
	
	private:
	
		dng_point fPoints;
		
		dng_point_real64 fSpacing;
		
		dng_point_real64 fOrigin;
		
		uint32 fPlanes;
		
		uint32 fRowStep;
		
		AutoPtr<dng_memory_block> fBuffer;
		
	public:
	
		/// Construct a gain map with the specified memory allocator, number of
		/// samples (points), sample spacing, origin, and number of color planes.

		dng_gain_map (dng_memory_allocator &allocator,
					  const dng_point &points,
					  const dng_point_real64 &spacing,
					  const dng_point_real64 &origin,
					  uint32 planes);

		/// The number of samples in the horizontal and vertical directions.

		const dng_point & Points () const
			{
			return fPoints;
			}
			
		/// The space between adjacent samples in the horizontal and vertical
		/// directions.

		const dng_point_real64 & Spacing () const
			{
			return fSpacing;
			}
			
		/// The 2D coordinate for the first (i.e., top-left-most) sample.

		const dng_point_real64 & Origin () const
			{
			return fOrigin;
			}
			
		/// The number of color planes.

		uint32 Planes () const
			{
			return fPlanes;
			}

		/// Getter for a gain map sample (specified by row, column, and plane).

		real32 & Entry (uint32 rowIndex,
						uint32 colIndex,
						uint32 plane)
			{
			
			return *(fBuffer->Buffer_real32 () +
					 SafeUint32Add (
						SafeUint32Add (
							SafeUint32Mult (rowIndex, fRowStep),
							SafeUint32Mult (colIndex, fPlanes)),
						plane));
			
			}
			
		/// Getter for a gain map sample (specified by row index, column index, and
		/// plane index).

		const real32 & Entry (uint32 rowIndex,
							  uint32 colIndex,
							  uint32 plane) const
			{
			
			return *(fBuffer->Buffer_real32 () +
					 SafeUint32Add (
						SafeUint32Add (
							SafeUint32Mult (rowIndex, fRowStep),
							SafeUint32Mult (colIndex, fPlanes)),
						plane));
			
			}
			
		/// Compute the interpolated gain (i.e., scale factor) at the specified pixel
		/// position and color plane, within the specified image bounds (in pixels).

		real32 Interpolate (int32 row,
							int32 col,
							uint32 plane,
							const dng_rect &bounds) const;
							
		/// The number of bytes needed to hold the gain map data.

		uint32 PutStreamSize () const;
		
		/// Write the gain map to the specified stream.

		void PutStream (dng_stream &stream) const;
		
		/// Read a gain map from the specified stream.

		static dng_gain_map * GetStream (dng_host &host,
										 dng_stream &stream);

	};

/*****************************************************************************/

/// \brief Holds a discrete (i.e., sampled) 2D representation of a gain table
/// map. This is effectively an image containing tables of scale factors.
/// Corresponds to the ProfileGainTableMap tag introduced in DNG 1.6 and the
/// ProfileGainTableMap2 tag introduced in DNG 1.7.

class dng_gain_table_map: private dng_uncopyable
	{
	
	private:
	
		dng_point fPoints;					 // MapPointsV, MapPointsH
		
		dng_point_real64 fSpacing;			 // MapSpacingV, MapSpacingH
		
		dng_point_real64 fOrigin;			 // MapOriginV, MapOriginH

		uint32 fNumTablePoints = 0;			 // MapPointsN
		
		uint32 fRowStep = 0;
		uint32 fColStep = 0;

		uint32 fNumSamples = 0;

		uint32 fSampleBytes = 0;

		real32 fMapInputWeights [5];		 // MapInputWeights
		
		AutoPtr<dng_memory_block> fBuffer;

		mutable dng_fingerprint fFingerprint;

		// Fields to support ProfileGainTableMap2.

		// Data type of gain values. Supported values:
		//
		// 0 = 8-bit unsigned integer
		// 1 = 16-bit unsigned integer
		// 2 = 16-bit floating-point
		// 3 = 32-bit floating-point

		uint32 fDataType = 3;

		// Gamma value.

		real32 fGamma = 1.0f;

		// Minimum and maximum gain values when data type is integer.

		real32 fGainMin = 1.0f;
		real32 fGainMax = 1.0f;

		// Buffer used to hold a copy of the original table data; used only in
		// the case of integer data types.

		AutoPtr<dng_memory_block> fOriginalBuffer;

	public:
	
		/// Construct a gain map with the specified memory allocator, number
		/// of samples (points), sample spacing, origin, number of table
		/// points, and weights.

		dng_gain_table_map (dng_memory_allocator &allocator,
							const dng_point &points,
							const dng_point_real64 &spacing,
							const dng_point_real64 &origin,
							uint32 numTablePoints,
							const real32 weights [5],
							uint32 dataType = 2,
							real32 gamma = 1.0f,
							real32 gainMin = 1.0f,
							real32 gainMax = 1.0f);

		/// The number of samples in the horizontal and vertical directions.

		const dng_point & Points () const
			{
			return fPoints;
			}
			
		/// The space between adjacent samples in the horizontal and vertical
		/// directions.

		const dng_point_real64 & Spacing () const
			{
			return fSpacing;
			}
			
		/// The 2D coordinate for the first (i.e., top-left-most) sample.

		const dng_point_real64 & Origin () const
			{
			return fOrigin;
			}

		/// Getter for the number of table points.

		uint32 NumTablePoints () const
			{
			return fNumTablePoints;
			}

		/// Getter for total number of samples. Product of table points and
		/// NumTablePoints.

		uint32 NumSamples () const
			{
			return fNumSamples;
			}
		
		/// Getter for number of bytes used to represent just the samples.

		uint32 SampleBytes () const
			{
			return fSampleBytes;
			}
		
		/// Getter for MapInputWeights.

		const real32 * MapInputWeights () const
			{
			return fMapInputWeights;
			}
			
		/// Getter for a gain table map sample (specified by row, column, and
		/// table index).

		real32 & Entry (uint32 rowIndex,
						uint32 colIndex,
						uint32 tableIndex)
			{
			
			return *(fBuffer->Buffer_real32 () +
					 SafeUint32Add (
						SafeUint32Add (
							SafeUint32Mult (rowIndex, fRowStep),
							SafeUint32Mult (colIndex, fColStep)),
						tableIndex));
			
			}
			
		/// Getter for a gain map sample (specified by row index, column index, and
		/// plane index).

		const real32 & Entry (uint32 rowIndex,
							  uint32 colIndex,
							  uint32 tableIndex) const
			{
			
			return *(fBuffer->Buffer_real32 () +
					 SafeUint32Add (
						SafeUint32Add (
							SafeUint32Mult (rowIndex, fRowStep),
							SafeUint32Mult (colIndex, fColStep)),
						tableIndex));
			
			}

		/// Getters for low level processing.

		uint32 RowStep () const
			{
			return fRowStep;
			}
							
		uint32 ColStep () const
			{
			return fColStep;
			}

		/// Memory block holding the fp32 version of the table.

		dng_memory_block * Block ()
			{
			return fBuffer.Get ();
			}
							
		const dng_memory_block * Block () const
			{
			return fBuffer.Get ();
			}

		/// Direct access to the fp32 version of the table.

		void * RawTablePtr () const;

		uint32 RawTableNumBytes () const;

		/// The number of bytes needed to hold the gain table map data.

		uint32 PutStreamSize () const;
		
		/// Write the gain table map to the specified stream.

		void PutStream (dng_stream &stream,
						bool forceVersion2 = false) const;

		/// Add the gain table map to the given digest printer.

		void AddDigest (dng_md5_printer_stream &printer) const;

		/// Fingerprint for the gain table map. Computed lazily.

		dng_fingerprint GetFingerprint () const;

		/// Read a gain table map from the specified stream.

		static dng_gain_table_map * GetStream (dng_host &host,
											   dng_stream &stream,
											   bool useVersion2,
											   uint32 tagByteCount);

		/// APIs to support ProfileGainTableMap2.

		uint32 DataType () const
			{
			return fDataType;
			}

		bool IsFloat16 () const
			{
			return fDataType == 2;
			}

		bool IsFloat32 () const
			{
			return fDataType >= 3;
			}

		bool IsUint8 () const
			{
			return fDataType == 0;
			}

		bool IsUint16 () const
			{
			return fDataType == 1;
			}

		real32 GainMin () const
			{
			return fGainMin;
			}

		real32 GainMax () const
			{
			return fGainMax;
			}

		real32 Gamma () const
			{
			return fGamma;
			}
		
		bool SupportsVersion1 () const;
		
		bool RequiresVersion2 () const
			{
			return !SupportsVersion1 ();
			}

		uint32 BytesPerEntry () const
			{
			if (fDataType == 0) return 1;	 // u8
			if (fDataType <= 2) return 2;	 // u16, fp16
			return 4;						 // fp32
			}

		// Bytes required to store the table data itself (not including
		// headers).

		uint32 DataStorageBytes () const;

		void ClearOriginalBuffer ();

		bool HasOriginalBuffer () const;

		const dng_memory_block * OriginalBuffer () const;

		void SetOriginalBuffer (AutoPtr<dng_memory_block> &blockToRelease);

	private:

		/// Ensure fingerprint has been calculated.

		void EnsureFingerprint () const;

	};

/*****************************************************************************/

/// \brief An opcode to fix 2D spatially-varying light falloff or color casts (i.e.,
/// uniformity issues). This is commonly due to shading.

class dng_opcode_GainMap: public dng_inplace_opcode,
						  private dng_uncopyable
	{
	
	private:
	
		dng_area_spec fAreaSpec;
	
		AutoPtr<dng_gain_map> fGainMap;
	
	public:
	
		/// Construct a GainMap opcode for the specified image area and the specified
		/// gain map.

		dng_opcode_GainMap (const dng_area_spec &areaSpec,
							AutoPtr<dng_gain_map> &gainMap);
	
		/// Construct a GainMap opcode from the specified stream.

		dng_opcode_GainMap (dng_host &host,
							dng_stream &stream);

		/// Const accessors.

		const dng_area_spec& AreaSpec() const { return fAreaSpec; }
		const dng_gain_map& GainMap() const { return *fGainMap; }
	
		/// Write the opcode to the specified stream.

		virtual void PutData (dng_stream &stream) const override;
		
		/// The pixel data type of this opcode.

		virtual uint32 BufferPixelType (uint32 /* imagePixelType */) override
			{
			return ttFloat;
			}
	
		/// The adjusted bounds (processing area) of this opcode. It is limited to
		/// the intersection of the specified image area and the GainMap area.

		virtual dng_rect ModifiedBounds (const dng_rect &imageBounds) override
			{
			return fAreaSpec.ScaledOverlap (imageBounds);
			}
	
		/// Apply the gain map.

		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &buffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds) override;

		void ApplyAreaScale (const dng_urational &scale) override
			{
			fAreaSpec.ApplyAreaScale (scale);
			}
		
	};
	
/*****************************************************************************/

#endif
	
/*****************************************************************************/
