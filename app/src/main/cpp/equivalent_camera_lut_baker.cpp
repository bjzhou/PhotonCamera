#include "equivalent_camera_lut_baker.h"
#include <algorithm>
#include <atomic>
#include <cmath>
#include <stdexcept>
#include <string>

namespace equivalent_camera {
namespace {
double wrap(double h) { return h - 6.0 * std::floor(h / 6.0); }
double hueError(double h) { return h - 6.0 * std::floor((h + 3.0) / 6.0); }
double encode(double v) { return v <= .0031308 ? 12.92*v : 1.055*std::pow(v, 1.0/2.4)-.055; }
double decode(double v) { return v <= .04045 ? v/12.92 : std::pow((v+.055)/1.055, 2.4); }
Rgb toHsv(const Rgb& rgb) {
    const double v = std::max({rgb[0],rgb[1],rgb[2]});
    const double d = v - std::min({rgb[0],rgb[1],rgb[2]});
    if (v <= 1e-15) return {0,0,0};
    double h = 0;
    if (d > 1e-15) {
        if (v == rgb[0]) h = (rgb[1]-rgb[2])/d;
        else if (v == rgb[1]) h = (rgb[2]-rgb[0])/d + 2;
        else h = (rgb[0]-rgb[1])/d + 4;
    }
    return {wrap(h),d/v,v};
}
Rgb toRgb(const Rgb& hsv) {
    const double h=wrap(hsv[0]), c=hsv[1]*hsv[2], x=c*(1-std::abs(std::fmod(h,2.0)-1)), m=hsv[2]-c;
    Rgb out = h<1 ? Rgb{c,x,0} : h<2 ? Rgb{x,c,0} : h<3 ? Rgb{0,c,x} :
              h<4 ? Rgb{0,x,c} : h<5 ? Rgb{x,0,c} : Rgb{c,0,x};
    for (auto& v:out) v+=m;
    return out;
}
// Modifier plus analytic hue derivative. DCP storage: saturation-fast, then hue, then value.
std::array<double,6> sample(const Map& map, double hue, double saturation, double value) {
    const double h=wrap(hue)*map.hue/6.0;
    const double s=std::clamp(saturation,0.0,1.0)*(map.saturation-1);
    const double v=std::clamp(value,0.0,1.0)*(map.value-1);
    const int h0=std::min(static_cast<int>(h),map.hue-1), h1=(h0+1)%map.hue;
    const int s0=std::min(static_cast<int>(s),map.saturation-2), s1=s0+1;
    const int v0=std::min(static_cast<int>(v),std::max(map.value-2,0)), v1=std::min(v0+1,map.value-1);
    const double hf=h-h0,sf=s-s0,vf=v-v0;
    auto at=[&](int hi,int si,int vi,int c) {return map.data[((vi*map.hue+hi)*map.saturation+si)*3+c];};
    std::array<double,6> out{};
    for(int c=0;c<3;++c) {
        const double p00=at(h0,s0,v0,c)*(1-vf)+at(h0,s0,v1,c)*vf;
        const double p10=at(h1,s0,v0,c)*(1-vf)+at(h1,s0,v1,c)*vf;
        const double p01=at(h0,s1,v0,c)*(1-vf)+at(h0,s1,v1,c)*vf;
        const double p11=at(h1,s1,v0,c)*(1-vf)+at(h1,s1,v1,c)*vf;
        out[c]=(p00*(1-hf)+p10*hf)*(1-sf)+(p01*(1-hf)+p11*hf)*sf;
        out[c+3]=((p10-p00)*(1-sf)+(p11-p01)*sf)*map.hue/6.0;
    }
    return out;
}
double lookupValue(const Map& map,double v) {return map.encoding==1 && map.value>1 ? encode(std::clamp(v,0.0,1.0)) : v;}
double forwardValue(const Map& map,double v,double scale) {
    const double input=map.encoding==1 && map.value>1 ? encode(v) : v;
    return map.encoding==1 ? decode(input*scale) : input*scale;
}
// Bracket saturation rather than assuming a globally injective 3D map. Small
// saturation folds in the shipped S9 D65 profile defeat plain Newton iteration.
bool inverseHs(const Map& map,const Rgb& target,double sourceV,Rgb& source,std::array<double,6>& mod) {
    double lower=0,upper=std::max(1.0,target[1])/map.minSat;
    double h=target[0],s=0;
    const double v=lookupValue(map,sourceV);
    for(int iteration=0;iteration<30;++iteration) {
        s=target[1]<1e-14 ? 0 : (lower+upper)*.5;
        for(int j=0;j<16;++j) {
            mod=sample(map,h,s,v);
            const double e=hueError(h+mod[0]/60.0-target[0]);
            if(std::abs(e)<1e-10) break;
            const double derivative=1+mod[3]/60.0;
            if(!(derivative>1e-6)) return false;
            h-=e/derivative;
        }
        mod=sample(map,h,s,v);
        if(s*mod[1]<target[1]) lower=s; else upper=s;
    }
    source={h,s,sourceV};
    return std::abs(hueError(h+mod[0]/60.0-target[0]))<1e-6 && std::abs(s*mod[1]-target[1])<1e-6;
}
Rgb multiply(const Matrix& m,const Rgb& v) {
    Rgb out{};
    for(int r=0;r<3;++r)for(int c=0;c<3;++c)out[r]+=m[r*3+c]*v[c];
    return out;
}
}
void Map::validate() {
    if(empty()) return;
    if(hue<1 || saturation<2 || value<1 || hue>1024 || saturation>1024 || value>1024 ||
       data.size()!=static_cast<size_t>(hue)*saturation*value*3 || (encoding!=0 && encoding!=1))
        throw std::invalid_argument("Invalid Equivalent camera DCP map dimensions/encoding");
    minSat=1; minValue=1; unityValue=true;
    for(size_t i=0;i<data.size();i+=3) {
        if(!std::isfinite(data[i]) || !std::isfinite(data[i+1]) || !std::isfinite(data[i+2]) ||
           data[i+1]<=0 || data[i+2]<=0) throw std::invalid_argument("Non-invertible Equivalent camera DCP map coefficients");
        minSat=std::min(minSat,static_cast<double>(data[i+1]));
        minValue=std::min(minValue,static_cast<double>(data[i+2]));
        unityValue=unityValue && data[i+2]==1.0f;
    }
}
Rgb applyMap(const Map& map,const Rgb& rgb) {
    if(map.empty()) return rgb;
    auto hsv=toHsv(rgb); const auto mod=sample(map,hsv[0],hsv[1],lookupValue(map,hsv[2]));
    hsv[0]+=mod[0]/60.0; hsv[1]*=mod[1]; hsv[2]=forwardValue(map,hsv[2],mod[2]);
    return toRgb(hsv);
}
bool inverseMap(const Map& map,const Rgb& rgb,Rgb& result) {
    if(map.empty()) {result=rgb;return true;}
    const auto target=toHsv(rgb);
    if(target[2]<=1e-15) {
        result={0,0,0};
        return std::all_of(rgb.begin(),rgb.end(),[](double v){return std::abs(v)<=1e-15;});
    }
    Rgb source{}; std::array<double,6> mod{};
    if(map.value==1) {
        if(!inverseHs(map,target,0,source,mod)) return false;
        source[2]=(map.encoding==1 ? encode(target[2]) : target[2])/mod[2];
    } else if(map.unityValue) {
        if(!inverseHs(map,target,target[2],source,mod)) return false;
    } else {
        double lower=0,upper=map.encoding==1 ? decode(encode(target[2])/map.minValue) : target[2]/map.minValue;
        for(int i=0;i<32;++i) {
            const double v=(lower+upper)*.5;
            if(!inverseHs(map,target,v,source,mod)) return false;
            if(forwardValue(map,v,mod[2])<target[2]) lower=v; else upper=v;
        }
    }
    result=toRgb(source);
    const auto check=applyMap(map,result);
    const double scale=std::max(1.0,target[2]);
    for(int c=0;c<3;++c) if(!std::isfinite(result[c]) || std::abs(check[c]-rgb[c])/scale>1e-5) return false;
    return true;
}
std::vector<float> bake(int size,float inputMax,float linearFraction,const Matrix& sourceToProfile,
                       const Matrix& targetFromProfile,Map hueSat,Map lookTable) {
    if(size<2 || size>129 || !std::isfinite(inputMax) || !(inputMax>1) || !(linearFraction>0 && linearFraction<1)) throw std::invalid_argument("Invalid Equivalent camera LUT domain");
    for(float v:sourceToProfile)if(!std::isfinite(v))throw std::invalid_argument("Invalid source matrix");
    for(float v:targetFromProfile)if(!std::isfinite(v))throw std::invalid_argument("Invalid target matrix");
    hueSat.validate();lookTable.validate();
    std::vector<double> axis(size);
    // Reserve most nodes for the PhotoStyle's [0,1] camera domain while
    // retaining HDR input headroom. This is only a grid coordinate shaper.
    for(int i=0;i<size;++i) {
        const double u=static_cast<double>(i)/(size-1);
        axis[i]=u<=linearFraction ? u/linearFraction :
            std::pow(inputMax,(u-linearFraction)/(1-linearFraction));
    }
    const int count=size*size*size;
    std::vector<float> out(static_cast<size_t>(count)*3);
    std::atomic<int> failures{0};
    #pragma omp parallel for schedule(static)
    for(int i=0;i<count;++i) {
        const Rgb input{axis[i%size],axis[(i/size)%size],axis[i/(size*size)]};
        const auto common=multiply(sourceToProfile,input);
        Rgb beforeLook{},beforeHueSat{};
        if(!inverseMap(lookTable,common,beforeLook) || !inverseMap(hueSat,beforeLook,beforeHueSat)) {
            ++failures;continue;
        }
        const auto camera=multiply(targetFromProfile,beforeHueSat);
        for(int c=0;c<3;++c) {
            if(!std::isfinite(camera[c]) || std::abs(camera[c])>65504) ++failures;
            out[i*3+c]=static_cast<float>(camera[c]);
        }
    }
    if(failures.load()!=0)throw std::runtime_error("Equivalent camera calibration LUT inversion failed at "+std::to_string(failures.load())+" components/nodes");
    return out;
}
}
