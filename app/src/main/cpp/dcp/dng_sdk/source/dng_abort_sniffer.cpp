/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_abort_sniffer.h"
#include "dng_assertions.h"

#include "dng_mutex.h"

/*****************************************************************************/

#if qDNGThreadSafe

/*****************************************************************************/

// TO DO: This priority-based wait mechanism is not compatible with thread
// pools. Putting worker threads to sleep may result in deadlock because
// higher priority work may not make progress (the pool may not be able to
// spin up any new threads).

class dng_priority_manager
	{
	
	private:

		// Use lower-level mutex and condition_variable for priority manager
		// since we don't want to include these in our priority tracking.

		dng_mutex fMutex;

		dng_condition fCondition;
		
		uint32 fCounter [dng_priority_count];
		
	public:
	
		dng_priority_manager ();
		
		void Increment (dng_priority priority,
						const char *name);
	
		void Decrement (dng_priority priority,
						const char *name);
		
		void Wait (dng_abort_sniffer *sniffer);

	private:
	
		dng_priority MinPriority ()
			{
			
			// Assumes mutex is locked.
			
			for (uint32 level = dng_priority_maximum;
				 level > dng_priority_minimum;
				 level--)
				{
				
				if (fCounter [level])
					{
					return (dng_priority) level;
					}
					
				}
				
			return dng_priority_minimum;
			
			}
		
	};

/*****************************************************************************/

dng_priority_manager::dng_priority_manager ()

	:	fMutex	   ("dng_priority_manager::fMutex")
	,	fCondition ()
	
	{
	
	for (uint32 level = dng_priority_minimum;
		 level <= dng_priority_maximum;
		 level++)
		{
		
		fCounter [level] = 0;
		
		}
	
	}

/*****************************************************************************/

void dng_priority_manager::Increment (dng_priority priority,
									  const char *name)
	{
	
	dng_lock_mutex lock (&fMutex);

	fCounter [priority] += 1;

	#if 0

	printf ("increment priority %d (%s) (%d, %d, %d, %d, %d)\n", 
			(int) priority,
			name,
			fCounter [dng_priority_background],
			fCounter [dng_priority_low],
			fCounter [dng_priority_medium],
			fCounter [dng_priority_high]
			fCounter [dng_priority_very_high]);

	#else

	(void) name;
	
	#endif

	}

/*****************************************************************************/

void dng_priority_manager::Decrement (dng_priority priority,
									  const char *name)
	{

	dng_priority oldMin = dng_priority_minimum;
	dng_priority newMin = dng_priority_minimum;

		{

		dng_lock_mutex lock (&fMutex);

		oldMin = MinPriority ();

		fCounter [priority] -= 1;

		newMin = MinPriority ();

		#if 0

		printf ("decrement priority %d (%s) (%d, %d, %d)\n", 
				(int) priority,
				name,
				fCounter [dng_priority_low],
				fCounter [dng_priority_medium],
				fCounter [dng_priority_high]);

		#else

		(void) name;

		#endif
	
		}
	
	if (newMin < oldMin)
		{

		fCondition.Broadcast ();
		
		}
	
	}
		
/*****************************************************************************/

void dng_priority_manager::Wait (dng_abort_sniffer *sniffer)
	{

	if (!sniffer)
		{
		return;
		}

	const dng_priority priority = sniffer->Priority ();

	if (priority < dng_priority_maximum)
		{
		
		dng_lock_mutex lock (&fMutex);

		while (priority < MinPriority ())
			{
			
			fCondition.Wait (fMutex);

			}
		
		}

	}
		
/*****************************************************************************/

static dng_priority_manager gPriorityManager;

/*****************************************************************************/

#endif	// qDNGThreadSafe

/*****************************************************************************/

dng_set_minimum_priority::dng_set_minimum_priority (dng_priority priority,
													const char *name)

	:	fPriority (priority)

	{
	
	#if qDNGThreadSafe

	gPriorityManager.Increment (fPriority, name);
	
	#endif

	fName.Set (name);
	
	}

/*****************************************************************************/

dng_set_minimum_priority::~dng_set_minimum_priority ()
	{

	#if qDNGThreadSafe

	gPriorityManager.Decrement (fPriority, fName.Get ());
	
	#endif
	
	}

/*****************************************************************************/

dng_abort_sniffer::dng_abort_sniffer ()	

	:	fPriority (dng_priority_maximum)

	{
	
	}

/*****************************************************************************/

dng_abort_sniffer::~dng_abort_sniffer ()
	{
	
	}

/*****************************************************************************/

void dng_abort_sniffer::SetPriority (dng_priority priority)
	{
	
	fPriority = priority;

	}

/*****************************************************************************/

bool dng_abort_sniffer::SupportsPriorityWait () const
	{
	return false;
	}

/*****************************************************************************/

void dng_abort_sniffer::SniffForAbort (dng_abort_sniffer *sniffer)
	{

	if (sniffer)
		{

		#if qDNGThreadSafe

		if (sniffer->SupportsPriorityWait ())
			{
		
			gPriorityManager.Wait (sniffer);

			}
		
		#endif
	
		sniffer->Sniff ();
		
		}
			
	}

/*****************************************************************************/

void dng_abort_sniffer::StartTask (const char * /* name */,
								   real64 /* fract */)
	{
	
	}

/*****************************************************************************/

void dng_abort_sniffer::EndTask ()
	{
	
	}

/*****************************************************************************/

void dng_abort_sniffer::UpdateProgress (real64 /* fract */)
	{
	
	}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

dng_sniffer_task:: ~dng_sniffer_task ()
	{

	try
		{

		if (fSniffer)
			fSniffer->EndTask ();

		}

	catch (...)
		{

		}

	}
