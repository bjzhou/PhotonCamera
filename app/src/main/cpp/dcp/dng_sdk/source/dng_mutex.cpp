/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#include "dng_abort_sniffer.h"
#include "dng_mutex.h"

#include "dng_assertions.h"
#include "dng_exceptions.h"

#include <stdlib.h>

/*****************************************************************************/

// do mutex lock level tracking, asserts stripped in non-debug so don't track there
#ifndef qDNGThreadTestMutexLevels
#define qDNGThreadTestMutexLevels (qDNGThreadSafe && qDNGDebug)
#endif

#if qDNGThreadTestMutexLevels
namespace
	{
		
	class InnermostMutexHolder
		{
		
		private:

			pthread_key_t fInnermostMutexKey;

		public:

			InnermostMutexHolder ()
			
				:	fInnermostMutexKey ()
				
				{

				int result = pthread_key_create (&fInnermostMutexKey, NULL);

				DNG_ASSERT (result == 0, "pthread_key_create failed.");

				if (result != 0)
					ThrowProgramError ();

				}

			~InnermostMutexHolder ()
				{
				
				pthread_key_delete (fInnermostMutexKey);
				
				}

			void SetInnermostMutex (dng_mutex *mutex)
				{

				int result;

				result = pthread_setspecific (fInnermostMutexKey, (void *)mutex);

				DNG_ASSERT (result == 0, "pthread_setspecific failed.");

				(void) result;

				#if 0		// Hard failure here was causing crash on quit.
				
				if (result != 0)
					ThrowProgramError ();
					
				#endif

				}

			dng_mutex *GetInnermostMutex ()
				{

				void *result = pthread_getspecific (fInnermostMutexKey);

				return reinterpret_cast<dng_mutex *> (result);

				}

		};

	InnermostMutexHolder gInnermostMutexHolder;
	
	}

#endif

/*****************************************************************************/

dng_mutex::dng_mutex (const char *mutexName, uint32 mutexLevel)

	#if qDNGThreadSafe
	
	:	fPthreadMutex		()
	,	fMutexLevel			(mutexLevel)
	,	fRecursiveLockCount (0)
	,	fPrevHeldMutex		(NULL)
	,	fMutexName			(mutexName)
	
	#endif
	
	{
	
	#if qDNGThreadSafe

	#if qWinOS
	
	// Win is already a recursive mutex by default
	if (pthread_mutex_init (&fPthreadMutex, NULL) != 0)
		{
		ThrowMemoryFull ();
		}
		
	#else
	
	// make recursive mutex, can lock within itself
	pthread_mutexattr_t	  mta;
	pthread_mutexattr_init(&mta);
	pthread_mutexattr_settype(&mta, PTHREAD_MUTEX_RECURSIVE);
		
	if (pthread_mutex_init (&fPthreadMutex, &mta) != 0)
		{
		ThrowMemoryFull ();
		}
	#endif
	
	#endif

	}

/*****************************************************************************/

dng_mutex::~dng_mutex ()
	{
	
	#if qDNGThreadSafe

	pthread_mutex_destroy (&fPthreadMutex);

	#endif

	}

/*****************************************************************************/

void dng_mutex::Lock ()
	{

	#if qDNGThreadSafe
	#if qDNGThreadTestMutexLevels

	dng_mutex *innermostMutex = gInnermostMutexHolder.GetInnermostMutex ();

	if (innermostMutex != NULL)
		{

		if (innermostMutex == this)
			{

			int result = pthread_mutex_lock (&fPthreadMutex);

			if (result != 0)
				{

				DNG_ASSERT (result == 0, "pthread_mutex_lock failed.");

				ThrowProgramError ();

				}

			fRecursiveLockCount++;

			return;

			}

		bool lockOrderPreserved = fMutexLevel > innermostMutex->fMutexLevel;
			
		// to allow cloning of class internals both with a dng_mutex and get closer to the C++ mutex,
		//	test for MutexLevelIgnore and don't generate level violations
		if (!lockOrderPreserved)
			{
				
			if ((fMutexLevel == kDNGMutexLevelIgnore) || (innermostMutex->fMutexLevel == kDNGMutexLevelIgnore))
				lockOrderPreserved = true;
				
			}
		   
		if (!lockOrderPreserved)
			{
				
			char msg [1024];
				
			snprintf (msg,
					  1024,
					  "Lock order violation: This mutex: %s v Innermost mutex: %s",
					  this->MutexName (),
					  innermostMutex->MutexName ());
				
			DNG_REPORT(msg); // asserts inside of mutex lock, any locks within that must be lower
				
			}

		}

	int result = pthread_mutex_lock (&fPthreadMutex);

	if (result != 0)
		{

		DNG_ASSERT (result == 0, "pthread_mutex_lock failed.");

		ThrowProgramError ();

		}

	fPrevHeldMutex = innermostMutex;

	gInnermostMutexHolder.SetInnermostMutex (this);

	#else
	 
	// Register the fact that we're trying to lock this mutex.

	int result = pthread_mutex_lock (&fPthreadMutex);

	if (result != 0)
		{

		DNG_REPORT ("pthread_mutex_lock failed");

		ThrowProgramError ();
		
		}

	// Register the fact that we've now successfully acquired the mutex.

	#endif
	#endif
		
	}

/*****************************************************************************/

