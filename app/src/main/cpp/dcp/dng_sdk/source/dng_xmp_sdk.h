/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

#ifndef __dng_xmp_sdk__
#define __dng_xmp_sdk__

/*****************************************************************************/

#include "dng_auto_ptr.h"
#include "dng_classes.h"
#include "dng_flags.h"
#include "dng_types.h"

/*****************************************************************************/

#if qDNGUseXMP

/*****************************************************************************/

extern const char *XMP_NS_TIFF;
extern const char *XMP_NS_EXIF;
extern const char *XMP_NS_EXIFEX;
extern const char *XMP_NS_PHOTOSHOP;
extern const char *XMP_NS_XAP;
extern const char *XMP_NS_XAP_RIGHTS;
extern const char *XMP_NS_DC;
extern const char *XMP_NS_DC_TERMS;
extern const char *XMP_NS_XMP_NOTE;
extern const char *XMP_NS_MM;

extern const char *XMP_NS_CRS;
extern const char *XMP_NS_CRSS;
extern const char *XMP_NS_CRD;
extern const char *XMP_NS_CRLCP;

extern const char *XMP_NS_VFS;

extern const char *XMP_NS_LR;

extern const char *XMP_NS_LCP;

extern const char *XMP_NS_AUX;

extern const char *XMP_NS_IPTC;
extern const char *XMP_NS_IPTC_EXT;

extern const char *XMP_NS_PLUS;

extern const char *XMP_NS_CRX;

extern const char *XMP_NS_DNG;

extern const char *XMP_NS_PANO;

extern const char *XMP_NS_GPANO;

extern const char *XMP_NS_REGIONS;

extern const char *XMP_NS_HDRGM;
extern const char *XMP_NS_HDR_META;

extern const char *XMP_NS_APPLE_HDRGM;
extern const char *XMP_NS_APPLE_PIXELDATA;

/*****************************************************************************/

class dng_xmp_private;

/*****************************************************************************/

typedef bool (IteratePathsCallback) (const char *ns,
									 const char *path,
									 void *callbackData);

/*****************************************************************************/

struct dng_xmp_namespace
	{
	const char * fullName;
	const char * shortName;
	};

/*****************************************************************************/

class dng_xmp_sdk
	{
	
	private:
	
		dng_xmp_private *fPrivate;
		
	public:
	
		dng_xmp_sdk ();
		
		dng_xmp_sdk (const dng_xmp_sdk &sdk);
		
		virtual ~dng_xmp_sdk ();
		
		static void InitializeSDK (dng_xmp_namespace * extraNamespaces = NULL,
								   const char *software = NULL);
		
		static void TerminateSDK ();
	
		bool HasMeta () const;

		void RequireMeta ()
			{
			NeedMeta ();
			}

		void * GetPrivateMeta ();
						   
		void Parse (dng_host &host,
					const char *buffer,
					uint32 count);

		bool Exists (const char *ns,
					 const char *path) const;
		
		void AppendArrayItem (const char *ns,
							  const char *arrayName,
							  const char *itemValue,
							  bool isBag = true,
							  bool propIsStruct = false);
									
		int32 CountArrayItems (const char *ns,
							   const char *path) const;
							
		bool HasNameSpace (const char *ns) const;

		void Remove (const char *ns,
					 const char *path);

		void RemoveProperties (const char *ns);
		
		bool IsEmptyString (const char *ns,
							const char *path);
								
		bool IsEmptyArray (const char *ns,
						   const char *path);
								
		void ComposeArrayItemPath (const char *ns,
								   const char *arrayName,
								   int32 itemNumber,
								   dng_string &s) const;
		
		void ComposeStructFieldPath (const char *ns,
									 const char *structName,
									 const char *fieldNS,
									 const char *fieldName,
									 dng_string &s) const;
									 
		bool GetNamespacePrefix (const char *uri,
								 dng_string &s) const;
																																					
		bool GetString (const char *ns,
						const char *path,
						dng_string &s) const;
								
		void ValidateStringList (const char *ns,
								 const char *path);
								   
		bool GetStringList (const char *ns,
							const char *path,
							dng_string_list &list,
							dng_abort_sniffer *sniffer = NULL) const;

		bool GetAltLangDefault (const char *ns,
								const char *path,
								dng_string &s,
								bool silent = false) const;
								
		bool GetLocalString (const char *ns,
							 const char *path,
							 dng_local_string &s) const;
								
		bool GetStructField (const char *ns,
							 const char *path,
							 const char *fieldNS,
							 const char *fieldName,
							 dng_string &s) const;
								   
		void Set (const char *ns,
				  const char *path,
				  const char *text);

		void SetString (const char *ns,
						const char *path,
						const dng_string &s);

		void SetStringList (const char *ns,
							const char *path,
							const dng_string_list &list,
							bool isBag);

		void SetAltLangDefault (const char *ns,
								const char *path,
								const dng_string &s);

		void SetLocalString (const char *ns,
							 const char *path,
							 const dng_local_string &s);
								
		void SetStructField (const char *ns,
							 const char *path,
							 const char *fieldNS,
							 const char *fieldName,
							 const char *text);
		
		void DeleteStructField (const char *ns,
								const char *structName,
								const char *fieldNS,
								const char *fieldName);
																				   
		dng_memory_block * Serialize (dng_memory_allocator &allocator,
									  bool asPacket,
									  uint32 targetBytes,
									  uint32 padBytes,
									  bool forJPEG,
									  bool compact) const;
		
		void PackageForJPEG (dng_memory_allocator &allocator,
							 AutoPtr<dng_memory_block> &stdBlock,
							 AutoPtr<dng_memory_block> &extBlock,
							 dng_string &extDigest) const;
							 
		void MergeFromJPEG (const dng_xmp_sdk *xmp);

		void ReplaceXMP (dng_xmp_sdk *xmp);
		
		bool IteratePaths (IteratePathsCallback *callback,
						   void *callbackData = NULL,
						   const char *startNS = NULL,
						   const char *startingPath = NULL,
						   bool justChildren = false);
						   
		void DuplicateSubtree (const dng_xmp_sdk &source,
							   const char *sourceNS,
							   const char *sourceRoot,
							   const char *destNS = NULL,
							   const char *destRoot = NULL);

		#if qDNGXMPDocOps
		
		void DocOpsOpenXMP (const char *srcMIME);
		
		void DocOpsPrepareForSave (const char *srcMIME,
								   const char *dstMIME,
								   bool newPath = true);
								   
		void DocOpsUpdateMetadata (const char *srcMIME);
		
		#endif
						   
	private:

		void ClearMeta ();

		void MakeMeta ();

		void NeedMeta ();
		
		// Hidden assignment operator.
		
		dng_xmp_sdk & operator= (const dng_xmp_sdk &sdk);

	};
	
/*****************************************************************************/

#endif	// qDNGUseXMP

/*****************************************************************************/

#endif	// __dng_xmp_sdk__
	
/*****************************************************************************/
