#ifndef IMAGE_IO_JPEG_JPEG_SEGMENT_BUILDER_H_  // NOLINT
#define IMAGE_IO_JPEG_JPEG_SEGMENT_BUILDER_H_  // NOLINT

#include <string>
#include <vector>

#include "image_io/base/byte_buffer.h"
#include "image_io/jpeg/jpeg_xmp_info.h"

namespace photos_editing_formats {
namespace image_io {

/// A helper to assemble the data in a JpegSegment. Currently this is only used
/// for testing purposes, but in the future may prove useful in the image_io
/// library itself.
class JpegSegmentBuilder {
 public:
  /// Sets the payload size value of the JpegSegment data in the byte buffer.
  /// This function assumes that the byte buffer contains the data for exactly
  /// one JpegSegment, and that the segment type has a variable payload size.
  /// The byte buffer must have a size in the range [4:65535] for this to work.
  /// @param byte_buffer The data defining the JpegSegment.
  /// @return Whether the byte buffer's size was valid and the payload size set.
  static bool SetPayloadSize(ByteBuffer* byte_buffer);

  /// @return The vector of ByteData.
  const std::vector<ByteData>& GetByteData() const { return byte_data_; }

  /// @return The concatenated string values of all byte data, or an empty
  ///     string if there are invalid byte data entries. Note that the string
  ///     may have embedded null characters if there are any kAscii0 type
  ///     byte data elements present.
  std::string GetByteDataValues() const;

  /// Adds the byte data to the vector.
  /// @param byte_data The byte data to add.
  void AddByteData(const ByteData& byte_data) {
    byte_data_.push_back(byte_data);
  }

  /// Adds a segment marker of the given type and payload size.
  /// @param marker_type The type of segment marker to add.
  /// @param size The size of the payload if the marker has a variable
  ///     size payload. This value must be in the range [2:65535], although no
  ///     check is performed to ensure that is the case.
  void AddMarkerAndSize(Byte marker_type, size_t size);

  /// Adds a segment marker of the given type, and "0000" placeholder value if
  /// the type has a variable payload size. The SetSizePlaceholder() function
  /// can be called later to set the actual size of the segment.
  /// @param marker_type The type of segment marker to add.
  /// @return The index in the vector of ByteData where the marker was added.
  size_t AddMarkerAndSizePlaceholder(Byte marker_type);

  /// Replacess the size of the segment marker that was previously added using
  /// the AddMarkerAndSizePlaceholder() function. The first two bytes of the
  /// ByteData at the given index must represent a valid JpegMarker that has
  /// a variable length payload size.
  /// @param index The index in the vector of ByteData set the size of.
  /// @param size The size of the segment, including the size field itself.
  ///     This value must be in the range [2:65535].
  /// @return Whether the size was set successfully.
  bool ReplaceSizePlaceholder(size_t index, size_t size);

  /// Adds the bytes that define an XMP header.
  /// @param xmp_guid The guid value of the XMP data. If this value is not 32
  ///     bytes long, it is either truncated or extended with 0s.
  void AddExtendedXmpHeader(const std::string& xmp_guid);

  /// Adds the XMP syntax that appears at the start of an XMP segment. This
  /// syntax appears after the XMP header in a segment, so this function should
  /// be called after the AddExtendedXmpHeader() function.
  void AddXmpMetaPrefix();

  /// Adds the XMP syntax that appears at the end of an XMP segment. This syntax
  /// finishes the XMP data, so it should be the last function called when
  /// assembling the data for such a segment.
  void AddXmpMetaSuffix();

  /// Adds the RDF prefix that appears within the body of an XMP segment. This
  /// syntax should be added before any XMP property names and values are added.
  void AddRdfPrefix();

  /// Adds the RDF suffix that appears within the body of an XMP segment. This
  /// syntax should be added after all XMP property names and values are added.
  void AddRdfSuffix();

  /// Adds the RDF:Description prefix that appears within the body of an XMP
  /// segment. This syntax should be added after the RDF prefix is added, but
  /// before any XMP property names and values are added.
  void AddRdfDescriptionPrefix();

  /// Adds the RDF:Description suffix that appears within the body of an XMP
  /// segment. This syntax should be added after after all XMP property names
  /// and values are added, but before the RDF syntax is added.
  void AddRdfDescriptionSuffix();

  /// Adds the property name, and the '="' string that defines
  /// the start of the name="value" string. After this call, you can
  /// add the property value to the byte data vector, and then call the
  /// AddXmpPropertySuffix() function to finish the definition.
  /// @param property_name The name of the property to add.
  void AddXmpPropertyPrefix(const std::string& property_name);

  /// Adds a final quote to finish off the definition of a name="value" string.
  void AddXmpPropertySuffix();

  /// Adds the name="value" strings to define the XMP property name and value.
  /// @param property_name The name of the property to add.
  /// @param property_value The value of the property to add.
  void AddXmpPropertyNameAndValue(const std::string& property_name,
                                  const std::string& property_value);

  /// Adds segment marker and the extended XMP header for an APP1/XMP type
  /// segment that as extended XMP data. After this call you can either all the
  /// AddXmpAndRdfPrefixes() function (if this is the first extended segment, or
  /// just continue adding the property value contained in this segment.
  /// @param xmp_guid The guid value of the XMP data. If this value is not 32
  ///     bytes long, it is either truncated or extended with 0s.
  void AddApp1XmpMarkerAndXmpExtendedHeader(const std::string& xmp_guid);

  /// Adds segment marker and all the prefixes to start the xmpmeta/rdf section
  /// of the segment. After this call property names and values can be added,
  /// and optionally the section can be completed by calling the
  /// AddXmpAndRdfSuffixes() function.
  void AddXmpAndRdfPrefixes();

  /// Adds the suffixes to complete the definition of an APP1/XMP segment. Call
  /// this function after the AddApp1XmpPrefixes() and after adding property
  /// names and values to the byte data.
  void AddXmpAndRdfSuffixes();

 private:
  std::vector<ByteData> byte_data_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_JPEG_JPEG_SEGMENT_BUILDER_H_  // NOLINT
