/* =======================================================
 * XMPStub - a XMP stub implementation for the DNG SDK
 * =======================================================
 *
 * Project Lead:  Sandy McGuffog (sandy.cornerfix@gmail.com);
 *
 * (C) Copyright 2015-2016, by Sandy McGuffog and Contributors.
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons
 * to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall
 * be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 *
 * ---------------
 * XMP stub allows the Adobe DNG SDK to be compiled without the XMP SDK:
 * 1. The stub implentation is a "black box"
 * 2. Any operation to add properties unconditionally succeeds
 * 3. Any operation to find properties fails
 * 4. The serialize operation returns NULL; this has the effect that
 *    when a DNG file is written, no XMP section is included
 * 5. The stub is only sufficient for the DNG SDK V1.4
 *
 * Usage
 * -----
 * General usage is as follows:
 *	1. Simply include the XMP.incl_cpp file into your project in
 *     place of the XMP SDK's XMP.incl_cpp file
 *  2. Also include the XMPStub.hpp file
 *  3. The following macros should be set globally: 
 *     qDNGXMPDocOps=0 qDNGXMPFiles=0
 *  4. NOTE: to mimic the operation of the XMP SDK's XMP.incl_cpp,
 *     the "include" files contain actual code, and so can only
 *     be included ONCE, as is the case for the XMP SDK. This is very 
 *     bad practice, but this is what the SDK does.
 *
 * ---------------
 * XMPStub
 * ---------------
 * (C) Copyright 2015-2016, by Sandy McGuffog and Contributors.
 *
 * Original Author:  Sandy McGuffog;
 * Contributor(s):   -;
 *
 * Acknowlegements:
 *
 * Changes
 * -------
 * August 2016 - update to support "2016" DNG SDK V1.4
 *
 */

#ifndef XMPStub_h
#define XMPStub_h

//////////////////////////////////////////////////////////////
//
// Replacements for various constants - note values are different
//
//////////////////////////////////////////////////////////////

enum {
    kXMP_PropValueIsArray,
    kXMP_PropArrayIsOrdered,
    kXMP_PropValueIsStruct,
    kXMPFiles_IgnoreLocalText,
    kXMPUtil_DoAllProperties,
    kXMP_UseCompactFormat,
    kXMP_ExactPacketLength,
    kXMP_OmitPacketWrapper,
    kXMP_Part_All,
    kXMP_Part_Metadata,
    kXMP_IterJustChildren
    
};

#define kXMP_NS_XML            "http://www.w3.org/XML/1998/namespace"

//////////////////////////////////////////////////////////////
//
// typedefs used in dng_xmp_sdk
//
//////////////////////////////////////////////////////////////

typedef uint32    XMP_OptionBits;
typedef int32    XMP_Index;
typedef uint32    XMP_StringLen;

//////////////////////////////////////////////////////////////
//
// Macros used in dng_xmp_sdk
// These make anything look "simple"
// They depend on opt being 0 at init
//
//////////////////////////////////////////////////////////////

#define XMP_PropIsSimple(opt)       (opt==0)
#define XMP_PropIsStruct(opt)       (opt!=0)
#define XMP_PropIsArray(opt)        (opt!=0)


//////////////////////////////////////////////////////////////
//
// XMP_Error class defs
//
//////////////////////////////////////////////////////////////

class XMP_Error
{
public:
    XMP_Error();
    
    virtual ~XMP_Error();
    
    const char * GetErrMsg();
};

//////////////////////////////////////////////////////////////
//
// SXMPMeta class defs
//
//////////////////////////////////////////////////////////////

class SXMPMeta
{
public:
    SXMPMeta ();
    
    SXMPMeta (SXMPMeta const &val);
    
    const SXMPMeta Clone(int32 val);
    
    static bool Initialize();
    
    static bool RegisterNamespace ( const char * namespaceURI,
                                   const char * suggestedPrefix,
                                   TXMP_STRING_TYPE *  registeredPrefix );
    static void Terminate ();
    
    static void ParseFromBuffer(const char *buffer, uint32 count);
    
