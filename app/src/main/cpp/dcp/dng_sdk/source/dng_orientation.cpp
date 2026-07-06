/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_orientation.h"

/*****************************************************************************/

void dng_orientation::SetTIFF (uint32 tiff)
	{
	
	switch (tiff)
		{
		
		case 1:
			{
			fAdobeOrientation = kNormal;
			break;
			}
		
		case 2:
			{
			fAdobeOrientation = kMirror;
			break;
			}
			
		case 3:
			{
			fAdobeOrientation = kRotate180;
			break;
			}
			
		case 4:
			{
			fAdobeOrientation = kMirror180;
			break;
			}
			
		case 5:
			{
			fAdobeOrientation = kMirror90CCW;
			break;
			}
			
		case 6:
			{
			fAdobeOrientation = kRotate90CW;
			break;
			}
			
		case 7:
			{
			fAdobeOrientation = kMirror90CW;
			break;
			}
			
		case 8:
			{
			fAdobeOrientation = kRotate90CCW;
			break;
			}
			
		case 9:
			{
			fAdobeOrientation = kUnknown;
			break;
			}
			
		default:
			{
			fAdobeOrientation = kNormal;
			}

		}
		
	}

/*****************************************************************************/

uint32 dng_orientation::GetTIFF () const
	{
	
	switch (fAdobeOrientation)
		{
		
		case kNormal:
			{
			return 1;
			}
		
		case kMirror:
			{
			return 2;
			}
			
		case kRotate180:
			{
			return 3;
			}
			
		case kMirror180:
			{
			return 4;
			}
			
		case kMirror90CCW:
			{
			return 5;
			}
			
		case kRotate90CW:
			{
			return 6;
			}
			
		case kMirror90CW:
			{
			return 7;
			}
			
		case kRotate90CCW:
			{
			return 8;
			}
			
		case kUnknown:
			{
			return 9;
			}
			
		default:
			break;

		}
		
	return 1;
		
	}
		
/*****************************************************************************/

bool dng_orientation::FlipD () const
	{
	
	return (fAdobeOrientation & 1) != 0;
	
	}
		
/*****************************************************************************/

bool dng_orientation::FlipH () const
	{
	
	if (fAdobeOrientation & 4)
		return (fAdobeOrientation & 2) == 0;
		
	else
		return (fAdobeOrientation & 2) != 0;
		
	}
		
/*****************************************************************************/

bool dng_orientation::FlipV () const
	{
	
	if (fAdobeOrientation & 4)
		return FlipD () == FlipH ();
		
	else
		return FlipD () != FlipH ();
		
	}

/*****************************************************************************/

bool dng_orientation::IsMirrored () const
	{
	
	return (fAdobeOrientation & 4) != 0;
	
	}

/*****************************************************************************/

dng_orientation dng_orientation::operator- () const
	{
	
	uint32 x = GetAdobe ();
	
	if ((x & 5) == 5)
		{
		
		x ^= 2;
		
		}
		
	dng_orientation result;

	result.SetAdobe (((4 - x) & 3) | (x & 4));
	
	return result;

	}
		
/*****************************************************************************/

dng_orientation dng_orientation::operator+ (const dng_orientation &b) const
	{
	
	uint32 x = GetAdobe ();
	
	uint32 y = b.GetAdobe ();
	
	if (y & 4)
		{
		
		if (x & 1)
			x ^= 6;
		else
			x ^= 4;
		
		}
		
	dng_orientation result;

	result.SetAdobe (((x + y) & 3) | (x & 4));
	
	return result;
	
	}
		
/*****************************************************************************/

bool dng_orientation::CalcForwardMatrix3by3 (dng_matrix &orientationMatrix,
											 const bool horizontalFirstRow) const
	{

	bool hasOrient = false;

	orientationMatrix.SetIdentity (3);
	
	if (FlipH ())
		{

		hasOrient = true;

		if (horizontalFirstRow)
			{

			orientationMatrix = dng_matrix_3by3 (-1.0, 0.0, 1.0,
												  0.0, 1.0, 0.0,
												  0.0, 0.0, 1.0) *
								orientationMatrix;

			}

		else
			{
			
			orientationMatrix = dng_matrix_3by3 (1.0,  0.0, 0.0,
												 0.0, -1.0, 1.0,
												 0.0,  0.0, 1.0) *
								orientationMatrix;
			
			}

		}
	
	if (FlipV ())
		{
		
		hasOrient = true;

		if (horizontalFirstRow)
			{

			orientationMatrix = dng_matrix_3by3 (1.0,  0.0, 0.0,
												 0.0, -1.0, 1.0,
												 0.0,  0.0, 1.0) *
								orientationMatrix;

			}

		else
			{
			
			orientationMatrix = dng_matrix_3by3 (-1.0, 0.0, 1.0,
												  0.0, 1.0, 0.0,
												  0.0, 0.0, 1.0) *
								orientationMatrix;
			
			}
							
		}
	
	if (FlipD ())
		{
		
		hasOrient = true;

		orientationMatrix = dng_matrix_3by3 (0.0, 1.0, 0.0,
											 1.0, 0.0, 0.0,
											 0.0, 0.0, 1.0) *
							orientationMatrix;

		}

	return hasOrient;
	
	}

/*****************************************************************************/

bool dng_orientation::CalcForwardMatrix4by4 (dng_matrix &orientationMatrix,
											 const bool horizontalFirstRow) const
	{
	
	bool hasOrient = false;

	orientationMatrix.SetIdentity (4);
	
	if (FlipH ())
		{

		hasOrient = true;

		if (horizontalFirstRow)
			{

			orientationMatrix = dng_matrix_4by4 (-1.0, 0.0, 0.0, 1.0,
												  0.0, 1.0, 0.0, 0.0,
												  0.0, 0.0, 1.0, 0.0,
												  0.0, 0.0, 0.0, 1.0);

			}

		else
			{
			
			orientationMatrix = dng_matrix_4by4 (1.0,  0.0, 0.0, 0.0,
												 0.0, -1.0, 0.0, 1.0,
												 0.0,  0.0, 1.0, 0.0,
												 0.0,  0.0, 0.0, 1.0);
			
			}

		}
	
	if (FlipV ())
		{
		
		hasOrient = true;

		if (horizontalFirstRow)
			{

			orientationMatrix = dng_matrix_4by4 (1.0,  0.0, 0.0, 0.0,
												 0.0, -1.0, 0.0, 1.0,
												 0.0,  0.0, 1.0, 0.0,
												 0.0,  0.0, 0.0, 1.0) *
								orientationMatrix;

			}

		else
			{
			
			orientationMatrix = dng_matrix_4by4 (-1.0, 0.0, 0.0, 1.0,
												  0.0, 1.0, 0.0, 0.0,
												  0.0, 0.0, 1.0, 0.0,
												  0.0, 0.0, 0.0, 1.0) *
								orientationMatrix;
			
			}
							
		}
	
	if (FlipD ())
		{
		
		hasOrient = true;

		orientationMatrix = dng_matrix_4by4 (0.0, 1.0, 0.0, 0.0,
											 1.0, 0.0, 0.0, 0.0,
											 0.0, 0.0, 1.0, 0.0,
											 0.0, 0.0, 0.0, 1.0) *
							orientationMatrix;

		}

	return hasOrient;
	
	}

/*****************************************************************************/
