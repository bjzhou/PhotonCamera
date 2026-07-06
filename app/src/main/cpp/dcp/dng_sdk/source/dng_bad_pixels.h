/*****************************************************************************/
// Copyright 2008-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Opcodes to fix defective pixels, including individual pixels and regions (such as
 * defective rows and columns).
 */

/*****************************************************************************/

#ifndef __dng_bad_pixels__
#define __dng_bad_pixels__

/*****************************************************************************/

#include "dng_memory.h"
#include "dng_opcodes.h"

#include <vector>

/*****************************************************************************/

/// \brief An opcode to fix individual bad pixels that are marked with a constant
/// value (e.g., 0) in a Bayer image.

class dng_opcode_FixBadPixelsConstant: public dng_filter_opcode
	{
	
	private:
	
		uint32 fConstant;
		
		uint32 fBayerPhase;
	
	public:

		/// Construct an opcode to fix an individual bad pixels that are marked with
		/// a constant value in a Bayer image.
		/// \param constant The constant value that indicates a bad pixel.
		/// \param bayerPhase The phase of the Bayer mosaic pattern (0, 1, 2, 3).
	
		dng_opcode_FixBadPixelsConstant (uint32 constant,
										 uint32 bayerPhase);

		dng_opcode_FixBadPixelsConstant (dng_stream &stream);
	
		virtual void PutData (dng_stream &stream) const;

		virtual dng_point SrcRepeat ();
	
		virtual dng_rect SrcArea (const dng_rect &dstArea,
								  const dng_rect &imageBounds);

		virtual void Prepare (dng_negative &negative,
							  uint32 threadCount,
							  const dng_point &tileSize,
							  const dng_rect &imageBounds,
							  uint32 imagePlanes,
							  uint32 bufferPixelType,
							  dng_memory_allocator &allocator);

		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &srcBuffer,
								  dng_pixel_buffer &dstBuffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds);
								  
	protected:
	
#if defined(__clang__) && defined(__has_attribute)
#if __has_attribute(no_sanitize)
__attribute__((no_sanitize("unsigned-integer-overflow")))
#endif
#endif
		bool IsGreen (int32 row, int32 col) const
			{
			return (((uint32) row + (uint32) col + fBayerPhase + (fBayerPhase >> 1)) & 1) == 0;
			}

	};

/*****************************************************************************/

/// \brief A list of bad pixels and rectangles (usually single rows or columns).

