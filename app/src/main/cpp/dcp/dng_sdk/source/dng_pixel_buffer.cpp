/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_pixel_buffer.h"

#include "dng_bottlenecks.h"
#include "dng_exceptions.h"
#include "dng_flags.h"
#include "dng_safe_arithmetic.h"
#include "dng_tag_types.h"
#include "dng_tag_values.h"
#include "dng_utils.h"

#include <climits>

/*****************************************************************************/

static bool SafeUint32ToInt32Mult (uint32 arg1, 
								   uint32 arg2, 
								   int32 *result) 
	{

	uint32 uint32_result;

	return (SafeUint32Mult (arg1, 
							arg2, 
							&uint32_result) &&

			ConvertUint32ToInt32 (uint32_result, 
								  result));

		}

/*****************************************************************************/

static int64 ComputeRebaseDelta (uint32 count,
								 int32 step,
								 uint32 pixelSize)
	{

	const int64 countMinusOne = static_cast<int64> (count) - 1;

	return SafeInt64Mult (countMinusOne,
						  static_cast<int64> (step),
						  static_cast<int64> (pixelSize));

	}

/*****************************************************************************/

static const void * OffsetPointer (const void *ptr,
								   int64 delta)
	{

	return static_cast<const void *> (static_cast<const uint8 *> (ptr) + delta);

	}

/*****************************************************************************/

static void * OffsetPointer (void *ptr,
							 int64 delta)
	{

	return static_cast<void *> (static_cast<uint8 *> (ptr) + delta);

	}

/*****************************************************************************/

static int32 NegateStepChecked (int32 step)
	{

	if (step == INT32_MIN)
		{
		ThrowOverflow ("OptimizeOrder step negate");
		}

	return -step;

	}

/*****************************************************************************/

void OptimizeOrder (const void *&sPtr,
					void *&dPtr,
					uint32 sPixelSize,
					uint32 dPixelSize,
					uint32 &count0,
					uint32 &count1,
					uint32 &count2,
					int32 &sStep0,
					int32 &sStep1,
					int32 &sStep2,
					int32 &dStep0,
					int32 &dStep1,
					int32 &dStep2)
	{

	if (count0 == 0 || count1 == 0 || count2 == 0)
		{
		return;
		}
	
	uint32 step0;
	uint32 step1;
	uint32 step2;
	
	// Optimize the order for the data that is most spread out.
							   
	uint64 sRange = static_cast<uint64> (Abs_int32 (sStep0)) *
					static_cast<uint64> (count0 - 1) +
					static_cast<uint64> (Abs_int32 (sStep1)) *
					static_cast<uint64> (count1 - 1) +
					static_cast<uint64> (Abs_int32 (sStep2)) *
					static_cast<uint64> (count2 - 1);
							   
	uint64 dRange = static_cast<uint64> (Abs_int32 (dStep0)) *
					static_cast<uint64> (count0 - 1) +
					static_cast<uint64> (Abs_int32 (dStep1)) *
					static_cast<uint64> (count1 - 1) +
					static_cast<uint64> (Abs_int32 (dStep2)) *
					static_cast<uint64> (count2 - 1);
							   
	if (dRange >= sRange)
		{						
	
		if (dStep0 < 0)
			{

			const int64 sDelta0 = ComputeRebaseDelta (count0, sStep0, sPixelSize);
			const int64 dDelta0 = ComputeRebaseDelta (count0, dStep0, dPixelSize);

			sPtr = OffsetPointer (sPtr, sDelta0);
			dPtr = OffsetPointer (dPtr, dDelta0);

			sStep0 = NegateStepChecked (sStep0);
			dStep0 = NegateStepChecked (dStep0);
			
			}
		
		if (dStep1 < 0)
			{

			const int64 sDelta1 = ComputeRebaseDelta (count1, sStep1, sPixelSize);
			const int64 dDelta1 = ComputeRebaseDelta (count1, dStep1, dPixelSize);

			sPtr = OffsetPointer (sPtr, sDelta1);
			dPtr = OffsetPointer (dPtr, dDelta1);

			sStep1 = NegateStepChecked (sStep1);
			dStep1 = NegateStepChecked (dStep1);
			
			}
		
		if (dStep2 < 0)
			{

			const int64 sDelta2 = ComputeRebaseDelta (count2, sStep2, sPixelSize);
			const int64 dDelta2 = ComputeRebaseDelta (count2, dStep2, dPixelSize);

			sPtr = OffsetPointer (sPtr, sDelta2);
			dPtr = OffsetPointer (dPtr, dDelta2);

			sStep2 = NegateStepChecked (sStep2);
			dStep2 = NegateStepChecked (dStep2);
			
			}
		
		step0 = (uint32) dStep0;
		step1 = (uint32) dStep1;
		step2 = (uint32) dStep2;
		
		}
		
	else
		{						
	
		if (sStep0 < 0)
			{

			const int64 sDelta0 = ComputeRebaseDelta (count0, sStep0, sPixelSize);
			const int64 dDelta0 = ComputeRebaseDelta (count0, dStep0, dPixelSize);

			sPtr = OffsetPointer (sPtr, sDelta0);
			dPtr = OffsetPointer (dPtr, dDelta0);

			sStep0 = NegateStepChecked (sStep0);
			dStep0 = NegateStepChecked (dStep0);
			
			}
		
		if (sStep1 < 0)
			{

			const int64 sDelta1 = ComputeRebaseDelta (count1, sStep1, sPixelSize);
			const int64 dDelta1 = ComputeRebaseDelta (count1, dStep1, dPixelSize);

			sPtr = OffsetPointer (sPtr, sDelta1);
			dPtr = OffsetPointer (dPtr, dDelta1);

			sStep1 = NegateStepChecked (sStep1);
			dStep1 = NegateStepChecked (dStep1);
			
			}
		
		if (sStep2 < 0)
			{

			const int64 sDelta2 = ComputeRebaseDelta (count2, sStep2, sPixelSize);
			const int64 dDelta2 = ComputeRebaseDelta (count2, dStep2, dPixelSize);

			sPtr = OffsetPointer (sPtr, sDelta2);
			dPtr = OffsetPointer (dPtr, dDelta2);

			sStep2 = NegateStepChecked (sStep2);
			dStep2 = NegateStepChecked (dStep2);
			
			}
		
		step0 = (uint32) sStep0;
		step1 = (uint32) sStep1;
		step2 = (uint32) sStep2;
		
		}
	
	if (count0 == 1) step0 = 0xFFFFFFFF;
	if (count1 == 1) step1 = 0xFFFFFFFF;
	if (count2 == 1) step2 = 0xFFFFFFFF;
	
	uint32 index0;
	uint32 index1;
	uint32 index2;
	
	if (step0 >= step1)
		{
		
		if (step1 >= step2)
			{
			index0 = 0;
			index1 = 1;
			index2 = 2;
			}
			
		else if (step2 >= step0)
			{
			index0 = 2;
			index1 = 0;
			index2 = 1;
			}
			
		else
			{
			index0 = 0;
			index1 = 2;
			index2 = 1;
			}
		
		}
		
	else
		{
		
		if (step0 >= step2)
			{
			index0 = 1;
			index1 = 0;
			index2 = 2;
			}
			
		else if (step2 >= step1)
			{
			index0 = 2;
			index1 = 1;
			index2 = 0;
			}
			
		else
			{
			index0 = 1;
			index1 = 2;
			index2 = 0;
			}
		
		}
		
	uint32 count [3];
	
	count [0] = count0;
	count [1] = count1;
	count [2] = count2;
	
	count0 = count [index0];
	count1 = count [index1];
	count2 = count [index2];
	
	int32 step [3];
	
	step [0] = sStep0;
	step [1] = sStep1;
	step [2] = sStep2;
	
	sStep0 = step [index0];
	sStep1 = step [index1];
	sStep2 = step [index2];
	
	step [0] = dStep0;
	step [1] = dStep1;
	step [2] = dStep2;
	
	dStep0 = step [index0];
	dStep1 = step [index1];
	dStep2 = step [index2];
	
	if (sStep0 == ((int32) count1) * sStep1 &&
		dStep0 == ((int32) count1) * dStep1)
		{
		count1 *= count0;
		count0 = 1;
		}
	
	if (sStep1 == ((int32) count2) * sStep2 &&
		dStep1 == ((int32) count2) * dStep2)
		{
		count2 *= count1;
		count1 = 1;
		}
	
	}

