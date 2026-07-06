/*****************************************************************************/
// Copyright 2006-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_utils.h"

#include "dng_area_task.h"
#include "dng_assertions.h"
#include "dng_bottlenecks.h"
#include "dng_flags.h"
#include "dng_globals.h"
#include "dng_host.h"
#include "dng_image.h"
#include "dng_image_writer.h"
#include "dng_memory_stream.h"
#include "dng_mutex.h"
#include "dng_point.h"
#include "dng_rect.h"
#include "dng_simd_type.h"
#include "dng_tag_codes.h"
#include "dng_tag_values.h"
#include "dng_tile_iterator.h"

#if qMacOS
#include <CoreServices/CoreServices.h>
#endif

#if qiPhone || qMacOS
// these provide timers
#include <mach/mach.h>
#include <mach/mach_time.h>
#endif

#if qiPhone || qLinux
#include <signal.h> // for raise
#endif

#if qWinOS
#include <windows.h>
#else
#include <sys/time.h>
#include <stdarg.h> // for va_start/va_end
#endif

#if defined(__EMSCRIPTEN__)
#include "emscripten.h"
#endif

#include <atomic>

/*****************************************************************************/

#if qDNGDebug

/*****************************************************************************/

#if qMacOS
	#if qARM
		#define DNG_DEBUG_BREAK do { } while (0)
	#else
		#define DNG_DEBUG_BREAK __asm__ volatile ("int3")
	#endif
#elif qiPhone
	#if qiPhoneSimulator
		// simulator is either on Intel or arm64
		#if qARM
			#define DNG_DEBUG_BREAK do { } while (0)
		#else
			#define DNG_DEBUG_BREAK __asm__ volatile ("int3")
		#endif
	#else
		// You'll be one level deeper in __kill. Works on Linux, Android too.
		#define DNG_DEBUG_BREAK raise(SIGTRAP)
	#endif
#elif qWinOS
	// DebugBreak has to be emulated on WinRT
	#define DNG_DEBUG_BREAK DebugBreak()  
#elif qAndroid
	#define DNG_DEBUG_BREAK raise(SIGTRAP)
#elif qLinux
	#define DNG_DEBUG_BREAK raise(SIGTRAP)
#else
	#define DNG_DEBUG_BREAK
#endif

/*****************************************************************************/

#endif	// qDNGDebug

/*****************************************************************************/

#if qWinOS

void dng_outputdebugstring (const char *s,
							const char *nl)
	{

	static const bool sDebuggerPresent (IsDebuggerPresent () != 0);

	if (sDebuggerPresent)
		{
		OutputDebugStringA (s);
		if (nl && nl [0])
			{
			OutputDebugStringA (nl);
			}
		}

	}

#endif

/*****************************************************************************/

#if defined(__EMSCRIPTEN__)

void dng_emscripten_log (int emLogType,
						 const char *s)
	{
	
	#if qDNGDebug
	emLogType |= EM_LOG_CONSOLE;
	#endif

	emscripten_log (emLogType,"%s", s);
	
	}

#endif

/*****************************************************************************/

void dng_show_message (const char *s)
	{
	// only append a newline if there isn't already one
	const char* nl = "\n";
	if (s[0] && (s[strlen(s)-1] == '\n'))
		nl = "";
		
	#if qDNGPrintMessages
	
	// display the message
	if (gPrintAsserts)
		fprintf (stderr, "%s%s", s, nl);
		
	#elif qiPhone || qAndroid || qLinux || qWeb
	
	if (gPrintAsserts)
		fprintf (stderr, "%s%s", s, nl);

	#if qDNGDebug
	
	// iOS doesn't print a message to the console like DebugStr and MessageBox do, so we have to do both
	// You'll have to advance the program counter manually past this statement
	if (gBreakOnAsserts)
		DNG_DEBUG_BREAK;
	
	#endif	// qDNGDebug
	
	#elif qMacOS
	
	if (gBreakOnAsserts)
		{
		// truncate the to 255 chars
		char ss [256];
	
		uint32 len = (uint32) strlen (s);
		if (len > 255)
			len = 255;
		strncpy (&(ss [1]), s, len );
		ss [0] = (unsigned char) len;
	
		DebugStr ((unsigned char *) ss);
		}
	 else if (gPrintAsserts)
		{
		// For macOS have non-breaking assert emit to stdout
		// rather than stderr so that message will appear
		// in the Xcode console window.
		//fprintf(stderr, "%s%s", s, nl);
		fprintf (stdout, "%s%s", s, nl);
		}
	
	#elif qWinOS
	
	// display a dialog
	// This is not thread safe.	 Multiple message boxes can be launched.
	// Should also be launched in its own thread so main msg queue isn't thrown off.
	if (gBreakOnAsserts)
		{
		MessageBoxA (NULL, (LPSTR) s, NULL, MB_OK);
		}
	else if (gPrintAsserts)
		{
		fprintf (stderr, "%s%s", s, nl);

		// Emit assert message to MSVS Output window when debugging.
		dng_outputdebugstring (s, nl);
		}

	#endif

	}

