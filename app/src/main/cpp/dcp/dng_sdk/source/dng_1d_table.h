/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Definition of a lookup table based 1D floating-point to floating-point function abstraction using linear interpolation.
 */

/*****************************************************************************/

#ifndef __dng_1d_table__
#define __dng_1d_table__

/*****************************************************************************/

#include "dng_assertions.h"
#include "dng_auto_ptr.h"
#include "dng_classes.h"
#include "dng_types.h"
#include "dng_uncopyable.h"

/*****************************************************************************/

/// \brief A 1D floating-point lookup table using linear interpolation.

class dng_1d_table: private dng_uncopyable
	{

	public:

		/// Constant denoting minimum size of table.

		static const uint32 kMinTableSize = 512;
	
	private:
	
		/// Constant denoting default size of table.

		static const uint32 kDefaultTableSize = 4096;
			
	protected:
	
		AutoPtr<dng_memory_block> fBuffer;
		
		real32 *fTable;

		const uint32 fTableCount;
		
	private:
		
		const real32 fTableCount32;
	
	public:

		/// Table constructor. count must be a power of two
		/// and at least kMinTableSize.
	
		explicit dng_1d_table (uint32 count = kDefaultTableSize);
			
		virtual ~dng_1d_table ();

		/// Number of table entries.

		uint32 Count () const
			{
			return fTableCount;
			}

		/// Set up table, initialize entries using functiion.
		/// This method can throw an exception, e.g. if there is not enough memory.
		/// \param allocator Memory allocator from which table memory is allocated.
		/// \param function Table is initialized with values of function.Evaluate(0.0) to function.Evaluate(1.0).
		/// \param subSample If true, only sample the function a limited number of times and interpolate.

		void Initialize (dng_memory_allocator &allocator,
						 const dng_1d_function &function,
						 bool subSample = false);

		/// Lookup and interpolate mapping for an input.
		/// \param x value from 0.0 to 1.0 used as input for mapping
		/// \retval Approximation of function.Evaluate(x)

		real32 Interpolate (real32 x) const
			{

			real32 y = x * fTableCount32;

			// CR-4208475 M-M5: Reject NaN / Inf / out-of-range y before
			// casting to int32. A direct cast of a non-finite or
			// out-of-int32-range float is undefined behavior, and the
			// post-cast bounds check below would otherwise see whatever
			// the implementation produced for the bad conversion.

			if (!(y >= 0.0f && y <= fTableCount32))
				{

				ThrowBadFormat ("Index out of range.");

				}

			int32 index = (int32) y;

			// Enable vectorization by using DNG_ASSERT instead of DNG_REQUIRE
			
			DNG_ASSERT (!(index < 0 || index > (int32) fTableCount), "dng_1d_table::Interpolate parameter out of range");
			
			real32 z = (real32) index;
			
			real32 fract = y - z;
			
			return fTable [index	] * (1.0f - fract) +
				   fTable [index + 1] * (		fract);
			
			}
			
		/// Unsafe version of above for use in code that knows the input
		/// is limited to 0.0f to 1.0f.
			
		DNG_ALWAYS_INLINE real32 UnsafeInterpolate (real32 x) const
			{
			
			real32 y = x * fTableCount32;
			
			int32 index = (int32) y;
			
			real32 z = (real32) index;
			
			real32 fract = y - z;
			
			return fTable [index	] * (1.0f - fract) +
				   fTable [index + 1] * (		fract);
			
			}
			
		/// Direct access function for table data.
			
		const real32 * Table () const
			{
			return fTable;
			}
			
		/// Expand the table to a 16-bit to 16-bit table.
		
		void Expand16 (uint16 *table16) const;
			
	private:
			
		void SubDivide (const dng_1d_function &function,
						uint32 lower,
						uint32 upper,
						real32 maxDelta);
	
	};

/*****************************************************************************/

#endif
	
/*****************************************************************************/
