// Algorithm port of Spektrafilm 0.3.4 (3bb2c2d2801ff68b92019cf1dbcbb133d60832bc),
// utils/gamut_compression.py, and colour-science 0.4.7 CAM16 / CAM16-UCS.
// See the bundled Spektrafilm and colour-science license notices.
#include "spectral_gamut.h"

#include <algorithm>
#include <cmath>
#include <limits>
#include <stdexcept>
#include <vector>

namespace spektrafilm {
namespace {

using Matrix = std::array<Vec3, 3>;
constexpr double kPi = 3.141592653589793238462643383279502884;
constexpr int kLightnessCount = 64;
constexpr int kHueCount = 720;
constexpr int kBisections = 18;
// colour-science intentionally uses these published rounded ProPhoto
// matrices. Replacing XYZ-to-RGB with a new inverse changes the boundary.
constexpr Matrix kRgbToXyz{{{0.7977, 0.1352, 0.0313},
                            {0.2880, 0.7119, 0.0001},
                            {0.0, 0.0, 0.8249}}};
constexpr Matrix kXyzToRgb{{{1.3460, -0.2556, -0.0511},
                            {-0.5446, 1.5082, 0.0205},
                            {0.0, 0.0, 1.2123}}};
constexpr Matrix kCat16{{{0.401288, 0.650173, -0.051461},
                         {-0.250268, 1.204414, 0.045854},
                         {-0.002079, 0.048952, 0.953127}}};
constexpr Matrix kInverseCat16{{
    {1.8620678550872327, -1.0112546305316843, 0.14918677544445175},
    {0.3875265432361372, 0.6214474419314753, -0.00897398516761252},
    {-0.01584149884933386, -0.03412293802851557, 1.0499644368778496}}};
constexpr Matrix kXyzToOklabLms{{
    {0.8189330101, 0.3618667424, -0.1288597137},
    {0.0329845436, 0.9293118715, 0.0361456387},
    {0.0482003018, 0.2643662691, 0.6338517070}}};
constexpr Matrix kOklabLmsToXyz{{
    {1.2270138511035211, -0.5577999806518222, 0.2812561489664678},
    {-0.0405801784232806, 1.11225686961683, -0.07167667866560119},
    {-0.0763812845057069, -0.4214819784180127, 1.5861632204407947}}};
constexpr Matrix kOklabLmsToLab{{
    {0.2104542553, 0.7936177850, -0.0040720468},
    {1.9779984951, -2.4285922050, 0.4505937099},
    {0.0259040371, 0.7827717662, -0.8086757660}}};
constexpr Matrix kOklabLabToLms{{
    {0.9999999984505196, 0.3963377921737678, 0.21580375806075877},
    {1.0000000088817607, -0.10556134232365633, -0.0638541747717059},
    {1.0000000546724108, -0.08948418209496574, -1.2914855378640917}}};
constexpr Matrix kXyzToJzLms{{
    {0.41478972, 0.579999, 0.0146480},
    {-0.2015100, 1.120649, 0.0531008},
    {-0.0166008, 0.264800, 0.6684799}}};
constexpr Matrix kJzLmsToXyz{{
    {1.9242264357876069, -1.0047923125953657, 0.037651404030617994},
    {0.35031676209499907, 0.7264811939316552, -0.06538442294808501},
    {-0.09098281098284752, -0.3127282905230739, 1.5227665613052603}}};
constexpr Matrix kJzLmsToIab{{
    {0.5, 0.5, 0.0},
    {3.524, -4.066708, 0.542708},
    {0.199076, 1.096799, -1.295875}}};
constexpr Matrix kJzIabToLms{{
    {1.0, 0.1386050432715393, 0.05804731615611882},
    {1.0, -0.13860504327153927, -0.05804731615611891},
    {1.0, -0.09601924202631895, -0.811891896056039}}};

Vec3 multiply(const Matrix& matrix, const Vec3& value) {
    Vec3 out{};
    for (int i = 0; i < 3; ++i) {
        out[i] = matrix[i][0] * value[0] + matrix[i][1] * value[1] +
                 matrix[i][2] * value[2];
    }
    return out;
}

double signedPower(double value, double exponent) {
    return std::copysign(std::pow(std::abs(value), exponent), value);
}

double safeDivide(double numerator, double denominator) {
    // colour.algebra.sdiv's default "Ignore Zero Conversion" mode.
    return denominator == 0.0 ? 0.0 : numerator / denominator;
}

double knee(double value, double threshold, double limit, double power) {
    if (value <= threshold) return value;
    const double scale = limit - threshold;
    const double x = (value - threshold) / scale;
    const double raised = std::pow(x, power);
    if (std::isinf(raised)) return limit;
    return threshold + scale * x / std::pow(1.0 + raised, 1.0 / power);
}

Vec3 toOklab(const Vec3& xyz) {
    Vec3 lms = multiply(kXyzToOklabLms, xyz);
    for (double& value : lms) value = std::cbrt(value);
    return multiply(kOklabLmsToLab, lms);
}

Vec3 fromOklab(const Vec3& lab) {
    Vec3 lms = multiply(kOklabLabToLms, lab);
    for (double& value : lms) value = value * value * value;
    return multiply(kOklabLmsToXyz, lms);
}

constexpr double kLr1 = 0.206, kLr2 = 0.03, kLr3 = (1.0 + kLr1) / (1.0 + kLr2);

double toLr(double l) {
    const double t = kLr3 * l - kLr1;
    return (t + std::sqrt(t * t + 4.0 * kLr2 * kLr3 * l)) * 0.5;
}

Vec3 fromOklrab(Vec3 lab) {
    lab[0] = (lab[0] * (lab[0] + kLr1)) / (kLr3 * (lab[0] + kLr2));
    return fromOklab(lab);
}

constexpr double kPqM1 = 2610.0 / 16384, kPqM2 = 1.7 * 2523.0 / 32;
constexpr double kPqC1 = 3424.0 / 4096, kPqC2 = 2413.0 / 128, kPqC3 = 2392.0 / 128;
constexpr double kJzD = -0.56, kJzD0 = 1.6295499532821566e-11;

Vec3 toJzazbz(const Vec3& xyz) {
    Vec3 lms = multiply(kXyzToJzLms, {
        100 * (1.15 * xyz[0] - 0.15 * xyz[2]),
        100 * (0.66 * xyz[1] + 0.34 * xyz[0]),
        100 * xyz[2],
    });
    for (double& value : lms) {
        const double pq = signedPower(value / 10000, kPqM1);
        value = signedPower((kPqC1 + kPqC2 * pq) / (1 + kPqC3 * pq), kPqM2);
    }
    Vec3 jab = multiply(kJzLmsToIab, lms);
    jab[0] = (1 + kJzD) * jab[0] / (1 + kJzD * jab[0]) - kJzD0;
    return jab;
}

Vec3 fromJzazbz(Vec3 jab) {
    jab[0] += kJzD0;
    jab[0] /= 1 + kJzD - kJzD * jab[0];
    Vec3 lms = multiply(kJzIabToLms, jab);
    for (double& value : lms) {
        const double pq = signedPower(value, 1 / kPqM2);
        value = 100 * signedPower(std::max(0.0, pq - kPqC1) / (kPqC2 - kPqC3 * pq), 1 / kPqM1);
    }
    Vec3 xyz = multiply(kJzLmsToXyz, lms);
    xyz[0] = (xyz[0] + 0.15 * xyz[2]) / 1.15;
    xyz[1] = (xyz[1] - 0.34 * xyz[0]) / 0.66;
    return xyz;
}

Chromaticity xyzToXy(const Vec3& xyz) {
    const double total = std::max(xyz[0] + xyz[1] + xyz[2], 1e-12);
    return {xyz[0] / total, xyz[1] / total};
}

bool inLocus(const Chromaticity& xy, const std::vector<double>& locus) {
    bool inside = false;
    for (size_t i = 2; i < locus.size(); i += 2) {
        const double y0 = locus[i - 1], y1 = locus[i + 1];
        if ((y0 > xy[1]) == (y1 > xy[1])) continue;
        const double edgeX = locus[i - 2] + (locus[i] - locus[i - 2]) * (xy[1] - y0) / (y1 - y0);
        if (xy[0] < edgeX) inside = !inside;
    }
    return inside;
}

template <typename Predicate>
std::vector<double> makeBoundary(double minimumL, double maximumL, double maximumC, const Predicate& inside) {
    std::vector<double> cmax(kLightnessCount * kHueCount);
    for (int l = 0; l < kLightnessCount; ++l) {
        const double lightness = minimumL + l * ((maximumL - minimumL) / (kLightnessCount - 1));
        for (int h = 0; h < kHueCount; ++h) {
            const double hue = -kPi + h * (2.0 * kPi / kHueCount);
            const double ch = std::cos(hue), sh = std::sin(hue);
            double lo = 0, hi = maximumC;
            for (int iteration = 0; iteration < kBisections; ++iteration) {
                const double mid = (lo + hi) * 0.5;
                if (inside(Vec3{lightness, mid * ch, mid * sh})) lo = mid;
                else hi = mid;
            }
            cmax[l * kHueCount + h] = lo;
        }
    }
    return cmax;
}

double boundaryLookup(const std::vector<double>& table, double lightness, double hue, double minimum, double maximum) {
    const double li = (std::clamp(lightness, minimum, maximum) - minimum) / (maximum - minimum) * (kLightnessCount - 1);
    const int l0 = std::clamp(static_cast<int>(std::floor(li)), 0, kLightnessCount - 2);
    const double lf = li - l0;
    const double hueStep = (-kPi + 2.0 * kPi / kHueCount) - (-kPi);
    const double hi = (hue + kPi) / hueStep, floorHue = std::floor(hi);
    const int h0 = (static_cast<int>(floorHue) % kHueCount + kHueCount) % kHueCount;
    const int h1 = (h0 + 1) % kHueCount;
    const double hf = hi - floorHue;
    return table[l0 * kHueCount + h0] * (1.0 - lf) * (1.0 - hf) +
           table[l0 * kHueCount + h1] * (1.0 - lf) * hf +
           table[(l0 + 1) * kHueCount + h0] * lf * (1.0 - hf) +
           table[(l0 + 1) * kHueCount + h1] * lf * hf;
}

template <typename Conversion>
std::vector<double> makeOutputBoundary(double minimumL, double maximumL, double maximumC, const Conversion& convert) {
    return makeBoundary(minimumL, maximumL, maximumC, [&](const Vec3& lab) {
        const Vec3 rgb = multiply(kXyzToRgb, convert(lab));
        return std::all_of(rgb.begin(), rgb.end(), [](double value) {
            return value >= -1e-6 && value <= 1 + 1e-6;
        });
    });
}

const std::vector<double>& outputBoundary(OutputGamutAlgorithm algorithm) {
    if (algorithm == OutputGamutAlgorithm::Jzazbz) {
        static const auto table = makeOutputBoundary(0.002, 0.18, 0.3, fromJzazbz);
        return table;
    }
    if (algorithm == OutputGamutAlgorithm::Oklrab) {
        static const auto table = makeOutputBoundary(0.02, 1, 0.5, fromOklrab);
        return table;
    }
    static const auto table = makeOutputBoundary(0.02, 1, 0.5, fromOklab);
    return table;
}

void compressChroma(Vec3& lab, const Vec3& chromaKnee, const std::vector<double>& table,
                    double lookupLightness, double minimum, double maximum) {
    const double hue = std::atan2(lab[2], lab[1]);
    const double maxChroma = std::max(1e-9, boundaryLookup(table, lookupLightness, hue, minimum, maximum));
    const double chroma = std::hypot(lab[1], lab[2]);
    const double adjusted = knee(chroma / maxChroma, chromaKnee[0], chromaKnee[1], chromaKnee[2]) * maxChroma;
    lab[1] = adjusted * std::cos(hue);
    lab[2] = adjusted * std::sin(hue);
}

struct Cam16 {
    double fl;
    double nbb;
    double z;
    double aw;
    double chromaFactor;
    double flQuarter;
    Vec3 adaptation;