/*****************************************************************************/

void OptimizeOrder (const void *&sPtr,
					uint32 sPixelSize,
					uint32 &count0,
					uint32 &count1,
					uint32 &count2,
					int32 &sStep0,
					int32 &sStep1,
					int32 &sStep2)
	{
	
	void *dPtr = NULL;
	
	int32 dStep0 = sStep0;
	int32 dStep1 = sStep1;
	int32 dStep2 = sStep2;
	
	OptimizeOrder (sPtr,
				   dPtr,
				   sPixelSize,
				   sPixelSize,
				   count0,
				   count1,
				   count2,
				   sStep0,
				   sStep1,
				   sStep2,
				   dStep0,
				   dStep1,
				   dStep2);
	
	}

/*****************************************************************************/

void OptimizeOrder (void *&dPtr,
					uint32 dPixelSize,
					uint32 &count0,
					uint32 &count1,
					uint32 &count2,
					int32 &dStep0,
					int32 &dStep1,
					int32 &dStep2)
	{
	
	const void *sPtr = NULL;
	
	int32 sStep0 = dStep0;
	int32 sStep1 = dStep1;
	int32 sStep2 = dStep2;
	
	OptimizeOrder (sPtr,
				   dPtr,
				   dPixelSize,
				   dPixelSize,
				   count0,
				   count1,
				   count2,
				   sStep0,
				   sStep1,
				   sStep2,
				   dStep0,
				   dStep1,
				   dStep2);
	
	}

/*****************************************************************************/

dng_pixel_buffer::dng_pixel_buffer ()

	:	fArea		()
	,	fPlane		(0)
	,	fPlanes		(1)
	,	fRowStep	(1)
	,	fColStep	(1)
	,	fPlaneStep	(1)
	,	fPixelType	(ttUndefined)
	,	fPixelSize	(0)
	,	fData		(NULL)
	,	fDirty		(true)
	
	{
	
	}
							
/*****************************************************************************/

