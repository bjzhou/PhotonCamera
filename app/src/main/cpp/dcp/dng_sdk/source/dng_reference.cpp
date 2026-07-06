/*****************************************************************************/
// Copyright 2006-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_reference.h"

#include "dng_1d_table.h"
#include "dng_flags.h"
#include "dng_gain_map.h"
#include "dng_hue_sat_map.h"
#include "dng_matrix.h"
#include "dng_resample.h"
#include "dng_simd_type.h"
#include "dng_utils.h"
				   
/*****************************************************************************/

// This module contains routines that should be as fast as possible, even
// at the expense of slight code size increases.

#include "dng_fast_module.h"

/*****************************************************************************/

void RefZeroBytes (void *dPtr,
				   uint32 count)
	{
	
	memset (dPtr, 0, count);
	
	}
				   
/*****************************************************************************/

void RefCopyBytes (const void *sPtr,
				   void *dPtr,
				   uint32 count)
	{
	
	memcpy (dPtr, sPtr, count);
	
	}
				   
/*****************************************************************************/

void RefSwapBytes16 (uint16 *dPtr,
					 uint32 count)
	{
	
	for (uint32 j = 0; j < count; j++)
		{
		
		dPtr [j] = SwapBytes16 (dPtr [j]);
		
		}
		
	}
				   
/*****************************************************************************/

void RefSwapBytes32 (uint32 *dPtr,
					 uint32 count)
	{
	
	for (uint32 j = 0; j < count; j++)
		{
		
		dPtr [j] = SwapBytes32 (dPtr [j]);
		
		}
		
	}
				   
/*****************************************************************************/

void RefSetArea8 (uint8 *dPtr,
				  uint8 value,
				  uint32 rows,
				  uint32 cols,
				  uint32 planes,
				  int32 rowStep,
				  int32 colStep,
				  int32 planeStep)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		uint8 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			uint8 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = value;
				
				dPtr2 += planeStep;
				
				}
			
			dPtr1 += colStep;

			}
			
		dPtr += rowStep;
		
		}
			
	}

/*****************************************************************************/

template <SIMDType simd, typename destType>

#ifdef __INTEL_LLVM_COMPILER
__attribute__((SET_CPU_FEATURE(simd)))
#endif // __INTEL_LLVM_COMPILER

void RefSetArea (destType *dPtr,
				 destType value,
				 uint32 rows,
				 uint32 cols,
				 uint32 planes,
				 int32 rowStep,
				 int32 colStep,
				 int32 planeStep)
	{

	INTEL_COMPILER_NEEDED_NOTE
#ifdef __INTEL_COMPILER
		SET_CPU_FEATURE(simd);
#endif // __INTEL_COMPILER


	if ((planeStep == 0) && (colStep == 1))
		{

		for (uint32 row = 0; row < rows; row++)
			{

			INTEL_PRAGMA_SIMD_ASSERT
			for (uint32 col = 0; col < cols; col++)
				{
		
				dPtr [col] = value;

				}
			
			dPtr += rowStep;
		
			}
		}

	else if (planeStep == 1)
		{

		for (uint32 row = 0; row < rows; row++)
			{
		
			destType *dPtr1 = dPtr;
			  
			for (uint32 col = 0; col < cols; col++)
				{
			
				destType *dPtr2 = dPtr1;

				INTEL_PRAGMA_SIMD_ASSERT
				for (uint32 plane = 0; plane < planes; plane++)
					{
			
					dPtr2 [plane] = value;
				
					}
			
				dPtr1 += colStep;

				}
			
			dPtr += rowStep;
		
			}

		}

	else
		{

		for (uint32 row = 0; row < rows; row++)
			{
		
			destType *dPtr1 = dPtr;
			  
			for (uint32 col = 0; col < cols; col++)
				{
			
				destType *dPtr2 = dPtr1;
				  
				for (uint32 plane = 0; plane < planes; plane++)
					{
			
					*dPtr2 = value;
				
					dPtr2 += planeStep;
				
					}
			
				dPtr1 += colStep;

				}
			
			dPtr += rowStep;
		
			}

		}
			
	}

/*****************************************************************************/

#if !qDNGIntelCompiler
template
void RefSetArea<Scalar, uint16>(uint16 *dPtr,
							uint16 value,
							uint32 rows,
							uint32 cols,
							uint32 planes,
							int32 rowStep,
							int32 colStep,
							int32 planeStep);
template
void RefSetArea<Scalar, uint32>(uint32 *dPtr,
	uint32 value,
	uint32 rows,
	uint32 cols,
	uint32 planes,
	int32 rowStep,
	int32 colStep,
	int32 planeStep);
#else
template SetArea16Proc RefSetArea<Scalar, uint16>;
template SetArea16Proc RefSetArea<AVX2, uint16>;
template SetArea32Proc RefSetArea<Scalar, uint32>;
template SetArea32Proc RefSetArea<AVX2, uint32>;
#endif

/*****************************************************************************/

void RefCopyArea8 (const uint8 *sPtr,
				   uint8 *dPtr,
				   uint32 rows,
				   uint32 cols,
				   uint32 planes,
				   int32 sRowStep,
				   int32 sColStep,
				   int32 sPlaneStep,
				   int32 dRowStep,
				   int32 dColStep,
				   int32 dPlaneStep)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint8 *sPtr1 = sPtr;
			  uint8 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint8 *sPtr2 = sPtr1;
				  uint8 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = *sPtr2;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyArea16 (const uint16 *sPtr,
					uint16 *dPtr,
					uint32 rows,
					uint32 cols,
					uint32 planes,
					int32 sRowStep,
					int32 sColStep,
					int32 sPlaneStep,
					int32 dRowStep,
					int32 dColStep,
					int32 dPlaneStep)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint16 *sPtr1 = sPtr;
			  uint16 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint16 *sPtr2 = sPtr1;
				  uint16 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = *sPtr2;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyArea32 (const uint32 *sPtr,
					uint32 *dPtr,
					uint32 rows,
					uint32 cols,
					uint32 planes,
					int32 sRowStep,
					int32 sColStep,
					int32 sPlaneStep,
					int32 dRowStep,
					int32 dColStep,
					int32 dPlaneStep)
	{
		
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint32 *sPtr1 = sPtr;
			  uint32 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint32 *sPtr2 = sPtr1;
				  uint32 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = *sPtr2;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyArea8_16 (const uint8 *sPtr,
					  uint16 *dPtr,
					  uint32 rows,
					  uint32 cols,
					  uint32 planes,
					  int32 sRowStep,
					  int32 sColStep,
					  int32 sPlaneStep,
					  int32 dRowStep,
					  int32 dColStep,
					  int32 dPlaneStep)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint8	 *sPtr1 = sPtr;
			  uint16 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint8	 *sPtr2 = sPtr1;
				  uint16 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = *sPtr2;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyArea8_S16 (const uint8 *sPtr,
					   int16 *dPtr,
					   uint32 rows,
					   uint32 cols,
					   uint32 planes,
					   int32 sRowStep,
					   int32 sColStep,
					   int32 sPlaneStep,
					   int32 dRowStep,
					   int32 dColStep,
					   int32 dPlaneStep)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint8 *sPtr1 = sPtr;
			  int16 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint8 *sPtr2 = sPtr1;
				  int16 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
				
				int16 x = *sPtr2;
				
				*dPtr2 = x ^ 0x8000;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyArea8_32 (const uint8 *sPtr,
					  uint32 *dPtr,
					  uint32 rows,
					  uint32 cols,
					  uint32 planes,
					  int32 sRowStep,
					  int32 sColStep,
					  int32 sPlaneStep,
					  int32 dRowStep,
					  int32 dColStep,
					  int32 dPlaneStep)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint8	 *sPtr1 = sPtr;
			  uint32 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint8	 *sPtr2 = sPtr1;
				  uint32 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = *sPtr2;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

template <SIMDType simd>

#ifdef __INTEL_LLVM_COMPILER
__attribute__((SET_CPU_FEATURE(simd)))
#endif // __INTEL_LLVM_COMPILER

void RefCopyArea16_S16 (const uint16 *sPtr,
						int16 *dPtr,
						uint32 rows,
						uint32 cols,
						uint32 planes,
						int32 sRowStep,
						int32 sColStep,
						int32 sPlaneStep,
						int32 dRowStep,
						int32 dColStep,
						int32 dPlaneStep)
	{

	INTEL_COMPILER_NEEDED_NOTE

#ifdef __INTEL_COMPILER
		SET_CPU_FEATURE(simd);
#endif // __INTEL_COMPILER

	
	for (uint32 row = 0; row < rows; row++)
		{

		const uint16 *sPtr1 = sPtr;
			   int16 *dPtr1 = dPtr;

		for (uint32 col = 0; col < cols; col++)
			{

			const uint16 *sPtr2 = sPtr1;
				   int16 *dPtr2 = dPtr1;
		
			// Vectorizing if both sPlaneStep and dPlaneStep are 1. Else,
			// regular operation is performed.

			if (sPlaneStep == 1 && dPlaneStep == 1)
				{

				INTEL_PRAGMA_SIMD_ASSERT
				for (uint32 plane = 0; plane < planes; plane++)
					{

					*dPtr2 = *sPtr2 ^ 0x8000;

					sPtr2 += sPlaneStep;
					dPtr2 += dPlaneStep;
					}

				}

			else
				{

				for (uint32 plane = 0; plane < planes; plane++)
					{

					*dPtr2 = *sPtr2 ^ 0x8000;

					sPtr2 += sPlaneStep;
					dPtr2 += dPlaneStep;

					}

				}

			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}

		sPtr += sRowStep;
		dPtr += dRowStep;

		}

	}

/*****************************************************************************/

INTEL_COMPILER_NEEDED_NOTE
#if !qDNGIntelCompiler
template 
void RefCopyArea16_S16<Scalar> (const uint16 *sPtr,
								int16 *dPtr,
								uint32 rows,
								uint32 cols,
								uint32 planes,
								int32 sRowStep,
								int32 sColStep,
								int32 sPlaneStep,
								int32 dRowStep,
								int32 dColStep,
								int32 dPlaneStep);
#else
template CopyArea16_S16Proc RefCopyArea16_S16<Scalar>;
template CopyArea16_S16Proc RefCopyArea16_S16<AVX2>;
#endif

/*****************************************************************************/

void RefCopyArea16_32 (const uint16 *sPtr,
					   uint32 *dPtr,
					   uint32 rows,
					   uint32 cols,
					   uint32 planes,
					   int32 sRowStep,
					   int32 sColStep,
					   int32 sPlaneStep,
					   int32 dRowStep,
					   int32 dColStep,
					   int32 dPlaneStep)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint16 *sPtr1 = sPtr;
			  uint32 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint16 *sPtr2 = sPtr1;
				  uint32 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = *sPtr2;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyArea8_R32 (const uint8 *sPtr,
					   real32 *dPtr,
					   uint32 rows,
					   uint32 cols,
					   uint32 planes,
					   int32 sRowStep,
					   int32 sColStep,
					   int32 sPlaneStep,
					   int32 dRowStep,
					   int32 dColStep,
					   int32 dPlaneStep,
					   uint32 pixelRange)
	{
	
	real32 scale = 1.0f / (real32) pixelRange;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint8	 *sPtr1 = sPtr;
			  real32 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint8	 *sPtr2 = sPtr1;
				  real32 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = scale * (real32) *sPtr2;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyArea16_R32 (const uint16 *sPtr,
						real32 *dPtr,
						uint32 rows,
						uint32 cols,
						uint32 planes,
						int32 sRowStep,
						int32 sColStep,
						int32 sPlaneStep,
						int32 dRowStep,
						int32 dColStep,
						int32 dPlaneStep,
						uint32 pixelRange)
	{
	
	real32 scale = 1.0f / (real32) pixelRange;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint16 *sPtr1 = sPtr;
			  real32 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint16 *sPtr2 = sPtr1;
				  real32 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = scale * (real32) *sPtr2;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyAreaS16_R32 (const int16 *sPtr,
						 real32 *dPtr,
						 uint32 rows,
						 uint32 cols,
						 uint32 planes,
						 int32 sRowStep,
						 int32 sColStep,
						 int32 sPlaneStep,
						 int32 dRowStep,
						 int32 dColStep,
						 int32 dPlaneStep,
						 uint32 pixelRange)
	{
	
	real32 scale = 1.0f / (real32) pixelRange;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const int16	 *sPtr1 = sPtr;
			  real32 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const int16	 *sPtr2 = sPtr1;
				  real32 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
				
				int32 x = *sPtr2;
				
				*dPtr2 = scale * (real32) (x + 32768);
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyAreaR32_8 (const real32 *sPtr,
					   uint8 *dPtr,
					   uint32 rows,
					   uint32 cols,
					   uint32 planes,
					   int32 sRowStep,
					   int32 sColStep,
					   int32 sPlaneStep,
					   int32 dRowStep,
					   int32 dColStep,
					   int32 dPlaneStep,
					   uint32 pixelRange)
	{
	
	real32 scale = (real32) pixelRange;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const real32 *sPtr1 = sPtr;
			  uint8	 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const real32 *sPtr2 = sPtr1;
				  uint8	 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
				
				*dPtr2 = (uint8) (Pin_Overrange (*sPtr2) * scale + 0.5f);
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyAreaR32_16 (const real32 *sPtr,
						uint16 *dPtr,
						uint32 rows,
						uint32 cols,
						uint32 planes,
						int32 sRowStep,
						int32 sColStep,
						int32 sPlaneStep,
						int32 dRowStep,
						int32 dColStep,
						int32 dPlaneStep,
						uint32 pixelRange)
	{
	
	real32 scale = (real32) pixelRange;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const real32 *sPtr1 = sPtr;
			  uint16 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const real32 *sPtr2 = sPtr1;
				  uint16 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 = (uint16) (Pin_Overrange (*sPtr2) * scale + 0.5f);
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefCopyAreaR32_S16 (const real32 *sPtr,
						 int16 *dPtr,
						 uint32 rows,
						 uint32 cols,
						 uint32 planes,
						 int32 sRowStep,
						 int32 sColStep,
						 int32 sPlaneStep,
						 int32 dRowStep,
						 int32 dColStep,
						 int32 dPlaneStep,
						 uint32 pixelRange)
	{
	
	real32 scale = (real32) pixelRange;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const real32 *sPtr1 = sPtr;
			  int16	 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const real32 *sPtr2 = sPtr1;
				  int16	 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
				
				int32 x = (int32) (Pin_Overrange (*sPtr2) * scale + 0.5f);
			
				*dPtr2 = (int16) (x ^ 0x8000);
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}
		
	}

/*****************************************************************************/

void RefRepeatArea8 (const uint8 *sPtr,
					 uint8 *dPtr,
					 uint32 rows,
					 uint32 cols,
					 uint32 planes,
					 int32 rowStep,
					 int32 colStep,
					 int32 planeStep,
					 uint32 repeatV,
					 uint32 repeatH,
					 uint32 phaseV,
					 uint32 phaseH)
	{
	
	const uint8 *sPtr0 = sPtr + phaseV * rowStep +
								phaseH * colStep;
								 
	int32 backStepV = (repeatV - 1) * rowStep;
	int32 backStepH = (repeatH - 1) * colStep;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint8 *sPtr1 = sPtr0;
			  uint8 *dPtr1 = dPtr;
			  
		uint32 colPhase = phaseH;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint8 *sPtr2 = sPtr1;
				  uint8 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
				
				*dPtr2 = *sPtr2;
				
				sPtr2 += planeStep;
				dPtr2 += planeStep;
				
				}
				
			if (++colPhase == repeatH)
				{
				colPhase = 0;
				sPtr1 -= backStepH;
				}
			else
				{
				sPtr1 += colStep;
				}
				
			dPtr1 += colStep;
			
			}
			
		if (++phaseV == repeatV)
			{
			phaseV = 0;
			sPtr0 -= backStepV;
			}
		else
			{
			sPtr0 += rowStep;
			}
			
		dPtr += rowStep;
				
		}
	
	}
							
/*****************************************************************************/

void RefRepeatArea16 (const uint16 *sPtr,
					  uint16 *dPtr,
					  uint32 rows,
					  uint32 cols,
					  uint32 planes,
					  int32 rowStep,
					  int32 colStep,
					  int32 planeStep,
					  uint32 repeatV,
					  uint32 repeatH,
					  uint32 phaseV,
					  uint32 phaseH)
	{
	
	const uint16 *sPtr0 = sPtr + phaseV * rowStep +
								 phaseH * colStep;
								 
	int32 backStepV = (repeatV - 1) * rowStep;
	int32 backStepH = (repeatH - 1) * colStep;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint16 *sPtr1 = sPtr0;
			  uint16 *dPtr1 = dPtr;
			  
		uint32 colPhase = phaseH;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint16 *sPtr2 = sPtr1;
				  uint16 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
				
				*dPtr2 = *sPtr2;
				
				sPtr2 += planeStep;
				dPtr2 += planeStep;
				
				}
				
			if (++colPhase == repeatH)
				{
				colPhase = 0;
				sPtr1 -= backStepH;
				}
			else
				{
				sPtr1 += colStep;
				}
				
			dPtr1 += colStep;
			
			}
			
		if (++phaseV == repeatV)
			{
			phaseV = 0;
			sPtr0 -= backStepV;
			}
		else
			{
			sPtr0 += rowStep;
			}
			
		dPtr += rowStep;
				
		}
	
	}
							
