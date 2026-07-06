/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Representation of color temperature and offset (tint) using black body
 * radiator definition.
 */

#ifndef __dng_temperature__
#define __dng_temperature__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_types.h"

/*****************************************************************************/

// Runtime flag for enabling extended low-temperature behavior in
// dng_temperature.

void SetDNGEnableLowTemperatureLimit (bool enable);

bool GetDNGEnableLowTemperatureLimit ();

// Explicitly initialize the extended temperature LUT.
// Safe to call multiple times.

void InitExtendedTemperatureLUT ();

/*****************************************************************************/

class dng_temperature
	{
	
	private:
	
		real64 fTemperature;
		
		real64 fTint;
		
	public:
	
		dng_temperature ()
		
			:	fTemperature (0.0)
			,	fTint		 (0.0)
			
			{
			}
			
		dng_temperature (real64 temperature,
						 real64 tint)
		
			:	fTemperature (temperature)
			,	fTint		 (tint		 )
			
			{
			
			}
			
		dng_temperature (const dng_xy_coord &xy)
		
			:	fTemperature (0.0)
			,	fTint		 (0.0)
			
			{
			Set_xy_coord (xy);
			}
			
		void SetTemperature (real64 temperature)
			{
			fTemperature = temperature;
			}
			
		real64 Temperature () const
			{
			return fTemperature;
			}
			
		void SetTint (real64 tint)
			{
			fTint = tint;
			}
			
		real64 Tint () const
			{
			return fTint;
			}
			
		void Set_xy_coord (const dng_xy_coord &xy);
		
		dng_xy_coord Get_xy_coord () const;
			
	};

/*****************************************************************************/

#endif

/*****************************************************************************/
