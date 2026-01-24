#ifndef MATH_UTILS_H
#define MATH_UTILS_H

#include <algorithm>
#include <cstdint>
#include <cstring>

// 读取不同字节序的值
template <typename T> T readValue(const uint8_t *data, bool bigEndian) {
  T val;
  std::memcpy(&val, data, sizeof(T));
  if (bigEndian) {
    uint8_t *p = reinterpret_cast<uint8_t *>(&val);
    std::reverse(p, p + sizeof(T));
  }
  return val;
}

// 字节序交换辅助函数 (OpcodeList 始终为 Big-Endian)
template <typename T> T readBigEndian(const uint8_t *ptr) {
  T val;
  std::memcpy(&val, ptr, sizeof(T));
  uint8_t *p = reinterpret_cast<uint8_t *>(&val);
  std::reverse(p, p + sizeof(T));
  return val;
}

// 矩阵运算工具
inline void matmul3x3(const float *A, const float *B, float *out) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      out[i * 3 + j] = A[i * 3 + 0] * B[0 * 3 + j] +
                       A[i * 3 + 1] * B[1 * 3 + j] +
                       A[i * 3 + 2] * B[2 * 3 + j];
    }
  }
}

inline float determinant3x3(const float *M) {
  return M[0] * (M[4] * M[8] - M[5] * M[7]) -
         M[1] * (M[3] * M[8] - M[5] * M[6]) +
         M[2] * (M[3] * M[7] - M[4] * M[6]);
}

inline bool invert3x3(const float *M, float *out) {
  float det = determinant3x3(M);
  if (std::abs(det) < 1e-9f)
    return false;

  float invDet = 1.0f / det;
  out[0] = (M[4] * M[8] - M[5] * M[7]) * invDet;
  out[1] = (M[2] * M[7] - M[1] * M[8]) * invDet;
  out[2] = (M[1] * M[5] - M[2] * M[4]) * invDet;
  out[3] = (M[5] * M[6] - M[3] * M[8]) * invDet;
  out[4] = (M[0] * M[8] - M[2] * M[6]) * invDet;
  out[5] = (M[2] * M[3] - M[0] * M[5]) * invDet;
  out[6] = (M[3] * M[7] - M[4] * M[6]) * invDet;
  out[7] = (M[1] * M[6] - M[0] * M[7]) * invDet;
  out[8] = (M[0] * M[4] - M[1] * M[3]) * invDet;
  return true;
}

// Float32 to Float16 (Half precision) conversion
inline uint16_t floatToHalf(float f) {
  uint32_t i;
  std::memcpy(&i, &f, 4);
  uint16_t s = (i >> 16) & 0x8000;
  int16_t e = ((i >> 23) & 0xFF) - (127 - 15);
  uint32_t m = i & 0x7FFFFF;

  if (e <= 0) {
    if (e < -10)
      return s;
    m |= 0x800000;
    int t = 14 - e;
    int a = (1 << (t - 1)) - 1;
    int b = (m >> t) & 1;
    m = (m + a + b) >> t;
    return s | (uint16_t)m;
  } else if (e == 0xFF - (127 - 15)) {
    if (m == 0)
      return s | 0x7C00;
    m >>= 13;
    return s | 0x7C00 | (uint16_t)m | (m == 0);
  } else {
    m = m + 0x0FFF + ((m >> 13) & 1);
    if (m & 0x800000) {
      m = 0;
      e++;
    }
    if (e >= 31)
      return s | 0x7C00;
    return s | (uint16_t)(e << 10) | (uint16_t)(m >> 13);
  }
}

#endif // MATH_UTILS_H
