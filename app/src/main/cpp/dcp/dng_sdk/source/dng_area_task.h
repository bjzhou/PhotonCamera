/*****************************************************************************/
// Copyright 2006-2022 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Class to handle partitioning a rectangular image processing operation taking
 * into account multiple processing resources and memory constraints.
 */

/*****************************************************************************/

#ifndef __dng_area_task__
#define __dng_area_task__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_image.h"
#include "dng_point.h"
#include "dng_string.h"
#include "dng_types.h"
#include "dng_uncopyable.h"

#include <functional>
#include <vector>

/*****************************************************************************/

class dng_area_task_progress: private dng_uncopyable
	{

	public:

		virtual ~dng_area_task_progress ()
			{
			}

		virtual void FinishedTile (const dng_rect & /* tile */) = 0;

	};

/*****************************************************************************/

/// \brief Abstract class for rectangular processing operations with support
/// for partitioning across multiple processing resources and observing memory
/// constraints.

class dng_area_task
	{
	
	protected:

		uint32 fMaxThreads;
	
		uint32 fMinTaskArea;
		
		dng_point fUnitCell;
		
		dng_point fMaxTileSize;

		dng_string fName;
	
	public:
	
		explicit dng_area_task (const char *name = "unnamed dng_area_task");
		
		virtual ~dng_area_task ();

		const char * Name () const
			{
			return fName.Get ();
			}

		/// Getter for the maximum number of threads (resources) that can be
		/// used for processing
		///
		/// \retval Number of threads, minimum of 1, that can be used for this task.

		virtual uint32 MaxThreads () const
			{
			return fMaxThreads;
			}

		/// Getter for minimum area of a partitioned rectangle.
		/// Often it is not profitable to use more resources if it requires
		/// partitioning the input into chunks that are too small, as the
		/// overhead increases more than the speedup. This method can be
		/// ovreridden for a specific task to indicate the smallest area for
		/// partitioning. Default is 256x256 pixels.
		///
		/// \retval Minimum area for a partitoned tile in order to give performant
		/// operation. (Partitions can be smaller due to small inputs and edge cases.)

		virtual uint32 MinTaskArea () const
			{
			return fMinTaskArea;
			}

		/// Getter for dimensions of which partitioned tiles should be a multiple.
		/// Various methods of processing prefer certain alignments. The
		/// partitioning attempts to construct tiles such that the sizes are a
		/// multiple of the dimensions of this point.
		///
		/// \retval a point giving preferred alignment in x and y

		virtual dng_point UnitCell () const
			{
			return fUnitCell;
			}

		/// Getter for maximum size of a tile for processing.
		/// Often processing will need to allocate temporary buffers or use
		/// other resources that are either fixed or in limited supply. The
		/// maximum tile size forces further partitioning if the tile is bigger
		/// than this size.
		///
		/// \retval Maximum tile size allowed for this area task.

		virtual dng_point MaxTileSize () const
			{
			return fMaxTileSize;
			}

		/// Getter for RepeatingTile1.
		/// RepeatingTile1, RepeatingTile2, and RepeatingTile3 are used to
		/// establish a set of 0 to 3 tile patterns for which the resulting
		/// partitions that the final Process method is called on will not cross
		/// tile boundaries in any of the tile patterns. This can be used for a
		/// processing routine that needs to read from two tiles and write to a
		/// third such that all the tiles are aligned and sized in a certain
		/// way. A RepeatingTile value is valid if it is non-empty. Higher
		/// numbered RepeatingTile patterns are only used if all lower ones are
		/// non-empty. A RepeatingTile pattern must be a multiple of UnitCell in
		/// size for all constraints of the partitioner to be met.

		virtual dng_rect RepeatingTile1 () const;
		
		/// Getter for RepeatingTile2.
		/// RepeatingTile1, RepeatingTile2, and RepeatingTile3 are used to
		/// establish a set of 0 to 3 tile patterns for which the resulting
		/// partitions that the final Process method is called on will not cross
		/// tile boundaries in any of the tile patterns. This can be used for a
		/// processing routine that needs to read from two tiles and write to a
		/// third such that all the tiles are aligned and sized in a certain
		/// way. A RepeatingTile value is valid if it is non-empty. Higher
		/// numbered RepeatingTile patterns are only used if all lower ones are
		/// non-empty. A RepeatingTile pattern must be a multiple of UnitCell in
		/// size for all constraints of the partitioner to be met.

		virtual dng_rect RepeatingTile2 () const;

		/// Getter for RepeatingTile3.
		/// RepeatingTile1, RepeatingTile2, and RepeatingTile3 are used to
		/// establish a set of 0 to 3 tile patterns for which the resulting
		/// partitions that the final Process method is called on will not cross
		/// tile boundaries in any of the tile patterns. This can be used for a
		/// processing routine that needs to read from two tiles and write to a
		/// third such that all the tiles are aligned and sized in a certain
		/// way. A RepeatingTile value is valid if it is non-empty. Higher
		/// numbered RepeatingTile patterns are only used if all lower ones are
		/// non-empty. A RepeatingTile pattern must be a multiple of UnitCell in
		/// size for all constraints of the partitioner to be met.
		
		virtual dng_rect RepeatingTile3 () const;

		/// Task startup method called before any processing is done on partitions.
		/// The Start method is called before any processing is done and can be
		/// overridden to allocate temporary buffers, etc.
		///
		/// \param threadCount Total number of threads that will be used for processing.
		/// Less than or equal to MaxThreads.
		/// \param dstArea Area to be processed in the current run of the task.
		/// \param tileSize Size of source tiles which will be processed.
		/// (Not all tiles will be this size due to edge conditions.)
		/// \param allocator dng_memory_allocator to use for allocating temporary buffers, etc.
		/// \param sniffer Sniffer to test for user cancellation and to set up progress.

		virtual void Start (uint32 threadCount,
							const dng_rect &dstArea,
							const dng_point &tileSize,
							dng_memory_allocator *allocator,
							dng_abort_sniffer *sniffer);

		/// Process one tile or fully partitioned area. This method is
		/// overridden by derived classes to implement the actual image
		/// processing. Note that the sniffer can be ignored if it is certain
		/// that a processing task will complete very quickly. This method
		/// should never be called directly but rather accessed via Process.
		/// There is no allocator parameter as all allocation should be done in
		/// Start.
		///
		/// \param threadIndex 0 to threadCount - 1 index indicating which thread this is.
		/// (Can be used to get a thread-specific buffer allocated in the Start method.)
		/// \param tile Area to process.
		/// \param sniffer dng_abort_sniffer to use to check for user cancellation
		/// and progress updates.

		virtual void Process (uint32 threadIndex,
							  const dng_rect &tile,
							  dng_abort_sniffer *sniffer) = 0;
		
		/// Task computation finalization and teardown method. Called after all
		/// resources have completed processing. Can be overridden to accumulate
		/// results and free resources allocated in Start.
		///
		/// \param threadCount Number of threads used for processing. Same as value passed to Start.

		virtual void Finish (uint32 threadCount);

		/// Find tile size taking into account repeating tiles, unit cell, and maximum tile size.
		/// \param area Computation area for which to find tile size.
		/// \retval Tile size as height and width in point.

		dng_point FindTileSize (const dng_rect &area) const;

		/// Handle one resource's worth of partitioned tiles. Called after
		/// thread partitioning has already been done. Area may be further
		/// subdivided to handle maximum tile size, etc. It will be rare to
		/// override this method.
		///
		/// \param threadIndex 0 to threadCount - 1 index indicating which thread this is.
		/// \param area Tile area partitioned to this resource.
		/// \param tileSize size of tiles to use for processing.
		/// \param sniffer dng_abort_sniffer to use to check for user cancellation and progress updates.
		/// \param progress optional pointer to progress reporting object.

		void ProcessOnThread (uint32 threadIndex,
							  const dng_rect &area,
							  const dng_point &tileSize,
							  dng_abort_sniffer *sniffer,
							  dng_area_task_progress *progress);

		/// Factory method to make a tile iterator. This iterator will be used
		/// by a thread to process tiles in an area in a specific order. The
		/// default implementation uses a forward iterator that visits tiles
		/// from left to right (inner), top down (outer). Subclasses can
		/// override this method to produce tile iterators that visit tiles in
		/// different orders.
		///
		/// \param threadIndex 0 to threadCount - 1 index indicating which thread this is.
		/// \param tile The tile to be traversed within the tile area.
		/// \param area Tile area partitioned to this resource.

		virtual dng_base_tile_iterator * MakeTileIterator (uint32 threadIndex,
														   const dng_rect &tile,
														   const dng_rect &area) const;

		/// Factory method to make a tile iterator. This iterator will be used
		/// by a thread to process tiles in an area in a specific order. The
		/// default implementation uses a forward iterator that visits tiles
		/// from left to right (inner), top down (outer). Subclasses can
		/// override this method to produce tile iterators that visit tiles in
		/// different orders.
		///
		/// \param threadIndex 0 to threadCount - 1 index indicating which thread this is.
		/// \param tileSize The tile size to be traversed within the tile area.
		/// \param area Tile area partitioned to this resource.

		virtual dng_base_tile_iterator * MakeTileIterator (uint32 threadIndex,
														   const dng_point &tileSize,
														   const dng_rect &area) const;

		/// Default resource partitioner that assumes a single resource to be
		/// used for processing. Implementations that are aware of multiple
		/// processing resources should override (replace) this method. This is
		/// usually done in dng_host::PerformAreaTask.
		///
		/// \param task The task to perform.
		/// \param area The area on which mage processing should be performed.
		/// \param allocator dng_memory_allocator to use for allocating temporary buffers, etc.
		/// \param sniffer dng_abort_sniffer to use to check for user cancellation and progress updates.
		/// \param progress optional pointer to progress reporting object.

		static void Perform (dng_area_task &task,
							 const dng_rect &area,
							 dng_memory_allocator *allocator,
							 dng_abort_sniffer *sniffer,
							 dng_area_task_progress *progress);

	};