dng_pixel_buffer::dng_pixel_buffer (const dng_rect &area,
									uint32 plane,
									uint32 planes,
									uint32 pixelType,
									uint32 planarConfiguration,
									void *data)

	:	fArea		(area)
	,	fPlane		(plane)
	,	fPlanes		(planes)
	,	fRowStep	(0)
	,	fColStep	(0)
	,	fPlaneStep	(0)
	,	fPixelType	(pixelType)
	,	fPixelSize	(TagTypeSize (pixelType))
	,	fData		(data)
	,	fDirty		(true)
	
	{
	
	const char *overflowMessage = "Arithmetic overflow in pixel buffer setup";

	// Initialize fRowStep, fColStep and fPlaneStep according to the desired
	// pixel layout.

	switch (planarConfiguration)
		{

		case pcInterleaved:
			{

			fPlaneStep = 1;

			if (!ConvertUint32ToInt32 (fPlanes, &fColStep) ||
				!SafeUint32ToInt32Mult (fArea.W (), fPlanes, &fRowStep))
				{
				ThrowOverflow (overflowMessage);
				}

			break;

			}

		case pcPlanar:
			{

			fColStep = 1;

			// Even though we've hardened dng_rect::W() to guarantee that it
			// will never return a result that's out of range for an int32, we
			// still protect the conversion for defense in depth.

			if (!ConvertUint32ToInt32 (fArea.W (), &fRowStep) ||
				!SafeUint32ToInt32Mult (fArea.H (), fArea.W (), &fPlaneStep))
				{
				ThrowOverflow (overflowMessage);
				}

			break;

			}

		case pcRowInterleaved:
		case pcRowInterleavedAlignSIMD:
			{

			fColStep = 1;

			uint32 planeStepUint32;

			if (planarConfiguration == pcRowInterleaved)
				{
				planeStepUint32 = fArea.W ();
				}

			else
				{

				if (!RoundUpForPixelSize (fArea.W (), 
										  fPixelSize,
										  &planeStepUint32))
					{
					ThrowOverflow (overflowMessage);
					}

				}

			if (!ConvertUint32ToInt32  (planeStepUint32, &fPlaneStep) ||
				!SafeUint32ToInt32Mult (planeStepUint32, fPlanes, &fRowStep))
				{
				ThrowOverflow (overflowMessage);
				}

			break;

			}

		default:
			{
			ThrowProgramError ("Invalid value for 'planarConfiguration'");
			break;
			}

		}
	
	}

/*****************************************************************************/

dng_pixel_buffer::dng_pixel_buffer (const dng_pixel_buffer &buffer)

	:	fArea		(buffer.fArea)
	,	fPlane		(buffer.fPlane)
	,	fPlanes		(buffer.fPlanes)
	,	fRowStep	(buffer.fRowStep)
	,	fColStep	(buffer.fColStep)
	,	fPlaneStep	(buffer.fPlaneStep)
	,	fPixelType	(buffer.fPixelType)
	,	fPixelSize	(buffer.fPixelSize)
	,	fData		(buffer.fData)
	,	fDirty		(buffer.fDirty)
	
	{
	
	}
							
/*****************************************************************************/

dng_pixel_buffer & dng_pixel_buffer::operator= (const dng_pixel_buffer &buffer)
	{
	
	fArea		= buffer.fArea;
	fPlane		= buffer.fPlane;
	fPlanes		= buffer.fPlanes;
	fRowStep	= buffer.fRowStep;
	fColStep	= buffer.fColStep;
	fPlaneStep	= buffer.fPlaneStep;
	fPixelType	= buffer.fPixelType;
	fPixelSize	= buffer.fPixelSize;
	fData		= buffer.fData;
	fDirty		= buffer.fDirty;
	
	return *this;
	
	}

/*****************************************************************************/

dng_pixel_buffer::~dng_pixel_buffer ()
	{
	
	}
							
/*****************************************************************************/

#if qDebugPixelType

void dng_pixel_buffer::CheckPixelType (uint32 pixelType) const
	{
	
	if (fPixelType != pixelType)
		{
		
		DNG_REPORT ("Pixel type access mismatch");
		
		}
	
	}

#endif

/*****************************************************************************/

uint32 dng_pixel_buffer::PixelRange () const
	{
	
	switch (fPixelType)
		{
		
		case ttByte:
		case ttSByte:
			{
			return 0x0FF;
			}
			
		case ttShort:
		case ttSShort:
			{
			return 0x0FFFF;
			}
			
		case ttLong:
		case ttSLong:
			{
			return 0xFFFFFFFF;
			}
			
		default:
			break;
			
		}
	
	return 0;
	
	}
							
/*****************************************************************************/

void dng_pixel_buffer::SetConstant (const dng_rect &area,
									uint32 plane,
									uint32 planes,
									uint32 value)
	{
	
	if (planes == 0)
		{
		ReportWarning ("dng_pixel_buffer::SetConstant: planes = 0");
		return;
		}

	DNG_REQUIRE ((area & Area ()) == area,
				 "SetConstant: area OOB");

		{

		uint32 endPlane = plane + planes;

		uint32 endFullPlane = fPlane + fPlanes;

		DNG_REQUIRE (plane < endPlane,
					 "SetConstant: planes overflow");

		DNG_REQUIRE (fPlane   <= plane &&
					 endPlane <= endFullPlane,
					 "SetConstant: planes range");

		}

	uint32 rows = area.H ();
	uint32 cols = area.W ();
	
	void *dPtr = DirtyPixel (area.t,
							 area.l,
							 plane);
						
	int32 dRowStep	 = fRowStep;
	int32 dColStep	 = fColStep;
	int32 dPlaneStep = fPlaneStep;
	
	OptimizeOrder (dPtr,
				   fPixelSize,
				   rows,
				   cols,
				   planes,
				   dRowStep,
				   dColStep,
				   dPlaneStep);
				   
	switch (fPixelSize)
		{
		
		case 1:
			{
			
			if (rows == 1 && cols == 1 && dPlaneStep == 1 && value == 0)
				{
				
				DoZeroBytes (dPtr, planes);
				
				}
				
			else
				{
				
				DoSetArea8 ((uint8 *) dPtr,
							(uint8) value,
							rows,
							cols,
							planes,
							dRowStep,
							dColStep,
							dPlaneStep);
						 
				}
				
			break;
			
			}
				   
		case 2:
			{
			
			if (rows == 1 && cols == 1 && dPlaneStep == 1 && value == 0)
				{
				
				DoZeroBytes (dPtr, SafeUint32Mult (planes, 2));
				
				}
				
			else
				{
				
				DoSetArea16 ((uint16 *) dPtr,
							 (uint16) value,
							 rows,
							 cols,
							 planes,
							 dRowStep,
							 dColStep,
							 dPlaneStep);
						 
				}
				
			break;
			
			}
				   
		case 4:
			{
			
			if (rows == 1 && cols == 1 && dPlaneStep == 1 && value == 0)
				{
				
				DoZeroBytes (dPtr, SafeUint32Mult (planes, 4));
				
				}
				
			else
				{
				
				DoSetArea32 ((uint32 *) dPtr,
							 value,
							 rows,
							 cols,
							 planes,
							 dRowStep,
							 dColStep,
							 dPlaneStep);
						 
				}
				
			break;
			
			}
			
		default:
			{
			
			ThrowNotYetImplemented ();
			
			}
			
		}
				   
	}
		
