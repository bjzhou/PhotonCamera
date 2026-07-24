#ifndef IMAGE_IO_XML_XML_HANDLER_CONTEXT_H_  // NOLINT
#define IMAGE_IO_XML_XML_HANDLER_CONTEXT_H_  // NOLINT

#include "image_io/base/data_context.h"

namespace photos_editing_formats {
namespace image_io {

class XmlHandler;

class XmlHandlerContext : public DataContext {
 public:
  XmlHandlerContext(const DataContext& context, XmlHandler* handler)
      : DataContext(context), handler_(handler) {}

  XmlHandlerContext(size_t location, const DataRange& range,
                    const DataSegment& segment,
                    const DataLineMap& data_line_map, XmlHandler* handler)
      : DataContext(location, range, segment, data_line_map),
        handler_(handler) {}

  XmlHandler* GetHandler() const { return handler_; }

 private:
  XmlHandler* handler_;
};

}  // namespace image_io
}  // namespace photos_editing_formats

#endif // IMAGE_IO_XML_XML_HANDLER_CONTEXT_H_  // NOLINT