    Cam16() {
        constexpr double adaptingLuminance = 64.0;
        constexpr double backgroundRatio = 20.0 / 100.0;
        const double k = 1.0 / (5.0 * adaptingLuminance + 1.0);
        const double k4 = std::pow(k, 4.0);
        fl = 0.2 * k4 * 5.0 * adaptingLuminance +
             0.1 * std::pow(1.0 - k4, 2.0) * std::cbrt(5.0 * adaptingLuminance);
        flQuarter = std::pow(fl, 0.25);
        nbb = 0.725 * std::pow(1.0 / backgroundRatio, 0.2);
        z = 1.48 + std::sqrt(backgroundRatio);
        chromaFactor = std::pow(1.64 - std::pow(0.29, backgroundRatio), 0.73);
        const double d = std::clamp(1.0 - std::exp((-adaptingLuminance - 42.0) / 92.0) / 3.6, 0.0, 1.0);
        // CAM16-UCS wrappers multiply normalized XYZ and its white by 100;
        // Y_b remains 20. Using a Y=1 white directly inside CAM16 is wrong.
        const Vec3 white{100.0 * 0.3457 / 0.3585, 100.0,
                         100.0 * (1.0 - 0.3457 - 0.3585) / 0.3585};
        const Vec3 rgbWhite = multiply(kCat16, white);
        Vec3 response{};
        for (int i = 0; i < 3; ++i) {
            adaptation[i] = d * 100.0 / rgbWhite[i] + 1.0 - d;
            response[i] = compressResponse(adaptation[i] * rgbWhite[i]);
        }
        aw = achromatic(response);
    }

