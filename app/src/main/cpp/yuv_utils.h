#ifndef YUV_UTILS_H
#define YUV_UTILS_H

#include <cstdint>

// 16-bit 平面旋转辅助函数
void RotatePlane16(const uint16_t *src, uint16_t *dst, int width, int height,
                   int rotation);

#endif // YUV_UTILS_H
