#ifndef IMAGE_IO_BASE_VALIDATED_NUMBER_H_  // NOLINT
#define IMAGE_IO_BASE_VALIDATED_NUMBER_H_  // NOLINT

#include <sstream>
#include <string>

namespace photos_editing_formats {
namespace image_io {

template <class T>
struct ValidatedNumber {
  ValidatedNumber() : ValidatedNumber(T(), false) {}
  ValidatedNumber(const T& value_, bool is_valid_)
      : value(value_), is_valid(is_valid_) {}
  using value_type = T;
  T value;
  bool is_valid;
};

template <class T>
ValidatedNumber<T> GetValidatedNumber(const std::string& str) {
  std::stringstream ss(str);
  ValidatedNumber<T> result;
  ss >> result.value;
  if (!ss.fail()) {
    std::string extra;
    ss >> extra;
    if (extra.empty()) {
      result.is_valid = true;
    }
  }
  return result;
}

}  // namespace image_io
}  // namespace photos_editing_formats

#endif  // IMAGE_IO_BASE_VALIDATED_NUMBER_H_  // NOLINT