class dng_bad_pixel_list
	{
	
	public:

		enum
			{
			kNoIndex = 0xFFFFFFFF
			};
	
	private:
	
		// List of bad single pixels.
	
		dng_std_vector<dng_point> fBadPoints;
		
		// List of bad rectangles (usually single rows or columns).
		
		dng_std_vector<dng_rect> fBadRects;
		
	public:

		/// Create an empty bad pixel list.

		dng_bad_pixel_list ();
		
		/// Returns the number of bad single pixels.

		uint32 PointCount () const
			{
			return (uint32) fBadPoints.size ();
			}
			
		/// Retrieves the bad single pixel coordinate via the specified list index.
		///
		/// \param index The list index from which to retrieve the bad single pixel
		/// coordinate.

		const dng_point & Point (uint32 index) const
			{
			return fBadPoints [index];
			}
		
		/// Returns the number of bad rectangles.

		uint32 RectCount () const
			{
			return (uint32) fBadRects.size ();
			}
		
		/// Retrieves the bad rectangle via the specified list index.
		///
		/// \param index The list index from which to retrieve the bad rectangle
		/// coordinates.

		const dng_rect & Rect (uint32 index) const
			{
			return fBadRects [index];
			}
			
		/// Returns true iff there are zero bad single pixels and zero bad
		/// rectangles.

		bool IsEmpty () const
			{
			return PointCount () == 0 &&
				   RectCount  () == 0;
			}
			
		/// Returns true iff there is at least one bad single pixel or at least one
		/// bad rectangle.

		bool NotEmpty () const
			{
			return !IsEmpty ();
			}
			
		/// Add the specified coordinate to the list of bad single pixels.
		///
		/// \param pt The bad single pixel to add.

		void AddPoint (const dng_point &pt);
		
		/// Add the specified rectangle to the list of bad rectangles.
		///
		/// \param r The bad rectangle to add.

		void AddRect (const dng_rect &r);
		
		/// Sort the bad single pixels and bad rectangles by coordinates (top to
		/// bottom, then left to right).

		void Sort ();
		
		/// Returns true iff the specified bad single pixel is isolated, i.e., there
		/// is no other bad single pixel or bad rectangle that lies within radius
		/// pixels of this bad single pixel.
		///
		/// \param index The index of the bad single pixel to test.
		/// \param radius The pixel radius to test for isolation.

		bool IsPointIsolated (uint32 index,
							  uint32 radius) const;
							  
		/// Returns true iff the specified bad rectangle is isolated, i.e., there
		/// is no other bad single pixel or bad rectangle that lies within radius
		/// pixels of this bad rectangle.
		///
		/// \param index The index of the bad rectangle to test.
		/// \param radius The pixel radius to test for isolation.

		bool IsRectIsolated (uint32 index,
							 uint32 radius) const;
							  
		/// Returns true iff the specified point is valid, i.e., lies within the
		/// specified image bounds, is different from all other bad single pixels,
		/// and is not contained in any bad rectangle. The second and third
		/// conditions are only checked if provided with a starting search index.
		///
		/// \param pt The point to test for validity.
		/// \param imageBounds The pt must lie within imageBounds to be valid.
		/// \index The search index to use (or kNoIndex, to avoid a search) for
		/// checking for validity.

		bool IsPointValid (const dng_point &pt,
						   const dng_rect &imageBounds,
						   uint32 index = kNoIndex) const;
		
	};

/*****************************************************************************/

/// \brief An opcode to fix lists of bad pixels (indicated by position) in a Bayer
/// image.

class dng_opcode_FixBadPixelsList: public dng_filter_opcode
	{
	
	protected:
	
		enum
			{
			kBadPointPadding = 2,
			kBadRectPadding	 = 4
			};
	
	private:
	
		AutoPtr<dng_bad_pixel_list> fList;
		
		uint32 fBayerPhase;
	
	public:
	
		/// Construct an opcode to fix lists of bad pixels (indicated by position) in
		/// a Bayer image.
		/// \param list The list of bad pixels to fix.
		/// \param bayerPhase The phase of the Bayer mosaic pattern (0, 1, 2, 3).
	
		dng_opcode_FixBadPixelsList (AutoPtr<dng_bad_pixel_list> &list,
									 uint32 bayerPhase);
		
		dng_opcode_FixBadPixelsList (dng_stream &stream);
	
		virtual void PutData (dng_stream &stream) const;

		virtual dng_point SrcRepeat ();
	
		virtual dng_rect SrcArea (const dng_rect &dstArea,
								  const dng_rect &imageBounds);

		virtual void Prepare (dng_negative &negative,
							  uint32 threadCount,
							  const dng_point &tileSize,
							  const dng_rect &imageBounds,
							  uint32 imagePlanes,
							  uint32 bufferPixelType,
							  dng_memory_allocator &allocator);

		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &srcBuffer,
								  dng_pixel_buffer &dstBuffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds);
								  
	protected:
	
		bool IsGreen (int32 row, int32 col) const
			{
			return ((row + col + fBayerPhase + (fBayerPhase >> 1)) & 1) == 0;
			}
			
		virtual void FixIsolatedPixel (dng_pixel_buffer &buffer,
									   dng_point &badPoint);
	
		virtual void FixClusteredPixel (dng_pixel_buffer &buffer,
										uint32 pointIndex,
										const dng_rect &imageBounds);

		virtual void FixSingleColumn (dng_pixel_buffer &buffer,
									  const dng_rect &badRect);

		virtual void FixSingleRow (dng_pixel_buffer &buffer,
								   const dng_rect &badRect);

		virtual void FixClusteredRect (dng_pixel_buffer &buffer,
									   const dng_rect &badRect,
									   const dng_rect &imageBounds);

	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