/*****************************************************************************/

#if (qMacOS || qiPhone)
__attribute__((__format__ (__printf__, 1, 2)))
#endif

void dng_show_message_f (const char *fmt, ... )
	{
	
	char buffer [2048];
	
	va_list ap;
	va_start (ap, fmt);

	vsnprintf (buffer, sizeof (buffer), fmt, ap);
	
	va_end (ap);
	
	dng_show_message (buffer);
	
	}

/*****************************************************************************/

uint32 ComputeBufferSize (uint32 pixelType, 
						  const dng_point &tileSize,
						  uint32 numPlanes, 
						  PaddingType paddingType)
	{

	// Convert tile size to uint32.

	if (tileSize.h < 0 || tileSize.v < 0)
		{
		ThrowMemoryFull ("Negative tile size");
		}

	const uint32 tileSizeH = static_cast<uint32> (tileSize.h);
	const uint32 tileSizeV = static_cast<uint32> (tileSize.v);
	
	const uint32 pixelSize = TagTypeSize (pixelType);
	
	// Add padding to width if necessary.

	uint32 paddedWidth = tileSizeH;

	if (paddingType == padSIMDBytes)
		{

		if (!RoundUpForPixelSize (paddedWidth, 
								  pixelSize, 
								  &paddedWidth))
			{
			ThrowOverflow ("Arithmetic overflow computing buffer size");
			}

		}
	
	// Compute buffer size.

	uint32 bufferSize;

	if (!SafeUint32Mult (paddedWidth, tileSizeV, &bufferSize) ||
		!SafeUint32Mult (bufferSize,  pixelSize, &bufferSize) ||
		!SafeUint32Mult (bufferSize,  numPlanes, &bufferSize))
		{
		ThrowOverflow ("Arithmetic overflow computing buffer size");
		}
	
	return bufferSize;

	}

/*****************************************************************************/

real64 TickTimeInSeconds ()
	{
	
	#if qWinOS
	
	// One might think it prudent to cache the frequency here, however
	// low-power CPU modes can, and do, change the value returned.
	// Thus the frequencey needs to be retrieved each time.
	
	// Note that the frequency changing can cause the return
	// result to jump backwards, which is why the TickCountInSeconds
	// (below) also exists.
		
	// Just plug in laptop when doing timings to minimize this.
	//	QPC/QPH is a slow call compared to rtdsc.
	//	but QPC/QPF is not tied to speed step, it's the northbridge timer.
	//	caching the invFrequency also avoids a costly divide
		
	static real64 freqMultiplier = 0.0;

	if (freqMultiplier == 0.0)
		{

		LARGE_INTEGER freq;

		QueryPerformanceFrequency (&freq);

		freqMultiplier = 1.0 / (real64) freq.QuadPart;

		}

	LARGE_INTEGER cycles;

	QueryPerformanceCounter (&cycles);

	return (real64) cycles.QuadPart * freqMultiplier;

	#elif qiPhone || qMacOS
	
	// cache frequency of high-perf timer
	static real64 freqMultiplier = 0.0;
	if (freqMultiplier == 0.0)
		{
			
		mach_timebase_info_data_t freq; 
		mach_timebase_info(&freq);
		
		// converts from nanos to micros
		//	numer = 125, denom = 3 * 1000
		freqMultiplier = ((real64)freq.numer / (real64)freq.denom) * 1.0e-9;
		
		}
	
	return mach_absolute_time() * freqMultiplier;
		
	#elif qAndroid || qLinux || qWeb

	//this is a fast timer to nanos
	struct timespec now;
	clock_gettime(CLOCK_MONOTONIC, &now);
	return now.tv_sec + (real64)now.tv_nsec * 1.0e-9;

	#else

	// Perhaps a better call exists. (e.g. avoid adjtime effects)

	struct timeval tv;
	
	gettimeofday (&tv, NULL);

	return tv.tv_sec + (real64)tv.tv_usec * 1.0e-6;
	
	#endif

	}

/*****************************************************************************/

real64 TickCountInSeconds ()
	{
		
	return TickTimeInSeconds ();
	
	}

/*****************************************************************************/

static std::atomic_int sTimerLevel (0);

/*****************************************************************************/