/*****************************************************************************/

void RefRepeatArea32 (const uint32 *sPtr,
					  uint32 *dPtr,
					  uint32 rows,
					  uint32 cols,
					  uint32 planes,
					  int32 rowStep,
					  int32 colStep,
					  int32 planeStep,
					  uint32 repeatV,
					  uint32 repeatH,
					  uint32 phaseV,
					  uint32 phaseH)
	{
	
	const uint32 *sPtr0 = sPtr + phaseV * rowStep +
								 phaseH * colStep;
								 
	int32 backStepV = (repeatV - 1) * rowStep;
	int32 backStepH = (repeatH - 1) * colStep;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint32 *sPtr1 = sPtr0;
			  uint32 *dPtr1 = dPtr;
			  
		uint32 colPhase = phaseH;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint32 *sPtr2 = sPtr1;
				  uint32 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
				
				*dPtr2 = *sPtr2;
				
				sPtr2 += planeStep;
				dPtr2 += planeStep;
				
				}
				
			if (++colPhase == repeatH)
				{
				colPhase = 0;
				sPtr1 -= backStepH;
				}
			else
				{
				sPtr1 += colStep;
				}
				
			dPtr1 += colStep;
			
			}
			
		if (++phaseV == repeatV)
			{
			phaseV = 0;
			sPtr0 -= backStepV;
			}
		else
			{
			sPtr0 += rowStep;
			}
			
		dPtr += rowStep;
				
		}
	
	}
							
/*****************************************************************************/

void RefShiftRight16 (uint16 *dPtr,
					  uint32 rows,
					  uint32 cols,
					  uint32 planes,
					  int32 rowStep,
					  int32 colStep,
					  int32 planeStep,
					  uint32 shift)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		uint16 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			uint16 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				*dPtr2 >>= shift;
				
				dPtr2 += planeStep;
				
				}
			
			dPtr1 += colStep;

			}
			
		dPtr += rowStep;
		
		}
			
	}

/*****************************************************************************/

void RefBilinearRow16 (const uint16 *sPtr,
					   uint16 *dPtr,
					   uint32 cols,
					   uint32 patPhase,
					   uint32 patCount,
					   const uint32 * kernCounts,
					   const int32	* const * kernOffsets,
					   const uint16 * const * kernWeights,
					   uint32 sShift)
	{
	
	for (uint32 j = 0; j < cols; j++)
		{
		
		const uint16 *p = sPtr + (j >> sShift);
		
		uint32 count = kernCounts [patPhase];
		
		const int32	 *offsets = kernOffsets [patPhase];
		const uint16 *weights = kernWeights [patPhase];
		
		if (++patPhase == patCount)
			{
			patPhase = 0;
			}
			
		uint32 total = 128;
		
		for (uint32 k = 0; k < count; k++)
			{
			
			int32  offset = offsets [k];
			uint32 weight = weights [k];
			
			uint32 pixel = p [offset];
			
			total += pixel * weight;
						
			}
			
		dPtr [j] = (uint16) (total >> 8);
		
		}
				
	}

/*****************************************************************************/

void RefBilinearRow32 (const real32 *sPtr,
					   real32 *dPtr,
					   uint32 cols,
					   uint32 patPhase,
					   uint32 patCount,
					   const uint32 * kernCounts,
					   const int32	* const * kernOffsets,
					   const real32 * const * kernWeights,
					   uint32 sShift)
	{
	
	for (uint32 j = 0; j < cols; j++)
		{
		
		const real32 *p = sPtr + (j >> sShift);
		
		uint32 count = kernCounts [patPhase];
		
		const int32	 *offsets = kernOffsets [patPhase];
		const real32 *weights = kernWeights [patPhase];
		
		if (++patPhase == patCount)
			{
			patPhase = 0;
			}
			
		real32 total = 0.0f;
		
		for (uint32 k = 0; k < count; k++)
			{
			
			int32  offset = offsets [k];
			real32 weight = weights [k];
			
			real32 pixel = p [offset];
			
			total += pixel * weight;
						
			}
			
		dPtr [j] = total;
		
		}
				
	}

/*****************************************************************************/

void RefBaselineABCtoRGB (const real32 *sPtrA,
						  const real32 *sPtrB,
						  const real32 *sPtrC,
						  real32 *dPtrR,
						  real32 *dPtrG,
						  real32 *dPtrB,
						  uint32 count,
						  const dng_vector &cameraWhite,
						  const dng_matrix &cameraToRGB)
	{
	
	real32 clipA = (real32) cameraWhite [0];
	real32 clipB = (real32) cameraWhite [1];
	real32 clipC = (real32) cameraWhite [2];
	
	real32 m00 = (real32) cameraToRGB [0] [0];
	real32 m01 = (real32) cameraToRGB [0] [1];
	real32 m02 = (real32) cameraToRGB [0] [2];
	
	real32 m10 = (real32) cameraToRGB [1] [0];
	real32 m11 = (real32) cameraToRGB [1] [1];
	real32 m12 = (real32) cameraToRGB [1] [2];
	
	real32 m20 = (real32) cameraToRGB [2] [0];
	real32 m21 = (real32) cameraToRGB [2] [1];
	real32 m22 = (real32) cameraToRGB [2] [2];
	
	for (uint32 col = 0; col < count; col++)
		{
		
		real32 A = sPtrA [col];
		real32 B = sPtrB [col];
		real32 C = sPtrC [col];
		
		A = Min_real32 (A, clipA);
		B = Min_real32 (B, clipB);
		C = Min_real32 (C, clipC);
		
		real32 r = m00 * A + m01 * B + m02 * C;
		real32 g = m10 * A + m11 * B + m12 * C;
		real32 b = m20 * A + m21 * B + m22 * C;
		
		r = Pin_real32 (0.0f, r, 1.0f);
		g = Pin_real32 (0.0f, g, 1.0f);
		b = Pin_real32 (0.0f, b, 1.0f);
		
		dPtrR [col] = r;
		dPtrG [col] = g;
		dPtrB [col] = b;
		
		}
	
	}

