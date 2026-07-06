/*****************************************************************************/
// Copyright 2008-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Base class and common data structures for opcodes (introduced in DNG 1.3).
 */

/*****************************************************************************/

#ifndef __dng_opcodes__
#define __dng_opcodes__

/*****************************************************************************/

#include "dng_auto_ptr.h"
#include "dng_classes.h"
#include "dng_rect.h"
#include "dng_types.h"

/*****************************************************************************/

/// \brief List of supported opcodes (by ID).

enum dng_opcode_id
	{
	
	// Internal use only opcode.  Never written to DNGs.
	
	dngOpcode_Private				= 0,
	
	// Warp image to correct distortion and lateral chromatic aberration for
	// rectilinear lenses.
	
	dngOpcode_WarpRectilinear		= 1,
	
	// Warp image to correction distortion for fisheye lenses (i.e., map the
	// fisheye projection to a perspective projection).
	
	dngOpcode_WarpFisheye			= 2,

	// Radial vignette correction.
	
	dngOpcode_FixVignetteRadial		= 3,
	
	// Patch bad Bayer pixels which are marked with a special value in the image.
	
	dngOpcode_FixBadPixelsConstant	= 4,
	
	// Patch bad Bayer pixels/rectangles at a list of specified coordinates.
	
	dngOpcode_FixBadPixelsList		= 5,
	
	// Trim image to specified bounds.
	
	dngOpcode_TrimBounds			= 6,
	
	// Map an area through a 16-bit LUT.
	
	dngOpcode_MapTable				= 7,
	
	// Map an area using a polynomial function.
	
	dngOpcode_MapPolynomial			= 8,
	
	// Apply a gain map to an area.
	
	dngOpcode_GainMap				= 9,
	
	// Apply a per-row delta to an area.
	
	dngOpcode_DeltaPerRow			= 10,
	
	// Apply a per-column delta to an area.
	
	dngOpcode_DeltaPerColumn		= 11,
	
	// Apply a per-row scale to an area.
	
	dngOpcode_ScalePerRow			= 12,
	
	// Apply a per-column scale to an area.
	
	dngOpcode_ScalePerColumn		= 13,

	// Opcodes introduced in DNG 1.6.
	
	// Warp image to correct distortion and lateral chromatic aberration for
	// rectilinear lenses. Extension of WarpRectilinear.

	dngOpcode_WarpRectilinear2		= 14,
	
	};

/*****************************************************************************/

/// \brief Virtual base class for opcode.

class dng_opcode
	{
	
	public:

		/// Opcode flags.
	
		enum
			{
			kFlag_None			= 0,	//!< No flag.
			kFlag_Optional		= 1,	//!< This opcode is optional.
			kFlag_SkipIfPreview = 2		//!< May skip opcode for preview images.
			};
	
	private:
	
		uint32 fOpcodeID;
		
		uint32 fMinVersion;
		
		uint32 fFlags;
		
		bool fWasReadFromStream;
		
		uint32 fStage;
	
	protected:
	
		dng_opcode (uint32 opcodeID,
					uint32 minVersion,
					uint32 flags);
					
		dng_opcode (uint32 opcodeID,
					dng_stream &stream,
					const char *name);

		// This helper routine will be called by AboutToApply if AboutToApply
		// passes its internal checking and plans to return true. This is an
		// opportunity for subclasses to perform some internal preparation
		// based on the negative, image bounds, and number of image planes.

		virtual void DoAboutToApply (dng_host & /* host */,
									 dng_negative & /* negative */,
									 const dng_rect & /* imageBounds */,
									 uint32 /* imagePlanes */)
			{
			}
					
	public:
		
		virtual ~dng_opcode ();

		/// The ID of this opcode.
		
		uint32 OpcodeID () const
			{
			return fOpcodeID;
			}

		/// The first DNG version that supports this opcode.
			
		uint32 MinVersion () const
			{
			return fMinVersion;
			}

		/// The flags for this opcode.
			
		uint32 Flags () const
			{
			return fFlags;
			}
			
		/// Is this opcode optional?
			
		bool Optional () const
			{
			return (Flags () & kFlag_Optional) != 0;
			}
			
		/// Should the opcode be skipped when rendering preview images?
			
		bool SkipIfPreview () const
			{
			return (Flags () & kFlag_SkipIfPreview) != 0;
			}

		/// Was this opcode read from a data stream?
			
		bool WasReadFromStream () const
			{
			return fWasReadFromStream;
			}

		/// Which image processing stage (1, 2, 3) is associated with this
		/// opcode?
			
		uint32 Stage () const
			{
			return fStage;
			}

		/// Set the image processing stage (1, 2, 3) for this opcode. Stage 1 is
		/// the original image data, including masked areas. Stage 2 is
		/// linearized image data and trimmed to the active area. Stage 3 is
		/// demosaiced and trimmed to the active area.
			
		void SetStage (uint32 stage)
			{
			fStage = stage;
			}

		/// Is the opcode a NOP (i.e., does nothing)? An opcode could be a NOP
		/// for some specific parameters. 

		virtual bool IsNOP () const
			{
			return false;
			}

		/// Is this opcode valid for the specified negative?
	
		virtual bool IsValidForNegative (const dng_negative & /* negative */) const
			{
			return true;
			}

		/// Write opcode to a stream.
		/// \param stream The stream to which to write the opcode data.
	
		virtual void PutData (dng_stream &stream) const;

		/// Perform error checking prior to applying this opcode to the
		/// specified negative. Returns true if this opcode should be applied to
		/// the negative, false otherwise.
		
		bool AboutToApply (dng_host &host,
						   dng_negative &negative,
						   const dng_rect &imageBounds,
						   uint32 imagePlanes);

		/// Apply this opcode to the specified image with associated negative.

		virtual void Apply (dng_host &host,
							dng_negative &negative,
							AutoPtr<dng_image> &image) = 0;

		/// Apply scale factor to account for a resized image. Example is
		/// stage 3 image being scaled to 2x the linear dimension of the stage
		/// 2 image. Opcodes that express their internal parameters using
		/// normalized (relative) image coordinates do not need any changes.

		virtual void ApplyAreaScale (const dng_urational & /* scale */)
			{
			}
		
	};