    double compressResponse(double value) const {
        const double f = std::pow(fl * std::abs(value) / 100.0, 0.42);
        return 400.0 * std::copysign(f, value) / (27.13 + f) + 0.1;
    }

    double expandResponse(double value) const {
        const double shifted = value - 0.1;
        const double magnitude = std::abs(shifted);
        return std::copysign(1.0, shifted) * 100.0 / fl *
               signedPower(27.13 * magnitude / (400.0 - magnitude), 1.0 / 0.42);
    }

    double achromatic(const Vec3& response) const {
        return (2.0 * response[0] + response[1] + response[2] / 20.0 - 0.305) * nbb;
    }

    Vec3 forward(const Vec3& xyz) const {
        Vec3 response = multiply(kCat16, xyz);
        for (int i = 0; i < 3; ++i) response[i] = compressResponse(response[i] * 100.0 * adaptation[i]);
        const double a = response[0] - 12.0 * response[1] / 11.0 + response[2] / 11.0;
        const double b = (response[0] + response[1] - 2.0 * response[2]) / 9.0;
        const double h = std::atan2(b, a);
        const double et = (std::cos(h + 2.0) + 3.8) / 4.0;
        const double j = 100.0 * signedPower(achromatic(response) / aw, 0.69 * z);
        const double t = (50000.0 / 13.0) * nbb * safeDivide(
            et * std::sqrt(a * a + b * b), response[0] + response[1] + 21.0 * response[2] / 20.0);
        const double c = signedPower(t, 0.9) * signedPower(j / 100.0, 0.5) * chromaFactor;
        const double m = c * flQuarter;
        const double mp = std::log1p(0.0228 * m) / 0.0228;
        return {1.7 * j / (1.0 + 0.007 * j), mp * std::cos(h), mp * std::sin(h)};
    }

