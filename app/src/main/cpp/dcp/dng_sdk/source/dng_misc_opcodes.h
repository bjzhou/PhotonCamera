/*****************************************************************************/
// Copyright 2008-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Miscellaneous DNG opcodes.
 */

/*****************************************************************************/

#ifndef __dng_misc_opcodes__
#define __dng_misc_opcodes__

/*****************************************************************************/

#include "dng_classes.h"

#include "dng_opcodes.h"
#include "dng_rational.h"

/*****************************************************************************/

/// \brief Opcode to trim image to a specified rectangle.

class dng_opcode_TrimBounds: public dng_opcode
	{
	
	private:
	
		dng_rect fBounds;
	
	public:

		/// Create opcode to trim image to the specified bounds.
	
		dng_opcode_TrimBounds (const dng_rect &bounds);
		
		dng_opcode_TrimBounds (dng_stream &stream);
	
		virtual void PutData (dng_stream &stream) const;

		virtual void Apply (dng_host &host,
							dng_negative &negative,
							AutoPtr<dng_image> &image);
		
	};

/*****************************************************************************/

/// \brief A class to describe an area of an image, including a pixel subrectangle,
/// plane range, and row/column pitch (e.g., for mosaic images). Useful for
/// specifying opcodes that only apply to specific color planes or pixel types (e.g.,
/// only one of the two green Bayer pixels).

class dng_area_spec
	{
	
	public:
	
		enum
			{
			kDataSize = 32
			};
	
	private:
	
		dng_rect fArea;
		
		uint32 fPlane;
		uint32 fPlanes;
		
		uint32 fRowPitch;
		uint32 fColPitch;

		dng_urational fAreaScale;
		
	public:

		/// Create an empty area.
	
		dng_area_spec (const dng_rect &area = dng_rect (),
					   uint32 plane = 0,
					   uint32 planes = 1,
					   uint32 rowPitch = 1,
					   uint32 colPitch = 1)
					   
			:	fArea	   (area)
			,	fPlane	   (plane)
			,	fPlanes	   (planes)
			,	fRowPitch  (rowPitch)
			,	fColPitch  (colPitch)
			,	fAreaScale (1, 1)
			
			{
			}

		/// The pixel area.
			
		const dng_rect & Area () const
			{
			return fArea;
			}

		dng_rect ScaledArea () const;

		/// The first plane.
		
		uint32 Plane () const
			{
			return fPlane;
			}

		/// The total number of planes.
		
		uint32 Planes () const
			{
			return fPlanes;
			}

		/// The row pitch (i.e., stride). A pitch of 1 means all rows.
		
		uint32 RowPitch () const
			{
			return fRowPitch;
			}
		
		/// The column pitch (i.e., stride). A pitch of 1 means all columns.
		
		uint32 ColPitch () const
			{
			return fColPitch;
			}

		/// Read area data from the specified stream.
			
		void GetData (dng_stream &stream);
		
		/// Write area data to the specified stream.
			
		void PutData (dng_stream &stream) const;

		/// Compute and return pixel area overlap (i.e., intersection) between this
		/// area and the specified tile.
		
		dng_rect Overlap (const dng_rect &tile) const;

		/// Same as Overlap but uses the area scale factor (see
		/// ApplyAreaScale, below).
		
		dng_rect ScaledOverlap (const dng_rect &tile) const;

		/// Apply scale factor to account for a resized image. The scale
		/// factor is not cumulative; the new scale factor replaces the
		/// previous factor. The scale factor is only applied to the area for
		/// the purposes of applying the opcode (see ScaledArea); it is not an
		/// intrinsic part of this object and will not be included in the data
		/// stream.

		void ApplyAreaScale (const dng_urational & /* scale */);

	};

/*****************************************************************************/

/// \brief An opcode to apply a 1D function (represented as a 16-bit table) to an
/// image area.

class dng_opcode_MapTable: public dng_inplace_opcode
	{
	
	private:
	
		dng_area_spec fAreaSpec;
		
		AutoPtr<dng_memory_block> fTable;
		
		uint32 fCount;
  
		AutoPtr<dng_memory_block> fBlackAdjustedTable;
		
	public:

		/// Create a MapTable opcode with the specified area, table, and number of
		/// table entries.
	
		dng_opcode_MapTable (dng_host &host,
							 const dng_area_spec &areaSpec,
							 const uint16 *table,
							 uint32 count = 0x10000);

		dng_opcode_MapTable (dng_host &host,
							 dng_stream &stream);
	
		void PutData (dng_stream &stream) const override;

		uint32 BufferPixelType (uint32 imagePixelType) override;
			
		dng_rect ModifiedBounds (const dng_rect &imageBounds) override;
	
		void Prepare (dng_negative &negative,
					  uint32 threadCount,
					  const dng_point &tileSize,
					  const dng_rect &imageBounds,
					  uint32 imagePlanes,
					  uint32 bufferPixelType,
					  dng_memory_allocator &allocator) override;

		void ProcessArea (dng_negative &negative,
						  uint32 threadIndex,
						  dng_pixel_buffer &buffer,
						  const dng_rect &dstArea,
						  const dng_rect &imageBounds) override;
								  
		void ApplyAreaScale (const dng_urational &scale) override
			{
			fAreaSpec.ApplyAreaScale (scale);
			}
		
	private:
	
		void ReplicateLastEntry ();

	};

/*****************************************************************************/

/// \brief An opcode to apply a 1D function (represented as a polynomial) to an
/// image area.