void DNGIncrementTimerLevel ()
	{
	
	// This isn't thread coherent, multiple threads can create/destroy cr_timer
	//	 causing the tabbing to be invalid.	 Imagecore disables this.
	
	if (!gImagecore)
		{
		
		sTimerLevel++;
		
		}
		
	}

/*****************************************************************************/

int32 DNGDecrementTimerLevel ()
	{

	if (gImagecore)
		{
		
		return 0;
		
		}
		
	else
		{
		
		return (int32) (--sTimerLevel);
		
		}
		
	}

/*****************************************************************************/

dng_timer::dng_timer (const char *message)

	:	fMessage   (message				)
	,	fStartTime (TickTimeInSeconds ())
	
	{

	DNGIncrementTimerLevel ();
	
	}

/*****************************************************************************/

dng_timer::~dng_timer ()
	{
	
	uint32 level = Pin_int32 (0, DNGDecrementTimerLevel (), 10);
	
	if (!gDNGShowTimers)
		return;

	real64 totalTime = TickTimeInSeconds () - fStartTime;
	
	#if defined(qCRLogging) && qCRLogging && defined(cr_logi)
		
	if (gImagecore)
		{
		// Imagecore force includes cr_log and overrides DNG to go to its logging under a mutex.
		// don't use indenting or fprintf to stderr, want these buffered
		cr_logi("timer", "%s: %0.3f sec\n", fMessage, totalTime);
		return;
		}
		
	#endif
		
	fprintf (stderr, "%*s%s: %0.3f sec\n", level*2, "", fMessage, totalTime);
	
	}

/*****************************************************************************/

real64 MaxSquaredDistancePointToRect (const dng_point_real64 &point,
									  const dng_rect_real64 &rect)
	{
	
	real64 distSqr = DistanceSquared (point, 
									  rect.TL ());

	distSqr = Max_real64 (distSqr,
						  DistanceSquared (point, 
										   rect.BL ()));

	distSqr = Max_real64 (distSqr,
						  DistanceSquared (point, 
										   rect.BR ()));

	distSqr = Max_real64 (distSqr,
						  DistanceSquared (point, 
										   rect.TR ()));

	return distSqr;
	
	}

/*****************************************************************************/

real64 MaxDistancePointToRect (const dng_point_real64 &point,
							   const dng_rect_real64 &rect)
	{

	return sqrt (MaxSquaredDistancePointToRect (point, 
												rect));

	}

/*****************************************************************************/

dng_dither::dng_dither ()

	:	fNoiseBuffer ()

	{
	
	const uint32 kSeed = 1;

	fNoiseBuffer.Allocate (kRNGSize2D * sizeof (uint16));

	uint16 *buffer = fNoiseBuffer.Buffer_uint16 ();
		
	uint32 seed = kSeed;

	for (uint32 i = 0; i < kRNGSize2D; i++)
		{
		
		// The correct math for 16 to 8-bit dither would be:
		//
		// y = (x * 255 + r) / 65535;  (0 <= r <= 65534)
		//
		// The bottlnecks are using a faster approximation of
		// this math (using a power of two for the division):
		//
		// y = (x * 255 + r) / 65536;  (255 <= r <= 65535)
		//
		// To insure that all exact 8 bit values in 16 bit space
		// round trip exactly to the same 8-bit, we need to limit
		// r values to the range 255 to 65535.
		//
		// This results in the dither effect being slightly
		// imperfect, but correct round-tripping of 8-bit values
		// is far more important.
		
		uint16 value;
		
		do
			{
			
			seed = DNG_Random (seed);
			
			value = (uint16) seed;
			
			}
		while (value < 255);

		buffer [i] = value;

		}
	
	}

/******************************************************************************/

const dng_dither & dng_dither::Get ()
	{
	
	static dng_dither dither;
	
	return dither;
	
	}

/*****************************************************************************/