/*****************************************************************************/

void dng_pixel_buffer::SetZero (const dng_rect &area,
								uint32 plane,
								uint32 planes)
	{
					   
	uint32 value = 0;
				   
	switch (fPixelType)
		{
		
		case ttByte:
		case ttShort:
		case ttLong:
		case ttFloat:
			{
			break;
			}
			
		case ttSShort:
			{
			value = 0x8000;
			break;
			}

		default:
			{
			
			ThrowNotYetImplemented ();
			
			}
			
		}
		
	SetConstant (area,
				 plane,
				 planes,
				 value);
				   
	}
		
/*****************************************************************************/

void dng_pixel_buffer::CopyArea (const dng_pixel_buffer &src,
								 const dng_rect &area,
								 uint32 srcPlane,
								 uint32 dstPlane,
								 uint32 planes)
	{
	
	if (planes == 0)
		{
		ReportWarning ("dng_pixel_buffer::CopyArea: planes = 0");
		return;
		}

	DNG_REQUIRE ((area & src.Area ()) == area,
				 "CopyArea: area OOB src");

	DNG_REQUIRE ((area &     Area ()) == area,
				 "CopyArea: area OOB dst");

		{

		uint32 endSrcPlane = srcPlane + planes;
		uint32 endDstPlane = dstPlane + planes;

		uint32 endFullSrcPlane = src.fPlane + src.fPlanes;
		uint32 endFullDstPlane =     fPlane +     fPlanes;

		DNG_REQUIRE (srcPlane < endSrcPlane,
					 "CopyArea: src planes overflow");

		DNG_REQUIRE (dstPlane < endDstPlane,
					 "CopyArea: dst planes overflow");

		DNG_REQUIRE (src.fPlane  <= srcPlane    &&
					 endSrcPlane <= endFullSrcPlane,
					 "CopyArea: src planes range");

		DNG_REQUIRE (    fPlane  <= dstPlane    &&
					 endDstPlane <= endFullDstPlane,
					 "CopyArea: dst planes range");

		}

	uint32 rows = area.H ();
	uint32 cols = area.W ();
	
	const void *sPtr = src.ConstPixel (area.t,
									   area.l,
									   srcPlane);
								  
	void *dPtr = DirtyPixel (area.t,
							 area.l,
							 dstPlane);
	
	int32 sRowStep	 = src.fRowStep;
	int32 sColStep	 = src.fColStep;
	int32 sPlaneStep = src.fPlaneStep;
	
	int32 dRowStep	 = fRowStep;
	int32 dColStep	 = fColStep;
	int32 dPlaneStep = fPlaneStep;
	
	OptimizeOrder (sPtr,
				   dPtr,
				   src.fPixelSize,
				   fPixelSize,
				   rows,
				   cols,
				   planes,
				   sRowStep,
				   sColStep,
				   sPlaneStep,
				   dRowStep,
				   dColStep,
				   dPlaneStep);
				   
	if (fPixelType == src.fPixelType)
		{
		
		if (rows == 1 && cols == 1 && sPlaneStep == 1 && dPlaneStep == 1)
			{
			
			DoCopyBytes (sPtr,
						 dPtr, 
						 SafeUint32Mult (planes, fPixelSize));
			
			}
			
		else switch (fPixelSize)
			{
			
			case 1:
				{
				
				DoCopyArea8 ((const uint8 *) sPtr,
							 (uint8 *) dPtr,
							 rows,
							 cols,
							 planes,
							 sRowStep,
							 sColStep,
							 sPlaneStep,
							 dRowStep,
							 dColStep,
							 dPlaneStep);
				
				break;
				
				}
				
			case 2:
				{
				
				DoCopyArea16 ((const uint16 *) sPtr,
							  (uint16 *) dPtr,
							  rows,
							  cols,
							  planes,
							  sRowStep,
							  sColStep,
							  sPlaneStep,
							  dRowStep,
							  dColStep,
							  dPlaneStep);
				
				break;
				
				}
				
			case 4:
				{
				
				DoCopyArea32 ((const uint32 *) sPtr,
							  (uint32 *) dPtr,
							  rows,
							  cols,
							  planes,
							  sRowStep,
							  sColStep,
							  sPlaneStep,
							  dRowStep,
							  dColStep,
							  dPlaneStep);
				
				break;
				
				}
				
			default:
				{
				
				ThrowNotYetImplemented ();
				
				}
				
			}
		
		}
		
	else if (src.fPixelType == ttByte)
		{
		
		switch (fPixelType)
			{
			
			case ttShort:
				{
				
				DoCopyArea8_16 ((const uint8 *) sPtr,
								(uint16 *) dPtr,
								rows,
								cols,
								planes,
								sRowStep,
								sColStep,
								sPlaneStep,
								dRowStep,
								dColStep,
								dPlaneStep);
				
				break;
				
				}
				
			case ttSShort:
				{
				
				DoCopyArea8_S16 ((const uint8 *) sPtr,
								 (int16 *) dPtr,
								 rows,
								 cols,
								 planes,
								 sRowStep,
								 sColStep,
								 sPlaneStep,
								 dRowStep,
								 dColStep,
								 dPlaneStep);
				
				break;
				
				}
				
			case ttLong:
				{
				
				DoCopyArea8_32 ((const uint8 *) sPtr,
								(uint32 *) dPtr,
								rows,
								cols,
								planes,
								sRowStep,
								sColStep,
								sPlaneStep,
								dRowStep,
								dColStep,
								dPlaneStep);
				
				break;
				
				}
				
			case ttFloat:
				{
				
				DoCopyArea8_R32 ((const uint8 *) sPtr,
								 (real32 *) dPtr,
								 rows,
								 cols,
								 planes,
								 sRowStep,
								 sColStep,
								 sPlaneStep,
								 dRowStep,
								 dColStep,
								 dPlaneStep,
								 src.PixelRange ());
				
				break;
				
				}
				
			default:
				{
				
				ThrowNotYetImplemented ();
				
				}
				
			}
		
		}
		
	else if (src.fPixelType == ttShort)
		{
		
		switch (fPixelType)
			{
			
			case ttByte:
				{
				
				DoCopyArea8 (((const uint8 *) sPtr) + (qDNGBigEndian ? 1 : 0),
							 (uint8 *) dPtr,
							 rows,
							 cols,
							 planes,
							 sRowStep << 1,
							 sColStep << 1,
							 sPlaneStep << 1,
							 dRowStep,
							 dColStep,
							 dPlaneStep);
						
				break;
				
				}

			case ttSShort:
				{
				
				DoCopyArea16_S16 ((const uint16 *) sPtr,
								  (int16 *) dPtr,
								  rows,
								  cols,
								  planes,
								  sRowStep,
								  sColStep,
								  sPlaneStep,
								  dRowStep,
								  dColStep,
								  dPlaneStep);
				
				break;
				
				}
				
			case ttLong:
				{
				
				DoCopyArea16_32 ((const uint16 *) sPtr,
								 (uint32 *) dPtr,
								 rows,
								 cols,
								 planes,
								 sRowStep,
								 sColStep,
								 sPlaneStep,
								 dRowStep,
								 dColStep,
								 dPlaneStep);
				
				break;
				
				}
				
			case ttFloat:
				{
				
				DoCopyArea16_R32 ((const uint16 *) sPtr,
								  (real32 *) dPtr,
								  rows,
								  cols,
								  planes,
								  sRowStep,
								  sColStep,
								  sPlaneStep,
								  dRowStep,
								  dColStep,
								  dPlaneStep,
								  src.PixelRange ());
				
				break;
				
				}
				
			default:
				{
				
				ThrowNotYetImplemented ();
				
				}
				
			}
			
		}
		
	else if (src.fPixelType == ttSShort)
		{
		
		switch (fPixelType)
			{
			
			case ttByte:
				{
				
				DoCopyArea8 (((const uint8 *) sPtr) + (qDNGBigEndian ? 1 : 0),
							 (uint8 *) dPtr,
							 rows,
							 cols,
							 planes,
							 sRowStep << 1,
							 sColStep << 1,
							 sPlaneStep << 1,
							 dRowStep,
							 dColStep,
							 dPlaneStep);
						
				break;
				
				}

			case ttShort:
				{
				
				// Moving between signed 16 bit values and unsigned 16
				// bit values just requires toggling the sign bit.	So
				// we can use the "backwards" bottleneck.
				
				DoCopyArea16_S16 ((const uint16 *) sPtr,
								  (int16 *) dPtr,
								  rows,
								  cols,
								  planes,
								  sRowStep,
								  sColStep,
								  sPlaneStep,
								  dRowStep,
								  dColStep,
								  dPlaneStep);
				
				break;
				
				}
				
			case ttFloat:
				{
				
				DoCopyAreaS16_R32 ((const int16 *) sPtr,
								   (real32 *) dPtr,
								   rows,
								   cols,
								   planes,
								   sRowStep,
								   sColStep,
								   sPlaneStep,
								   dRowStep,
								   dColStep,
								   dPlaneStep,
								   src.PixelRange ());
				
				break;
				
				}
				
			default:
				{
				
				ThrowNotYetImplemented ();
				
				}
				
			}
			
		}
		
	else if (src.fPixelType == ttLong)
		{
		
		switch (fPixelType)
			{
			
			case ttByte:
				{
				
				DoCopyArea8 (((const uint8 *) sPtr) + (qDNGBigEndian ? 3 : 0),
							 (uint8 *) dPtr,
							 rows,
							 cols,
							 planes,
							 sRowStep << 2,
							 sColStep << 2,
							 sPlaneStep << 2,
							 dRowStep,
							 dColStep,
							 dPlaneStep);
						
				break;
				
				}

			case ttShort:
				{
				
				DoCopyArea16 (((const uint16 *) sPtr) + (qDNGBigEndian ? 1 : 0),
							  (uint16 *) dPtr,
							  rows,
							  cols,
							  planes,
							  sRowStep << 1,
							  sColStep << 1,
							  sPlaneStep << 1,
							  dRowStep,
							  dColStep,
							  dPlaneStep);
				
				break;
				
				}
				
			default:
				{
				
				ThrowNotYetImplemented ();
				
				}
				
			}
			
		}
		
	else if (src.fPixelType == ttFloat)
		{
		
		switch (fPixelType)
			{
			
			case ttByte:
				{
				
				DoCopyAreaR32_8 ((const real32 *) sPtr,
								 (uint8 *) dPtr,
								 rows,
								 cols,
								 planes,
								 sRowStep,
								 sColStep,
								 sPlaneStep,
								 dRowStep,
								 dColStep,
								 dPlaneStep,
								 PixelRange ());
						
				break;
				
				}

			case ttShort:
				{
				
				DoCopyAreaR32_16 ((const real32 *) sPtr,
								  (uint16 *) dPtr,
								  rows,
								  cols,
								  planes,
								  sRowStep,
								  sColStep,
								  sPlaneStep,
								  dRowStep,
								  dColStep,
								  dPlaneStep,
								  PixelRange ());
				
				break;
				
				}
				
			case ttSShort:
				{
				
				DoCopyAreaR32_S16 ((const real32 *) sPtr,
								   (int16 *) dPtr,
								   rows,
								   cols,
								   planes,
								   sRowStep,
								   sColStep,
								   sPlaneStep,
								   dRowStep,
								   dColStep,
								   dPlaneStep,
								   PixelRange ());
				
				break;
				
				}
				
			default:
				{
				
				ThrowNotYetImplemented ();
				
				}
				
			}
		
		}
		
	else
		{
		
		ThrowNotYetImplemented ();
		
		}
		
	}
		
