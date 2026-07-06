/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_tile_iterator.h"

#include "dng_exceptions.h"
#include "dng_image.h"
#include "dng_pixel_buffer.h"
#include "dng_safe_arithmetic.h"
#include "dng_tag_types.h"
#include "dng_utils.h"
		
/*****************************************************************************/

dng_tile_iterator::dng_tile_iterator (const dng_image &image,
									  const dng_rect &area)
									  
	:	fArea			()
	,	fTileWidth		(0)
	,	fTileHeight		(0)
	,	fTileTop		(0)
	,	fTileLeft		(0)
	,	fRowLeft		(0)
	,	fLeftPage		(0)
	,	fRightPage		(0)
	,	fTopPage		(0)
	,	fBottomPage		(0)
	,	fHorizontalPage (0)
	,	fVerticalPage	(0)
	
	{
	
	Initialize (image.RepeatingTile (),
				area & image.Bounds ());
				
	}
						   
/*****************************************************************************/

dng_tile_iterator::dng_tile_iterator (const dng_point &tileSize,
									  const dng_rect &area)
									  
	:	fArea			()
	,	fTileWidth		(0)
	,	fTileHeight		(0)
	,	fTileTop		(0)
	,	fTileLeft		(0)
	,	fRowLeft		(0)
	,	fLeftPage		(0)
	,	fRightPage		(0)
	,	fTopPage		(0)
	,	fBottomPage		(0)
	,	fHorizontalPage (0)
	,	fVerticalPage	(0)
	
	{
	
	dng_rect tile (area);
	
	tile.b = Min_int32 (tile.b, tile.t + tileSize.v);
	tile.r = Min_int32 (tile.r, tile.l + tileSize.h);
	
	Initialize (tile,
				area);
	
	}
						   
/*****************************************************************************/

dng_tile_iterator::dng_tile_iterator (const dng_rect &tile,
									  const dng_rect &area)
									  
	:	fArea			()
	,	fTileWidth		(0)
	,	fTileHeight		(0)
	,	fTileTop		(0)
	,	fTileLeft		(0)
	,	fRowLeft		(0)
	,	fLeftPage		(0)
	,	fRightPage		(0)
	,	fTopPage		(0)
	,	fBottomPage		(0)
	,	fHorizontalPage (0)
	,	fVerticalPage	(0)
	
	{
	
	Initialize (tile,
				area);
	
	}
						   
/*****************************************************************************/

void dng_tile_iterator::Initialize (const dng_rect &tile,
									const dng_rect &area)
	{
	
	fArea = area;
	
	if (area.IsEmpty ())
		{
		
		fVerticalPage =	 0;
		fBottomPage	  = -1;
		
		return;
		
		}
	
	int32 vOffset = tile.t;
	int32 hOffset = tile.l;
	
	int32 tileHeight = tile.b - vOffset;
	int32 tileWidth	 = tile.r - hOffset;

	if (tileWidth <= 0 || tileHeight <= 0)
		{

		fVerticalPage =  0;
		fBottomPage	  = -1;

		return;

		}

	fTileHeight = tileHeight;
	fTileWidth	= tileWidth;

	// CR-4208475 N-L14: residual to M-M7. Bring the page-index derivation
	// in line with the safe seed math by routing the int32 subtractions
	// through SafeInt32Sub so pathological caller-API combinations of
	// fArea / hOffset / vOffset cannot wrap before the divide.

	fLeftPage  = SafeInt32Sub (fArea.l, hOffset) / tileWidth;
	fRightPage = SafeInt32Sub (SafeInt32Sub (fArea.r, hOffset), 1) / tileWidth;

	fHorizontalPage = fLeftPage;

	fTopPage	= SafeInt32Sub (fArea.t, vOffset) / tileHeight;
	fBottomPage = SafeInt32Sub (SafeInt32Sub (fArea.b, vOffset), 1) / tileHeight;

	fVerticalPage = fTopPage;

	// CR-4208475 M-M7: Compute initial tile origin with overflow-checked
	// int32 arithmetic. The raw multiplies (fHorizontalPage * tileWidth,
	// fVerticalPage * tileHeight) and the subsequent adds with hOffset /
	// vOffset can overflow int32 on pathological page indices or huge
	// tile dimensions, producing signed-overflow undefined behavior. The
	// per-step increments in GetOneTile (fTileLeft += fTileWidth,
	// fTileTop += fTileHeight) and tile.b / tile.r construction stay
	// bounded by these initial values plus a finite number of per-tile
	// increments, so guarding the seeds is sufficient.

	fTileLeft = SafeInt32Add (SafeInt32Mult (fHorizontalPage, tileWidth),
							  hOffset);

	fTileTop = SafeInt32Add (SafeInt32Mult (fVerticalPage, tileHeight),
							 vOffset);

	fRowLeft = fTileLeft;
			
	}
									  