void HistogramArea (dng_host & /* host */,
					const dng_image &image,
					const dng_rect &area,
					uint32 *hist,
					uint32 maxValue,
					uint32 plane)
	{
	
	DNG_ASSERT (image.PixelType () == ttShort, "Unsupported pixel type");
	
	DoZeroBytes (hist, (maxValue + 1) * (uint32) sizeof (uint32));
	
	dng_rect tile;
	
	dng_tile_iterator iter (image, area);
	
	while (iter.GetOneTile (tile))
		{
		
		dng_const_tile_buffer buffer (image, tile);
		
		const void *sPtr = buffer.ConstPixel (tile.t,
											  tile.l,
											  plane);
		
		uint32 count0 = 1;
		uint32 count1 = tile.H ();
		uint32 count2 = tile.W ();
		
		int32 step0 = 0;
		int32 step1 = buffer.fRowStep;
		int32 step2 = buffer.fColStep;
		
		OptimizeOrder (sPtr,
					   buffer.fPixelSize,
					   count0,
					   count1,
					   count2,
					   step0,
					   step1,
					   step2);
					   
		DNG_ASSERT (count0 == 1, "OptimizeOrder logic error");
		
		const uint16 *s1 = (const uint16 *) sPtr;
				
		for (uint32 row = 0; row < count1; row++)
			{
			
			if (maxValue == 0x0FFFF && step2 == 1)
				{
				
				for (uint32 col = 0; col < count2; col++)
					{
					
					uint32 x = s1 [col];
					
					hist [x] ++;
					
					}
					
				}
				
			else
				{
			
				const uint16 *s2 = s1;
			
				for (uint32 col = 0; col < count2; col++)
					{
					
					uint32 x = s2 [0];
					
					if (x <= maxValue)
						{
					
						hist [x] ++;
						
						}
					
					s2 += step2;
					
					}
					
				}
				
			s1 += step1;
			
			}
		
		}
		
	}
		
/*****************************************************************************/

template <SIMDType simd>
class dng_limit_float_depth_task: public dng_area_task
	{
	
	private:
	
		const dng_image &fSrcImage;
		
		dng_image &fDstImage;
		
		uint32 fBitDepth;
		
		real32 fScale;
			
	public:
	
		dng_limit_float_depth_task (const dng_image &srcImage,
									dng_image &dstImage,
									uint32 bitDepth,
									real32 scale);
							 
		virtual dng_rect RepeatingTile1 () const
			{
			return fSrcImage.RepeatingTile ();
			}
			
		virtual dng_rect RepeatingTile2 () const
			{
			return fDstImage.RepeatingTile ();
			}
							 
		virtual void Process (uint32 threadIndex,
							  const dng_rect &tile,
							  dng_abort_sniffer *sniffer);
								  
	};

/*****************************************************************************/

template <SIMDType simd>
dng_limit_float_depth_task<simd>::dng_limit_float_depth_task
	(const dng_image &srcImage,
	 dng_image &dstImage,
	 uint32 bitDepth,
	 real32 scale)

	:	dng_area_task ("dng_limit_float_depth_task")
										
	,	fSrcImage (srcImage)
	,	fDstImage (dstImage)
	,	fBitDepth (bitDepth)
	,	fScale	  (scale)
	
	{
	
	}

/*****************************************************************************/

template <SIMDType simd>

#ifdef __INTEL_LLVM_COMPILER
__attribute__((SET_CPU_FEATURE(simd)))
#endif // __INTEL_LLVM_COMPILER

