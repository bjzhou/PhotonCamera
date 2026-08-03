#ifndef IMAGE_IO_BASE_IMAGE_METADATA_H_  // NOLINT
#define IMAGE_IO_BASE_IMAGE_METADATA_H_  // NOLINT

#include "image_io/base/types.h"

namespace photos_editing_formats {
namespace image_io {

/// A enum that represents orientation values for images. The values of this
/// enum correspond exactly to what is defined the Exif spec:
/// https://cs.corp.google.com/piper///depot/google3/third_party/libexif/
enum class Orientation {
  kNone = 0,
  kRotate0 = 1,
  kMirrorRotate0 = 2,
  kRotate180 = 3,
  kMirrorRotate180 = 4,
  kMirrorRotate270 = 5,
  kRotate90 = 6,
  kMirrorRotate90 = 7,
  kRotate270 = 8
};

/// @param value The value to check the Orientation validity of.
/// @return Whether the value if cast to an Orientation is legal.
inline bool IsLegalOrientation(UInt32 value) {
  return value <= static_cast<UInt32>(Orientation::kRotate270);
}

/// @param value The value to check
/// @return Whether the orientation represents a rotation of 90 or 270 relative
/// to the y=0 line such that thge width/height of an image should be swapped.
inline bool HasVerticalRotation(Orientation value) {
  return value == Orientation::kMirrorRotate90 ||
         value == Orientation::kMirrorRotate270 ||
         value == Orientation::kRotate90 || value == Orientation::kRotate270;
}

/// A class to hold metadata typically found in an image file.
/// The //photos/editing/formats/image_io:jpeg library has a class to decode
/// the data in an Exif segment of a JPEG file and initialize this object.
class ImageMetadata {
 public:
  ImageMetadata() { Clear(); }
  bool operator!=(const ImageMetadata& rhs) const { return !(*this == rhs); }
  bool operator==(const ImageMetadata& rhs) const {
    return width_ == rhs.width_ && height_ == rhs.height_ &&
           orientation_ == rhs.orientation_;
  }

  /// Clears the values of the metadata, returning them to their startup values.
  void Clear() {
    width_ = -1;
    height_ = -1;
    orientation_ = Orientation::kNone;
  }

  /// @param orientation The orientation to to use for the metadata.
  void SetOrientation(Orientation orientation) { orientation_ = orientation; }

  /// @param width The width to use for the metadata.
  void SetWidth(UInt32 width) { width_ = width; }

  /// @parma height The height to use for the metadata.
  void SetHeight(UInt32 height) { height_ = height; }

  /// @return Whether the metadata has a width value.
  bool HasWidth() const { return width_ >= 0; }

  /// @return Whether the metadata has a height value.
  bool HasHeight() const { return height_ >= 0; }

  /// @return Whether the metadata has a width or height value depending on the
  /// orientation.
  bool HasTransformedWidth() const {
    return HasVerticalRotation(orientation_) ? HasHeight() : HasWidth();
  }

  /// @return Whether the metadata has a width or height value depending on the
  /// orientation.
  bool HasTransformedHeight() const {
    return HasVerticalRotation(orientation_) ? HasWidth() : HasHeight();
  }

  /// @return Whether the metadata has an orientation value.
  bool HasOrientation() const { return orientation_ != Orientation::kNone; }

  /// @return The metadata's orientation value, or Orientation::kNone
  Orientation GetOrientation() const { return orientation_; }

  /// @return The metadata's width value or 0 if none. Use the @f HasWidth() to
  /// determine if a zero value represents a specified or unspecified value.
  UInt32 GetWidth() const {
    return HasWidth() ? static_cast<UInt32>(width_) : 0;
  }

  /// @return The metadata's height value or 0 if none. Use the @f HasHeight()
  /// to determine if a zero value represents a specified or unspecified value.
  UInt32 GetHeight() const {
    return HasHeight() ? static_cast<UInt32>(height_) : 0;
  }

  /// @return The metadata's width or height depending on the orientation.
  UInt32 GetTransformedWidth() const {
    return HasVerticalRotation(orientation_) ? GetHeight() : GetWidth();
  }

  /// @return The metadata's width or height depending on the orientation.
  UInt32 GetTransformedHeight() const {
    return HasVerticalRotation(orientation_) ? GetWidth() : GetHeight();
  }

 private:
  Int64 width_;
  Int64 height_;
  Orientation orientation_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_IMAGE_METADATA_H_  // NOLINT