/*****************************************************************************/

bool dng_tile_iterator::GetOneTile (dng_rect &tile)
	{
	
	if (fVerticalPage > fBottomPage)
		{
		return false;
		}

	if (fVerticalPage > fTopPage)
		tile.t = fTileTop;
	else
		tile.t = fArea.t;

	// CR-4208475 N-L14: residual to M-M7. Bound each tile.r / tile.b
	// computation and each per-step increment through SafeInt32Add.
	// M-M7 already proved seeds are safe and the per-step values stay
	// within the bounded final tile position; routing through
	// SafeInt32Add closes the contract explicitly.

	if (fVerticalPage < fBottomPage)
		tile.b = SafeInt32Add (fTileTop, fTileHeight);
	else
		tile.b = fArea.b;

	if (fHorizontalPage > fLeftPage)
		tile.l = fTileLeft;
	else
		tile.l = fArea.l;

	if (fHorizontalPage < fRightPage)
		tile.r = SafeInt32Add (fTileLeft, fTileWidth);
	else
		tile.r = fArea.r;

	if (fHorizontalPage < fRightPage)
		{
		fHorizontalPage++;
		fTileLeft = SafeInt32Add (fTileLeft, fTileWidth);
		}

	else
		{

		fVerticalPage++;
		fTileTop = SafeInt32Add (fTileTop, fTileHeight);

		fHorizontalPage = fLeftPage;
		fTileLeft = fRowLeft;

		}
		
	return true;
	
	}

/*****************************************************************************/

dng_tile_reverse_iterator::dng_tile_reverse_iterator (const dng_image &image,
													  const dng_rect &area)

	:	fTiles ()

	,	fIndex (0)

	{
	
	dng_tile_forward_iterator iterator (image, area);

	Initialize (iterator);

	}

/*****************************************************************************/

dng_tile_reverse_iterator::dng_tile_reverse_iterator (const dng_point &tileSize,
													  const dng_rect &area)

	:	fTiles ()

	,	fIndex (0)

	{
	
	dng_tile_forward_iterator iterator (tileSize, area);

	Initialize (iterator);
	
	}
						   
/*****************************************************************************/

dng_tile_reverse_iterator::dng_tile_reverse_iterator (const dng_rect &tile,
													  const dng_rect &area)

	:	fTiles ()

	,	fIndex (0)

	{
	
	dng_tile_forward_iterator iterator (tile, area);

	Initialize (iterator);
	
	}
	
/*****************************************************************************/

bool dng_tile_reverse_iterator::GetOneTile (dng_rect &tile)
	{
	
	if (fIndex == 0)
		{
		
		return false;
		
		}

	fIndex--;
	
	tile = fTiles [fIndex];

	return true;

	}

/*****************************************************************************/

void dng_tile_reverse_iterator::Initialize (dng_tile_forward_iterator &iterator)
	{
	
	dng_rect tile;

	while (iterator.GetOneTile (tile))
		{
		
		fTiles.push_back (tile);
		
		}

	fIndex = fTiles.size ();
	
	}

/*****************************************************************************/
