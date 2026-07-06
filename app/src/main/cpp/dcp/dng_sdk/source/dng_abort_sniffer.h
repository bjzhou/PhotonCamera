/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Classes supporting user cancellation and progress tracking.
 */

/*****************************************************************************/

#ifndef __dng_abort_sniffer__
#define __dng_abort_sniffer__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_flags.h"
#include "dng_string.h"
#include "dng_types.h"
#include "dng_uncopyable.h"

/*****************************************************************************/

/// \brief Thread priority level.

enum dng_priority
	{
	
	dng_priority_background = 0,
	dng_priority_low		= 1,
	dng_priority_medium		= 2,
	dng_priority_high		= 3,
	dng_priority_very_high	= 4,
	
	dng_priority_count,
	
	dng_priority_minimum = dng_priority_background,
	dng_priority_maximum = dng_priority_very_high
	
	};

/*****************************************************************************/

/// \brief Convenience class for setting thread priority level to minimum.

class dng_set_minimum_priority
	{
	
	private:
	
		dng_priority fPriority;

		dng_string fName;
	
	public:
	
		dng_set_minimum_priority (dng_priority priority,
								  const char *name);
		
		~dng_set_minimum_priority ();
	
	};

/*****************************************************************************/

/** \brief Class for signaling user cancellation and receiving progress updates.
 *
 * DNG SDK clients should derive a host application specific implementation
 * from this class.
 */

class dng_abort_sniffer
	{
	
	friend class dng_sniffer_task;
	
	private:
	
		dng_priority fPriority;

	public:
	
		dng_abort_sniffer ();

		virtual ~dng_abort_sniffer ();

		/// Getter for priority level.
		
		dng_priority Priority () const
			{
			return fPriority;
			}
			
		/// Setter for priority level.
		
		void SetPriority (dng_priority priority);

		/// Check for pending user cancellation or other abort. ThrowUserCanceled 
		/// will be called if one is pending. This static method is provided as a
		/// convenience for quickly testing for an abort and throwing an exception
		/// if one is pending.
		/// \param sniffer The dng_sniffer to test for a pending abort. Can be NULL,
		/// in which case there an abort is never signalled.

		static void SniffForAbort (dng_abort_sniffer *sniffer);
		
		// A way to call Sniff while bypassing the priority wait.
		
		void SniffNoPriorityWait ()
			{
			Sniff ();
			}
	
		// Specifies whether or not the sniffer may be called by multiple threads
		// in parallel. Default result is false. Subclass must override to return
		// true.
		
		virtual bool ThreadSafe () const
			{
			return false;
			}

		// Specifies whether or not this sniffer may participate in
		// priority-based waiting (sleep the current thread on which
		// SniffForAbort is called, if another thread has higher priority).
		// Default result is false. Subclass must override to return true.
		
		virtual bool SupportsPriorityWait () const;

		// Recommended time (in seconds) to wait between sniffs.
		// Default is 0.1 (i.e., 100 ms). Subclass can override to change this.

		virtual real64 SuggestedTimeBetweenSniffs () const
			{
			return 0.1;
			}

		// Intended to be called as a hint that the upcoming task is about to
		// take a long time and may block the thread, so if the goal is to
		// provide some initial visual hint to the user (e.g., an
		// indeterminate progress UX, etc.), now would be a good time to do
		// so. The default implementation does nothing.

		virtual void SniffSlowHint ()
			{
			}

	protected:
	
		/// Should be implemented by derived classes to check for an user
		/// cancellation.

		virtual void Sniff () = 0;
		
		/// Signals the start of a named task with processing in the DNG SDK.
		/// Tasks may be nested.
		/// \param name of the task
		/// \param fract Percentage of total processing this task is expected to
		/// take. From 0.0 to 1.0 .

		virtual void StartTask (const char *name,
								real64 fract);

		/// Signals the end of the innermost task that has been started.

		virtual void EndTask ();

		/// Signals progress made on current task.
		/// \param fract percentage of processing completed on current task.
		/// From 0.0 to 1.0 .

		virtual void UpdateProgress (real64 fract);

	};

/******************************************************************************/

/// \brief Class to establish scope of a named subtask in DNG processing.
///
/// Instances of this class are intended to be stack allocated.

class dng_sniffer_task: private dng_uncopyable
	{
	
	private:
	
		dng_abort_sniffer *fSniffer;
	
	public:
	
		/// Inform a sniffer of a subtask in DNG processing.
		/// \param sniffer The sniffer associated with the host on which this
		/// processing is occurring.
		/// \param name The name of this subtask as a NULL terminated string.
		/// \param fract Percentage of total processing this task is expected
		/// to take, from 0.0 to 1.0 . 

		dng_sniffer_task (dng_abort_sniffer *sniffer,
						  const char *name = NULL,
						  real64 fract = 0.0)
					 
			:	fSniffer (sniffer)
			
			{
			if (fSniffer)
				fSniffer->StartTask (name, fract);
			}
			
		virtual ~dng_sniffer_task ();

		/// Check for pending user cancellation or other abort. ThrowUserCanceled
		/// will be called if one is pending.

		void Sniff ()
			{
			dng_abort_sniffer::SniffForAbort (fSniffer);
			}

		/// Update progress on this subtask.
		/// \param fract Percentage of processing completed on current task,
		/// from 0.0 to 1.0 .

		void UpdateProgress (real64 fract)
			{
			if (fSniffer)
				fSniffer->UpdateProgress (fract);
			}
			
		/// Update progress on this subtask.
		/// \param done Amount of task completed in arbitrary integer units.
		/// \param total Total size of task in same arbitrary integer units as done.

		void UpdateProgress (uint32 done,
							 uint32 total)
			{
			UpdateProgress ((real64) done /
							(real64) total);
			}
		
		/// Signal task completed for progress purposes.

		void Finish ()
			{
			UpdateProgress (1.0);
			}
			
	};

/*****************************************************************************/

#endif

/*****************************************************************************/