/*****************************************************************************/

dng_point dng_pixel_buffer::RepeatPhase (const dng_rect &srcArea,
										 const dng_rect &dstArea)
	{
	
	int32 repeatV = srcArea.H ();
	int32 repeatH = srcArea.W ();
	
	int32 phaseV;
	int32 phaseH;

	if (repeatV == 0 ||
		repeatH == 0)
		{
		DNG_REPORT ("Bad srcArea in RepeatPhase");
		return dng_point ();
		}
	
	if (srcArea.t >= dstArea.t)
		{
		phaseV = (repeatV - ((srcArea.t - dstArea.t) % repeatV)) % repeatV;
		}
	else
		{
		phaseV = (dstArea.t - srcArea.t) % repeatV;
		}
		
	if (srcArea.l >= dstArea.l)
		{
		phaseH = (repeatH - ((srcArea.l - dstArea.l) % repeatH)) % repeatH;
		}
	else
		{
		phaseH = (dstArea.l - srcArea.l) % repeatH;
		}
		
	return dng_point (phaseV, phaseH);
	
	}
	
/*****************************************************************************/

void dng_pixel_buffer::RepeatArea (const dng_rect &srcArea,
								   const dng_rect &dstArea)
	{
	
	dng_point repeat = srcArea.Size ();
	
	dng_point phase = RepeatPhase (srcArea,
								   dstArea);
			
	const void *sPtr = ConstPixel (srcArea.t,
								   srcArea.l,
								   fPlane);
								   
	void *dPtr = DirtyPixel (dstArea.t,
							 dstArea.l,
							 fPlane);
							 
	uint32 rows = dstArea.H ();
	uint32 cols = dstArea.W ();
		
	switch (fPixelSize)
		{
			
		case 1:
			{
			
			DoRepeatArea8 ((const uint8 *) sPtr,
						   (uint8 *) dPtr,
						   rows,
						   cols,
						   fPlanes,
						   fRowStep,
						   fColStep,
						   fPlaneStep,
						   repeat.v,
						   repeat.h,
						   phase.v,
						   phase.h);
			
			break;
			
			}
			
		case 2:
			{
			
			DoRepeatArea16 ((const uint16 *) sPtr,
							(uint16 *) dPtr,
							rows,
							cols,
							fPlanes,
							fRowStep,
							fColStep,
							fPlaneStep,
							repeat.v,
							repeat.h,
							phase.v,
							phase.h);
			
			break;
			
			}
				
		case 4:
			{
			
			DoRepeatArea32 ((const uint32 *) sPtr,
							(uint32 *) dPtr,
							rows,
							cols,
							fPlanes,
							fRowStep,
							fColStep,
							fPlaneStep,
							repeat.v,
							repeat.h,
							phase.v,
							phase.h);
			
			break;
			
			}
			
		default:
			{
			
			ThrowNotYetImplemented ();
			
			}
			
		}
				
	}