/*****************************************************************************/

void RefBaselineABCDtoRGB (const real32 *sPtrA,
						   const real32 *sPtrB,
						   const real32 *sPtrC,
						   const real32 *sPtrD,
						   real32 *dPtrR,
						   real32 *dPtrG,
						   real32 *dPtrB,
						   uint32 count,
						   const dng_vector &cameraWhite,
						   const dng_matrix &cameraToRGB)
	{
	
	real32 clipA = (real32) cameraWhite [0];
	real32 clipB = (real32) cameraWhite [1];
	real32 clipC = (real32) cameraWhite [2];
	real32 clipD = (real32) cameraWhite [3];
	
	real32 m00 = (real32) cameraToRGB [0] [0];
	real32 m01 = (real32) cameraToRGB [0] [1];
	real32 m02 = (real32) cameraToRGB [0] [2];
	real32 m03 = (real32) cameraToRGB [0] [3];
	
	real32 m10 = (real32) cameraToRGB [1] [0];
	real32 m11 = (real32) cameraToRGB [1] [1];
	real32 m12 = (real32) cameraToRGB [1] [2];
	real32 m13 = (real32) cameraToRGB [1] [3];
	
	real32 m20 = (real32) cameraToRGB [2] [0];
	real32 m21 = (real32) cameraToRGB [2] [1];
	real32 m22 = (real32) cameraToRGB [2] [2];
	real32 m23 = (real32) cameraToRGB [2] [3];
	
	for (uint32 col = 0; col < count; col++)
		{
		
		real32 A = sPtrA [col];
		real32 B = sPtrB [col];
		real32 C = sPtrC [col];
		real32 D = sPtrD [col];
		
		A = Min_real32 (A, clipA);
		B = Min_real32 (B, clipB);
		C = Min_real32 (C, clipC);
		D = Min_real32 (D, clipD);
		
		real32 r = m00 * A + m01 * B + m02 * C + m03 * D;
		real32 g = m10 * A + m11 * B + m12 * C + m13 * D;
		real32 b = m20 * A + m21 * B + m22 * C + m23 * D;
		
		r = Pin_real32 (0.0f, r, 1.0f);
		g = Pin_real32 (0.0f, g, 1.0f);
		b = Pin_real32 (0.0f, b, 1.0f);
		
		dPtrR [col] = r;
		dPtrG [col] = g;
		dPtrB [col] = b;
		
		}
	
	}

/*****************************************************************************/

void RefBaselineHueSatMap (const real32 *sPtrR,
						   const real32 *sPtrG,
						   const real32 *sPtrB,
						   real32 *dPtrR,
						   real32 *dPtrG,
						   real32 *dPtrB,
						   uint32 count,
						   const dng_hue_sat_map &lut,
						   const dng_1d_table *encodeTable,
						   const dng_1d_table *decodeTable,
						   const bool supportOverrange)
	{
	
	uint32 hueDivisions;
	uint32 satDivisions;
	uint32 valDivisions;
	
	lut.GetDivisions (hueDivisions,
					  satDivisions,
					  valDivisions);
					  
	real32 hScale = (hueDivisions < 2) ? 0.0f : (hueDivisions * (1.0f / 6.0f));
	real32 sScale = (real32) ((int32) satDivisions - 1);
	real32 vScale = (real32) ((int32) valDivisions - 1);
		
	int32 maxHueIndex0 = (int32) hueDivisions - 1;
	int32 maxSatIndex0 = (int32) satDivisions - 2;
	int32 maxValIndex0 = (int32) valDivisions - 2;

	const bool hasEncodeTable = ((encodeTable != NULL) && (encodeTable->Table () != NULL));
	const bool hasDecodeTable = ((decodeTable != NULL) && (decodeTable->Table () != NULL));

	const bool hasTable = hasEncodeTable && hasDecodeTable;

	const dng_hue_sat_map::HSBModify *tableBase = lut.GetConstDeltas ();
	
	int32 hueStep = satDivisions;
	int32 valStep = hueDivisions * hueStep;
	
	#if 0	// Not required with "2.5D" table optimization.
	
	if (valDivisions < 2)
		{
		valStep		 = 0;
		maxValIndex0 = 0;
		}
		
	#endif
	
	for (uint32 j = 0; j < count; j++)
		{
		
		real32 r = sPtrR [j];
		real32 g = sPtrG [j];
		real32 b = sPtrB [j];

		if (supportOverrange)
			{

			r = Max_real32 (r, 0.0f);
			g = Max_real32 (g, 0.0f);
			b = Max_real32 (b, 0.0f);

			if (valDivisions > 1)
				{
				r = EncodeOverrange (r);
				g = EncodeOverrange (g);
				b = EncodeOverrange (b);
				}

			}
		
		real32 h, s, v;

		DNG_RGBtoHSV (r, g, b, h, s, v);

		real32 vEncoded = v;

		real32 hueShift;
		real32 satScale;
		real32 valScale;
		
		if (valDivisions < 2)		// Optimize most common case of "2.5D" table.
			{
		
			real32 hScaled = h * hScale;
			real32 sScaled = s * sScale;
			
			// Pin indices: NaN cast to int32 yields INT32_MIN on x86/ARM,
			// so upper-bound-only checks on the result do not suffice.
			// Instead use of Pin_int32 on integers is unaffected by NaN.

			int32 hIndex0 = Pin_int32 (0, (int32) hScaled, maxHueIndex0);
			int32 sIndex0 = Pin_int32 (0, (int32) sScaled, maxSatIndex0);
			
			int32 hIndex1 = hIndex0 + 1;
			
			if (hIndex0 >= maxHueIndex0)
				{
				hIndex0 = maxHueIndex0;
				hIndex1 = 0;
				}
				
			real32 hFract1 = hScaled - (real32) hIndex0;
			real32 sFract1 = sScaled - (real32) sIndex0;
			
			real32 hFract0 = 1.0f - hFract1;
			real32 sFract0 = 1.0f - sFract1;
			
			const dng_hue_sat_map::HSBModify *entry00 = tableBase + hIndex0 * hueStep +
																	sIndex0;
			
			const dng_hue_sat_map::HSBModify *entry01 = entry00 + (hIndex1 - hIndex0) * hueStep;
			
			real32 hueShift0 = hFract0 * entry00->fHueShift +
							   hFract1 * entry01->fHueShift;
										 
			real32 satScale0 = hFract0 * entry00->fSatScale +
							   hFract1 * entry01->fSatScale;
			
			real32 valScale0 = hFract0 * entry00->fValScale +
							   hFract1 * entry01->fValScale;

			entry00++;
			entry01++;

			real32 hueShift1 = hFract0 * entry00->fHueShift +
							   hFract1 * entry01->fHueShift;
										 
			real32 satScale1 = hFract0 * entry00->fSatScale +
							   hFract1 * entry01->fSatScale;
			
			real32 valScale1 = hFract0 * entry00->fValScale +
							   hFract1 * entry01->fValScale;
						
			hueShift = sFract0 * hueShift0 + sFract1 * hueShift1;
			satScale = sFract0 * satScale0 + sFract1 * satScale1;
			valScale = sFract0 * valScale0 + sFract1 * valScale1;
			
			}
			
		else
			{
		
			if (hasTable)
				{
				vEncoded = encodeTable->Interpolate (Pin_real32 (v));
				}

			real32 hScaled = h		  * hScale;
			real32 sScaled = s		  * sScale;
			real32 vScaled = vEncoded * vScale;
			
			// Pin indices: NaN cast to int32 yields INT32_MIN on x86/ARM,
			// so upper-bound-only checks on the result do not suffice.
			// Instead use of Pin_int32 on integers is unaffected by NaN.

			int32 hIndex0 = Pin_int32 (0, (int32) hScaled, maxHueIndex0);
			int32 sIndex0 = Pin_int32 (0, (int32) sScaled, maxSatIndex0);
			int32 vIndex0 = Pin_int32 (0, (int32) vScaled, maxValIndex0);
			
			int32 hIndex1 = hIndex0 + 1;
			
			if (hIndex0 >= maxHueIndex0)
				{
				hIndex0 = maxHueIndex0;
				hIndex1 = 0;
				}
				
			real32 hFract1 = hScaled - (real32) hIndex0;
			real32 sFract1 = sScaled - (real32) sIndex0;
			real32 vFract1 = vScaled - (real32) vIndex0;
			
			real32 hFract0 = 1.0f - hFract1;
			real32 sFract0 = 1.0f - sFract1;
			real32 vFract0 = 1.0f - vFract1;
			
			const dng_hue_sat_map::HSBModify *entry00 = tableBase + vIndex0 * valStep + 
																	hIndex0 * hueStep +
																	sIndex0;
			
			const dng_hue_sat_map::HSBModify *entry01 = entry00 + (hIndex1 - hIndex0) * hueStep;
			
			const dng_hue_sat_map::HSBModify *entry10 = entry00 + valStep;
			const dng_hue_sat_map::HSBModify *entry11 = entry01 + valStep;
			
			real32 hueShift0 = vFract0 * (hFract0 * entry00->fHueShift +
										  hFract1 * entry01->fHueShift) +
							   vFract1 * (hFract0 * entry10->fHueShift +
										  hFract1 * entry11->fHueShift);
										 
			real32 satScale0 = vFract0 * (hFract0 * entry00->fSatScale +
										  hFract1 * entry01->fSatScale) +
							   vFract1 * (hFract0 * entry10->fSatScale +
										  hFract1 * entry11->fSatScale);
			
			real32 valScale0 = vFract0 * (hFract0 * entry00->fValScale +
										  hFract1 * entry01->fValScale) +
							   vFract1 * (hFract0 * entry10->fValScale +
										  hFract1 * entry11->fValScale);
			
			entry00++;
			entry01++;
			entry10++;
			entry11++;

			real32 hueShift1 = vFract0 * (hFract0 * entry00->fHueShift +
										  hFract1 * entry01->fHueShift) +
							   vFract1 * (hFract0 * entry10->fHueShift +
										  hFract1 * entry11->fHueShift);
										 
			real32 satScale1 = vFract0 * (hFract0 * entry00->fSatScale +
										  hFract1 * entry01->fSatScale) +
							   vFract1 * (hFract0 * entry10->fSatScale +
										  hFract1 * entry11->fSatScale);
			
			real32 valScale1 = vFract0 * (hFract0 * entry00->fValScale +
										  hFract1 * entry01->fValScale) +
							   vFract1 * (hFract0 * entry10->fValScale +
										  hFract1 * entry11->fValScale);
						
			hueShift = sFract0 * hueShift0 + sFract1 * hueShift1;
			satScale = sFract0 * satScale0 + sFract1 * satScale1;
			valScale = sFract0 * valScale0 + sFract1 * valScale1;
			
			}
			
		hueShift *= (6.0f / 360.0f);	// Convert to internal hue range.
		
		h += hueShift;
		
		s = Min_real32 (s * satScale, 1.0f);

		vEncoded = Pin_real32 (vEncoded * valScale);

		v = hasTable ? decodeTable->Interpolate (vEncoded) : vEncoded;
		
		DNG_HSVtoRGB (h, s, v, r, g, b);

		if (supportOverrange && (valDivisions > 1))
			{
			
			r = DecodeOverrange (r);
			g = DecodeOverrange (g);
			b = DecodeOverrange (b);

			}

		dPtrR [j] = r;
		dPtrG [j] = g;
		dPtrB [j] = b;
		
		}
	
	}

