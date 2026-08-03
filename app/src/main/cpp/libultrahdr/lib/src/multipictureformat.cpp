/*
 * Copyright 2023 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "ultrahdr/multipictureformat.h"

namespace ultrahdr {
size_t calculateMpfSize() {
  return sizeof(kMpfSig) +                 // Signature
         kMpEndianSize +                   // Endianness
         sizeof(uint32_t) +                // Index IFD Offset
         sizeof(uint16_t) +                // Tag count
         kTagSerializedCount * kTagSize +  // 3 tags at 12 bytes each
         sizeof(uint32_t) +                // Attribute IFD offset
         kNumPictures * kMPEntrySize;      // MP Entries for each image
}

std::shared_ptr<DataStruct> generateMpf(size_t primary_image_size, size_t primary_image_offset,
                                        size_t secondary_image_size,
                                        size_t secondary_image_offset) {
  size_t mpf_size = calculateMpfSize();
  std::shared_ptr<DataStruct> dataStruct = std::make_shared<DataStruct>(mpf_size);

  dataStruct->write(static_cast<const void*>(kMpfSig), sizeof(kMpfSig));
#if USE_BIG_ENDIAN_IN_MPF
  dataStruct->write(static_cast<const void*>(kMpBigEndian), kMpEndianSize);
#else
  dataStruct->write(static_cast<const void*>(kMpLittleEndian), kMpEndianSize);
#endif

  // Set the Index IFD offset be the position after the endianness value and this offset.
  constexpr uint32_t indexIfdOffset = static_cast<uint16_t>(kMpEndianSize + sizeof(kMpfSig));
  dataStruct->write32(Endian_SwapBE32(indexIfdOffset));

  // We will write 3 tags (version, number of images, MP entries).
  dataStruct->write16(Endian_SwapBE16(kTagSerializedCount));

  // Write the version tag.
  dataStruct->write16(Endian_SwapBE16(kVersionTag));
  dataStruct->write16(Endian_SwapBE16(kVersionType));
  dataStruct->write32(Endian_SwapBE32(kVersionCount));
  dataStruct->write(kVersionExpected, kVersionSize);

  // Write the number of images.
  dataStruct->write16(Endian_SwapBE16(kNumberOfImagesTag));
  dataStruct->write16(Endian_SwapBE16(kNumberOfImagesType));
  dataStruct->write32(Endian_SwapBE32(kNumberOfImagesCount));
  dataStruct->write32(Endian_SwapBE32(kNumPictures));

  // Write the MP entries.
  dataStruct->write16(Endian_SwapBE16(kMPEntryTag));
  dataStruct->write16(Endian_SwapBE16(kMPEntryType));
  dataStruct->write32(Endian_SwapBE32(kMPEntrySize * kNumPictures));
  const uint32_t mpEntryOffset =
      static_cast<uint32_t>(dataStruct->getBytesWritten() -  // The bytes written so far
                            sizeof(kMpfSig) +                // Excluding the MPF signature
                            sizeof(uint32_t) +               // The 4 bytes for this offset
                            sizeof(uint32_t));  // The 4 bytes for the attribute IFD offset.
  dataStruct->write32(Endian_SwapBE32(mpEntryOffset));

  // Write the attribute IFD offset (zero because we don't write it).
  dataStruct->write32(0);

  // Write the MP entries for primary image
  dataStruct->write32(Endian_SwapBE32(kMPEntryAttributeFormatJpeg | kMPEntryAttributeTypePrimary));
  dataStruct->write32(Endian_SwapBE32(primary_image_size));
  dataStruct->write32(Endian_SwapBE32(primary_image_offset));
  dataStruct->write16(0);
  dataStruct->write16(0);

  // Write the MP entries for secondary image
  dataStruct->write32(Endian_SwapBE32(kMPEntryAttributeFormatJpeg));
  dataStruct->write32(Endian_SwapBE32(secondary_image_size));
  dataStruct->write32(Endian_SwapBE32(secondary_image_offset));
  dataStruct->write16(0);
  dataStruct->write16(0);

  return dataStruct;
}

}  // namespace ultrahdr
