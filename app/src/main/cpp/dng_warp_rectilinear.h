#pragma once

// DNG WarpRectilinear record exchanged with Kotlin through DngRawData.warpRectilinear.
//
// Layout of one record (kDngWarpRectilinearRecordFloats floats):
//   for plane in R, G, B: [kr0, kr1, kr2, kr3, kt0, kt1]
//   then [centerH, centerV] (normalized to the image bounds)
//
// The DNG SDK reuses the last plane's coefficients for image planes beyond the opcode's plane
// count, so a single-plane opcode is stored with its coefficients replicated to all planes.
constexpr int kDngWarpRectilinearPlanes = 3;
constexpr int kDngWarpRectilinearPlaneCoefficients = 6;
constexpr int kDngWarpRectilinearCenterOffset =
    kDngWarpRectilinearPlanes * kDngWarpRectilinearPlaneCoefficients;
constexpr int kDngWarpRectilinearRecordFloats = kDngWarpRectilinearCenterOffset + 2;
