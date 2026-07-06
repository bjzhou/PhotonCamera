/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** Data stream abstraction for serializing and deserializing sequences of
 *	basic types and RAW image data.
 */

/*****************************************************************************/

#ifndef __dng_stream__
#define __dng_stream__

/*****************************************************************************/

#include "dng_flags.h"

#include "dng_auto_ptr.h"
#include "dng_classes.h"
#include "dng_types.h"
#include "dng_memory.h"
#include "dng_rational.h"
#include "dng_uncopyable.h"
#include "dng_utils.h"

/*****************************************************************************/

#ifndef qDNGStreamCheckForUnflushedStreams
#define qDNGStreamCheckForUnflushedStreams (qDNGValidate)
#endif

/*****************************************************************************/

// Constants for invalid offset in streams.

const uint64 kDNGStreamInvalidOffset = (uint64) (int64) -1;

/*****************************************************************************/

/// Base stream abstraction. Has support for going between stream and pointer
/// abstraction.
///
/// Note that it is the caller's responsibility to call the Flush method to
/// ensure that data is fully written to the underlying storage. The class
/// destructor does not automatically call Flush, because Flush may throw
/// exceptions (e.g., write permissions, disk full) and it is up to the caller
/// to handle these appropriately.

class dng_stream: private dng_uncopyable
	{
	
	public:
	
		enum
			{
			
			kSmallBufferSize =	8 * 1024,
			kBigBufferSize	 = 64 * 1024,
			
			kDefaultBufferSize = kSmallBufferSize
			
			};
	
	private:
	
		bool fSwapBytes;
		
		bool fHaveLength;
		
		uint64 fLength;
		
		const uint64 fOffsetInOriginalFile;
	
		uint64 fPosition;
		
		AutoPtr<dng_memory_block> fMemBlock;
		
		uint8 *fBuffer;
		
		uint32 fBufferSize;
		
		uint64 fBufferStart;
		uint64 fBufferEnd;
		uint64 fBufferLimit;
		
		bool fBufferDirty;
		
		dng_abort_sniffer *fSniffer;
		
	protected:
	
		dng_stream (dng_abort_sniffer *sniffer = NULL,
					uint32 bufferSize = kDefaultBufferSize,
					uint64 offsetInOriginalFile = kDNGStreamInvalidOffset);
		
		virtual uint64 DoGetLength ();
	
		virtual void DoRead (void *data,
							 uint32 count,
							 uint64 offset);
							 
		virtual void DoSetLength (uint64 length);
							 
		virtual void DoWrite (const void *data,
							  uint32 count,
							  uint64 offset);

		#if qDNGStreamCheckForUnflushedStreams

		// Call this from dtor of derived class for derived classes
		// which allow for destruction of an UNFLUSHED writable stream.
		// This helps with fBufferDirty check in dtor.

		void DestructionOfUnflushedInstancesIsAllowed ()
			{
			fBufferDirty = false;
			}

		#endif

	public:
	
		/// Construct a stream with initial data.
		/// \param data Pointer to initial contents of stream.
		/// \param count Number of bytes data is valid for.
		/// \param offsetInOriginalFile If data came from a file originally,
		/// offset can be saved here for later use.

		dng_stream (const void *data,
					uint32 count,
					uint64 offsetInOriginalFile = kDNGStreamInvalidOffset);
		
		virtual ~dng_stream ();
		
		/// Getter for whether stream is swapping byte order on input/output.
		/// \retval If true, data will be swapped on input/output.

		bool SwapBytes () const
			{
			return fSwapBytes;
			}
		
		/// Setter for whether stream is swapping byte order on input/output.
		/// \param swapBytes If true, stream will swap byte order on input or
		/// output for future reads/writes.

		void SetSwapBytes (bool swapBytes)
			{
			fSwapBytes = swapBytes;
			}

		/// Getter for whether data in stream is big endian.
		/// \retval If true, data in stream is big endian.

		bool BigEndian () const;
		
		/// Setter for whether data in stream is big endian.
		/// \param bigEndian If true, data in stream is big endian.

		void SetBigEndian (bool bigEndian = true);
		
		/// Getter for whether data in stream is big endian.
		/// \retval If true, data in stream is big endian.

		bool LittleEndian () const
			{
			return !BigEndian ();
			}
		
		/// Setter for whether data in stream is big endian.
		/// \param littleEndian If true, data in stream is big endian.

		void SetLittleEndian (bool littleEndian = true)
			{
			SetBigEndian (!littleEndian);
			}
			
		/// Returns the size of the buffer used by the stream.
		
		uint32 BufferSize () const
			{
			return fBufferSize;
			}

		/// Change the buffer size on the stream, if possible.
				
		void SetBufferSize (dng_memory_allocator &allocator,
							uint32 newBufferSize);

		/// Getter for length of data in stream.
		/// \retval Length of readable data in stream.
			
		uint64 Length ()
			{
			
			if (!fHaveLength)
				{
				
				fLength = DoGetLength ();
				
				fHaveLength = true;
				
				}
				
			return fLength;
			
			}

		/// Getter for current offset in stream.
		/// \retval current offset from start of stream.

		uint64 Position () const
			{
			return fPosition;
			}
			
		/// Getter for current position in original file, taking into account
		/// OffsetInOriginalFile stream data was taken from.
		/// \retval kInvalidOffset if no offset in original file is set, sum 
		/// of offset in original file and current position otherwise.

		uint64 PositionInOriginalFile () const;
		
		/// Getter for offset in original file.
		/// \retval kInvalidOffset if no offset in original file is set,
		/// offset in original file otherwise.

		uint64 OffsetInOriginalFile () const;
		
		/// Return pointer to stream contents if the stream is entirely 
		/// available as a single memory block, NULL otherwise.

		const void * Data () const;
		
		/// Return the entire stream as a single memory block.
		/// This works for all streams, but requires copying the data to a new buffer.
		/// \param allocator Allocator used to allocate memory.

		dng_memory_block * AsMemoryBlock (dng_memory_allocator &allocator,
										  uint32 numLeadingZeroBytes = 0);

		/// Seek to a new position in stream for reading.

		void SetReadPosition (uint64 offset);
		
		/// Skip forward in stream.
		/// \param delta Number of bytes to skip forward.

		void Skip (uint64 delta)
			{
			SetReadPosition (SafeUint64Add (Position (), delta));
			}
		
		/// Quick check to see if data range is completely buffered.

		bool DataInBuffer (uint64 count,
						   uint64 offset)
			{
			return (offset >= fBufferStart &&
					count  <= fBufferEnd   &&
					offset <= fBufferEnd - count);
			}
		
		/// Get data from stream. Exception is thrown and no data is read if 
		/// insufficient data available in stream.
		/// \param data Buffer to put data into. Must be valid for count bytes.
		/// \param count Bytes of data to read.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file 
		/// if not enough data in stream.
		
		void Get (void *data, uint32 count, uint32 maxOverRead=0);

		void Get (dng_fingerprint &digest);

		/// Seek to a new position in stream for writing.
		
		void SetWritePosition (uint64 offset);
		
		/// Force any stored data in stream to be written to underlying storage.

		void Flush ();

		/// Set length of available data.
		/// \param length Number of bytes of avialble data in stream.

		void SetLength (uint64 length);

		/// Write data to stream.
		/// \param data Buffer of data to write to stream.
		/// \param count Bytes of in data.

		void Put (const void *data, uint32 count);

		/// Write data to stream, performing 4-byte aligned swapping if
		/// needed. If byte-swapping is not needed, this routine is equivalent
		/// to Put.
		/// \param data Buffer of data to write to stream.
		/// \param countMul4 Length of data in bytes. Must be a multiple of 4.

		void Put_swap4 (const void *data,
						uint32 countMul4);
		
		/// Write data to stream, performing 8-byte aligned swapping if
		/// needed. If byte-swapping is not needed, this routine is equivalent
		/// to Put.
		/// \param data Buffer of data to write to stream.
		/// \param countMul8 Length of data in bytes. Must be a multiple of 8.

		void Put_swap8 (const void *data,
						uint32 countMul8);

		/// Get an unsigned 8-bit integer from stream and advance read position.
		/// \retval One unsigned 8-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file 
		/// if not enough data in stream.
		
		uint8 Get_uint8 ()
			{
			
			// Fast check to see if in buffer
			
			if (fPosition >= fBufferStart && fPosition < fBufferEnd)
				{
				
				return fBuffer [fPosition++ - fBufferStart];
				
				}
				
			// Not in buffer, let main routine do the work.
			
			uint8 x;
			
			Get (&x, 1);
			
			return x;
				
			}
		
		/// Put an unsigned 8-bit integer to stream and advance write position.
		/// \param x One unsigned 8-bit integer.
		
		void Put_uint8 (uint8 x)
			{
			
			if (fBufferDirty			   &&
				fPosition  >= fBufferStart &&
				fPosition  <= fBufferEnd   &&
				fPosition  <  fBufferLimit)
				{
				
				fBuffer [fPosition - fBufferStart] = x;
				
				fPosition++;
				
				if (fBufferEnd < fPosition)
					fBufferEnd = fPosition;
					
				fLength = Max_uint64 (Length (), fPosition);
				
				}
				
			else
				{
				
				Put (&x, 1);
				
				}
	
			}
			
		/// Get an unsigned 16-bit integer from stream and advance read position. 
		/// Byte swap if byte swapping is turned on.
		/// \retval One unsigned 16-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.
		
		uint16 Get_uint16 ();
		
		/// Put an unsigned 16-bit integer to stream and advance write position.
		/// Byte swap if byte swapping is turned on.
		/// \param x One unsigned 16-bit integer.

		void Put_uint16 (uint16 x);
		
		/// Get an unsigned 32-bit integer from stream and advance read position. 
		/// Byte swap if byte swapping is turned on.
		/// \retval One unsigned 32-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.
		
		uint32 Get_uint32 ();

#if !qDNGBigEndian
		inline // ep, enable compiler inlining
		uint32 Get_uint32_LE ()
			{
	
			uint32 x;
	
			Get (&x, 4, 3); // Allow 3-byte overread (undefined data returned but not used)

			// No check for fSwapBytes

			return x;
	
			}
#endif

		/// Put an unsigned 32-bit integer to stream and advance write position. 
		/// Byte swap if byte swapping is turned on.
		/// \param x One unsigned 32-bit integer.

		void Put_uint32 (uint32 x);
		
		/// Get an unsigned 64-bit integer from stream and advance read position. 
		/// Byte swap if byte swapping is turned on.
		/// \retval One unsigned 64-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.
		
		uint64 Get_uint64 ();
		
		/// Put an unsigned 64-bit integer to stream and advance write position. 
		/// Byte swap if byte swapping is turned on.
		/// \param x One unsigned 64-bit integer.

		void Put_uint64 (uint64 x);
		
		/// Get one 8-bit integer from stream and advance read position.
		/// \retval One 8-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.

		int8 Get_int8 ()
			{
			return (int8) Get_uint8 ();
			}
			
		/// Put one 8-bit integer to stream and advance write position.
		/// \param x One  8-bit integer.

		void Put_int8 (int8 x)
			{
			Put_uint8 ((uint8) x);
			}

		/// Put a Boolean as a single byte.

		void Put_bool (bool x)
			{
			Put_uint8 (x ? 1 : 0);
			}

		/// Put a size_t as 8 bytes.

		void Put_size (size_t x)
			{
			static_assert (sizeof (size_t) <= 8, "size_t > 8 bytes");
			Put_uint64 (uint64 (x));
			}

		/// Get one 16-bit integer from stream and advance read position. 
		/// Byte swap if byte swapping is turned on.
		/// \retval One 16-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file 
		/// if not enough data in stream.

		int16 Get_int16 ()
			{
			return (int16) Get_uint16 ();
			}
			
		/// Put one 16-bit integer to stream and advance write position.
		/// Byte swap if byte swapping is turned on.
		/// \param x One 16-bit integer.

		void Put_int16 (int16 x)
			{
			Put_uint16 ((uint16) x);
			}

		/// Get one 32-bit integer from stream and advance read position. 
		/// Byte swap if byte swapping is turned on.
		/// \retval One 32-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.

		int32 Get_int32 ()
			{
			return (int32) Get_uint32 ();
			}
			
		/// Put one 32-bit integer to stream and advance write position.
		/// Byte swap if byte swapping is turned on.
		/// \param x One 32-bit integer.

		void Put_int32 (int32 x)
			{
			Put_uint32 ((uint32) x);
			}

		/// Put one dng_rect (as four sequential calls to Put_int32) and advance write position.
		/// Byte swap if byte swapping is turned on.
		/// \param x One dng_rect.
			
		void Put (const dng_rect &r);

		void Put (const dng_rect_real64 &r);

		/// Put one dng_fingerprint and advance write position.
		/// No byte swapping.
		/// \param x One dng_fingerprint.
			
		void Put (const dng_fingerprint &digest);

		void Put (const dng_point &pt);

		void Put (const dng_point_real64 &pt);

		void Put (const dng_srational &value);

		void Put (const dng_urational &value);

		void Put (const dng_string &value);

		/// Get one 64-bit integer from stream and advance read position. 
		/// Byte swap if byte swapping is turned on.
		/// \retval One 64-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.

		int64 Get_int64 ()
			{
			return (int64) Get_uint64 ();
			}
			
		/// Put one 64-bit integer to stream and advance write position.
		/// Byte swap if byte swapping is turned on.
		/// \param x One 64-bit integer.

		void Put_int64 (int64 x)
			{
			Put_uint64 ((uint64) x);
			}
			
		/// Get one 32-bit IEEE floating-point number from stream and advance 
		/// read position. Byte swap if byte swapping is turned on.
		/// \retval One 32-bit IEEE floating-point number.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file 
		/// if not enough data in stream.

		real32 Get_real32 ();
		
		/// Put one 32-bit IEEE floating-point number to stream and advance write
		/// position. Byte swap if byte swapping is turned on.
		/// \param x One 32-bit IEEE floating-point number.

		void Put_real32 (real32 x);
		
		/// Get one 64-bit IEEE floating-point number from stream and advance
		/// read position. Byte swap if byte swapping is turned on.
		/// \retval One 64-bit IEEE floating-point number .
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.

		real64 Get_real64 ();
		
		/// Put one 64-bit IEEE floating-point number to stream and advance write
		/// position. Byte swap if byte swapping is turned on.
		/// \param x One64-bit IEEE floating-point number.

		void Put_real64 (real64 x);
		
		/// Get an 8-bit character string from stream and advance read position.
		/// Routine always reads until a NUL character (8-bits of zero) is read.
		/// (That is, only maxLength bytes will be returned in buffer, but the
		/// stream is always advanced until a NUL is read or EOF is reached.)
		/// \param data Buffer in which string is returned.
		/// \param maxLength Maximum number of bytes to place in buffer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if stream runs out before NUL is seen.

		// CR-4208475 N-L4: Get_CString / Get_UString optionally bound the
		// number of stream bytes consumed while searching for the NUL
		// terminator. Callers that parse from a tag-local payload should
		// pass the declared payload length as maxStreamBytes so a malformed
		// non-terminated tag fails closed instead of consuming later file
		// bytes. Default UINT32_MAX preserves the original open-ended
		// behavior for existing callers.

		void Get_CString (char *data,
						  uint32 maxLength,
						  uint32 maxStreamBytes = 0xFFFFFFFFu);

		/// Puts an 8-bit character string from stream, including trailing NUL.
		/// \param data Buffer pointing to null terminated string.

		void Put_CString (const char *data);

		/// Get a 16-bit character string from stream and advance read position.
		/// 16-bit characters are truncated to 8-bits.
		/// Routine always reads until a NUL character (16-bits of zero) is read.
		/// (That is, only maxLength bytes will be returned in buffer, but the
		/// stream is always advanced until a NUL is read or EOF is reached.)
		/// \param data Buffer to place string in.
		/// \param maxLength Maximum number of bytes to place in buffer.
		/// \param maxStreamBytes Maximum number of stream bytes (not code
		/// units) that may be consumed before reaching the NUL terminator.
		/// Throws ThrowBadFormat if the bound is exceeded.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if stream runs out before NUL is seen.

		void Get_UString (char *data,
						  uint32 maxLength,
						  uint32 maxStreamBytes = 0xFFFFFFFFu);
						  
		/// Writes the specified number of zero bytes to stream.
		/// \param count Number of zero bytes to write.
		
		void PutZeros (uint64 count);
		
		/// Writes zeros to align the stream position to a multiple of 2.
		
		void PadAlign2 ();
		
		/// Writes zeros to align the stream position to a multiple of 4.
		
		void PadAlign4 ();
		
		/// Get a value of size indicated by tag type from stream and advance
		/// read position. Byte swap if byte swapping is turned on and tag type
		/// is larger than a byte. Value is returned as an unsigned 32-bit integer. 
		/// \param tagType Tag type of data stored in stream.
		/// \retval One unsigned 32-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.

		uint32 TagValue_uint32 (uint32 tagType);

		/// Get a value of size indicated by tag type from stream and advance
		/// read position. Byte swap if byte swapping is turned on and tag type
		/// is larger than a byte. Value is returned as an unsigned 64-bit integer.
		/// \param tagType Tag type of data stored in stream.
		/// \retval One unsigned 64-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.

		uint64 TagValue_uint64 (uint32 tagType);

		/// Get a value of size indicated by tag type from stream and advance read
		/// position. Byte swap if byte swapping is turned on and tag type is larger
		/// than a byte. Value is returned as a 32-bit integer. 
		/// \param tagType Tag type of data stored in stream.
		/// \retval One 32-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file 
		/// if not enough data in stream.

		int32 TagValue_int32 (uint32 tagType);
		
		/// Get a value of size indicated by tag type from stream and advance read
		/// position. Byte swap if byte swapping is turned on and tag type is larger
		/// than a byte. Value is returned as a 64-bit integer.
		/// \param tagType Tag type of data stored in stream.
		/// \retval One 64-bit integer.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.

		int64 TagValue_int64 (uint32 tagType);
		
		/// Get a value of size indicated by tag type from stream and advance read
		/// position. Byte swap if byte swapping is turned on and tag type is larger
		/// than a byte. Value is returned as a dng_urational. 
		/// \param tagType Tag type of data stored in stream.
		/// \retval One dng_urational.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.

		dng_urational TagValue_urational (uint32 tagType);

		/// Get a value of size indicated by tag type from stream and advance read
		/// position. Byte swap if byte swapping is turned on and tag type is larger
		/// than a byte. Value is returned as a dng_srational. 
		/// \param tagType Tag type of data stored in stream.
		/// \retval One dng_srational.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.
		
		dng_srational TagValue_srational (uint32 tagType);

		/// Get a value of size indicated by tag type from stream and advance read
		/// position. Byte swap if byte swapping is turned on and tag type is larger
		/// than a byte. Value is returned as a 64-bit IEEE floating-point number. 
		/// \param tagType Tag type of data stored in stream.
		/// \retval One 64-bit IEEE floating-point number.
		/// \exception dng_exception with fErrorCode equal to dng_error_end_of_file
		/// if not enough data in stream.

		real64 TagValue_real64 (uint32 tagType);

		/// Getter for sniffer associated with stream.
		/// \retval The sniffer for this stream.
		
		dng_abort_sniffer * Sniffer () const
			{
			return fSniffer;
			}
			
		/// Putter for sniffer associated with stream.
		/// \param sniffer The new sniffer to use (or NULL for none).
		
		void SetSniffer (dng_abort_sniffer *sniffer)
			{
			fSniffer = sniffer;
			}
			
		/// Copy a specified number of bytes to a target stream.
		/// \param dstStream The target stream.
		/// \param count The number of bytes to copy.
		
		virtual void CopyToStream (dng_stream &dstStream,
								   uint64 count);
								   
		/// Makes the target stream a copy of this stream.
		/// \param dstStream The target stream.
		
		void DuplicateStream (dng_stream &dstStream);
		
	};
	