    void AppendArrayItem ( const char *  schemaNS,
                          const char *  arrayName,
                          uint32 arrayOptions,
                          const char *  itemValue,
                          uint32 itemOptions = 0);
    
    int CountArrayItems ( const char * schemaNS,
                               const char * arrayName ) const;
    
    bool DoesPropertyExist (const char *ns,
                            const char *path) const;
    
    void DeleteProperty (const char *ns,
                         const char *path);
    
    bool GetProperty ( const char *    schemaNS,
                      const char *    propName,
                      TXMP_STRING_TYPE *     propValue,
                      XMP_OptionBits * options ) const;
    
    bool GetArrayItem ( const char *    schemaNS,
                                 const char *    arrayName,
                                 int32        itemIndex,
                                 TXMP_STRING_TYPE *     itemValue,
                                 XMP_OptionBits * options ) const;
    
    void SetProperty (const char *ns,
                                const char *path,
                                const char *text);
    
    static bool GetNamespacePrefix ( const char * namespaceURI,
                                    TXMP_STRING_TYPE *  namespacePrefix );
    
    void SerializeToBuffer ( TXMP_STRING_TYPE *   rdfString,
                            XMP_OptionBits options,
                            XMP_StringLen  padding,
                            const char *  newline,
                            const char *  indent = "",
                            XMP_Index      baseIndent = 0 ) const;
    
    bool GetLocalizedText ( const char *    schemaNS,
                           const char *    altTextName,
                           const char *    genericLang,
                           const char *    specificLang,
                           TXMP_STRING_TYPE *     actualLang,
                           TXMP_STRING_TYPE *     itemValue,
                           XMP_OptionBits * options ) const;
    
    
    void SetLocalizedText ( const char *  schemaNS,
                           const char *  altTextName,
                           const char *  genericLang,
                           const char *  specificLang,
                           const char *  itemValue,
                           XMP_OptionBits options = 0 );
    
    bool GetStructField ( const char *    schemaNS,
                         const char *    structName,
                         const char *    fieldNS,
                         const char *    fieldName,
                         TXMP_STRING_TYPE *     fieldValue,
                         XMP_OptionBits * options ) const;
    
    void SetStructField ( const char *   schemaNS,
                         const char *   structName,
                         const char *   fieldNS,
                         const char *   fieldName,
                         const char *   fieldValue,
                         XMP_OptionBits  options = 0 );
    
    void DeleteStructField ( const char * schemaNS,
                            const char * structName,
                            const char * fieldNS,
                            const char * fieldName );
    
    bool GetQualifier ( const char *    schemaNS,
                       const char *    propName,
                       const char *    qualNS,
                       const char *    qualName,
                       TXMP_STRING_TYPE *     qualValue,
                       XMP_OptionBits * options ) const;
    
    void SetQualifier ( const char *  schemaNS,
                       const char *  propName,
                       const char *  qualNS,
                       const char *  qualName,
                       const char *  qualValue,
                       XMP_OptionBits options = 0 );
    
    virtual ~SXMPMeta ();
};

//////////////////////////////////////////////////////////////
//
// SXMPIterator class defs
//
//////////////////////////////////////////////////////////////

class SXMPIterator
{
public:
    SXMPIterator();
    
    virtual ~SXMPIterator();
    
    SXMPIterator (SXMPMeta const &val, const char *ns);
    
    SXMPIterator (SXMPMeta const &val, const char *ns, const char *path);

    SXMPIterator (SXMPMeta const &val, const char *ns, const char *path,
                  XMP_OptionBits options);
    
    bool Next ( TXMP_STRING_TYPE *     schemaNS = 0,
               TXMP_STRING_TYPE *     propPath = 0,
               TXMP_STRING_TYPE *     propValue = 0,
               XMP_OptionBits * options = 0 );
    
};


//////////////////////////////////////////////////////////////
//
// SXMPUtils class defs
//
//////////////////////////////////////////////////////////////

class SXMPUtils
{
public:
    SXMPUtils();
    
    virtual ~SXMPUtils();
    