/*****************************************************************************/

void RefBaselineRGBtoGray (const real32 *sPtrR,
						   const real32 *sPtrG,
						   const real32 *sPtrB,
						   real32 *dPtrG,
						   uint32 count,
						   const dng_matrix &matrix,
						   const bool supportOverrange)
	{
	
	real32 m00 = (real32) matrix [0] [0];
	real32 m01 = (real32) matrix [0] [1];
	real32 m02 = (real32) matrix [0] [2];
	
	for (uint32 col = 0; col < count; col++)
		{
		
		real32 R = sPtrR [col];
		real32 G = sPtrG [col];
		real32 B = sPtrB [col];
		
		real32 g = m00 * R + m01 * G + m02 * B;

		if (!supportOverrange)
			g = Pin_real32 (0.0f, g, 1.0f);
		
		dPtrG [col] = g;
		
		}
	
	}

/*****************************************************************************/

void RefBaselineRGBtoRGB (const real32 *sPtrR,
						  const real32 *sPtrG,
						  const real32 *sPtrB,
						  real32 *dPtrR,
						  real32 *dPtrG,
						  real32 *dPtrB,
						  uint32 count,
						  const dng_matrix &matrix,
						  const bool supportOverrange)
	{
	
	real32 m00 = (real32) matrix [0] [0];
	real32 m01 = (real32) matrix [0] [1];
	real32 m02 = (real32) matrix [0] [2];
	
	real32 m10 = (real32) matrix [1] [0];
	real32 m11 = (real32) matrix [1] [1];
	real32 m12 = (real32) matrix [1] [2];
	
	real32 m20 = (real32) matrix [2] [0];
	real32 m21 = (real32) matrix [2] [1];
	real32 m22 = (real32) matrix [2] [2];
	
	for (uint32 col = 0; col < count; col++)
		{
		
		real32 R = sPtrR [col];
		real32 G = sPtrG [col];
		real32 B = sPtrB [col];
		
		real32 r = m00 * R + m01 * G + m02 * B;
		real32 g = m10 * R + m11 * G + m12 * B;
		real32 b = m20 * R + m21 * G + m22 * B;

		if (!supportOverrange)
			{
			r = Pin_real32 (0.0f, r, 1.0f);
			g = Pin_real32 (0.0f, g, 1.0f);
			b = Pin_real32 (0.0f, b, 1.0f);
			}
		
		dPtrR [col] = r;
		dPtrG [col] = g;
		dPtrB [col] = b;
		
		}
	
	}

/*****************************************************************************/

void RefBaseline1DTable (const real32 *sPtr,
						 real32 *dPtr,
						 uint32 count,
						 const dng_1d_table &table)
	{

	for (uint32 col = 0; col < count; col++)
		{
		
		real32 x = sPtr [col];
		
		real32 y = table.Interpolate (Pin_real32 (x));
		
		dPtr [col] = y;
		
		}
	
	}

/*****************************************************************************/

void RefBaselineRGBTone (const real32 *sPtrR,
						 const real32 *sPtrG,
						 const real32 *sPtrB,
						 real32 *dPtrR,
						 real32 *dPtrG,
						 real32 *dPtrB,
						 uint32 count,
						 const dng_1d_table &table)
	{

	for (uint32 col = 0; col < count; col++)
		{
		
		real32 r = sPtrR [col];
		real32 g = sPtrG [col];
		real32 b = sPtrB [col];
		
		r = Pin_real32 (r);
		g = Pin_real32 (g);
		b = Pin_real32 (b);

		real32 rr;
		real32 gg;
		real32 bb;
		
		#define RGBTone(r, g, b, rr, gg, bb)\
			{\
			\
			DNG_ASSERT (r >= g && g >= b && r > b, "Logic Error RGBTone");\
			\
			rr = table.Interpolate (r);\
			bb = table.Interpolate (b);\
			\
			gg = bb + ((rr - bb) * (g - b) / (r - b));\
			\
			}
		
		if (r >= g)
			{
			
			if (g > b)
				{
				
				// Case 1: r >= g > b
				
				RGBTone (r, g, b, rr, gg, bb);
				
				}
					
			else if (b > r)
				{
				
				// Case 2: b > r >= g
				
				RGBTone (b, r, g, bb, rr, gg);
								
				}
				
			else if (b > g)
				{
				
				// Case 3: r >= b > g
				
				RGBTone (r, b, g, rr, bb, gg);
				
				}
				
			else
				{
				
				// Case 4: r >= g == b
				
				DNG_ASSERT (r >= g && g == b, "Logic Error 2");
				
				rr = table.Interpolate (r);
				gg = table.Interpolate (g);
				bb = gg;
				
				}
				
			}
			
		else
			{
			
			if (r >= b)
				{
				
				// Case 5: g > r >= b
				
				RGBTone (g, r, b, gg, rr, bb);
				
				}
				
			else if (b > g)
				{
				
				// Case 6: b > g > r
				
				RGBTone (b, g, r, bb, gg, rr);
				
				}
				
			else
				{
				
				// Case 7: g >= b > r
				
				RGBTone (g, b, r, gg, bb, rr);
				
				}
			
			}
			
		#undef RGBTone
		
		dPtrR [col] = rr;
		dPtrG [col] = gg;
		dPtrB [col] = bb;
		
		}
	
	}

/*****************************************************************************/

void RefResampleDown16 (const uint16 *sPtr,
						uint16 *dPtr,
						uint32 sCount,
						int32 sRowStep,
						const int16 *wPtr,
						uint32 wCount,
						uint32 pixelRange)
	{
	
	for (uint32 j = 0; j < sCount; j++)
		{
		
		int32 total = 8192;
		
		const uint16 *s = sPtr + j;
		
		for (uint32 k = 0; k < wCount; k++)
			{
			
			total += wPtr [k] * (int32) s [0];
				
			s += sRowStep;
				
			}
			
		dPtr [j] = (uint16) Pin_int32 (0,
									   total >> 14,
									   pixelRange);

		}
		
	}

/*****************************************************************************/

void RefResampleDown32 (const real32 *sPtr,
						real32 *dPtr,
						uint32 sCount,
						int32 sRowStep,
						const real32 *wPtr,
						uint32 wCount)
	{
	
	uint32 col;
	
	// Process first row.
	
	real32 w = wPtr [0];
												   
	for (col = 0; col < sCount; col++)
		{
		
		dPtr [col] = w * sPtr [col];
		
		}
		
	sPtr += sRowStep;
	
	// Process middle rows.
	
	for (uint32 j = 1; j < wCount - 1; j++)
		{
		
		w = wPtr [j];
												   
		for (col = 0; col < sCount; col++)
			{
			
			dPtr [col] += w * sPtr [col];
			
			}
			
		sPtr += sRowStep;
		
		}
		
	// Process last row.
	
	w = wPtr [wCount - 1];
	
	for (col = 0; col < sCount; col++)
		{
		
		dPtr [col] = Pin_real32 (0.0f, 
								 dPtr [col] + w * sPtr [col],
								 1.0f);
		
		}

	}
				
/******************************************************************************/

void RefResampleAcross16 (const uint16 *sPtr,
						  uint16 *dPtr,
						  uint32 dCount,
						  const int32 *coord,
						  const int16 *wPtr,
						  uint32 wCount,
						  uint32 wStep,
						  uint32 pixelRange)
	{
	
	for (uint32 j = 0; j < dCount; j++)
		{
		
		int32 sCoord = coord [j];
		
		int32 sFract = sCoord &	 kResampleSubsampleMask;
		int32 sPixel = sCoord >> kResampleSubsampleBits;
		
		const int16	 *w = wPtr + sFract * wStep;
		const uint16 *s = sPtr + sPixel;
		
		int32 total = w [0] * (int32) s [0];
		
		for (uint32 k = 1; k < wCount; k++)
			{
			
			total += w [k] * (int32) s [k];
			
			}
			
		dPtr [j] = (uint16) Pin_int32 (0,
									   (total + 8192) >> 14,
									   pixelRange);
		
		}
		
	}
				
/******************************************************************************/

void RefResampleAcross32 (const real32 *sPtr,
						  real32 *dPtr,
						  uint32 dCount,
						  const int32 *coord,
						  const real32 *wPtr,
						  uint32 wCount,
						  uint32 wStep)
	{

	for (uint32 j = 0; j < dCount; j++)
		{
		
		int32 sCoord = coord [j];
		
		int32 sFract = sCoord &	 kResampleSubsampleMask;
		int32 sPixel = sCoord >> kResampleSubsampleBits;
		
		const real32 *w = wPtr + sFract * wStep;
		const real32 *s = sPtr + sPixel;
		
		real32 total = w [0] * s [0];
		
		for (uint32 k = 1; k < wCount; k++)
			{
			
			total += w [k] * s [k];
			
			}
			
		dPtr [j] = Pin_real32 (0.0f, total, 1.0f);
		
		}
		
	}
				
/*****************************************************************************/

bool RefEqualBytes (const void *sPtr,
					const void *dPtr,
					uint32 count)
	{
	
	return memcmp (dPtr, sPtr, count) == 0;
	
	}

/*****************************************************************************/

bool RefEqualArea8 (const uint8 *sPtr,
					const uint8 *dPtr,
					uint32 rows,
					uint32 cols,
					uint32 planes,
					int32 sRowStep,
					int32 sColStep,
					int32 sPlaneStep,
					int32 dRowStep,
					int32 dColStep,
					int32 dPlaneStep)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint8 *sPtr1 = sPtr;
		const uint8 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint8 *sPtr2 = sPtr1;
			const uint8 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				if (*dPtr2 != *sPtr2)
					return false;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}

	return true;

	}

/*****************************************************************************/

bool RefEqualArea16 (const uint16 *sPtr,
					 const uint16 *dPtr,
					 uint32 rows,
					 uint32 cols,
					 uint32 planes,
					 int32 sRowStep,
					 int32 sColStep,
					 int32 sPlaneStep,
					 int32 dRowStep,
					 int32 dColStep,
					 int32 dPlaneStep)
	{
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint16 *sPtr1 = sPtr;
		const uint16 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint16 *sPtr2 = sPtr1;
			const uint16 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				if (*dPtr2 != *sPtr2)
					return false;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}

	return true;

	}

/*****************************************************************************/