/*****************************************************************************/

void dng_pixel_buffer::RepeatSubArea (const dng_rect subArea,
									  uint32 repeatV,
									  uint32 repeatH)
	{

	// CR-4208475 N-L8: dng_rect ctors below narrow (int32 + uint32) results
	// back to int32; values above INT32_MAX would wrap silently. Mirrors the
	// M-L4 guard in dng_image::Get for the same shape. Existing callers
	// pass small Bayer-phase repeats, so this is defense-in-depth at the
	// public API boundary.

	DNG_REQUIRE (repeatV <= (uint32) 0x7FFFFFFF &&
				 repeatH <= (uint32) 0x7FFFFFFF,
				 "Invalid repeat in dng_pixel_buffer::RepeatSubArea");

	if (fArea.t < subArea.t)
		{
		
		RepeatArea (dng_rect (subArea.t			 , fArea.l,
							  subArea.t + repeatV, fArea.r),
					dng_rect (fArea.t			 , fArea.l,
							  subArea.t			 , fArea.r));
							  
		}
	
	if (fArea.b > subArea.b)
		{
		
		RepeatArea (dng_rect (subArea.b - repeatV, fArea.l,
							  subArea.b			 , fArea.r),
					dng_rect (subArea.b			 , fArea.l,
							  fArea.b			 , fArea.r));
							  
		}
		
	if (fArea.l < subArea.l)
		{
		
		RepeatArea (dng_rect (fArea.t, subArea.l		  ,
							  fArea.b, subArea.l + repeatH),
					dng_rect (fArea.t, fArea.l			  ,
							  fArea.b, subArea.l		  ));

		}
	
	if (fArea.r > subArea.r)
		{
		
		RepeatArea (dng_rect (fArea.t, subArea.r - repeatH,
							  fArea.b, subArea.r		  ),
					dng_rect (fArea.t, subArea.r		  ,
							  fArea.b, fArea.r			  ));

		}
	
	}

