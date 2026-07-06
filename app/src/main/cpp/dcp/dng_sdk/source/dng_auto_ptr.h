/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * Class to implement std::auto_ptr like functionality even on platforms which do not
 * have a full Standard C++ library.
 */

/*****************************************************************************/

#ifndef __dng_auto_ptr__
#define __dng_auto_ptr__

#include <memory>
#include <stddef.h>
#include <stdlib.h>

#include "dng_memory.h"
#include "dng_uncopyable.h"

/*****************************************************************************/

// The following template has similar functionality to the STL auto_ptr, without
// requiring all the weight of STL.

/*****************************************************************************/

/// \brief A class intended to be used in stack scope to hold a pointer from new. The
/// held pointer will be deleted automatically if the scope is left without calling
/// Release on the AutoPtr first.

template<class T>
class AutoPtr: private dng_uncopyable
	{
	
	private:
	
		T *p_;
		
	public:

		/// Construct an AutoPtr with no referent.

		AutoPtr () : p_ (0) { }
	
		/// Construct an AutoPtr which owns the argument pointer.
		/// \param p pointer which constructed AutoPtr takes ownership of. p will be
		/// deleted on destruction or Reset unless Release is called first.

		explicit AutoPtr (T *p) :  p_( p ) { }

		/// Reset is called on destruction.

		~AutoPtr ();

		/// Call Reset with a pointer from new. Uses T's default constructor.

		void Alloc ();

		/// Return the owned pointer of this AutoPtr, NULL if none. No change in
		/// ownership or other effects occur.

		T *Get () const { return p_; }

		/// Return the owned pointer of this AutoPtr, NULL if none. The AutoPtr gives
		/// up ownership and takes NULL as its value.

		T *Release ();

		/// If a pointer is owned, it is deleted. Ownership is taken of passed in
		/// pointer.
		/// \param p pointer which constructed AutoPtr takes ownership of. p will be
		/// deleted on destruction or Reset unless Release is called first.

		void Reset (T *p);

		/// If a pointer is owned, it is deleted and the AutoPtr takes NULL as its
		/// value.

		void Reset ();

		/// Allows members of the owned pointer to be accessed directly. It is an
		/// error to call this if the AutoPtr has NULL as its value.

		T *operator-> () const { return p_; }

		/// Returns a reference to the object that the owned pointer points to. It is
		/// an error to call this if the AutoPtr has NULL as its value.

		T &operator* () const { return *p_; }
		
		/// Swap with another auto ptr.
		
		friend inline void Swap (AutoPtr< T > &x, AutoPtr< T > &y)
			{
			T* temp = x.p_;
			x.p_ = y.p_;
			y.p_ = temp;
			}
		
	};

/*****************************************************************************/

template<class T>
AutoPtr<T>::~AutoPtr ()
	{
	
	delete p_;
	p_ = 0;
	
	}

/*****************************************************************************/

template<class T>
T *AutoPtr<T>::Release ()
	{
	T *result = p_;
	p_ = 0;
	return result;
	}

/*****************************************************************************/

template<class T>
void AutoPtr<T>::Reset (T *p)
	{
	
	if (p_ != p)
		{
		if (p_ != 0)
			delete p_;
		p_ = p;
		}
	
	}

/*****************************************************************************/

template<class T>
void AutoPtr<T>::Reset ()
	{
	
	if (p_ != 0)
		{
		delete p_;
		p_ = 0;
		}
	
	}

/*****************************************************************************/

template<class T>
void AutoPtr<T>::Alloc ()
	{
	this->Reset (new T);
	}

/*****************************************************************************/

/// \brief A class that provides a variable-length array that automatically
/// deletes the underlying memory on scope exit.
///
/// T is not required to be movable. The class is implemented using
/// dng_std_vector but purposely does not use any member functions that
/// require T to be movable.

template<typename T>
class AutoArray: private dng_uncopyable
	{

	public:
		
		/// Construct an AutoArray that refers to a null pointer.

		AutoArray () { }
		
		/// Construct an AutoArray containing 'count' elements, which are
		/// default-constructed. If an out-of-memory condition occurs, a
		/// dng_exception with error code dng_error_memory is thrown.

		explicit AutoArray (size_t count)
			: fVector (new dng_std_vector<T> (count))
			{
			}

		/// Changes the size of the AutoArray to 'count' elements. The new
		/// elements are default-constructed. The previously existing elements
		/// of the array are destroyed. If an out-of-memory condition occurs, a
		/// dng_exception with error code dng_error_memory is thrown.

		void Reset (size_t count)
			{
			fVector.reset (new dng_std_vector<T> (count));
			}

		/// Allows indexing into the AutoArray. The index 'i' must be
		/// non-negative and smaller than size of the array (the value that was
		/// passed to the constructor or to Reset()).

		T &operator[] (ptrdiff_t i)
			{
			return (*fVector) [i];
			}
		const T &operator[] (ptrdiff_t i) const
			{
			return (*fVector) [i];
			}

		/// Return a pointer to the beginning of the array.

		T *Get ()
			{
			if (fVector)
				return fVector->data ();
			else
				return nullptr;
			}
		
		const T *Get () const
			{
			if (fVector)
				return fVector->data ();
			else
				return nullptr;
			}

	private:

		// Hidden copy constructor and assignment operator.

		AutoArray (const AutoArray &);

		const AutoArray & operator= (const AutoArray &);

	private:

		std::unique_ptr<dng_std_vector<T> > fVector;

	};

/*****************************************************************************/

#endif

/*****************************************************************************/