bool RefEqualArea32 (const uint32 *sPtr,
					 const uint32 *dPtr,
					 uint32 rows,
					 uint32 cols,
					 uint32 planes,
					 int32 sRowStep,
					 int32 sColStep,
					 int32 sPlaneStep,
					 int32 dRowStep,
					 int32 dColStep,
					 int32 dPlaneStep)
	{
		
	for (uint32 row = 0; row < rows; row++)
		{
		
		const uint32 *sPtr1 = sPtr;
		const uint32 *dPtr1 = dPtr;
			  
		for (uint32 col = 0; col < cols; col++)
			{
			
			const uint32 *sPtr2 = sPtr1;
			const uint32 *dPtr2 = dPtr1;
				  
			for (uint32 plane = 0; plane < planes; plane++)
				{
			
				if (*dPtr2 != *sPtr2)
					return false;
				
				sPtr2 += sPlaneStep;
				dPtr2 += dPlaneStep;
				
				}
			
			sPtr1 += sColStep;
			dPtr1 += dColStep;

			}
			
		sPtr += sRowStep;
		dPtr += dRowStep;
		
		}

	return true;

	}

/*****************************************************************************/

void RefVignetteMask16 (uint16 *mPtr,
						uint32 rows,
						uint32 cols,
						int32 rowStep,
						int64 offsetH,
						int64 offsetV,
						int64 stepH,
						int64 stepV,
						uint32 tBits,
						const uint16 *table)
	{
	
	uint32 tShift = 32 - tBits;
	uint32 tRound = (1 << (tShift - 1));
	uint32 tLimit = 1 << tBits;
	
	for (uint32 row = 0; row < rows; row++)
		{
		
		int64 baseDelta = (offsetV + 32768) >> 16;
		
		baseDelta = baseDelta * baseDelta + tRound;
		
		int64 deltaH = offsetH + 32768;
		
		for (uint32 col = 0; col < cols; col++)
			{
			
			int64 temp = deltaH >> 16;
			
			int64 delta = baseDelta + (temp * temp);
			
			uint32 index = Min_uint32 ((uint32) (delta >> tShift), tLimit);
			
			mPtr [col] = table [index];
						
			deltaH += stepH;
			
			}
			
		offsetV += stepV;
		
		mPtr += rowStep;
		
		}
	
	}

/*****************************************************************************/

void RefVignette16 (int16 *sPtr,
					const uint16 *mPtr,
					uint32 rows,
					uint32 cols,
					uint32 planes,
					int32 sRowStep,
					int32 sPlaneStep,
					int32 mRowStep,
					uint32 mBits)
	{
	
	const uint32 mRound = 1 << (mBits - 1);

	switch (planes)
		{
		
		case 1:
			{
			
			for (uint32 row = 0; row < rows; row++)
				{
		
				for (uint32 col = 0; col < cols; col++)
					{
			
					uint32 s = sPtr [col] + 32768;
			
					uint32 m = mPtr [col];
			
					s = (s * m + mRound) >> mBits;
			
					s = Min_uint32 (s, 65535);
			
					sPtr [col] = (int16) (s - 32768); 
			
					}
		
				sPtr += sRowStep;
		
				mPtr += mRowStep;
		
				}

			break;
			
			}

		case 3:
			{

			int16 *rPtr = sPtr;
			int16 *gPtr = rPtr + sPlaneStep;
			int16 *bPtr = gPtr + sPlaneStep;
			
			for (uint32 row = 0; row < rows; row++)
				{
		
				for (uint32 col = 0; col < cols; col++)
					{
			
					uint32 r = rPtr [col] + 32768;
					uint32 g = gPtr [col] + 32768;
					uint32 b = bPtr [col] + 32768;
			
					uint32 m = mPtr [col];
			
					r = (r * m + mRound) >> mBits;
					g = (g * m + mRound) >> mBits;
					b = (b * m + mRound) >> mBits;
			
					r = Min_uint32 (r, 65535);
					g = Min_uint32 (g, 65535);
					b = Min_uint32 (b, 65535);
			
					rPtr [col] = (int16) (r - 32768); 
					gPtr [col] = (int16) (g - 32768); 
					bPtr [col] = (int16) (b - 32768); 
			
					}
		
				rPtr += sRowStep;
				gPtr += sRowStep;
				bPtr += sRowStep;
		
				mPtr += mRowStep;
		
				}

			break;
			
			}

		case 4:
			{
			
			int16 *aPtr = sPtr;
			int16 *bPtr = aPtr + sPlaneStep;
			int16 *cPtr = bPtr + sPlaneStep;
			int16 *dPtr = cPtr + sPlaneStep;
			
			for (uint32 row = 0; row < rows; row++)
				{
		
				for (uint32 col = 0; col < cols; col++)
					{
			
					uint32 a = aPtr [col] + 32768;
					uint32 b = bPtr [col] + 32768;
					uint32 c = cPtr [col] + 32768;
					uint32 d = dPtr [col] + 32768;
			
					uint32 m = mPtr [col];
			
					a = (a * m + mRound) >> mBits;
					b = (b * m + mRound) >> mBits;
					c = (c * m + mRound) >> mBits;
					d = (d * m + mRound) >> mBits;
			
					a = Min_uint32 (a, 65535);
					b = Min_uint32 (b, 65535);
					c = Min_uint32 (c, 65535);
					d = Min_uint32 (d, 65535);
			
					aPtr [col] = (int16) (a - 32768); 
					bPtr [col] = (int16) (b - 32768); 
					cPtr [col] = (int16) (c - 32768); 
					dPtr [col] = (int16) (d - 32768); 
			
					}
		
				aPtr += sRowStep;
				bPtr += sRowStep;
				cPtr += sRowStep;
				dPtr += sRowStep;
		
				mPtr += mRowStep;
		
				}

			break;
			
			}

		default:
			{
			
			for (uint32 plane = 0; plane < planes; plane++)
				{

				int16 *planePtr = sPtr;

				const uint16 *maskPtr = mPtr;
						
				for (uint32 row = 0; row < rows; row++)
					{
		
					for (uint32 col = 0; col < cols; col++)
						{

						uint32 s = planePtr [col] + 32768;
			
						uint32 m = maskPtr [col];
			
						s = (s * m + mRound) >> mBits;
			
						s = Min_uint32 (s, 65535);
			
						planePtr [col] = (int16) (s - 32768); 

						}
		
					planePtr += sRowStep;
		
					maskPtr += mRowStep;

					}

				sPtr += sPlaneStep;
		
				}

			break;
			
			}
	
		}
	
	}

/*****************************************************************************/

void RefVignette32 (real32 *sPtr,
					const uint16 *mPtr,
					uint32 rows,
					uint32 cols,
					uint32 planes,
					int32 sRowStep,
					int32 sPlaneStep,
					int32 mRowStep,
					uint32 mBits,
					uint16 blackLevel)
	{
	
	real32 *basePtr = sPtr;
	
	real32 blackScale1	= 1.0f;
	real32 blackScale2	= 1.0f;
	real32 blackOffset1 = 0.0f;
	real32 blackOffset2 = 0.0f;

	if (blackLevel != 0)
		{
		
		blackOffset2 = ((real32) blackLevel) / 65535.0f;
		blackScale2	 = 1.0f - blackOffset2;
		blackScale1	 = (blackScale2 != 0.0f) ? 1.0f / blackScale2 : 0.0f;
		blackOffset1 = 1.0f - blackScale1;
 
		for (uint32 plane = 0; plane < planes; plane++)
			{

			real32 *dPtr = basePtr + plane * sPlaneStep;
			
			for (uint32 row = 0; row < rows; row++)
				{
		
				for (uint32 col = 0; col < cols; col++)
					{
					
					dPtr [col] = dPtr [col] * blackScale1 + blackOffset1;
					
					}
					
				dPtr += sRowStep;
					
				}
				
			}

		}
	
	const real32 kNorm = 1.0f / (1 << mBits);

	switch (planes)
		{
		
		case 1:
			{
			
			for (uint32 row = 0; row < rows; row++)
				{
		
				for (uint32 col = 0; col < cols; col++)
					{
			
					real32 s = sPtr [col];

					uint16 m = mPtr [col];

					real32 scale = m * kNorm;
			
					s = Min_real32 (s * scale, 1.0f);
			
					sPtr [col] = s;
			
					}
		
				sPtr += sRowStep;
		
				mPtr += mRowStep;
		
				}

			break;
			
			}

		case 3:
			{

			real32 *rPtr = sPtr;
			real32 *gPtr = rPtr + sPlaneStep;
			real32 *bPtr = gPtr + sPlaneStep;
			
			for (uint32 row = 0; row < rows; row++)
				{
		
				for (uint32 col = 0; col < cols; col++)
					{
			
					real32 r = rPtr [col];
					real32 g = gPtr [col];
					real32 b = bPtr [col];
			
					uint16 m = mPtr [col];
			
					real32 scale = m * kNorm;

					r = Min_real32 (r * scale, 1.0f);
					g = Min_real32 (g * scale, 1.0f);
					b = Min_real32 (b * scale, 1.0f);
			
					rPtr [col] = r;
					gPtr [col] = g;
					bPtr [col] = b;
			
					}
		
				rPtr += sRowStep;
				gPtr += sRowStep;
				bPtr += sRowStep;
		
				mPtr += mRowStep;
		
				}

			break;
			
			}

		case 4:
			{
			
			real32 *aPtr = sPtr;
			real32 *bPtr = aPtr + sPlaneStep;
			real32 *cPtr = bPtr + sPlaneStep;
			real32 *dPtr = cPtr + sPlaneStep;
			
			for (uint32 row = 0; row < rows; row++)
				{
		
				for (uint32 col = 0; col < cols; col++)
					{

					real32 a = aPtr [col];
					real32 b = bPtr [col];
					real32 c = cPtr [col];
					real32 d = dPtr [col];
			
					uint16 m = mPtr [col];

					real32 scale = m * kNorm;

					a = Min_real32 (a * scale, 1.0f);
					b = Min_real32 (b * scale, 1.0f);
					c = Min_real32 (c * scale, 1.0f);
					d = Min_real32 (d * scale, 1.0f);
			
					aPtr [col] = a;
					bPtr [col] = b;
					cPtr [col] = c;
					dPtr [col] = d;
			
					}
		
				aPtr += sRowStep;
				bPtr += sRowStep;
				cPtr += sRowStep;
				dPtr += sRowStep;
		
				mPtr += mRowStep;
		
				}

			break;
			
			}

		default:
			{
			
			for (uint32 plane = 0; plane < planes; plane++)
				{

				real32 *planePtr = sPtr;

				const uint16 *maskPtr = mPtr;
						
				for (uint32 row = 0; row < rows; row++)
					{
		
					for (uint32 col = 0; col < cols; col++)
						{

						real32 s = planePtr [col];
			
						uint16 m = maskPtr [col];

						real32 scale = m * kNorm;
			
						s = Min_real32 (s * scale, 1.0f);
			
						planePtr [col] = s;

						}
		
					planePtr += sRowStep;
		
					maskPtr += mRowStep;

					}

				sPtr += sPlaneStep;
		
				}

			break;
			
			}
	
		}
	
	if (blackLevel != 0)
		{
		
		for (uint32 plane = 0; plane < planes; plane++)
			{

			real32 *dPtr = basePtr + plane * sPlaneStep;
			
			for (uint32 row = 0; row < rows; row++)
				{
		
				for (uint32 col = 0; col < cols; col++)
					{
					
					dPtr [col] = dPtr [col] * blackScale2 + blackOffset2;
					
					}
					
				dPtr += sRowStep;
					
				}
				
			}

		}
	
	}

/******************************************************************************/