    static void RemoveProperties ( SXMPMeta * xmpObj,
                                         const char *          schemaNS = 0,
                                         const char *          propName = 0,
                                  XMP_OptionBits         options = 0 );
    
    static void ComposeArrayItemPath ( const char * schemaNS,
                                      const char * arrayName,
                                      XMP_Index     itemIndex,
                                      TXMP_STRING_TYPE * fullPath );
    
    static void ComposeStructFieldPath ( const char * schemaNS,
                                        const char * structName,
                                        const char * fieldNS,
                                        const char * fieldName,
                                        TXMP_STRING_TYPE *  fullPath );
    
    static void PackageForJPEG ( SXMPMeta & xmpObj,
                                TXMP_STRING_TYPE *                 standardXMP,
                                TXMP_STRING_TYPE *                 extendedXMP,
                                TXMP_STRING_TYPE *                 extendedDigest );
    
    static void MergeFromJPEG ( SXMPMeta *       fullXMP,
                               const SXMPMeta & extendedXMP );

    static void DuplicateSubtree ( const SXMPMeta & source,
                                  SXMPMeta * dest,
                                  const char * sourceNS,
                                  const char * sourceRoot,
                                  const char * destNS,
                                  const char * destRoot );
};

#endif /* XMPStub_h */

//////////////////////////////////////////////////////////////
//
// SXMPMeta implementation
//
//////////////////////////////////////////////////////////////

SXMPMeta::SXMPMeta(void)
{
}

SXMPMeta::SXMPMeta (SXMPMeta const &val)
{
}

SXMPMeta::~SXMPMeta()
{
}

const SXMPMeta SXMPMeta::Clone(int32 val)
{
    return *this;
}

bool SXMPMeta::Initialize()
{
    return true;
}

bool SXMPMeta::RegisterNamespace ( const char * namespaceURI,
                               const char * suggestedPrefix,
                               TXMP_STRING_TYPE *  registeredPrefix )
{
    return true;
}

void SXMPMeta::Terminate ()
{
}

void SXMPMeta::ParseFromBuffer(const char *buffer, uint32 count)
{
}

void SXMPMeta::AppendArrayItem ( const char *  schemaNS,
                      const char *  arrayName,
                      uint32 arrayOptions,
                      const char *  itemValue,
                      uint32 itemOptions)
{
}

bool SXMPMeta::DoesPropertyExist (const char *ns, const char *path) const
{
    return false;
}

void SXMPMeta::DeleteProperty (const char *ns,
                     const char *path)
{
}

int SXMPMeta::CountArrayItems ( const char * schemaNS,
                     const char * arrayName ) const
{
    return 0;
}

bool SXMPMeta::GetProperty ( const char *    schemaNS,
                  const char *    propName,
                  TXMP_STRING_TYPE *     propValue,
                  XMP_OptionBits * options ) const
{
    return false;
}

bool SXMPMeta::GetArrayItem ( const char *    schemaNS,
                   const char *    arrayName,
                   int32        itemIndex,
                   TXMP_STRING_TYPE *     itemValue,
                   XMP_OptionBits * options ) const
{
    return false;
}

void SXMPMeta::SetProperty (const char *ns,
                            const char *path,
                            const char *text)
{
}

bool SXMPMeta::GetNamespacePrefix ( const char * namespaceURI,
                                TXMP_STRING_TYPE *  namespacePrefix )
{
    return false;
}

void SXMPMeta::SerializeToBuffer ( TXMP_STRING_TYPE *   rdfString,
                        XMP_OptionBits options,
                        XMP_StringLen  padding,
                        const char *  newline,
                        const char *  indent,
                        XMP_Index      baseIndent ) const
{
}

bool SXMPMeta::GetLocalizedText ( const char *    schemaNS,
                       const char *    altTextName,
                       const char *    genericLang,
                       const char *    specificLang,
                       TXMP_STRING_TYPE *     actualLang,
                       TXMP_STRING_TYPE *     itemValue,
                       XMP_OptionBits * options ) const
{
    return false;
}