    Vec3 inverse(const Vec3& jab) const {
        const double j = jab[0] / (1.7 - 0.007 * jab[0]);
        const double mp = std::hypot(jab[1], jab[2]);
        const double m = std::expm1(0.0228 * mp) / 0.0228;
        const double c = m / flQuarter;
        const double h = std::atan2(jab[2], jab[1]);
        const double sh = std::sin(h);
        const double ch = std::cos(h);
        const double t = signedPower(c / (std::sqrt(std::max(j, std::numeric_limits<double>::epsilon()) / 100.0) * chromaFactor), 1.0 / 0.9);
        const double et = (std::cos(h + 2.0) + 3.8) / 4.0;
        const double ach = aw * signedPower(j / 100.0, 1.0 / (0.69 * z));
        const double p1 = safeDivide((50000.0 / 13.0) * nbb * et, t);
        const double p2 = ach / nbb + 0.305;
        constexpr double p3 = 21.0 / 20.0;
        const double n = p2 * (2.0 + p3) * (460.0 / 1403.0);
        double a = 0.0;
        double b = 0.0;
        if (t != 0.0) {
            if (std::abs(sh) >= std::abs(ch)) {
                b = n / (p1 / sh + (2.0 + p3) * (220.0 / 1403.0) * ch / sh -
                         27.0 / 1403.0 + p3 * (6300.0 / 1403.0));
                a = b * ch / sh;
            } else if (std::abs(sh) < std::abs(ch)) {
                a = n / (p1 / ch + (2.0 + p3) * (220.0 / 1403.0) -
                         (27.0 / 1403.0 - p3 * (6300.0 / 1403.0)) * sh / ch);
                b = a * sh / ch;
            }
        }
        Vec3 response{(460.0 * p2 + 451.0 * a + 288.0 * b) / 1403.0,
                      (460.0 * p2 - 891.0 * a - 261.0 * b) / 1403.0,
                      (460.0 * p2 - 220.0 * a - 6300.0 * b) / 1403.0};
        for (int i = 0; i < 3; ++i) response[i] = expandResponse(response[i]) / adaptation[i];
        Vec3 xyz = multiply(kInverseCat16, response);
        for (double& component : xyz) component /= 100.0;
        return xyz;
    }
};

struct GamutBoundary {
    Cam16 cam;
    std::vector<double> cmax;
    double whiteJp;