/*****************************************************************************/

void dng_pixel_buffer::ShiftRight (uint32 shift)
	{
	
	if (fPixelType != ttShort)
		{
		
		ThrowNotYetImplemented ();
		
		}
	
	uint32 rows = fArea.H ();
	uint32 cols = fArea.W ();
	
	uint32 planes = fPlanes;
	
	void *dPtr = DirtyPixel (fArea.t,
							 fArea.l,
							 fPlane);
	
	const void *sPtr = dPtr;
	
	int32 sRowStep	 = fRowStep;
	int32 sColStep	 = fColStep;
	int32 sPlaneStep = fPlaneStep;
	
	int32 dRowStep	 = fRowStep;
	int32 dColStep	 = fColStep;
	int32 dPlaneStep = fPlaneStep;
	
	OptimizeOrder (sPtr,
				   dPtr,
				   fPixelSize,
				   fPixelSize,
				   rows,
				   cols,
				   planes,
				   sRowStep,
				   sColStep,
				   sPlaneStep,
				   dRowStep,
				   dColStep,
				   dPlaneStep);
				   
	DoShiftRight16 ((uint16 *) dPtr,
					rows,
					cols,
					planes,
					dRowStep,
					dColStep,
					dPlaneStep,
					shift);
	
	}
		
/*****************************************************************************/

void dng_pixel_buffer::FlipH ()
	{

	fData = InternalPixel (fArea.t, fArea.r - 1);

	fColStep = -fColStep;

	}

/*****************************************************************************/

void dng_pixel_buffer::FlipV ()
	{
	
	fData = InternalPixel (fArea.b - 1, fArea.l);

	fRowStep = -fRowStep;

	}

/*****************************************************************************/

void dng_pixel_buffer::FlipZ ()
	{

	fData = InternalPixel (fArea.t, fArea.l, fPlanes - 1);

	fPlaneStep = -fPlaneStep;

	}

/*****************************************************************************/

bool dng_pixel_buffer::EqualArea (const dng_pixel_buffer &src,
								  const dng_rect &area,
								  uint32 plane,
								  uint32 planes) const
	{
	
	uint32 rows = area.H ();
	uint32 cols = area.W ();
	
	const void *sPtr = src.ConstPixel (area.t,
									   area.l,
									   plane);
								  
	const void *dPtr = ConstPixel (area.t,
								   area.l,
								   plane);
	
	int32 sRowStep	 = src.fRowStep;
	int32 sColStep	 = src.fColStep;
	int32 sPlaneStep = src.fPlaneStep;
	
	int32 dRowStep	 = fRowStep;
	int32 dColStep	 = fColStep;
	int32 dPlaneStep = fPlaneStep;

	if (fPixelType == src.fPixelType)
		{
		
		if (rows == 1 && cols == 1 && sPlaneStep == 1 && dPlaneStep == 1)
			{
			
			return DoEqualBytes (sPtr,
								 dPtr, 
								 planes * fPixelSize);
			
			}
			
		else switch (fPixelSize)
			{
			
			case 1:
				{
				
				return DoEqualArea8 ((const uint8 *) sPtr,
									 (const uint8 *) dPtr,
									 rows,
									 cols,
									 planes,
									 sRowStep,
									 sColStep,
									 sPlaneStep,
									 dRowStep,
									 dColStep,
									 dPlaneStep);
				
				break;
				
				}
				
			case 2:
				{
				
				return DoEqualArea16 ((const uint16 *) sPtr,
									  (const uint16 *) dPtr,
									  rows,
									  cols,
									  planes,
									  sRowStep,
									  sColStep,
									  sPlaneStep,
									  dRowStep,
									  dColStep,
									  dPlaneStep);

				break;
				
				}
				
			case 4:
				{
				
				return DoEqualArea32 ((const uint32 *) sPtr,
									  (const uint32 *) dPtr,
									  rows,
									  cols,
									  planes,
									  sRowStep,
									  sColStep,
									  sPlaneStep,
									  dRowStep,
									  dColStep,
									  dPlaneStep);
				
				break;
				
				}
				
			default:
				{
				
				ThrowNotYetImplemented ();

				return false;

				}
				
			}
		
		}
		
	else
		return false;

	}

/*****************************************************************************/