/*****************************************************************************/

class dng_stream_double_buffered : public dng_stream
	{
	
	private:
	
		dng_stream &fStream;
		
	public:
	
		dng_stream_double_buffered (dng_stream &stream,
									uint32 bufferSize = kDefaultBufferSize)
		
			:	dng_stream ((dng_abort_sniffer *) NULL,
							bufferSize,
							stream.OffsetInOriginalFile ())
		
			,	fStream (stream)
		
			{
			SetBigEndian (fStream.BigEndian ());
			}
		
	protected:
	
		virtual uint64 DoGetLength ()
			{
			return fStream.Length ();
			}
	
		virtual void DoRead (void *data,
							 uint32 count,
							 uint64 offset)
			{
			fStream.SetReadPosition (offset);
			fStream.Get (data, count);
			}

	};

/*****************************************************************************/

class dng_stream_contiguous_read_hint
	{
	
	private:
	
		dng_stream &fStream;
		
		dng_memory_allocator &fAllocator;
		
		uint32 fOldBufferSize;
		
	public:
		
		dng_stream_contiguous_read_hint (dng_stream &stream,
										 dng_memory_allocator &allocator,
										 uint64 offset,
										 uint64 count);
		
		~dng_stream_contiguous_read_hint ();
	 
	};

/*****************************************************************************/