void RefMapArea16 (uint16 *dPtr,
				   uint32 count0,
				   uint32 count1,
				   uint32 count2,
				   int32 step0,
				   int32 step1,
				   int32 step2,
				   const uint16 *map)
	{
	
	if (step2 == 1 && count2 >= 32)
		{
	
		for (uint32 index0 = 0; index0 < count0; index0++)
			{
			
			uint16 *d1 = dPtr;
			
			for (uint32 index1 = 0; index1 < count1; index1++)
				{
				
				uint16 *d2 = d1;
				
				uint32 count = count2;
				
				// Get the data 32-bit aligned if it is not.
				
				if (!IsAligned32 (dPtr))
					{
					
					d2 [0] = map [d2 [0]];
					
					count--;
					
					d2++;
					
					}
			
				// Use 32-bit reads and writes for bulk processing.
					
				uint32 *dPtr32 = (uint32 *) d2;
				  
				// Process in blocks of 16 pixels.
					
				uint32 blocks = count >> 4;
				
				count -= blocks << 4;
				d2	  += blocks << 4;
				
				while (blocks--)
					{
				
					uint32 x0, x1, x2, x3, x4, x5, x6, x7;
					uint32 p0, p1, p2, p3, p4, p5, p6, p7;
					
					// Use 32 bit reads & writes, and pack and unpack the 16-bit values.
					// This results in slightly higher performance.
					
					// Note that this code runs on both little-endian and big-endian systems,
					// since the pixels are either never swapped or double swapped.
					
					x0 = dPtr32 [0];
					x1 = dPtr32 [1];
					x2 = dPtr32 [2];
					x3 = dPtr32 [3];
					
					p0 = map [x0 >> 16	  ];
					p1 = map [x0 & 0x0FFFF];
					p2 = map [x1 >> 16	  ];
					p3 = map [x1 & 0x0FFFF];
					p4 = map [x2 >> 16	  ];
					p5 = map [x2 & 0x0FFFF];
					p6 = map [x3 >> 16	  ];
					p7 = map [x3 & 0x0FFFF];
					
					x0 = (p0 << 16) | p1;
					x1 = (p2 << 16) | p3;
					x2 = (p4 << 16) | p5;
					x3 = (p6 << 16) | p7;
					
					x4 = dPtr32 [4];
					x5 = dPtr32 [5];
					x6 = dPtr32 [6];
					x7 = dPtr32 [7];
					
					dPtr32 [0] = x0;
					dPtr32 [1] = x1;
					dPtr32 [2] = x2;
					dPtr32 [3] = x3;
							
					p0 = map [x4 >> 16	  ];
					p1 = map [x4 & 0x0FFFF];
					p2 = map [x5 >> 16	  ];
					p3 = map [x5 & 0x0FFFF];
					p4 = map [x6 >> 16	  ];
					p5 = map [x6 & 0x0FFFF];
					p6 = map [x7 >> 16	  ];
					p7 = map [x7 & 0x0FFFF];
					
					x4 = (p0 << 16) | p1;
					x5 = (p2 << 16) | p3;
					x6 = (p4 << 16) | p5;
					x7 = (p6 << 16) | p7;
					
					dPtr32 [4] = x4;
					dPtr32 [5] = x5;
					dPtr32 [6] = x6;
					dPtr32 [7] = x7;
							
					dPtr32 += 8;
					
					}
				
				// Process remaining columns.
				
				for (uint32 j = 0; j < count; j++)
					{
					
					d2 [j] = map [d2 [j]];
					
					}
	
				d1 += step1;
				
				}
				
			dPtr += step0;
			
			}
			
		}
		
	else
		{
	
		for (uint32 index0 = 0; index0 < count0; index0++)
			{
			
			uint16 *d1 = dPtr;
			
			for (uint32 index1 = 0; index1 < count1; index1++)
				{
				
				uint16 *d2 = d1;
				
				for (uint32 index2 = 0; index2 < count2; index2++)
					{
					
					d2 [0] = map [d2 [0]];
					
					d2 += step2;
					
					}
				
				d1 += step1;
				
				}
				
			dPtr += step0;
			
			}
			
		}
		
	}

/*****************************************************************************/

void RefBaselineMapPoly32 (real32 *dPtr,
						   const int32 rowStep,
						   const uint32 rows,
						   const uint32 cols,
						   const uint32 rowPitch,
						   const uint32 colPitch,
						   const real32 *coefficients,
						   const uint32 degree,
						   uint16 blackLevel)
	{

	real32 blackScale1	= 1.0f;
	real32 blackScale2	= 1.0f;
	real32 blackOffset1 = 0.0f;
	real32 blackOffset2 = 0.0f;

	if (blackLevel != 0)
		{
		
		blackOffset2 = ((real32) blackLevel) / 65535.0f;
		blackScale2	 = 1.0f - blackOffset2;
		blackScale1	 = (blackScale2 != 0.0f) ? 1.0f / blackScale2 : 0.0f;
		blackOffset1 = 1.0f - blackScale1;
		
		}
		
	for (uint32 row = 0; row < rows; row += rowPitch)
		{
  
		if (blackLevel != 0)
			{
			
			for (uint32 col = 0; col < cols; col += colPitch)
				{
					
				dPtr [col] = dPtr [col] * blackScale1 + blackOffset1;
					
				}
				
			}
			
		switch (degree)
			{

			case 0:
				{

				real32 y = Pin_real32 (-1.0f,
									   coefficients [0],
									   1.0f);

				for (uint32 col = 0; col < cols; col += colPitch)
					{

					dPtr [col] = y;

					}

				break;

				}

			case 1:
				{

				for (uint32 col = 0; col < cols; col += colPitch)
					{

					real32 x = dPtr [col];
	 
					real32 y = coefficients [0] + x * coefficients [1];

					dPtr [col] = Pin_real32 (-1.0f, y, 1.0f);
					
					}

				break;

				}
	
			case 2:
				{

				for (uint32 col = 0; col < cols; col += colPitch)
					{

					real32 x = dPtr [col];
	 
					real32 y;

					if (x < 0.0f)
						{
						
						y = coefficients [0] + x *
						   (coefficients [1] - x *
						   (coefficients [2]));

						}
						
					else
						{
						
						y = coefficients [0] + x *
						   (coefficients [1] + x *
						   (coefficients [2]));

						}

					dPtr [col] = Pin_real32 (-1.0f, y, 1.0f);
					
					}

				break;

				}
	
			case 3:
				{

				for (uint32 col = 0; col < cols; col += colPitch)
					{

					real32 x = dPtr [col];
	 
					real32 y;

					if (x < 0.0f)
						{
						
						y = coefficients [0] + x *
						   (coefficients [1] - x *
						   (coefficients [2] - x *
						   (coefficients [3])));

						}
						
					else
						{
						
						y = coefficients [0] + x *
						   (coefficients [1] + x *
						   (coefficients [2] + x *
						   (coefficients [3])));

						}

					dPtr [col] = Pin_real32 (-1.0f, y, 1.0f);
					
					}

				break;

				}
	
			case 4:
				{

				for (uint32 col = 0; col < cols; col += colPitch)
					{

					real32 x = dPtr [col];
	 
					real32 y;

					if (x < 0.0f)
						{

						y = coefficients [0] + x *
						   (coefficients [1] - x *
						   (coefficients [2] - x *
						   (coefficients [3] - x *
						   (coefficients [4]))));

						}
						
					else
						{
						
						y = coefficients [0] + x *
						   (coefficients [1] + x *
						   (coefficients [2] + x *
						   (coefficients [3] + x *
						   (coefficients [4]))));

						}
						
					dPtr [col] = Pin_real32 (-1.0f, y, 1.0f);
	 
					}

				break;

				}
	
			default:
				{

				for (uint32 col = 0; col < cols; col += colPitch)
					{

					real32 x = dPtr [col];

					real32 y = coefficients [0];

					if (x < 0.0f)
						{
						
						x = -x;
						
						real32 xx = x;

						for (uint32 j = 1; j <= degree; j++)
							{

							y -= coefficients [j] * xx;

							xx *= x;

							}
						
						}
						
					else
						{
						
						real32 xx = x;

						for (uint32 j = 1; j <= degree; j++)
							{

							y += coefficients [j] * xx;

							xx *= x;

							}
							
						}
					
					dPtr [col] = Pin_real32 (-1.0f, y, 1.0f);

					}

				}

			}

		if (blackLevel != 0)
			{
			
			for (uint32 col = 0; col < cols; col += colPitch)
				{
					
				dPtr [col] = dPtr [col] * blackScale2 + blackOffset2;
					
				}
				
			}
			
		// Advance to the next row. Note that rowStep already accounts for the
		// row pitch.

		dPtr += rowStep;

		}

	}

/*****************************************************************************/

