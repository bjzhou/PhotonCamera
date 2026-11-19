// Port of Spektrafilm 0.3.4 filming, Hanatos adaptation and DIR chemistry.
// Upstream commit 3bb2c2d2801ff68b92019cf1dbcbb133d60832bc; see LICENSE.spektrafilm.
#include "spectral_filming.h"
#include "spectral_gamut.h"
#include "spectral_mallett_basis.h"

#include <algorithm>
#include <cmath>
#include <limits>
#include <memory>
#include <stdexcept>

namespace spektrafilm {
namespace {
using Vec2 = std::array<double, 2>;

constexpr std::array<double, 9> proPhotoToSrgb{
    2.036491724209688, -0.7375906525094321, -0.2992598688901142,
    -0.2257179790832855, 1.2231765312786034, 0.002725224767466494,
    -0.010545128632237163, -0.1348798497250494, 1.1452101524691205,
};

Vec3 multiply(const std::array<double, 9>& matrix, const Vec3& rgb) {
    Vec3 result{};
    for (int row = 0; row < 3; ++row)
        for (int c = 0; c < 3; ++c) result[row] += matrix[row * 3 + c] * rgb[c];
    return result;
}

const std::vector<double>& data(const DataSet& set, const char* key, size_t size = 0) {
    auto found = set.find(key);
    if (found == set.end() || (size && found->second.size() != size))
        throw std::invalid_argument(std::string("Invalid filming model tensor: ") + key);
    for (double value : found->second)
        if (!std::isfinite(value)) throw std::invalid_argument(std::string("Non-finite filming model: ") + key);
    return found->second;
}

template<size_t N> std::array<double, N> fixed(const DataSet& set, const char* key) {
    std::array<double, N> result{};
    const auto& values = data(set, key, N);
    std::copy(values.begin(), values.end(), result.begin());
    return result;
}

Vec2 tri2quad(const Vec2& xy) {
    double denominator = std::fmax(1.0 - xy[0], 1e-10);
    return {std::clamp((1.0 - xy[0]) * (1.0 - xy[0]), 0.0, 1.0),
            std::clamp(xy[1] / denominator, 0.0, 1.0)};
}
Vec2 quad2tri(const Vec2& tc) {
    double root = std::sqrt(tc[0]);
    return {1.0 - root, tc[1] * root};
}

Vec3 bilinear(const std::vector<double>& lut, int size, const Vec2& tc) {
    double x = std::clamp(tc[0] * (size - 1), 0.0, double(size - 1));
    double y = std::clamp(tc[1] * (size - 1), 0.0, double(size - 1));
    int x0 = int(std::floor(x)), y0 = int(std::floor(y));
    int x1 = std::min(x0 + 1, size - 1), y1 = std::min(y0 + 1, size - 1);
    Vec3 out{};
    for (int i = 0; i < 2; ++i) for (int j = 0; j < 2; ++j) {
        double weight = (i ? x - x0 : 1.0 - (x - x0)) * (j ? y - y0 : 1.0 - (y - y0));
        size_t offset = (size_t(i ? x1 : x0) * size + (j ? y1 : y0)) * 3;
        for (int c = 0; c < 3; ++c) out[c] += weight * lut[offset + c];
    }
    return out;
}

double mitchell(double t) {
    constexpr double B = 1.0 / 3.0, C = 1.0 / 3.0;
    double x = std::abs(t);
    if (x < 1.0) return ((12-9*B-6*C)*x*x*x + (-18+12*B+6*C)*x*x + (6-2*B)) / 6.0;
    if (x < 2.0) return ((-B-6*C)*x*x*x + (6*B+30*C)*x*x + (-12*B-48*C)*x + (8*B+24*C)) / 6.0;
    return 0.0;
}
int mirror(int index, int size) {
    if (index < 0) return -index;
    if (index >= size) return 2 * (size - 1) - index;
    return index;
}
Vec3 cubic(const std::vector<double>& lut, int size, const Vec2& tc) {
    double x = std::clamp(tc[0] * (size - 1), 0.0, double(size - 1));
    double y = std::clamp(tc[1] * (size - 1), 0.0, double(size - 1));
    int xb = std::min(int(std::floor(x)), size - 2), yb = std::min(int(std::floor(y)), size - 2);
    double xf = x - xb, yf = y - yb;
    Vec3 out{};
    double weights = 0;
    for (int i = 0; i < 4; ++i) for (int j = 0; j < 4; ++j) {
        double weight = mitchell(xf + 1 - i) * mitchell(yf + 1 - j);
        weights += weight;
        size_t offset = (size_t(mirror(xb - 1 + i, size)) * size + mirror(yb - 1 + j, size)) * 3;
        for (int c = 0; c < 3; ++c) out[c] += weight * lut[offset + c];
    }
    if (weights != 0) for (double& value : out) value /= weights;
    return out;
}

Vec2 compressXy(const Vec2& xy, const Vec2& white, const Vec3& knee, const std::vector<double>& locus) {
    Vec2 delta{xy[0] - white[0], xy[1] - white[1]};
    double distance = std::hypot(delta[0], delta[1]);
    if (distance < 1e-9) return xy;
    Vec2 direction{delta[0] / std::fmax(distance, 1e-12), delta[1] / std::fmax(distance, 1e-12)};
    double boundary = std::numeric_limits<double>::infinity();
    for (size_t k = 0; k + 3 < locus.size(); k += 2) {
        double ex = locus[k+2]-locus[k], ey = locus[k+3]-locus[k+1];
        double denominator = direction[0]*ey-direction[1]*ex;
        if (std::abs(denominator) <= 1e-12) continue;
        double ox = white[0]-locus[k], oy = white[1]-locus[k+1];
        double t = (-ox*ey+oy*ex)/denominator;
        double s = (-ox*direction[1]+oy*direction[0])/denominator;
        if (t > 1e-9 && s >= 0 && s <= 1) boundary = std::min(boundary, t);
    }
    if (!std::isfinite(boundary)) throw std::runtime_error("Film gamut ray misses spectral locus");
    double normalized = distance / std::fmax(boundary, 1e-12);
    if (normalized > knee[0]) {
        double scale = knee[1]-knee[0];
        double n = (normalized-knee[0])/scale;
        normalized = knee[0] + scale*n/std::pow(1.0+std::pow(n,knee[2]),1.0/knee[2]);
    }
    return {white[0]+direction[0]*normalized*boundary, white[1]+direction[1]*normalized*boundary};
}

double poly4(const Vec2& tc, const Vec2& center, const double* p) {
    double x = tc[0]-center[0], y = tc[1]-center[1];
    double x2=x*x, y2=y*y, x3=x2*x, y3=y2*y;
    // The fitted constant is deliberately excluded to preserve the white anchor.
    return p[1]*x+p[2]*y+p[3]*x2+p[4]*y2+p[5]*x*y+
           p[6]*x3+p[7]*y3+p[8]*x2*y+p[9]*x*y2+
           p[10]*x2*x2+p[11]*y2*y2+p[12]*x3*y+p[13]*x2*y2+p[14]*x*y3;
}

// NumPy interp's right-biased exact match and endpoint behavior.
double interp(double value, const std::vector<double>& x, const std::vector<double>& y, int channel) {
    size_t n = x.size();
    if (value <= x.front()) return y[channel];
    if (value >= x.back()) return y[(n-1)*3+channel];
    auto high = std::upper_bound(x.begin(), x.end(), value);
    size_t low = size_t(high-x.begin()-1);
    double dx=x[low+1]-x[low];
    double t = (value-x[low]) * (dx != 0 ? 1.0/dx : 0.0);
    return y[low*3+channel] + t*(y[(low+1)*3+channel]-y[low*3+channel]);
}
int reflectSpectral(int index, int size) {
    while (index < 0 || index >= size) {
        if (index < 0) index = -index - 1;
        else index = 2 * size - index - 1;
    }
    return index;
}
}  // namespace

Filming::Filming(const DataSet& shared, const DataSet& film, const SpectralOptics& optics) {
    const auto shape = fixed<3>(shared, "hanatos_shape");
    tcSize_ = int(shape[0]);
    const int wavelengths = int(shape[2]);
    if (tcSize_ < 2 || tcSize_ > 1024 || shape[1] != tcSize_ || shape[0] != tcSize_ ||
        wavelengths < 2 || wavelengths > 1024 || shape[2] != wavelengths)
        throw std::invalid_argument("Invalid Hanatos spectral basis dimensions");
    const auto& basis = data(shared, "hanatos_basis", size_t(tcSize_)*tcSize_*wavelengths);
    const auto& wl = data(shared, "wavelengths", wavelengths);
    const auto& locus = data(shared, "spectral_locus_xy");
    if (locus.size() < 8 || locus.size()%2) throw std::invalid_argument("Invalid spectral locus");
    const auto& flags = data(film, "filming_flags", 6);
    positive_ = flags[0] != 0;
    stockDirActive_ = flags[4] != 0;
    mallett_ = optics.mallett;
    const auto& sensitivity = data(film, "filming_sensitivity", wavelengths*3);
    const auto& illuminant = data(film, "filming_reference_illuminant", wavelengths);
    const auto reference = fixed<2>(film, "filming_reference_xy");
    const auto center = tri2quad(reference);
    const auto& windowParams = data(film, "filming_window", 4);
    const auto& surfaceParams = data(film, "filming_surface", 45);
    const auto knee = optics.gamutKnee;
    if (knee[0] < 0 || knee[0] >= 1 || knee[1] <= knee[0] || knee[2] <= 0)
        throw std::invalid_argument("Invalid input gamut knee");
    proPhotoMatrix_ = fixed<9>(film, "filming_prophoto_to_xyz");
    srgbMatrix_ = fixed<9>(film, "filming_srgb_to_xyz");
    stockDirMatrix_ = fixed<9>(film, "filming_dir_matrix");
    stockGamma_ = fixed<3>(film, "filming_gamma");
    for (double g : stockGamma_) if (g <= 0) throw std::invalid_argument("Invalid film curve gamma");

    if (mallett_) {
        if (size_t(wavelengths) != kMallettBasis.size()) throw std::invalid_argument("Invalid Mallett spectral grid");
        double greenMidgray = 0;
        for (int w = 0; w < wavelengths; ++w) {
            greenMidgray += illuminant[w] * 0.184 * sensitivity[w * 3 + 1];
            for (int output = 0; output < 3; ++output)
                for (int input = 0; input < 3; ++input)
                    mallettResponse_[output * 3 + input] +=
                        kMallettBasis[w][input] * illuminant[w] * sensitivity[w * 3 + output];
        }
        if (!(greenMidgray > 0)) throw std::invalid_argument("Invalid Mallett green normalization");
        for (double& value : mallettResponse_) value /= greenMidgray;
    } else {
        std::vector<double> response = sensitivity;
        if (optics.adaptationWindow) {
            if (windowParams[1] <= 0 || windowParams[3] <= 0) throw std::invalid_argument("Invalid film window sigma");
            std::vector<double> window(wavelengths);
            for (int w=0; w<wavelengths; ++w) {
                double uv=0.5*(1+std::erf((wl[w]-windowParams[0])/(windowParams[1]*std::sqrt(2.0))));
                double ir=0.5*(1-std::erf((wl[w]-windowParams[2])/(windowParams[3]*std::sqrt(2.0))));
                window[w]=uv*ir;
            }
            for (int c=0; c<3; ++c) {
                double numerator=0, denominator=0;
                for (int w=0; w<wavelengths; ++w) {
                    numerator += sensitivity[w*3+c]*illuminant[w]*window[w];
                    denominator += sensitivity[w*3+c]*illuminant[w];
                }
                double normalization=numerator/denominator;
                if (!std::isfinite(normalization) || normalization <= 0) throw std::invalid_argument("Invalid film window normalization");
                for (int w=0; w<wavelengths; ++w) response[w*3+c] *= window[w]/normalization;
            }
        }
        // scipy.ndimage.gaussian_filter(..., sigma=(0,0,sigma)) uses half-sample
        // symmetric reflection and a four-sigma kernel on the spectral axis.
        double sigma=optics.blur;
        if (sigma < 0 || sigma > 100) throw std::invalid_argument("Invalid spectral blur sigma");
        int radius=int(4*sigma+0.5);
        std::vector<double> kernel;
        if (sigma > 0) {
            kernel.resize(radius*2+1);
            double sum=0;
            for (int k=-radius; k<=radius; ++k) { kernel[k+radius]=std::exp(-0.5*k*k/(sigma*sigma)); sum+=kernel[k+radius]; }
            for (double& v:kernel) v/=sum;
        }
        tcLut_.resize(size_t(tcSize_)*tcSize_*3);
        for (int i=0; i<tcSize_; ++i) for (int j=0; j<tcSize_; ++j) {
            size_t pixel=size_t(i)*tcSize_+j;
            Vec3 raw{};
            for (int w=0; w<wavelengths; ++w) {
                double spectrum=basis[pixel*wavelengths+w];
                if (sigma > 0) {
                    spectrum=0;
                    for (int k=-radius; k<=radius; ++k)
                        spectrum+=kernel[k+radius]*basis[pixel*wavelengths+reflectSpectral(w+k,wavelengths)];
                }
                for (int c=0; c<3; ++c) raw[c]+=spectrum*response[w*3+c];
            }
            Vec2 tc{double(i)/(tcSize_-1), double(j)/(tcSize_-1)};
            for (int c=0; c<3; ++c) {
                if (optics.adaptationSurface) {
                    double surface=poly4(tc,center,surfaceParams.data()+c*15);
                    surface/=std::sqrt(1+(surface/2)*(surface/2));
                    raw[c]*=std::exp2(surface);
                }
                tcLut_[pixel*3+c]=raw[c];
            }
        }
        if (optics.gamutCompression) {
            const auto oklch = optics.oklchGamut ? std::make_unique<InputOklchGamut>(locus) : nullptr;
            std::vector<double> remapped(tcLut_.size());
            for (int i=0; i<tcSize_; ++i) for (int j=0; j<tcSize_; ++j) {
                Vec2 tc{double(i)/(tcSize_-1),double(j)/(tcSize_-1)};
                const Vec2 xy = quad2tri(tc);
                Vec2 compressed = oklch ? oklch->compress(xy, knee) : compressXy(xy, reference, knee, locus);
                Vec3 value=bilinear(tcLut_,tcSize_,tri2quad(compressed));
                for (int c=0; c<3; ++c) remapped[(size_t(i)*tcSize_+j)*3+c]=value[c];
            }
            tcLut_=std::move(remapped);
        }
    }

    logExposure_=data(film,"filming_log_exposure");
    if (logExposure_.size()<2 || !std::is_sorted(logExposure_.begin(),logExposure_.end()))
        throw std::invalid_argument("Invalid film exposure axis");
    originalCurves_=data(film,"filming_curves",logExposure_.size()*3);
    normalizedCurves_=originalCurves_;
    for (int c=0; c<3; ++c) {
        curveMin_[c]=std::numeric_limits<double>::infinity();
        curveMax_[c]=-std::numeric_limits<double>::infinity();
        for (size_t k=0; k<logExposure_.size(); ++k) {
            curveMin_[c]=std::min(curveMin_[c],originalCurves_[k*3+c]);
            curveMax_[c]=std::max(curveMax_[c],originalCurves_[k*3+c]);
        }
        densityMax_[c]=curveMax_[c]-curveMin_[c];
        for (size_t k=0; k<logExposure_.size(); ++k) normalizedCurves_[k*3+c]-=curveMin_[c];
    }
    configureDevelopment({});
}

void Filming::configureDevelopment(const FilmDevelopment& development) {
    dirActive_ = stockDirActive_ && development.dirEnabled;
    for (int c = 0; c < 3; ++c) gamma_[c] = stockGamma_[c] * development.gamma;
    for (int donor = 0; donor < 3; ++donor) {
        for (int receiver = 0; receiver < 3; ++receiver) {
            const double layer = donor == receiver ? development.dirSameLayer : development.dirInterLayer;
            const int i = donor * 3 + receiver;
            const double coefficient = development.customDirMatrix ? development.dirCoefficients[i] : stockDirMatrix_[i];
            dirMatrix_[i] = dirActive_ ? coefficient * development.dirAmount * layer : 0;
        }
    }
    if (dirActive_) {
        beforeDirCurves_.resize(normalizedCurves_.size());
        for (int receiver=0; receiver<3; ++receiver) {
            std::vector<double> axis(logExposure_.size());
            for (size_t k=0; k<axis.size(); ++k) {
                double correction=0;
                for (int donor=0; donor<3; ++donor) {
                    double silver=normalizedCurves_[k*3+donor];
                    if (positive_) silver=densityMax_[donor]-silver;
                    correction+=silver*dirMatrix_[donor*3+receiver];
                }
                axis[k]=logExposure_[k]-correction;
            }
            if (!std::is_sorted(axis.begin(), axis.end()))
                throw std::invalid_argument("Nonmonotonic Spektrafilm DIR exposure axis");
            for (size_t k=0; k<axis.size(); ++k)
                beforeDirCurves_[k*3+receiver]=interp(logExposure_[k],axis,normalizedCurves_,receiver);
        }
    }
}

Vec3 Filming::expose(const Vec3& rgb, const std::array<double,9>& matrix) const {
    Vec3 xyz = multiply(matrix, rgb);
    double brightness=xyz[0]+xyz[1]+xyz[2];
    Vec2 xy{xyz[0]/std::fmax(brightness,1e-10), xyz[1]/std::fmax(brightness,1e-10)};
    Vec3 raw=cubic(tcLut_,tcSize_,tri2quad(xy));
    for (double& value:raw) value*=brightness;
    return raw;
}

Vec3 Filming::exposeMallett(const Vec3& srgb) const {
    return multiply(mallettResponse_, srgb);
}

Vec3 Filming::exposeProPhoto(const Vec3& linearProPhoto) const {
    return mallett_ ? exposeMallett(multiply(proPhotoToSrgb, linearProPhoto)) : expose(linearProPhoto, proPhotoMatrix_);
}

Vec3 Filming::interpolate(const Vec3& logRaw,const std::vector<double>& curves) const {
    Vec3 result{};
    for (int c=0; c<3; ++c) result[c]=interp(logRaw[c]*gamma_[c],logExposure_,curves,c);
    return result;
}

Vec3 Filming::develop(const Vec3& linearProPhoto) const {
    Vec3 raw=exposeProPhoto(linearProPhoto);
    Vec3 logRaw{};
    for (int c=0; c<3; ++c) logRaw[c]=std::log10(std::fmax(raw[c] * scanExposureMultiplier_,0.0)+1e-10);
    Vec3 density=interpolate(logRaw,normalizedCurves_);
    if (!dirActive_) return density;
    Vec3 silver=density;
    if (positive_) for (int c=0; c<3; ++c) silver[c]=densityMax_[c]-silver[c];
    for (int receiver=0; receiver<3; ++receiver)
        for (int donor=0; donor<3; ++donor) logRaw[receiver]-=silver[donor]*dirMatrix_[donor*3+receiver];
    return interpolate(logRaw,beforeDirCurves_);
}

Vec3 Filming::midgrayDensity(double exposureEv) const {
    const double middleGray = 0.184 * std::exp2(exposureEv);
    const Vec3 srgb{middleGray, middleGray, middleGray};
    Vec3 raw = mallett_ ? exposeMallett(srgb) : expose(srgb, srgbMatrix_);
    Vec3 logRaw{};
    for (int c=0; c<3; ++c) logRaw[c]=std::log10(raw[c]+1e-10);
    return interpolate(logRaw,originalCurves_);
}

}  // namespace spektrafilm