class TempBigEndian
	{
	
	private:
	
		dng_stream & fStream;
		
		bool fOldSwap;
		
	public:
	
		TempBigEndian (dng_stream &stream,
					   bool bigEndian = true);
						 
		virtual ~TempBigEndian ();
		
	};
			
/*****************************************************************************/

class TempLittleEndian: public TempBigEndian
	{
	
	public:
	
		TempLittleEndian (dng_stream &stream,
						  bool littleEndian = true)
			
			:	TempBigEndian (stream, !littleEndian)
			
			{
			}
	
		virtual ~TempLittleEndian ()
			{
			}

	};
				
/*****************************************************************************/

class TempStreamSniffer: private dng_uncopyable
	{
	
	private:
	
		dng_stream & fStream;
		
		dng_abort_sniffer *fOldSniffer;
		
	public:
	
		TempStreamSniffer (dng_stream &stream,
						   dng_abort_sniffer *sniffer);
						 
		~TempStreamSniffer ();
		
	};
				
/*****************************************************************************/

class PreserveStreamReadPosition: private dng_uncopyable
	{
	
	private:
	
		dng_stream & fStream;
	
		uint64 fPosition;
	
	public:
	
		PreserveStreamReadPosition (dng_stream &stream)

			:	fStream	  (stream)
			,	fPosition (stream.Position ())

			{
			}
			
		~PreserveStreamReadPosition ()
			{
			fStream.SetReadPosition (fPosition);
			}
	
	};
				
/*****************************************************************************/

#endif
				
/*****************************************************************************/