/*****************************************************************************/

class dng_range_parallel_task: public dng_area_task, dng_uncopyable
	{

	private:

		static const int32 kDummySize = 16;

	protected:
	
		dng_host &fHost;

		const int32 fStartIndex;
		const int32 fStopIndex;
		
		std::vector<int32> fIndices;

	public:
	
		dng_range_parallel_task (dng_host &host,
								int32 startIndex,
								int32 stopIndex,
								const char *name = NULL);

		void Run ();

		virtual uint32 RecommendedThreadCount () const;

		virtual int32 MinIndicesPerThread () const;

		virtual void Prepare (uint32 threadCount,
							  dng_memory_allocator *allocator,
							  dng_abort_sniffer *sniffer);

		virtual void ProcessRange (uint32 threadIndex,
								   int32 startIndex,
								   int32 stopIndex,
								   dng_abort_sniffer *sniffer) = 0;

		void Start (uint32 threadCount,
					const dng_rect &dstArea,
					const dng_point &tileSize,
					dng_memory_allocator *allocator,
					dng_abort_sniffer *sniffer) override;
	
		void Process (uint32 threadIndex,
					  const dng_rect & /* tile */,
					  dng_abort_sniffer *sniffer) override;

	public:

		class info
			{

			public:

				int32  fBegin;
				int32  fEnd;
				uint32 fMinIndicesPerThread;
				uint32 fRecommendedThreadCount; // 0 = automatic

			public:

				info (int32 begin,
					  int32 end,
					  uint32 minIndicesPerThread = 1,
					  uint32 recommendedThreadCount = 0)

					:	fBegin					(begin)
					,	fEnd					(end)
					,	fMinIndicesPerThread	(minIndicesPerThread)
					,	fRecommendedThreadCount (recommendedThreadCount)
						
					{

					}
					  
			};
		
		struct range
			{
			uint32 fThreadIndex;
			int32 fBegin;
			int32 fEnd;
			dng_abort_sniffer *fSniffer;
			dng_memory_allocator *fAllocator;
			};
		
		typedef std::function<void(const range &)> function_t;

		static void Do (dng_host &host,
						const info &params,
						const char *taskName,
						const function_t &func);
		
	};

