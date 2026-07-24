#ifndef IMAGE_IO_XML_XML_PORTION_H_  // NOLINT
#define IMAGE_IO_XML_XML_PORTION_H_  // NOLINT

namespace photos_editing_formats {
namespace image_io {

/// An bit-type enum for indicating what part of an entity is defined: the
/// begin, middle and or end. Bitwise "and" and "or" operators are defined to
/// combine and test values.
enum class XmlPortion {
  kNone = 0,
  kBegin = 1,
  kMiddle = 2,
  kEnd = 4,
};

/// @return The value that results from the bitwise "and" of given portions.
inline XmlPortion operator&(XmlPortion lhs, XmlPortion rhs) {
  int lhs_value = static_cast<int>(lhs);
  int rhs_value = static_cast<int>(rhs);
  return static_cast<XmlPortion>(lhs_value & rhs_value);
}

/// @return The value that results from the bitwise "or"  of given portions.
inline XmlPortion operator|(XmlPortion lhs, XmlPortion rhs) {
  int lhs_value = static_cast<int>(lhs);
  int rhs_value = static_cast<int>(rhs);
  return static_cast<XmlPortion>(lhs_value | rhs_value);
}

/// @param value The value to use for the test.
/// @param mask The mask to use for the test.
/// @return Whether any of the bits in the mask are set in the value.
inline bool ContainsAny(XmlPortion value, XmlPortion mask) {
  return (value & mask) != XmlPortion::kNone;
}

/// @param value The value to use for the test.
/// @param mask The mask to use for the test.
/// @return Whether all of the bits in the mask are set in the value.
inline bool ContainsAll(XmlPortion value, XmlPortion mask) {
  return (value & mask) == mask;
}

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_XML_XML_PORTION_H_  // NOLINT