    GamutBoundary()
        : cmax(makeOutputBoundary(1, 110, 150, [this](const Vec3& jab) { return cam.inverse(jab); })),
          whiteJp(cam.forward({0.3457 / 0.3585, 1, (1 - 0.3457 - 0.3585) / 0.3585})[0]) {}
};

const GamutBoundary& boundary() {
    // C++11 initialization is thread-safe. All subsequent operations are read-only.
    static const GamutBoundary instance;
    return instance;
}

} // namespace

InputOklchGamut::InputOklchGamut(const std::vector<double>& locus)
    : boundary_(makeBoundary(0.05, 1, 0.5, [&](const Vec3& lab) { return inLocus(xyzToXy(fromOklab(lab)), locus); })) {}

Chromaticity InputOklchGamut::compress(const Chromaticity& xy, const Vec3& chromaKnee) const {
    const double y = std::max(xy[1], 1e-12);
    Vec3 lab = toOklab({xy[0] / y, 1, (1 - xy[0] - xy[1]) / y});
    compressChroma(lab, chromaKnee, boundary_, lab[0], 0.05, 1);
    return xyzToXy(fromOklab(lab));
}

OutputGamut::OutputGamut(OutputGamutAlgorithm algorithm, const Vec3& chromaKnee)
    : algorithm_(algorithm), knee_(chromaKnee) {
    if (algorithm < OutputGamutAlgorithm::Cam16 || algorithm > OutputGamutAlgorithm::Jzazbz ||
        knee_[0] < 0 || knee_[0] >= 1 || knee_[1] <= knee_[0] || knee_[2] <= 0)
        throw std::invalid_argument("Invalid Spektrafilm output gamut parameters");
    if (algorithm_ == OutputGamutAlgorithm::Cam16) (void) boundary();
    else if (algorithm_ != OutputGamutAlgorithm::Off && algorithm_ != OutputGamutAlgorithm::AcesRgc)
        (void) outputBoundary(algorithm_);
}

Vec3 OutputGamut::compress(const Vec3& linearProPhoto) const {
    if (algorithm_ == OutputGamutAlgorithm::Off) return linearProPhoto;
    if (algorithm_ == OutputGamutAlgorithm::AcesRgc) {
        const double maximum = *std::max_element(linearProPhoto.begin(), linearProPhoto.end());
        if (maximum <= 1e-12) return linearProPhoto;
        Vec3 result{};
        for (int c = 0; c < 3; ++c) {
            const double distance = (maximum - linearProPhoto[c]) / maximum;
            result[c] = maximum * (1 - knee(distance, knee_[0], knee_[1], knee_[2]));
        }
        return result;
    }
    if (algorithm_ != OutputGamutAlgorithm::Cam16) {
        const Vec3 xyz = multiply(kRgbToXyz, linearProPhoto);
        const auto& table = outputBoundary(algorithm_);
        if (algorithm_ == OutputGamutAlgorithm::Jzazbz) {
            static const double white = toJzazbz({0.3457 / 0.3585, 1, (1 - 0.3457 - 0.3585) / 0.3585})[0];
            Vec3 lab = toJzazbz(xyz);
            if (!std::all_of(lab.begin(), lab.end(), [](double value) { return std::isfinite(value); }))
                throw std::runtime_error("Non-finite JzAzBz color");
            lab[0] = knee(lab[0] / white, 0.7, 1, 2.2) * white;
            compressChroma(lab, knee_, table, lab[0], 0.002, 0.18);
            return multiply(kXyzToRgb, fromJzazbz(lab));
        }
        Vec3 lab = toOklab(xyz);
        lab[0] = knee(lab[0], 0.7, 1, 2.2);
        const double lightness = algorithm_ == OutputGamutAlgorithm::Oklrab ? toLr(lab[0]) : lab[0];
        compressChroma(lab, knee_, table, lightness, 0.02, 1);
        return multiply(kXyzToRgb, fromOklab(lab));
    }
    const GamutBoundary& state = boundary();
    Vec3 jab = state.cam.forward(multiply(kRgbToXyz, linearProPhoto));
    jab[0] = knee(jab[0] / state.whiteJp, 0.7, 1.0, 2.2) * state.whiteJp;
    const double chroma = std::hypot(jab[1], jab[2]);
    const double hue = std::atan2(jab[2], jab[1]);
    // Extreme ProPhoto primaries can have undefined CAM16 chroma. Upstream
    // propagates it through Cmax and the knee; inverse CAM16's two masked
    // hue branches then leave opponent a/b at zero. Preserve that result
    // without NumPy's intermediate NaN-to-integer table-coordinate cast.
    if (!std::isfinite(hue) || !std::isfinite(jab[0])) {
        const double invalid = std::numeric_limits<double>::quiet_NaN();
        return multiply(kXyzToRgb, state.cam.inverse({jab[0], invalid, invalid}));
    }
    const double maxChroma = std::fmax(boundaryLookup(state.cmax, jab[0], hue, 1, 110), 1e-9);
    const double newChroma = knee(chroma / maxChroma, knee_[0], knee_[1], knee_[2]) * maxChroma;
    jab[1] = newChroma * std::cos(hue);
    jab[2] = newChroma * std::sin(hue);
    return multiply(kXyzToRgb, state.cam.inverse(jab));
}

} // namespace spektrafilm