namespace
	{

	template <typename T>
	real64 MaxDiff (const T *src1,
					int32 s1RowStep,
					int32 s1PlaneStep,
					const T *src2,
					int32 s2RowStep,
					int32 s2PlaneStep,
					uint32 rows,
					uint32 cols,
					uint32 planes)
		{

		real64 result = 0.0;

		for (uint32 plane = 0; plane < planes; plane++)
			{

			const T *src1Save = src1;
			const T *src2Save = src2;

			for (uint32 row = 0; row < rows; row++)
				{

				for (uint32 col = 0; col < cols; col++)
					{
					real64 diff = fabs ((real64)src1 [col] - src2 [col]);

					if (diff > result)
						result = diff;

					}

				src1 += s1RowStep;
				src2 += s2RowStep;

				}

			src1 = src1Save + s1PlaneStep;
			src2 = src2Save + s2PlaneStep;

			}

		return result;

		}

	template <typename T>
	real64 MaxDiff (const T *src1,
					int32 s1ColStep,
					int32 s1RowStep,
					int32 s1PlaneStep,
					const T *src2,
					int32 s2ColStep,
					int32 s2RowStep,
					int32 s2PlaneStep,
					uint32 rows,
					uint32 cols,
					uint32 planes)
		{

		if (s1ColStep == s2ColStep &&
			s1ColStep == 1)
			return MaxDiff (src1,
							s1RowStep,
							s1PlaneStep,
							src2,
							s2RowStep,
							s2PlaneStep,
							rows,
							cols,
							planes);

		real64 result = 0.0;

		for (uint32 plane = 0; plane < planes; plane++)
			{

			const T *src1Save = src1;
			const T *src2Save = src2;

			for (uint32 row = 0; row < rows; row++)
				{

				for (uint32 col = 0; col < cols; col++)
					{
					real64 diff = fabs ((real64)src1 [col * s1ColStep] - src2 [col * s2ColStep]);

					if (diff > result)
						result = diff;

					}

				src1 += s1RowStep;
				src2 += s2RowStep;

				}

			src1 = src1Save + s1PlaneStep;
			src2 = src2Save + s2PlaneStep;

			}


		return result;

		}
	}

real64 dng_pixel_buffer::MaximumDifference (const dng_pixel_buffer &rhs,
											const dng_rect &area,
											uint32 plane,
											uint32 planes) const
	{
	
	uint32 rows = area.H ();
	uint32 cols = area.W ();
	
	const void *s1Ptr = rhs.ConstPixel (area.t,
										area.l,
										plane);
								  
	const void *s2Ptr = ConstPixel (area.t,
									area.l,
									plane);
	
	int32 s1RowStep	  = rhs.fRowStep;
	int32 s1ColStep	  = rhs.fColStep;
	int32 s1PlaneStep = rhs.fPlaneStep;
	
	int32 s2RowStep	  = fRowStep;
	int32 s2ColStep	  = fColStep;
	int32 s2PlaneStep = fPlaneStep;

	if (fPixelType == rhs.fPixelType)
		{

		switch (fPixelType)
			{

			case ttByte:
				return MaxDiff ((const uint8 *)s1Ptr,
								s1ColStep,
								s1RowStep,
								s1PlaneStep,
								(const uint8 *)s2Ptr,
								s2ColStep,
								s2RowStep,
								s2PlaneStep,
								rows,
								cols,
								planes);

				break;

			case ttShort:
				return MaxDiff ((const uint16 *)s1Ptr,
								s1ColStep,
								s1RowStep,
								s1PlaneStep,
								(const uint16 *)s2Ptr,
								s2ColStep,
								s2RowStep,
								s2PlaneStep,
								rows,
								cols,
								planes);

				break;

			case ttLong:
				return MaxDiff ((const uint32 *)s1Ptr,
								s1ColStep,
								s1RowStep,
								s1PlaneStep,
								(const uint32 *)s2Ptr,
								s2ColStep,
								s2RowStep,
								s2PlaneStep,
								rows,
								cols,
								planes);

				break;

			case ttSByte:
				return MaxDiff ((const int8 *)s1Ptr,
								s1ColStep,
								s1RowStep,
								s1PlaneStep,
								(const int8 *)s2Ptr,
								s2ColStep,
								s2RowStep,
								s2PlaneStep,
								rows,
								cols,
								planes);

				break;

			case ttSShort:
				return MaxDiff ((const int16 *)s1Ptr,
								s1ColStep,
								s1RowStep,
								s1PlaneStep,
								(const int16 *)s2Ptr,
								s2ColStep,
								s2RowStep,
								s2PlaneStep,
								rows,
								cols,
								planes);

				break;

			case ttSLong:
				return MaxDiff ((const int32 *)s1Ptr,
								s1ColStep,
								s1RowStep,
								s1PlaneStep,
								(const int32 *)s2Ptr,
								s2ColStep,
								s2RowStep,
								s2PlaneStep,
								rows,
								cols,
								planes);

				break;

			case ttFloat:
				return MaxDiff ((const real32 *)s1Ptr,
								s1ColStep,
								s1RowStep,
								s1PlaneStep,
								(const real32 *)s2Ptr,
								s2ColStep,
								s2RowStep,
								s2PlaneStep,
								rows,
								cols,
								planes);

				break;

			case ttDouble:
				return MaxDiff ((const real64 *)s1Ptr,
								s1ColStep,
								s1RowStep,
								s1PlaneStep,
								(const real64 *)s2Ptr,
								s2ColStep,
								s2RowStep,
								s2PlaneStep,
								rows,
								cols,
								planes);

				break;


			default:
				{
				
				ThrowNotYetImplemented ();

				return 0.0;

				}
				
			}
		
		}
		
	else
		ThrowProgramError ("attempt to difference pixel buffers of different formats.");

	return 0.0;

	}

/*****************************************************************************/