/*****************************************************************************/

class dng_get_buffer_task : public dng_area_task
	{
		
	private:

		const dng_image &fSrc;

		dng_pixel_buffer &fDst;

		const dng_image::edge_option fEdgeOption;

	public:

		dng_get_buffer_task (const dng_image &image,
							 dng_pixel_buffer &buffer,
							 dng_image::edge_option edgeOption = dng_image::edge_repeat)
			
			:	dng_area_task ("dng_get_buffer_task")
				
			,	fSrc (image)
			,	fDst (buffer)

			,	fEdgeOption (edgeOption)
				
			{
			
			}

		dng_rect RepeatingTile1 () const override;
			
		void Process (uint32 /* threadIndex */,
					  const dng_rect &tile,
					  dng_abort_sniffer * /* sniffer */) override;
		
	};

/*****************************************************************************/

class dng_copy_buffer_task : public dng_area_task
	{
		
	private:

		const dng_pixel_buffer &fSrc;

		dng_pixel_buffer &fDst;

	public:

		dng_copy_buffer_task (const dng_pixel_buffer &src,
							  dng_pixel_buffer &dst);

		dng_rect RepeatingTile1 () const override;
			
		void Process (uint32 /* threadIndex */,
					  const dng_rect &tile,
					  dng_abort_sniffer * /* sniffer */) override;
		
	};

/*****************************************************************************/

class dng_put_buffer_task : public dng_area_task
	{
		
	private:

		const dng_pixel_buffer &fSrc;

		dng_image &fDst;

	public:

		dng_put_buffer_task (const dng_pixel_buffer &buffer,
							 dng_image &image)
			
			:	dng_area_task ("dng_put_buffer_task")
				
			,	fSrc (buffer)
				
			,	fDst (image)
				
			{
			
			}

		dng_rect RepeatingTile1 () const override;
			
		void Process (uint32 /* threadIndex */,
					  const dng_rect &tile,
					  dng_abort_sniffer * /* sniffer */) override;
		
	};

/*****************************************************************************/

#endif	// __dng_area_task__
	
/*****************************************************************************/