class dng_opcode_MapPolynomial: public dng_inplace_opcode
	{
	
	public:
	
		enum
			{
			kMaxDegree = 8
			};
	
	protected:
	
		dng_area_spec fAreaSpec;
		
		uint32 fDegree;
		
		real64 fCoefficient [kMaxDegree + 1];
		
		real32 fCoefficient32 [kMaxDegree + 1];
		
	public:
	
		/// Create a MapPolynomial opcode with the specified area, polynomial
		/// degree, and polynomial coefficients. The function that will be
		/// applied to each pixel x is:
		///
		/// f (x) = coefficient [0] + ((x	* coefficient [1]) +
		///							   (x^2 * coefficient [2]) +
		///							   (x^3 * coefficient [3]) +
		///							   (x^4 * coefficient [4]) ...
	
		dng_opcode_MapPolynomial (const dng_area_spec &areaSpec,
								  uint32 degree,
								  const real64 *coefficient);
	
		dng_opcode_MapPolynomial (dng_stream &stream);
	
		virtual void PutData (dng_stream &stream) const override;

		virtual uint32 BufferPixelType (uint32 imagePixelType) override;
			
		virtual dng_rect ModifiedBounds (const dng_rect &imageBounds) override;
	
		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &buffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds) override;

		uint32 Degree () const
			{
			return fDegree;
			}

		const real64 * Coefficients () const
			{
			return fCoefficient;
			}
								  
		void ApplyAreaScale (const dng_urational &scale) override
			{
			fAreaSpec.ApplyAreaScale (scale);
			}
		
	protected:

		virtual void DoProcess (dng_pixel_buffer &buffer,
								const dng_rect &area,
								const uint32 plane,
								const uint32 rowPitch,
								const uint32 colPitch,
								const real32 *coefficients,
								const uint32 degree,
								uint16 blackLevel) const;

	};

/*****************************************************************************/

/// \brief An opcode to apply a delta (i.e., offset) that varies per row. Within
/// a row, the same delta value is applied to all specified pixels.

class dng_opcode_DeltaPerRow: public dng_inplace_opcode
	{
	
	private:
	
		dng_area_spec fAreaSpec;
		
		AutoPtr<dng_memory_block> fTable;
		
		real32 fScale;

	public:

		/// Create a DeltaPerRow opcode with the specified area and row deltas
		/// (specified as a table of 32-bit floats).
	
		dng_opcode_DeltaPerRow (const dng_area_spec &areaSpec,
								AutoPtr<dng_memory_block> &table);
	
		dng_opcode_DeltaPerRow (dng_host &host,
								dng_stream &stream);
	
		virtual void PutData (dng_stream &stream) const;

		virtual uint32 BufferPixelType (uint32 imagePixelType);
			
		virtual dng_rect ModifiedBounds (const dng_rect &imageBounds);
	
		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &buffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds);
								  
	};

/*****************************************************************************/

/// \brief An opcode to apply a delta (i.e., offset) that varies per column.
/// Within a column, the same delta value is applied to all specified pixels.

class dng_opcode_DeltaPerColumn: public dng_inplace_opcode
	{
	
	private:
	
		dng_area_spec fAreaSpec;
		
		AutoPtr<dng_memory_block> fTable;
		
		real32 fScale;

	public:
	
		/// Create a DeltaPerColumn opcode with the specified area and column
		/// deltas (specified as a table of 32-bit floats).
	
		dng_opcode_DeltaPerColumn (const dng_area_spec &areaSpec,
								   AutoPtr<dng_memory_block> &table);
	
		dng_opcode_DeltaPerColumn (dng_host &host,
								   dng_stream &stream);
	
		virtual void PutData (dng_stream &stream) const;

		virtual uint32 BufferPixelType (uint32 imagePixelType);
			
		virtual dng_rect ModifiedBounds (const dng_rect &imageBounds);
	
		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &buffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds);
								  
	};

/*****************************************************************************/

/// \brief An opcode to apply a scale factor that varies per row. Within a row,
/// the same scale factor is applied to all specified pixels.

class dng_opcode_ScalePerRow: public dng_inplace_opcode
	{
	
	private:
	
		dng_area_spec fAreaSpec;
		
		AutoPtr<dng_memory_block> fTable;

	public:
	
		/// Create a ScalePerRow opcode with the specified area and row scale
		/// factors (specified as a table of 32-bit floats).
	
		dng_opcode_ScalePerRow (const dng_area_spec &areaSpec,
								AutoPtr<dng_memory_block> &table);
	
		dng_opcode_ScalePerRow (dng_host &host,
								dng_stream &stream);
	
		virtual void PutData (dng_stream &stream) const;

		virtual uint32 BufferPixelType (uint32 imagePixelType);
			
		virtual dng_rect ModifiedBounds (const dng_rect &imageBounds);
	
		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &buffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds);
								  
	};

/*****************************************************************************/

/// \brief An opcode to apply a scale factor that varies per column. Within a
/// column, the same scale factor is applied to all specified pixels.

class dng_opcode_ScalePerColumn: public dng_inplace_opcode
	{
	
	private:
	
		dng_area_spec fAreaSpec;
		
		AutoPtr<dng_memory_block> fTable;

	public:
	
		/// Create a ScalePerColumn opcode with the specified area and column
		/// scale factors (specified as a table of 32-bit floats).
	
		dng_opcode_ScalePerColumn (const dng_area_spec &areaSpec,
								   AutoPtr<dng_memory_block> &table);
	
		dng_opcode_ScalePerColumn (dng_host &host,
								   dng_stream &stream);
	
		virtual void PutData (dng_stream &stream) const;

		virtual uint32 BufferPixelType (uint32 imagePixelType);
			
		virtual dng_rect ModifiedBounds (const dng_rect &imageBounds);
	
		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &buffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds);
								  
	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