/*****************************************************************************/

/// \brief Class to represent unknown opcodes (e.g, opcodes defined in future
/// DNG versions).

class dng_opcode_Unknown: public dng_opcode
	{
	
	private:
	
		AutoPtr<dng_memory_block> fData;
	
	public:
	
		dng_opcode_Unknown (dng_host &host,
							uint32 opcodeID,
							dng_stream &stream);
	
		virtual void PutData (dng_stream &stream) const;

		virtual void Apply (dng_host &host,
							dng_negative &negative,
							AutoPtr<dng_image> &image);

	};

/*****************************************************************************/

/// \brief Class to represent a filter opcode, such as a convolution.

class dng_filter_opcode: public dng_opcode
	{
	
	protected:
	
		dng_filter_opcode (uint32 opcodeID,
						   uint32 minVersion,
						   uint32 flags);
					
		dng_filter_opcode (uint32 opcodeID,
						   dng_stream &stream,
						   const char *name);
					
	public:
	
		/// The pixel data type of this opcode.

		virtual uint32 BufferPixelType (uint32 imagePixelType)
			{
			return imagePixelType;
			}
	
		/// The adjusted bounds (processing area) of this opcode. It is limited to
		/// the intersection of the specified image area and the GainMap area.

		virtual dng_rect ModifiedBounds (const dng_rect &imageBounds)
			{
			return imageBounds;
			}
			
		/// Returns the width and height (in pixels) of the repeating mosaic pattern.

		virtual dng_point SrcRepeat ()
			{
			return dng_point (1, 1);
			}
	
		/// Returns the source pixel area needed to process a destination pixel area
		/// that lies within the specified bounds.
		/// \param dstArea The destination pixel area to be computed.
		/// \param imageBounds The overall image area (dstArea will lie within these
		/// bounds).
		/// \retval The source pixel area needed to process the specified dstArea.

		virtual dng_rect SrcArea (const dng_rect &dstArea,
								  const dng_rect &imageBounds)
			{
			(void) imageBounds;
			return dstArea;
			}

		/// Given a destination tile size, calculate input tile size. Simlar to
		/// SrcArea, and should seldom be overridden.
		///
		/// \param dstTileSize The destination tile size that is targeted for output.
		///
		/// \param imageBounds The image bounds (the destination tile will
		/// always lie within these bounds).
		///
		/// \retval The source tile size needed to compute a tile of the destination
		/// size.

		virtual dng_point SrcTileSize (const dng_point &dstTileSize,
									   const dng_rect &imageBounds)
			{
			return SrcArea (dng_rect (dstTileSize),
							imageBounds).Size ();
			}

		/// Startup method called before any processing is performed on pixel areas.
		/// It can be used to allocate (per-thread) memory and setup tasks.
		///
		/// \param negative The negative object to be processed.
		///
		/// \param threadCount Total number of threads that will be used for
		/// processing. Less than or equal to MaxThreads.
		///
		/// \param tileSize Size of source tiles which will be processed. (Not all
		/// tiles will be this size due to edge conditions.)
		///
		/// \param imageBounds Total size of image to be processed.
		///
		/// \param imagePlanes Number of planes in the image. Less than or equal to
		/// kMaxColorPlanes.
		///
		/// \param bufferPixelType Pixel type of image buffer (see dng_tag_types.h).
		///
		/// \param allocator dng_memory_allocator to use for allocating temporary
		/// buffers, etc.

		virtual void Prepare (dng_negative &negative,
							  uint32 threadCount,
							  const dng_point &tileSize,
							  const dng_rect &imageBounds,
							  uint32 imagePlanes,
							  uint32 bufferPixelType,
							  dng_memory_allocator &allocator)
			{
			(void) negative;
			(void) threadCount;
			(void) tileSize;
			(void) imageBounds;
			(void) imagePlanes;
			(void) bufferPixelType;
			(void) allocator;
			}

		/// Implements filtering operation from one buffer to another. Source
		/// and destination pixels are set up in member fields of this class.
		/// Ideally, no allocation should be done in this routine.
		///
		/// \param negative The negative associated with the pixels to be
		/// processed.
		///
		/// \param threadIndex The thread on which this routine is being called,
		/// between 0 and threadCount - 1 for the threadCount passed to Prepare
		/// method.
		///
		/// \param srcBuffer Input area and source pixels.
		///
		/// \param dstBuffer Destination pixels.
		///
		/// \param dstArea Destination pixel processing area.
		///
		/// \param imageBounds Total image area to be processed; dstArea will
		/// always lie within these bounds.

		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &srcBuffer,
								  dng_pixel_buffer &dstBuffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds) = 0;

		virtual void Apply (dng_host &host,
							dng_negative &negative,
							AutoPtr<dng_image> &image);
		
	};

