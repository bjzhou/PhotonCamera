/*****************************************************************************/
// Copyright 2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Functions and classes for working with a semantic mask.
 */

/*****************************************************************************/

#ifndef __dng_semantic_mask__
#define __dng_semantic_mask__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_string.h"
#include "dng_types.h"

#include <memory>

/*****************************************************************************/

class dng_semantic_mask
	{
		
	public:

		// String identifying the semantics of this mask. Corresponds to
		// SemanticName tag.

		dng_string fName;

		// String identifying the instance of this mask. Corresponds to
		// SemanticInstanceID tag.

		dng_string fInstanceID;

		// XMP block. We don't use this for anything at present; just make
		// sure we preserve it.

		std::shared_ptr<const dng_memory_block> fXMP;

		// The semantic mask. The origin of the image bounds is always (0,0)
		// by convention.

		std::shared_ptr<const dng_image> fMask;

		// Optional MaskSubArea tag (top, left, bottom, right).

		// [0]: top crop
		// [1]: left crop
		
		// [2]: width full
		// [3]: height full

		uint32 fMaskSubArea [4] = { 0, 0, 0, 0 };
		
		// Lossy compressed data.
		
		std::shared_ptr<const dng_lossy_compressed_image> fLossyCompressed;

	public:

		bool IsMaskSubAreaValid () const;

		void CalcMaskSubArea (dng_point &origin,
							  dng_rect &wholeImageArea) const;
		
	};

/*****************************************************************************/

#endif	// __dng_semantic_mask__

/*****************************************************************************/