void RefBaselineProfileGainTableMap (const real32 *rSrcPtr,
									 const real32 *gSrcPtr,
									 const real32 *bSrcPtr,
									 real32 *rDstPtr,
									 real32 *gDstPtr,
									 real32 *bDstPtr,
									 const uint32 cols,
									 const int32 top,
									 const int32 left,
									 const dng_rect &imageArea,
									 const real32 exposureWeightGain,
									 const dng_gain_table_map &gainTableMap,
									 const bool supportOverrange)
	{

	const auto *mapInputWeights = gainTableMap.MapInputWeights ();

	const real32 miw0 = mapInputWeights [0];
	const real32 miw1 = mapInputWeights [1];
	const real32 miw2 = mapInputWeights [2];
	const real32 miw3 = mapInputWeights [3];
	const real32 miw4 = mapInputWeights [4];

	const dng_point &points = gainTableMap.Points ();

	const dng_point_real64 &spacing = gainTableMap.Spacing ();

	const dng_point_real64 &origin = gainTableMap.Origin ();

	// Origin of the gain table map in normalized coordinates.

	const real32 mapOriginH32 = (real32) origin.h;
	const real32 mapOriginV32 = (real32) origin.v;

	// Size of the gain table map in normalized coordinates.

	const real32 mapSpacingH32 = (real32) spacing.h;
	const real32 mapSpacingV32 = (real32) spacing.v;

	// Minimum and maximum sample positions of the gain table map.

	const real32 xLimitLo = 0.0f;
	const real32 yLimitLo = 0.0f;

	const real32 xLimitHi = points.h - 1.0f;
	const real32 yLimitHi = points.v - 1.0f;

	// Maximum 2D integer index into the gain table map.

	const int32 xPixelLimit = points.h - 1;
	const int32 yPixelLimit = points.v - 1;

	// Number of table samples at each position of the gain table map.

	const int32 tableSize = (int32) gainTableMap.NumTablePoints ();

	// Maximum integer table index.

	const int32 tableLimit = tableSize - 1;

	// Gamma parameter.
	
	const real32 gamma = gainTableMap.Gamma ();
	
	// Initialize sample position. Note the half-pixel offset.

	real32 y = top	+ 0.5f;
	real32 x = left + 0.5f;

	// Process each pixel in this row.

	for (uint32 col = 0; col < cols; col++)
		{

		// This is an intentionally unoptimized implementation for clarity.

		// Transform to image-relative coordinates.

		real32 u_image = (x - imageArea.l) / (real32) imageArea.W ();
		real32 v_image = (y - imageArea.t) / (real32) imageArea.H ();

		// Transform to map-relative coordinates.

		real32 x_map = (u_image - mapOriginH32) / mapSpacingH32;
		real32 y_map = (v_image - mapOriginV32) / mapSpacingV32;

		// Clamp to valid sample positions.

		x_map = Pin_real32 (xLimitLo, x_map, xLimitHi);
		y_map = Pin_real32 (yLimitLo, y_map, yLimitHi);

		// Compute integer 2D indices.

		int32 x0 = (int32) x_map;
		int32 x1 = Min_int32 (x0 + 1, xPixelLimit);

		int32 y0 = (int32) y_map;
		int32 y1 = Min_int32 (y0 + 1, yPixelLimit);

		// Compute fractional weights.

		real32 xf = x_map - (real32) x0;
		real32 yf = y_map - (real32) y0;

		// Read linear RGB values in RIMM space. 

		real32 r = rSrcPtr [col];
		real32 g = gSrcPtr [col];
		real32 b = bSrcPtr [col];

		// Apply MapInputWeights (5-element dot product).

		real32 minValue = Min_real32 (r, Min_real32 (g, b));
		real32 maxValue = Max_real32 (r, Max_real32 (g, b));

		real32 weight = ((miw0 * r) +
						 (miw1 * g) +
						 (miw2 * b) +
						 (miw3 * minValue) +
						 (miw4 * maxValue));

		// Since this sample render pipeline applies this processing step
		// before the BaselineExposure tag, we must scale the weight by the
		// baseline exposure value.

		weight = weight * exposureWeightGain;

		// Clamp the weight to [0,1]. Use std::isfinite to handle NaN: all
		// float comparisons with NaN return false, so Pin_real32 alone does
		// not sanitize NaN inputs.

		weight = std::isfinite (weight) ? Pin_real32 (0.0f, weight, 1.0f)
										: 0.0f;

		// Apply the gamma parameter.

		if (gamma != 1.0f)
			weight = powf (weight, gamma);

		// Scale the weight by the table size and compute the table indices
		// and fractional weight. Pin_int32 clamps correctly even if
		// weightScaled is NaN (INT32_MIN cast result is clamped to 0).

		real32 weightScaled = weight * tableSize;

		int32 w0 = Pin_int32 (0, (int32) weightScaled, tableLimit);
		int32 w1 = Min_int32 (w0 + 1, tableLimit);

		real32 wf = weightScaled - (real32) w0;

		// Look up 8 gains.

		real32 gain000 = gainTableMap.Entry (y0, x0, w0);
		real32 gain001 = gainTableMap.Entry (y0, x0, w1);
		real32 gain010 = gainTableMap.Entry (y0, x1, w0);
		real32 gain011 = gainTableMap.Entry (y0, x1, w1);
		real32 gain100 = gainTableMap.Entry (y1, x0, w0);
		real32 gain101 = gainTableMap.Entry (y1, x0, w1);
		real32 gain110 = gainTableMap.Entry (y1, x1, w0);
		real32 gain111 = gainTableMap.Entry (y1, x1, w1);

		// Interpolate in table (w) direction.

		real32 gain00_ = Lerp_real32 (gain000, gain001, wf);
		real32 gain01_ = Lerp_real32 (gain010, gain011, wf);
		real32 gain10_ = Lerp_real32 (gain100, gain101, wf);
		real32 gain11_ = Lerp_real32 (gain110, gain111, wf);

		// Interpolate in column (x) direction.

		real32 gain0__ = Lerp_real32 (gain00_, gain01_, xf);
		real32 gain1__ = Lerp_real32 (gain10_, gain11_, xf);

		// Interpolate in row (y) direction.
		
		real32 gain	   = Lerp_real32 (gain0__, gain1__, yf);

		// Apply gain.
		
		r *= gain;
		g *= gain;
		b *= gain;

		// Optionally clamp to [0,1].

		if (!supportOverrange)
			{
			r = Pin_real32 (0.0f, r, 1.0f);
			g = Pin_real32 (0.0f, g, 1.0f);
			b = Pin_real32 (0.0f, b, 1.0f);
			}

		// Store the result.

		rDstPtr [col] = r;
		gDstPtr [col] = g;
		bDstPtr [col] = b;

		// Increment sample position for next column.

		x += 1.0f;
			
		} // for each pixel in this row
		
	}

/*****************************************************************************/

void RefRGBtoRGBTable3D (real32 *rPtr,
						 real32 *gPtr,
						 real32 *bPtr,
						 const real32 *mPtr,
						 uint32 rows,
						 uint32 cols,
						 int32 rowStep,
						 int32 mRowStep,
						 uint32 divisions,
						 const uint16 *samples,
						 real32 amount,
						 uint32 gamut,
						 const dng_matrix *encodeMatrix,
						 const dng_matrix *decodeMatrix,
						 const dng_1d_table *encodeGamma,
						 const dng_1d_table *decodeGamma,
						 const bool supportOverrange)
	{

	real32 em00, em01, em02;
	real32 em10, em11, em12;
	real32 em20, em21, em22;

	real32 dm00, dm01, dm02;
	real32 dm10, dm11, dm12;
	real32 dm20, dm21, dm22;

	const bool hasMask = (mPtr != NULL);

	bool hasMatrix = ((encodeMatrix != NULL) &&
					  (decodeMatrix != NULL));

	bool hasGamut = (gamut != 0);

	if (hasMatrix)
		{

		em00 = (real32) (*encodeMatrix) [0] [0];
		em01 = (real32) (*encodeMatrix) [0] [1];
		em02 = (real32) (*encodeMatrix) [0] [2];

		em10 = (real32) (*encodeMatrix) [1] [0];
		em11 = (real32) (*encodeMatrix) [1] [1];
		em12 = (real32) (*encodeMatrix) [1] [2];

		em20 = (real32) (*encodeMatrix) [2] [0];
		em21 = (real32) (*encodeMatrix) [2] [1];
		em22 = (real32) (*encodeMatrix) [2] [2];

		dm00 = (real32) (*decodeMatrix) [0] [0];
		dm01 = (real32) (*decodeMatrix) [0] [1];
		dm02 = (real32) (*decodeMatrix) [0] [2];

		dm10 = (real32) (*decodeMatrix) [1] [0];
		dm11 = (real32) (*decodeMatrix) [1] [1];
		dm12 = (real32) (*decodeMatrix) [1] [2];

		dm20 = (real32) (*decodeMatrix) [2] [0];
		dm21 = (real32) (*decodeMatrix) [2] [1];
		dm22 = (real32) (*decodeMatrix) [2] [2];

		}

	else if (supportOverrange)
		{

		hasMatrix = true;
		hasGamut  = true;

		// Identity matrix.

		em00 = 1.0f; em01 = 0.0f; em02 = 0.0f;
		em10 = 0.0f; em11 = 1.0f; em12 = 0.0f;
		em20 = 0.0f; em21 = 0.0f; em22 = 1.0f;
		
		dm00 = 1.0f; dm01 = 0.0f; dm02 = 0.0f;
		dm10 = 0.0f; dm11 = 1.0f; dm12 = 0.0f;
		dm20 = 0.0f; dm21 = 0.0f; dm22 = 1.0f;
		
		}

	const bool hasGamma = (encodeGamma != NULL) &&
						  (decodeGamma != NULL);

	real32 scale = (real32) (divisions - 1);

	int32 maxIndex = divisions - 2;

	const int32 offset001 = 4;
	const int32 offset010 = offset001 * divisions;
	const int32 offset100 = offset010 * divisions;
	
	const int32 offset011 = offset010 + offset001;
	const int32 offset101 = offset100 + offset001;
	const int32 offset110 = offset100 + offset010;
	const int32 offset111 = offset110 + offset001;

	real32 gamutDeltaR = 0.0f;
	real32 gamutDeltaG = 0.0f;
	real32 gamutDeltaB = 0.0f;

	const bool hasAmount = (amount != 1.0f);

	for (uint32 row = 0; row < rows; row++)
		{

		for (uint32 col = 0; col < cols; col++)
			{

			real32 r = rPtr [col];
			real32 g = gPtr [col];
			real32 b = bPtr [col];

			real32 m = hasMask ? mPtr [col] : 1.0f;

			real32 rSrc = r;
			real32 gSrc = g;
			real32 bSrc = b;

			if (hasMatrix)
				{

				real32 rr = r * em00 + g * em01 + b * em02;
				real32 gg = r * em10 + g * em11 + b * em12;
				real32 bb = r * em20 + g * em21 + b * em22;

				if (supportOverrange)
					{
					
					rr = EncodeOverrange (rr);
					gg = EncodeOverrange (gg);
					bb = EncodeOverrange (bb);
					
					}

				r = Pin_real32 (rr);
				g = Pin_real32 (gg);
				b = Pin_real32 (bb);

				if (hasGamut)
					{

					gamutDeltaR = rr - r;
					gamutDeltaG = gg - g;
					gamutDeltaB = bb - b;

					}

				}

			if (hasGamma)
				{

				r = encodeGamma->Interpolate (r);
				g = encodeGamma->Interpolate (g);
				b = encodeGamma->Interpolate (b);

				}

			real32 rScaled = r * scale;
			real32 gScaled = g * scale;
			real32 bScaled = b * scale;

			// Pin indices: NaN cast to int32 yields INT32_MIN on x86/ARM,
			// which passes Min_int32-only upper-bound checks. Pin_int32 uses
			// integer comparisons that are unaffected by NaN.

			int32 rIndex = Pin_int32 (0, (int32) rScaled, maxIndex);
			int32 gIndex = Pin_int32 (0, (int32) gScaled, maxIndex);
			int32 bIndex = Pin_int32 (0, (int32) bScaled, maxIndex);

			real32 rFract = rScaled - (real32) rIndex;
			real32 gFract = gScaled - (real32) gIndex;
			real32 bFract = bScaled - (real32) bIndex;

			int32 offset1;
			int32 offset2;

			real32 f1;
			real32 f2;
			real32 f3;

			if (gFract >= rFract)
				{
				
				if (bFract >= gFract)
					{
					
					offset1 = offset001;
					offset2 = offset011;

					f1 = bFract;
					f2 = gFract;
					f3 = rFract;
																
					}
					
				else if (bFract >= rFract)
					{
					
					offset1 = offset010;
					offset2 = offset011;

					f1 = gFract;
					f2 = bFract;
					f3 = rFract;
						
					}
					
				else
					{
					
					offset1 = offset010;
					offset2 = offset110;

					f1 = gFract;
					f2 = rFract;
					f3 = bFract;
					
					}
					
				}
				
			else
				{
				
				if (bFract >= rFract)
					{
					
					offset1 = offset001;
					offset2 = offset101;

					f1 = bFract;
					f2 = rFract;
					f3 = gFract;
																
					}
					
				else if (bFract >= gFract)
					{
					
					offset1 = offset100;
					offset2 = offset101;

					f1 = rFract;
					f2 = bFract;
					f3 = gFract;
											
					}
					
				else
					{
					
					offset1 = offset100;
					offset2 = offset110;

					f1 = rFract;
					f2 = gFract;
					f3 = bFract;
											
					}
					
				}

			real32 w0 = 1.0f - f1;
			real32 w1 = f1	 - f2;
			real32 w2 = f2	 - f3;

			const uint16 *table = samples + rIndex * offset100 +
											gIndex * offset010 +
											bIndex * offset001;

			real32 r0 = (w0 * ((real32) table [0			]) +
						 w1 * ((real32) table [offset1		]) +
						 w2 * ((real32) table [offset2		]) +
						 f3 * ((real32) table [offset111	])) *
						((real32) (1.0 / 65535.0));

			real32 g0 = (w0 * ((real32) table [1			]) +
						 w1 * ((real32) table [offset1	 + 1]) +
						 w2 * ((real32) table [offset2	 + 1]) +
						 f3 * ((real32) table [offset111 + 1])) *
						((real32) (1.0 / 65535.0));

			real32 b0 = (w0 * ((real32) table [2			]) +
						 w1 * ((real32) table [offset1	 + 2]) +
						 w2 * ((real32) table [offset2	 + 2]) +
						 f3 * ((real32) table [offset111 + 2])) *
						((real32) (1.0 / 65535.0));

			if (hasAmount)
				{

				r = Pin_real32 (r + amount * (r0 - r));
				g = Pin_real32 (g + amount * (g0 - g));
				b = Pin_real32 (b + amount * (b0 - b));

				}

			else
				{

				r = r0;
				g = g0;
				b = b0;

				}

			if (hasGamma)
				{

				r = decodeGamma->Interpolate (r);
				g = decodeGamma->Interpolate (g);
				b = decodeGamma->Interpolate (b);

				}

			if (hasMatrix)
				{

				if (hasGamut)
					{

					r += gamutDeltaR;
					g += gamutDeltaG;
					b += gamutDeltaB;

					}

				if (supportOverrange)
					{

					r = DecodeOverrange (r);
					g = DecodeOverrange (g);
					b = DecodeOverrange (b);

					}
				
				real32 rDst = r * dm00 + g * dm01 + b * dm02;
				real32 gDst = r * dm10 + g * dm11 + b * dm12;
				real32 bDst = r * dm20 + g * dm21 + b * dm22;

				if (!supportOverrange)
					{
					
					rDst = Pin_real32 (rDst);
					gDst = Pin_real32 (gDst);
					bDst = Pin_real32 (bDst);
					
					}

				rPtr [col] = Lerp_real32 (rSrc, rDst, m);
				gPtr [col] = Lerp_real32 (gSrc, gDst, m);
				bPtr [col] = Lerp_real32 (bSrc, bDst, m);

				}

			else
				{

				rPtr [col] = Lerp_real32 (rSrc, r, m);
				gPtr [col] = Lerp_real32 (gSrc, g, m);
				bPtr [col] = Lerp_real32 (bSrc, b, m);

				}

			}

		rPtr += rowStep;
		gPtr += rowStep;
		bPtr += rowStep;

		if (hasMask)
			mPtr += mRowStep;

		}

	}