void SXMPMeta::SetLocalizedText ( const char *  schemaNS,
                       const char *  altTextName,
                       const char *  genericLang,
                       const char *  specificLang,
                       const char *  itemValue,
                       XMP_OptionBits options )
{
}

bool SXMPMeta::GetStructField ( const char *    schemaNS,
                     const char *    structName,
                     const char *    fieldNS,
                     const char *    fieldName,
                     TXMP_STRING_TYPE *     fieldValue,
                     XMP_OptionBits * options ) const
{
    return false;
}

void SXMPMeta::SetStructField ( const char *   schemaNS,
                     const char *   structName,
                     const char *   fieldNS,
                     const char *   fieldName,
                     const char *   fieldValue,
                     XMP_OptionBits  options )
{
}

void SXMPMeta::DeleteStructField ( const char * schemaNS,
                        const char * structName,
                        const char * fieldNS,
                        const char * fieldName )
{
}

bool SXMPMeta::GetQualifier ( const char *    schemaNS,
                              const char *    propName,
                              const char *    qualNS,
                              const char *    qualName,
                              TXMP_STRING_TYPE *     qualValue,
                              XMP_OptionBits * options ) const
{
    // false means no qualifiers
    return false;
}

void SXMPMeta::SetQualifier ( const char *  schemaNS,
                   const char *  propName,
                   const char *  qualNS,
                   const char *  qualName,
                   const char *  qualValue,
                   XMP_OptionBits options)
{
    
}

//////////////////////////////////////////////////////////////
//
// XMP_Error implementation
//
//////////////////////////////////////////////////////////////

XMP_Error::XMP_Error(void)
{
}


XMP_Error::~XMP_Error()
{
}

const char * XMP_Error::GetErrMsg()
{
    return NULL;
}

//////////////////////////////////////////////////////////////
//
// SXMPIterator implementation
//
//////////////////////////////////////////////////////////////


SXMPIterator::SXMPIterator()
{
}

SXMPIterator::~SXMPIterator()
{
}

SXMPIterator::SXMPIterator (SXMPMeta const &val, const char *ns)
{
}

SXMPIterator::SXMPIterator (SXMPMeta const &val, const char *ns, const char *path)
{
}

SXMPIterator::SXMPIterator (SXMPMeta const &val, const char *ns, const char *path,
                            XMP_OptionBits options)
{
}

bool SXMPIterator::Next ( TXMP_STRING_TYPE *     schemaNS,
           TXMP_STRING_TYPE *     propPath,
           TXMP_STRING_TYPE *     propValue,
           XMP_OptionBits * options )
{
    // false means no items
    return false;
}

//////////////////////////////////////////////////////////////
//
// SXMPUtils implementation
//
//////////////////////////////////////////////////////////////

SXMPUtils::SXMPUtils()
{
}

SXMPUtils::~SXMPUtils()
{
}

void SXMPUtils::RemoveProperties ( SXMPMeta * xmpObj,
                              const char *          schemaNS,
                              const char *          propName,
                              XMP_OptionBits         options )
{
}

void SXMPUtils::ComposeArrayItemPath ( const char * schemaNS,
                                  const char * arrayName,
                                  XMP_Index     itemIndex,
                                  TXMP_STRING_TYPE * fullPath )
{
}


void SXMPUtils::ComposeStructFieldPath ( const char * schemaNS,
                                    const char * structName,
                                    const char * fieldNS,
                                    const char * fieldName,
                                    TXMP_STRING_TYPE *  fullPath )
{
}

void SXMPUtils::PackageForJPEG ( SXMPMeta & xmpObj,
                            TXMP_STRING_TYPE *                 standardXMP,
                            TXMP_STRING_TYPE *                 extendedXMP,
                            TXMP_STRING_TYPE *                 extendedDigest )
{
}

void SXMPUtils::MergeFromJPEG ( SXMPMeta *       fullXMP,
                           const SXMPMeta & extendedXMP )
{
}

void SXMPUtils::DuplicateSubtree ( const SXMPMeta & source,
                              SXMPMeta * dest,
                              const char * sourceNS,
                              const char * sourceRoot,
                              const char * destNS,
                              const char * destRoot )
{
}