void dng_mutex::Unlock ()
	{
	
	#if qDNGThreadSafe
	#if qDNGThreadTestMutexLevels
	
	DNG_ASSERT (gInnermostMutexHolder.GetInnermostMutex () == this, "Mutexes unlocked out of order!!!");

	if (fRecursiveLockCount > 0)
		{
			
		fRecursiveLockCount--;

		pthread_mutex_unlock (&fPthreadMutex);
			
		return;

		}

	gInnermostMutexHolder.SetInnermostMutex (fPrevHeldMutex);

	fPrevHeldMutex = NULL;

	#endif

	pthread_mutex_unlock (&fPthreadMutex);

	#endif
		
	}

/*****************************************************************************/

const char *dng_mutex::MutexName () const
	{
	
	#if qDNGThreadSafe
	
	if (fMutexName)
		return fMutexName;
	
	#endif
	
	return "< unknown >";
	
	}

/*****************************************************************************/

dng_lock_mutex::dng_lock_mutex (dng_mutex *mutex)

	:	fMutex (mutex)
	
	{
	
	if (fMutex)
		fMutex->Lock ();
		
	}

/*****************************************************************************/

dng_lock_mutex::dng_lock_mutex (dng_mutex &mutex)

	:	fMutex (&mutex)
	
	{
	
	if (fMutex)
		fMutex->Lock ();
		
	}

/*****************************************************************************/

dng_lock_mutex::~dng_lock_mutex ()
	{
	
	if (fMutex)
		fMutex->Unlock ();
		
	}

/*****************************************************************************/

dng_unlock_mutex::dng_unlock_mutex (dng_mutex *mutex)

	:	fMutex (mutex)
	
	{
	
	if (fMutex)
		fMutex->Unlock ();
		
	}

/*****************************************************************************/

dng_unlock_mutex::dng_unlock_mutex (dng_mutex &mutex)

	:	fMutex (&mutex)
	
	{
	
	if (fMutex)
		fMutex->Unlock ();
		
	}

/*****************************************************************************/

dng_unlock_mutex::~dng_unlock_mutex ()
	{
	
	if (fMutex)
		fMutex->Lock ();
		
	}

/*****************************************************************************/

dng_condition::dng_condition ()

#if qDNGThreadSafe
	:	fPthreadCondition ()
#endif

	{

#if qDNGThreadSafe
	int result;

	result = pthread_cond_init (&fPthreadCondition, NULL);

	DNG_ASSERT (result == 0, "pthread_cond_init failed.");

	if (result != 0)
		{
		ThrowProgramError ();
		}
#endif

	}

/*****************************************************************************/

dng_condition::~dng_condition ()
	{
#if qDNGThreadSafe
	pthread_cond_destroy (&fPthreadCondition);
#endif
	}

/*****************************************************************************/

bool dng_condition::Wait (dng_mutex &mutex, double timeoutSecs)
	{

#if qDNGThreadSafe
	bool timedOut = false;

	#if qDNGThreadTestMutexLevels
		
	dng_mutex *innermostMutex = gInnermostMutexHolder.GetInnermostMutex ();

	DNG_ASSERT (innermostMutex == &mutex, "Attempt to wait on non-innermost mutex.");

	(void) innermostMutex;

	innermostMutex = mutex.fPrevHeldMutex;

	gInnermostMutexHolder.SetInnermostMutex (innermostMutex);

	mutex.fPrevHeldMutex = NULL;
		
	#endif
		
	if (timeoutSecs < 0)
		{
		
		pthread_cond_wait (&fPthreadCondition, &mutex.fPthreadMutex);
		
		}
		
	else
		{
		
		struct timespec now;

		dng_pthread_now (&now);

		timeoutSecs += now.tv_sec;
		timeoutSecs += now.tv_nsec / 1000000000.0;

		now.tv_sec	= (long) timeoutSecs;
		now.tv_nsec = (long) ((timeoutSecs - now.tv_sec) * 1000000000);

		#if defined(_MSC_VER) && _MSC_VER >= 1900 
		
		struct dng_timespec tempNow;
		
		tempNow.tv_sec = (long) now.tv_sec;
		tempNow.tv_nsec = now.tv_nsec;

		timedOut = (pthread_cond_timedwait (&fPthreadCondition, &mutex.fPthreadMutex, &tempNow) == ETIMEDOUT);

		#else

		timedOut = (pthread_cond_timedwait (&fPthreadCondition, &mutex.fPthreadMutex, &now) == ETIMEDOUT);

		#endif

		}

	#if qDNGThreadTestMutexLevels
	
	mutex.fPrevHeldMutex = innermostMutex;

	gInnermostMutexHolder.SetInnermostMutex (&mutex);
	
	#endif
		
	return !timedOut;
#else
	return true;
#endif

	}

/*****************************************************************************/

void dng_condition::Signal ()
	{

#if qDNGThreadSafe
	int result;

	result = pthread_cond_signal (&fPthreadCondition);

	DNG_ASSERT (result == 0, "pthread_cond_signal failed.");

	if (result != 0)
		ThrowProgramError ();
#endif

	}

/*****************************************************************************/

void dng_condition::Broadcast ()
	{
#if qDNGThreadSafe

	int result;

	result = pthread_cond_broadcast (&fPthreadCondition);

	DNG_ASSERT (result == 0, "pthread_cond_broadcast failed.");

	if (result != 0)
		ThrowProgramError ();
#endif
	}

/*****************************************************************************/