/*****************************************************************************/

void RefRGBtoRGBTable1D (real32 *rPtr,
						 real32 *gPtr,
						 real32 *bPtr,
						 const real32 *mPtr,
						 uint32 rows,
						 uint32 cols,
						 int32 rowStep,
						 int32 mRowStep,
						 const dng_1d_table &table0,
						 const dng_1d_table &table1,
						 const dng_1d_table &table2,
						 uint32 gamut,
						 const dng_matrix *encodeMatrix,
						 const dng_matrix *decodeMatrix,
						 const bool supportOverrange)
	{

	real32 em00, em01, em02;
	real32 em10, em11, em12;
	real32 em20, em21, em22;

	real32 dm00, dm01, dm02;
	real32 dm10, dm11, dm12;
	real32 dm20, dm21, dm22;

	const bool hasMask = (mPtr != NULL);

	bool hasMatrix = ((encodeMatrix != NULL) &&
					  (decodeMatrix != NULL));

	bool hasGamut = (gamut != 0);

	if (hasMatrix)
		{

		em00 = (real32) (*encodeMatrix) [0] [0];
		em01 = (real32) (*encodeMatrix) [0] [1];
		em02 = (real32) (*encodeMatrix) [0] [2];

		em10 = (real32) (*encodeMatrix) [1] [0];
		em11 = (real32) (*encodeMatrix) [1] [1];
		em12 = (real32) (*encodeMatrix) [1] [2];

		em20 = (real32) (*encodeMatrix) [2] [0];
		em21 = (real32) (*encodeMatrix) [2] [1];
		em22 = (real32) (*encodeMatrix) [2] [2];

		dm00 = (real32) (*decodeMatrix) [0] [0];
		dm01 = (real32) (*decodeMatrix) [0] [1];
		dm02 = (real32) (*decodeMatrix) [0] [2];

		dm10 = (real32) (*decodeMatrix) [1] [0];
		dm11 = (real32) (*decodeMatrix) [1] [1];
		dm12 = (real32) (*decodeMatrix) [1] [2];

		dm20 = (real32) (*decodeMatrix) [2] [0];
		dm21 = (real32) (*decodeMatrix) [2] [1];
		dm22 = (real32) (*decodeMatrix) [2] [2];

		}

	else if (supportOverrange)
		{
		
		hasMatrix = true;
		hasGamut  = true;

		// Identity matrix.

		em00 = 1.0f; em01 = 0.0f; em02 = 0.0f;
		em10 = 0.0f; em11 = 1.0f; em12 = 0.0f;
		em20 = 0.0f; em21 = 0.0f; em22 = 1.0f;
		
		dm00 = 1.0f; dm01 = 0.0f; dm02 = 0.0f;
		dm10 = 0.0f; dm11 = 1.0f; dm12 = 0.0f;
		dm20 = 0.0f; dm21 = 0.0f; dm22 = 1.0f;
		
		}

	real32 gamutDeltaR = 0.0f;
	real32 gamutDeltaG = 0.0f;
	real32 gamutDeltaB = 0.0f;

	for (uint32 row = 0; row < rows; row++)
		{

		for (uint32 col = 0; col < cols; col++)
			{

			real32 r = rPtr [col];
			real32 g = gPtr [col];
			real32 b = bPtr [col];

			real32 m = hasMask ? mPtr [col] : 1.0f;

			real32 rSrc = r;
			real32 gSrc = g;
			real32 bSrc = b;

			if (hasMatrix)
				{

				real32 rr = r * em00 + g * em01 + b * em02;
				real32 gg = r * em10 + g * em11 + b * em12;
				real32 bb = r * em20 + g * em21 + b * em22;

				if (supportOverrange)
					{
					
					rr = EncodeOverrange (rr);
					gg = EncodeOverrange (gg);
					bb = EncodeOverrange (bb);
					
					}

				r = Pin_real32 (rr);
				g = Pin_real32 (gg);
				b = Pin_real32 (bb);

				if (hasGamut)
					{

					gamutDeltaR = rr - r;
					gamutDeltaG = gg - g;
					gamutDeltaB = bb - b;

					}

				}

			r = table0.Interpolate (r);
			g = table1.Interpolate (g);
			b = table2.Interpolate (b);

			if (hasMatrix)
				{

				if (hasGamut)
					{

					r += gamutDeltaR;
					g += gamutDeltaG;
					b += gamutDeltaB;

					}

				if (supportOverrange)
					{

					r = DecodeOverrange (r);
					g = DecodeOverrange (g);
					b = DecodeOverrange (b);

					}
				
				real32 rDst = r * dm00 + g * dm01 + b * dm02;
				real32 gDst = r * dm10 + g * dm11 + b * dm12;
				real32 bDst = r * dm20 + g * dm21 + b * dm22;

				if (!supportOverrange)
					{
					
					rDst = Pin_real32 (rDst);
					gDst = Pin_real32 (gDst);
					bDst = Pin_real32 (bDst);
					
					}

				rPtr [col] = Lerp_real32 (rSrc, rDst, m);
				gPtr [col] = Lerp_real32 (gSrc, gDst, m);
				bPtr [col] = Lerp_real32 (bSrc, bDst, m);

				}

			else
				{
				
				rPtr [col] = Lerp_real32 (rSrc, r, m);
				gPtr [col] = Lerp_real32 (gSrc, g, m);
				bPtr [col] = Lerp_real32 (bSrc, b, m);

				}

			}

		rPtr += rowStep;
		gPtr += rowStep;
		bPtr += rowStep;

		if (hasMask)
			mPtr += mRowStep;

		}

	}

/*****************************************************************************/

// Weighted Sum Method.

void RefMaskedRGBTables32 (real32 *ptr0,
						   real32 *ptr1,
						   real32 *ptr2,
						   const real32 *tablePtr0,
						   const real32 *tablePtr1,
						   const real32 *tablePtr2,
						   const real32 *maskPtr,
						   uint32 numTransforms,
						   int32 pRowStep,
						   int32 tRowStep,
						   int32 tPlaneStep,
						   uint32 rows,
						   uint32 cols)
	{

	const int32 transformStep = 4 * tPlaneStep;
	
	for (uint32 row = 0; row < rows; row++)	
		{
		
		for (uint32 j = 0; j < cols; j++)
			{

			const real32 *tp0 = tablePtr0;
			const real32 *tp1 = tablePtr1;
			const real32 *tp2 = tablePtr2;

			const real32 *mPtr = maskPtr;

			real32 rSum = 0.0f;
			real32 gSum = 0.0f;
			real32 bSum = 0.0f;

			real32 mSum = 0.0f;

			// Walk through all masked transforms and compute weighted sum.
				
			for (uint32 t = 0; t < numTransforms; t++)
				{

				real32 r = tp0 [j];
				real32 g = tp1 [j];
				real32 b = tp2 [j];

				real32 m = mPtr [j];

				// Weighted sum.

				rSum += (r * m);
				gSum += (g * m);
				bSum += (b * m);

				mSum += m;

				// Next transform.

				tp0	 += transformStep;
				tp1	 += transformStep;
				tp2	 += transformStep;
				mPtr += transformStep;
				
				}

			// Add weighted sum for background table.
			//
			// Note:
			//
			// If there is a background table, then ptr0, ptr1, and ptr2
			// contain the result of transforming the source values by the
			// background table.
			//
			// Otherwise (there is no background table), ptr0, ptr1, and ptr2
			// contain the source values (i.e., identity transform). In other
			// words, the "background" in this case represents the original
			// image with no table applied.

			real32 bgWeight = 1.0f - Min_real32 (1.0f, mSum);

			real32 bg_r = ptr0 [j];
			real32 bg_g = ptr1 [j];
			real32 bg_b = ptr2 [j];

			rSum += (bg_r * bgWeight);
			gSum += (bg_g * bgWeight);
			bSum += (bg_b * bgWeight);

			mSum += bgWeight;

			// Normalize.

			real32 norm = 1.0f / mSum;

			real32 r_dst = rSum * norm;
			real32 g_dst = gSum * norm;
			real32 b_dst = bSum * norm;

			// Store.

			#if 1

			// Production path: store final composited color.

			ptr0 [j] = r_dst;
			ptr1 [j] = g_dst;
			ptr2 [j] = b_dst;

			#elif 1

			// Debug path: store something else for vis.

			ptr0 [j] = bgWeight;
			ptr1 [j] = bgWeight;
			ptr2 [j] = bgWeight;

			#else

			// Debug path: store something else for vis.

			ptr0 [j] = mSum;
			ptr1 [j] = mSum;
			ptr2 [j] = mSum;

			#endif

			} // cols

		// Next row.

		ptr0 += pRowStep;
		ptr1 += pRowStep;
		ptr2 += pRowStep;

		tablePtr0 += tRowStep;
		tablePtr1 += tRowStep;
		tablePtr2 += tRowStep;
		maskPtr	  += tRowStep;
		
		} // rows
	
	}

/*****************************************************************************/
