/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_tile_iterator__
#define __dng_tile_iterator__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_point.h"
#include "dng_rect.h"
#include "dng_types.h"

#include <vector>

/*****************************************************************************/

class dng_base_tile_iterator
	{
		
	public:
		
		virtual ~dng_base_tile_iterator ()
			{
			}

		virtual bool GetOneTile (dng_rect &tile) = 0;		
		
	};

/*****************************************************************************/

class dng_tile_iterator: public dng_base_tile_iterator
	{
	
	protected:
	
		dng_rect fArea;
		
		int32 fTileWidth;
		int32 fTileHeight;
		
		int32 fTileTop;
		int32 fTileLeft;
		
		int32 fRowLeft;
		
		int32 fLeftPage;
		int32 fRightPage;
		
		int32 fTopPage;
		int32 fBottomPage;
		
		int32 fHorizontalPage;
		int32 fVerticalPage;
		
	public:
	
		dng_tile_iterator (const dng_image &image,
						   const dng_rect &area);
						   
		dng_tile_iterator (const dng_point &tileSize,
						   const dng_rect &area);
						   
		dng_tile_iterator (const dng_rect &tile,
						   const dng_rect &area);
						   
		virtual ~dng_tile_iterator ()
			{
			}

		virtual bool GetOneTile (dng_rect &tile);
		
	private:
	
		void Initialize (const dng_rect &tile,
						 const dng_rect &area);
	
	};

/*****************************************************************************/

typedef dng_tile_iterator dng_tile_forward_iterator;

/*****************************************************************************/

class dng_tile_reverse_iterator: public dng_base_tile_iterator
	{

	public:

		std::vector<dng_rect> fTiles;

		size_t fIndex;

	public:
		
		dng_tile_reverse_iterator (const dng_image &image,
								   const dng_rect &area);
						   
		dng_tile_reverse_iterator (const dng_point &tileSize,
								   const dng_rect &area);
						   
		dng_tile_reverse_iterator (const dng_rect &tile,
								   const dng_rect &area);
						   
		virtual ~dng_tile_reverse_iterator ()
			{
			}

		virtual bool GetOneTile (dng_rect &tile);
		
	private:
	
		void Initialize (dng_tile_iterator &iterator);
	
	};
		
/*****************************************************************************/

#endif
	
/*****************************************************************************/