void dng_limit_float_depth_task<simd>::Process (uint32 /* threadIndex */,
												const dng_rect &tile,
												dng_abort_sniffer * /* sniffer */)
	{

	INTEL_COMPILER_NEEDED_NOTE


#ifdef __INTEL_COMPILER
		SET_CPU_FEATURE(simd);
#endif // __INTEL_COMPILER


	dng_const_tile_buffer srcBuffer (fSrcImage, tile);
	dng_dirty_tile_buffer dstBuffer (fDstImage, tile);
	
	uint32 count0 = tile.H ();
	uint32 count1 = tile.W ();
	uint32 count2 = fDstImage.Planes ();
	
	int32 sStep0 = srcBuffer.fRowStep;
	int32 sStep1 = srcBuffer.fColStep;
	int32 sStep2 = srcBuffer.fPlaneStep;
	
	int32 dStep0 = dstBuffer.fRowStep;
	int32 dStep1 = dstBuffer.fColStep;
	int32 dStep2 = dstBuffer.fPlaneStep;

	const void *sPtr = srcBuffer.ConstPixel (tile.t,
											 tile.l,
											 0);
											 
		  void *dPtr = dstBuffer.DirtyPixel (tile.t,
											 tile.l,
											 0);

	OptimizeOrder (sPtr,
				   dPtr,
				   srcBuffer.fPixelSize,
				   dstBuffer.fPixelSize,
				   count0,
				   count1,
				   count2,
				   sStep0,
				   sStep1,
				   sStep2,
				   dStep0,
				   dStep1,
				   dStep2);
				   
	const real32 *sPtr0 = (const real32 *) sPtr;
		  real32 *dPtr0 = (		 real32 *) dPtr;
		  
	real32 scale = fScale;
		  
	bool limit16 = (fBitDepth == 16);
	bool limit24 = (fBitDepth == 24);
				   
	for (uint32 index0 = 0; index0 < count0; index0++)
		{
		
		const real32 *sPtr1 = sPtr0;
			  real32 *dPtr1 = dPtr0;
			  
		for (uint32 index1 = 0; index1 < count1; index1++)
			{
			
			// If the scale is a NOP, and the data is packed solid, we can just do memory
			// copy.
			
			if (scale == 1.0f && sStep2 == 1 && dStep2 == 1)
				{
				
				if (dPtr1 != sPtr1)			// srcImage != dstImage
					{
				
					memcpy (dPtr1, sPtr1, count2 * (uint32) sizeof (real32));
					
					}
				
				}
				
			else
				{
			
				const real32 *sPtr2 = sPtr1;
					  real32 *dPtr2 = dPtr1;
				INTEL_PRAGMA_SIMD_ASSERT_VECLEN_FLOAT(simd)
				for (uint32 index2 = 0; index2 < count2; index2++)
					{
					
					real32 x = sPtr2 [0];
					
					x *= scale;
					
					dPtr2 [0] = x;
					
					sPtr2 += sStep2;
					dPtr2 += dStep2;
					
					}
					
				}
				
			// The data is now in the destination buffer.
				
			if (limit16)
				{

				//start by using intrinsic __m256__mm256_cvtph_ps_(__m128i_a)
				//once the intrinsic is written, merge this branch with previous one

				uint32 *dPtr2 = (uint32 *) dPtr1;

				INTEL_PRAGMA_SIMD_ASSERT_VECLEN_INT32(simd)

				for (uint32 index2 = 0; index2 < count2; index2++)
					{
					
					uint32 x = dPtr2 [0];
					
					uint16 y = DNG_FloatToHalf (x);
					
					x = DNG_HalfToFloat (y);
											
					dPtr2 [0] = x;
					
					dPtr2 += dStep2;
					
					}
					
				}
				
			else if (limit24)
				{
			
				uint32 *dPtr2 = (uint32 *) dPtr1;
					  
				for (uint32 index2 = 0; index2 < count2; index2++)
					{
					
					uint32 x = dPtr2 [0];
											
					uint8 temp [3];
					
					DNG_FloatToFP24 (x, temp);
					
					x = DNG_FP24ToFloat (temp);
					
					dPtr2 [0] = x;
					
					dPtr2 += dStep2;
					
					}
					
				}
			  
			sPtr1 += sStep1;
			dPtr1 += dStep1;
			
			}
				   
		sPtr0 += sStep0;
		dPtr0 += dStep0;
		
		}
					
	}

/******************************************************************************/

template <SIMDType simd>
void LimitFloatBitDepth (dng_host &host,
						 const dng_image &srcImage,
						 dng_image &dstImage,
						 uint32 bitDepth,
						 real32 scale)
	{
	
	DNG_ASSERT (srcImage.PixelType () == ttFloat, "Floating point image expected");
	DNG_ASSERT (dstImage.PixelType () == ttFloat, "Floating point image expected");
	
	dng_limit_float_depth_task<simd> task (srcImage,
										   dstImage,
										   bitDepth,
										   scale);
									 
	host.PerformAreaTask (task, dstImage.Bounds ());
	
	}

/*****************************************************************************/

template
void LimitFloatBitDepth<Scalar> (dng_host &host,
								 const dng_image &srcImage,
								 dng_image &dstImage,
								 uint32 bitDepth,
								 real32 scale);

/*****************************************************************************/

#if qDNGIntelCompiler

template
void LimitFloatBitDepth<AVX2> (dng_host &host,
							   const dng_image &srcImage,
							   dng_image &dstImage,
							   uint32 bitDepth,
							   real32 scale);

#endif	// qDNGIntelCompiler

/*****************************************************************************/

void LimitFloatBitDepth (dng_host &host,
						 const dng_image &srcImage,
						 dng_image &dstImage,
						 uint32 bitDepth,
						 real32 scale)
	{
	
	// Kludge: Turning this off for now because the AVX2 path produces
	// slightly different results from the Scalar routine causing a mis-match
	// in raw digest values when building HDR merge result negatives which
	// causes the client to display a "file appears to be damaged" warning.
	// -bury 11/13/2017
	
	#if (qDNGIntelCompiler && qDNGExperimental && 0)

	if (gDNGMaxSIMD >= AVX2)
		{

		LimitFloatBitDepth<AVX2> (host,
								  srcImage,
								  dstImage,
								  bitDepth,
								  scale);

		}

	else

	#endif	// qDNGIntelCompiler && qDNGExperimental

		{

		LimitFloatBitDepth<Scalar> (host,
									srcImage,
									dstImage,
									bitDepth,
									scale);

		}

	}

/*****************************************************************************/

