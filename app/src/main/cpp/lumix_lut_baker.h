#pragma once
#include <array>
#include <vector>

namespace lumix {
struct Map {
    int hue = 0, saturation = 0, value = 0, encoding = 0;
    std::vector<float> data;
    double minSat = 1.0, minValue = 1.0;
    bool unityValue = true;
    bool empty() const { return data.empty(); }
    void validate();
};
using Rgb = std::array<double, 3>;
using Matrix = std::array<float, 9>;
// Inverse of the unclipped DCP map. Outside the calibration grid, coordinates
// are bounded and multiplicative corrections extend the HDR/camera gamut.
Rgb applyMap(const Map& map, const Rgb& rgb);
bool inverseMap(const Map& map, const Rgb& rgb, Rgb& result);
std::vector<float> bake(int size, float inputMax, float linearFraction,
                       const Matrix& sourceToProfile, const Matrix& s9FromProfile,
                       Map hueSat, Map lookTable);
}
