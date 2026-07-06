/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_simple_image.h"

#include "dng_exceptions.h"
#include "dng_orientation.h"
#include "dng_safe_arithmetic.h"
#include "dng_tag_types.h"
#include "dng_tag_values.h"

/*****************************************************************************/

dng_simple_image::dng_simple_image (const dng_rect &bounds,
									uint32 planes,
									uint32 pixelType,
									dng_memory_allocator &allocator)
									
	:	dng_image (bounds,
				   planes,
				   pixelType)
				   
	,	fBuffer	   ()
	,	fMemory	   ()
	,	fAllocator (allocator)
				   
	{
	
	uint32 bytes = ComputeBufferSize (pixelType, 
									  bounds.Size (), 
									  planes, 
									  padSIMDBytes);
				   
	fMemory.Reset (allocator.Allocate (bytes));
	
	fBuffer = dng_pixel_buffer (bounds, 
								0, 
								planes, 
								pixelType, 
								pcInterleaved, 
								fMemory->Buffer ());
	
	}
		
/*****************************************************************************/

dng_simple_image::dng_simple_image (dng_pixel_buffer &buffer,
									dng_memory_allocator &allocator)
									
	:	dng_image (buffer.fArea,
				   buffer.fPlanes,
				   buffer.fPixelType)
				   
	,	fBuffer	   (buffer)
	,	fMemory	   ()
	,	fAllocator (allocator)
	
	{
	
	}
		
/*****************************************************************************/

dng_simple_image::~dng_simple_image ()
	{
	
	}

/*****************************************************************************/

dng_image * dng_simple_image::Clone () const
	{
	
	AutoPtr<dng_simple_image> result (new dng_simple_image (Bounds (),
															Planes (),
															PixelType (),
															fAllocator));
															
	result->fBuffer.CopyArea (fBuffer,
							  Bounds (),
							  0,
							  Planes ());
															
	return result.Release ();
	
	}

/*****************************************************************************/

void dng_simple_image::SetPixelType (uint32 pixelType)
	{
	
	dng_image::SetPixelType (pixelType);
	
	fBuffer.fPixelType = pixelType;
	
	}

/*****************************************************************************/

void dng_simple_image::Trim (const dng_rect &r)
	{

	// Defense-in-depth: reject any rect not fully contained within the
	// current image bounds to prevent negative pointer arithmetic in
	// DirtyPixel.

	if (!fBounds.Contains (r))
		{
		ThrowProgramError ("Trim rect not contained within image bounds");
		}

	fBounds.t = 0;
	fBounds.l = 0;
	
	fBounds.b = r.H ();
	fBounds.r = r.W ();
	
	fBuffer.fData = fBuffer.DirtyPixel (r.t, r.l);
								   
	fBuffer.fArea = fBounds;
	
	}
		
/*****************************************************************************/

void dng_simple_image::Rotate (const dng_orientation &orientation)
	{
	
	int32 originH = fBounds.l;
	int32 originV = fBounds.t;
	
	int32 colStep = fBuffer.fColStep;
	int32 rowStep = fBuffer.fRowStep;
	
	uint32 width  = fBounds.W ();
	uint32 height = fBounds.H ();
	
	// CR-4208475 N-L6: width / height are uint32 from fBounds; the existing
	// int32 += (width - 1) chain narrowed via implicit conversion and could
	// wrap for caller-API dimensions above INT32_MAX. Route through
	// ConvertUint32ToInt32 + SafeInt32Add so the failure is a clean throw
	// rather than a silently-negative origin.

	if (orientation.FlipH ())
		{

		originH = SafeInt32Add (originH,
								SafeInt32Sub (ConvertUint32ToInt32 (width),
											  1));

		colStep = -colStep;

		}

	if (orientation.FlipV ())
		{

		originV = SafeInt32Add (originV,
								SafeInt32Sub (ConvertUint32ToInt32 (height),
											  1));

		rowStep = -rowStep;

		}
		
	if (orientation.FlipD ())
		{
		
		int32 temp = colStep;
		
		colStep = rowStep;
		rowStep = temp;
		
		width  = fBounds.H ();
		height = fBounds.W ();
		
		}
		
	fBuffer.fData = fBuffer.DirtyPixel (originV, originH);
	
	fBuffer.fColStep = colStep;
	fBuffer.fRowStep = rowStep;
		
	fBounds.r = fBounds.l + width;
	fBounds.b = fBounds.t + height;
	
	fBuffer.fArea = fBounds;
								
	}
				
/*****************************************************************************/

void dng_simple_image::Offset (const dng_point &offset)
	{
	
	fBounds = fBounds + offset;
	
	fBuffer.fArea = fBounds;
	
	}

/*****************************************************************************/

void dng_simple_image::AcquireTileBuffer (dng_tile_buffer &buffer,
										  const dng_rect &area,
										  bool dirty) const
	{
	
	buffer.fArea = area;
	
	buffer.fPlane	   = fBuffer.fPlane;
	buffer.fPlanes	   = fBuffer.fPlanes;
	buffer.fRowStep	   = fBuffer.fRowStep;
	buffer.fColStep	   = fBuffer.fColStep;
	buffer.fPlaneStep  = fBuffer.fPlaneStep;
	buffer.fPixelType  = fBuffer.fPixelType;
	buffer.fPixelSize  = fBuffer.fPixelSize;

	buffer.fData = (void *) fBuffer.ConstPixel (buffer.fArea.t,
												buffer.fArea.l,
												buffer.fPlane);
										
	buffer.fDirty = dirty;
								  
	}
		
/*****************************************************************************/