uint32 MinBackwardVersionForCompression (uint32 compression)
	{
	
	if (compression == ccLossyJPEG)
		return dngVersion_1_4_0_0;

	if (compression == ccJXL)
		return dngVersion_1_7_0_0;

	return dngVersion_1_1_0_0;
	
	}

/*****************************************************************************/

tiff_tag * dng_image_sequence_info::MakeTag (dng_memory_allocator &allocator) const
	{

	dng_memory_stream stream (allocator);

	TempBigEndian tempEndian (stream);

	// Write Sequence ID.

	if (fSequenceID.NotEmpty ())
		stream.Put (fSequenceID.Get (),
					fSequenceID.Length ());

	stream.PutZeros (1);

	// Write Sequence Type.

	if (fSequenceType.NotEmpty ())
		stream.Put (fSequenceType.Get (),
					fSequenceType.Length ());

	stream.PutZeros (1);

	// Write frame info.

	if (fFrameInfo.NotEmpty ())
		stream.Put (fFrameInfo.Get (),
					fFrameInfo.Length ());

	stream.PutZeros (1);

	// Write index, count, and final.

	stream.Put_uint32 (fIndex);
	stream.Put_uint32 (fCount);
	stream.Put_uint8 (fIsFinal);

	stream.SetReadPosition (0);

	const_dng_memory_block_sptr block (stream.AsMemoryBlock (allocator));

	AutoPtr<tag_owned_data_ptr> tag
		(new tag_owned_data_ptr (tcImageSequenceInfo,
								 ttUndefined,
								 block->LogicalSize (),
								 block));

	return tag.Release ();
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

bool dng_image_stats::IsValidForPlaneCount (uint32 planeCount) const
	{
	
	DNG_REQUIRE (planeCount > 0, "Invalid plane count");

	if (fWeightedAverage.size () >= 2)
		return false;

	if (fWeights.size () != 0 &&
		fWeights.size () != size_t (planeCount))
		return false;
	
	if (fColorAverage.size () != 0 &&
		fColorAverage.size () != size_t (planeCount))
		return false;

	// Check weighted samples.
		
	if (!fWeightedSamples.empty ())
		{

		// Check too many samples.

		if (fWeightedSamples.size () > kMaxSamples)
			return false;
		
		// Check non-increasing order.

		real32 fPrev = fWeightedSamples.front ().fFrac;

		for (size_t i = 1; i < fWeightedSamples.size (); i++)
			{

			real32 fCurrent = fWeightedSamples [i].fFrac;
			
			if (fCurrent <= fPrev)
				return false;

			fPrev = fCurrent;

			}
		
		}

	// Check color samples.

	if (!fColorSamples.empty ())
		{

		// Check too many samples.

		if (fColorSamples.size () > kMaxSamples)
			return false;
		
		// Check non-increasing order and invalid plane count.

		real32 fPrev = fColorSamples.front ().fFrac;

		for (size_t i = 1; i < fColorSamples.size (); i++)
			{

			const auto &sample = fColorSamples [i];
			
			if (sample.fFrac <= fPrev)
				return false;

			fPrev = sample.fFrac;

			// Also check plane count.

			if (sample.fValues.size () != size_t (planeCount))
				return false;

			}
		
		}

	// Looks ok.

	return true;
	
	}

/*****************************************************************************/

uint32 dng_image_stats::TagCount () const
	{

	uint32 count = 0;
	
	count += (!fWeightedAverage.empty () ? 1 : 0);
	count += (!fWeightedSamples.empty () ? 1 : 0);
	count += (!fWeights		   .empty () ? 1 : 0);
	count += (!fColorAverage   .empty () ? 1 : 0);
	count += (!fColorSamples   .empty () ? 1 : 0);

	return count;
	
	}

/*****************************************************************************/

static void Put (dng_stream &stream,
				 uint32 tagCode,
				 const std::vector<real32> &values)
	{

	if (!values.empty ())
		{

		// Sanity check on values size.

		DNG_REQUIRE (values.size () <= 16,
					 "values vector too large");

		// Child tag code.

		stream.Put_uint32 (tagCode);

		// Byte length of child tag data.
		
		stream.Put_uint32 (uint32 (4 * values.size ()));

		// Child tag data.

		for (const auto x : values)
			stream.Put_real32 (x);
		
		}
	
	}

/*****************************************************************************/

static void Put (dng_stream &stream,
				 uint32 tagCode,
				 const std::vector<dng_image_stats::weighted_sample> &samples)
	{

	if (!samples.empty ())
		{

		// Sanity check on samples size.

		DNG_REQUIRE (samples.size () <= dng_image_stats::kMaxSamples,
					 "samples vector too large");

		// Child tag code.

		stream.Put_uint32 (tagCode);

		// Byte length of child tag data.
		
		stream.Put_uint32 (uint32 (4 + 8 * samples.size ()));

		// Child tag data.

		// Write number of samples.

		stream.Put_uint32 (uint32 (samples.size ()));

		// Write data for each sample.

		for (const auto &sample : samples)
			{
			stream.Put_real32 (sample.fFrac);
			stream.Put_real32 (sample.fValue);
			}
		
		}
	
	}

/*****************************************************************************/

static void Put (dng_stream &stream,
				 uint32 tagCode,
				 const std::vector<dng_image_stats::color_sample> &samples)
	{

	if (!samples.empty ())
		{

		// Sanity check on samples size.

		DNG_REQUIRE (samples.size () <= dng_image_stats::kMaxSamples,
					 "samples vector too large");

		// Child tag code.

		stream.Put_uint32 (tagCode);

		// Byte length of child tag data.

		uint32 bytes = 4;

		for (const auto &sample : samples)
			bytes += (4 + 4 * uint32 (sample.fValues.size ()));
		
		stream.Put_uint32 (bytes);

		// Child tag data.

		// Write number of samples.

		stream.Put_uint32 (uint32 (samples.size ()));

		// Write data for each sample.

		for (const auto &sample : samples)
			{
			
			stream.Put_real32 (sample.fFrac);
			
			for (const auto &x : sample.fValues)
				stream.Put_real32 (x);
			
			}
		
		}
	
	}

/*****************************************************************************/

tiff_tag * dng_image_stats::MakeTag (dng_memory_allocator &allocator) const
	{
	
	dng_memory_stream stream (allocator);

	// Tag data is big-endian byte order.

	TempBigEndian tempEndian (stream);

	// Write the number of tags.

	uint32 count = TagCount ();

	stream.Put_uint32 (count);

	// Write child tag table.

	Put (stream, kTag_WeightedAverage , fWeightedAverage);
	Put (stream, kTag_WeightedSamples , fWeightedSamples);
	Put (stream, kTag_Weights		  , fWeights);
	Put (stream, kTag_ColorAverage	  , fColorAverage);
	Put (stream, kTag_ColorSamples	  , fColorSamples);
	
	// Make a tag from the data.

	stream.SetReadPosition (0);

	const_dng_memory_block_sptr block (stream.AsMemoryBlock (allocator));

	AutoPtr<tag_owned_data_ptr> tag
		(new tag_owned_data_ptr (tcImageStats,
								 ttUndefined,
								 block->LogicalSize (),
								 block));

	return tag.Release ();
	
	}

/*****************************************************************************/

bool dng_image_stats::operator== (const dng_image_stats &src) const
	{
	
	return (fWeightedAverage   == src.fWeightedAverage &&
			fWeightedSamples   == src.fWeightedSamples &&
			fWeights		   == src.fWeights		   &&
			fColorAverage	   == src.fColorAverage	   &&
			fColorSamples	   == src.fColorSamples);
	
	}

/*****************************************************************************/

void dng_image_stats::Parse (dng_stream &stream,
							 uint32 tagByteCount)
	{
	
	// Tag data is big-endian byte order.

	TempBigEndian tempEndian (stream);

	uint64 tagEnd = SafeUint64Add (stream.Position (),
								   (uint64) tagByteCount);

	const auto requireAvailableBytes =
		[&stream,
		 tagEnd] (uint64 byteCount)
		{

		if (stream.Position () > tagEnd ||
			byteCount > tagEnd - stream.Position ())
			{
			ThrowBadFormat ("ImageStats tag is truncated");
			}

		};

	// Read the number of tags.

	requireAvailableBytes (4);

	uint32 count = stream.Get_uint32 ();

	// There are only 5 possible tags, and no tag may be repeated. Therefore,
	// more than 5 tags is an error.

	if (count > 5)
		ThrowBadFormat ("too many tags in dng_image_stats");

	// Read each child tag.

	for (uint32 i = 0; i < count; i++)
		{
		
		requireAvailableBytes (8);

		// Read child tag code.

		uint32 childTagCode = stream.Get_uint32 ();

		// Read byte length of child tag data.

		uint32 length = stream.Get_uint32 ();

		// Byte length must be positive.

		if (length == 0)
			ThrowBadFormat ("child tag byte length must be > 0");
		
		// Byte length must be multiple of 4.

		if ((length & 3) != 0)
			ThrowBadFormat ("child tag byte length expected to be multiple of 4");

		// Check maximum value of byte length.

		constexpr uint32 kMaxBytes = 4 + kMaxSamples * 4 * (kMaxColorPlanes + 1);

		if (length > kMaxBytes)
			ThrowBadFormat ("child tag byte length too large");

		requireAvailableBytes (length);

		uint64 childEnd = SafeUint64Add (stream.Position (),
										 (uint64) length);

		// Read all floats.

		std::vector<real32> *data = nullptr;

		switch (childTagCode)
			{
			
			case kTag_WeightedAverage:
				{
				data = &fWeightedAverage;
				break;
				}
				
			case kTag_Weights:
				{
				data = &fWeights;
				break;
				}
			
			case kTag_ColorAverage:
				{
				data = &fColorAverage;
				break;
				}
				
			default:
				break;
			
			}

		if (data)
			{

			const uint32 numFloats = (length >> 2);

			data->resize (numFloats);

			for (uint32 c = 0; c < numFloats; c++)
				(*data) [c] = stream.Get_real32 ();

			}

		else if (childTagCode == kTag_WeightedSamples)
			{

			const uint32 sampleCount = stream.Get_uint32 ();

			// Check sample count requirements.

			if (sampleCount == 0)
				ThrowBadFormat ("too few samples for weighted samples");

			if (sampleCount > kMaxSamples)
				ThrowBadFormat ("too many samples for weighted samples");

			// Check byte length.

			if (4 + (8 * sampleCount) != length)
				ThrowBadFormat ("mismatch byte length for weighted samples");

			// Read the child tag data.

			fWeightedSamples.resize (sampleCount);

			for (auto &sample : fWeightedSamples)
				{

				sample.fFrac  = stream.Get_real32 ();
				sample.fValue = stream.Get_real32 ();
				
				}
			
			}

		else if (childTagCode == kTag_ColorSamples)
			{
			
			const uint32 sampleCount = stream.Get_uint32 ();

			// Check sample count requirements.

			if (sampleCount == 0)
				ThrowBadFormat ("too few samples for color samples");

			if (sampleCount > kMaxSamples)
				ThrowBadFormat ("too many samples for color samples");

			// Infer plane count.

			const uint32 planes = ((length - 4) / sampleCount / 4) - 1;

			if (planes == 0)
				ThrowBadFormat ("unexpected 0 plane count for color samples");

			if (planes > kMaxColorPlanes)
				ThrowBadFormat ("too large plane count for color samples");

			if (4 + (sampleCount * 4 * (planes + 1)) != length)
				ThrowBadFormat ("mismatched plane count for color samples");

			// Read the child tag data.

			fColorSamples.resize (sampleCount);

			for (auto &sample : fColorSamples)
				{

				sample.fFrac = stream.Get_real32 ();

				sample.fValues.resize (planes);

				for (auto &value : sample.fValues)
					value = stream.Get_real32 ();

				}
			
			}

		else
			{
			
			ThrowBadFormat ("unsupported child tag code");
			
			}

		if (stream.Position () != childEnd)
			{
			ThrowBadFormat ("ImageStats child tag length mismatch");
			}

		}

	if (stream.Position () != tagEnd)
		{
		ThrowBadFormat ("ImageStats tag length mismatch");
		}
	
	}

/*****************************************************************************/

#if qDNGValidate

/*****************************************************************************/

static void DumpTag (const char *name,
					 const std::vector<real32> &values)
	{

	if (!values.empty ())
		{
	
		printf ("  %s: %.4f",
				name,
				values.front ());

		for (size_t i = 1; i < values.size (); i++)
			printf (", %.4f", values [i]);

		printf ("\n");

		}
	
	}

/*****************************************************************************/

void dng_image_stats::Dump () const
	{

	printf ("ImageStats: %u child tag(s)\n", TagCount ());

	DumpTag ("weights", fWeights);
	
	DumpTag ("weighted average", fWeightedAverage);
	
	DumpTag ("color average", fColorAverage);

	if (!fWeightedSamples.empty ())
		{

		printf ("  weighted samples:\n");
		
		for (const auto &s : fWeightedSamples)
			{
			
			printf ("    frac: %.6f, value: %.6lf\n",
					s.fFrac,
					s.fValue);
			
			}
		
		}
	
	if (!fColorSamples.empty ())
		{

		printf ("  color samples:\n");
		
		for (const auto &s : fColorSamples)
			{
			
			printf ("    frac: %.6f, values: ",
					s.fFrac);

			if (s.fValues.empty ())
				continue;

			printf ("%.6f", s.fValues.front ());

			for (size_t i = 1; i < s.fValues.size (); i++)
				printf (", %.6f", s.fValues [i]);

			printf ("\n");
			
			}
		
		}
	
	}

/*****************************************************************************/

#endif	// qDNGValidate

/*****************************************************************************/