/*****************************************************************************/

/// \brief Class to represent an in-place (i.e., pointwise, per-pixel) opcode,
/// such as a global tone curve.

class dng_inplace_opcode: public dng_opcode
	{
	
	protected:
	
		dng_inplace_opcode (uint32 opcodeID,
							uint32 minVersion,
							uint32 flags);
					
		dng_inplace_opcode (uint32 opcodeID,
							dng_stream &stream,
							const char *name);
					
	public:
	
		/// The pixel data type of this opcode.

		virtual uint32 BufferPixelType (uint32 imagePixelType)
			{
			return imagePixelType;
			}
			
		/// The adjusted bounds (processing area) of this opcode. It is limited to
		/// the intersection of the specified image area and the GainMap area.

		virtual dng_rect ModifiedBounds (const dng_rect &imageBounds)
			{
			return imageBounds;
			}
	
		/// Startup method called before any processing is performed on pixel areas.
		/// It can be used to allocate (per-thread) memory and setup tasks.
		///
		/// \param negative The negative object to be processed.
		///
		/// \param threadCount Total number of threads that will be used for
		/// processing. Less than or equal to MaxThreads.
		///
		/// \param tileSize Size of source tiles which will be processed. (Not all
		/// tiles will be this size due to edge conditions.)
		///
		/// \param imageBounds Total size of image to be processed.
		///
		/// \param imagePlanes Number of planes in the image. Less than or equal to
		/// kMaxColorPlanes.
		///
		/// \param bufferPixelType Pixel type of image buffer (see dng_tag_types.h).
		///
		/// \param allocator dng_memory_allocator to use for allocating temporary
		/// buffers, etc.

		virtual void Prepare (dng_negative &negative,
							  uint32 threadCount,
							  const dng_point &tileSize,
							  const dng_rect &imageBounds,
							  uint32 imagePlanes,
							  uint32 bufferPixelType,
							  dng_memory_allocator &allocator)
			{
			(void) negative;
			(void) threadCount;
			(void) tileSize;
			(void) imageBounds;
			(void) imagePlanes;
			(void) bufferPixelType;
			(void) allocator;
			}

		/// Implements image processing operation in a single buffer. The source
		/// pixels are provided as input to the buffer, and this routine
		/// calculates and writes the destination pixels to the same buffer.
		/// Ideally, no allocation should be done in this routine.
		///
		/// \param negative The negative associated with the pixels to be
		/// processed.
		///
		/// \param threadIndex The thread on which this routine is being called,
		/// between 0 and threadCount - 1 for the threadCount passed to Prepare
		/// method.
		///
		/// \param buffer Source and Destination pixels.
		///
		/// \param dstArea Destination pixel processing area.
		///
		/// \param imageBounds Total image area to be processed; dstArea will
		/// always lie within these bounds.

		virtual void ProcessArea (dng_negative &negative,
								  uint32 threadIndex,
								  dng_pixel_buffer &buffer,
								  const dng_rect &dstArea,
								  const dng_rect &imageBounds) = 0;

		virtual void Apply (dng_host &host,
							dng_negative &negative,
							AutoPtr<dng_image> &image);
		
	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
