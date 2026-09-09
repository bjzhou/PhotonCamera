#include <jni.h>
#include "lumix_lut_baker.h"
#include <algorithm>
#include <stdexcept>

namespace {
lumix::Matrix matrix(JNIEnv* env,jfloatArray input) {
    if(!input || env->GetArrayLength(input)!=9)throw std::invalid_argument("Expected 3x3 Lumix matrix");
    lumix::Matrix out{};env->GetFloatArrayRegion(input,0,9,out.data());return out;
}
lumix::Map map(JNIEnv* env,jintArray dimensions,jfloatArray data) {
    lumix::Map out;
    if(!data)return out;
    if(!dimensions || env->GetArrayLength(dimensions)!=4)throw std::invalid_argument("Invalid Lumix map descriptor");
    jint dims[4];env->GetIntArrayRegion(dimensions,0,4,dims);
    out.hue=dims[0];out.saturation=dims[1];out.value=dims[2];out.encoding=dims[3];
    const auto count=env->GetArrayLength(data);out.data.resize(count);
    env->GetFloatArrayRegion(data,0,count,out.data.data());
    return out;
}
}
extern "C" JNIEXPORT jfloatArray JNICALL
Java_com_hinnka_mycamera_raw_LumixLutNative_bakeNative(JNIEnv* env,jobject,jint size,
    jfloatArray source,jfloatArray s9,jintArray hueDims,jfloatArray hueData,
    jintArray lookDims,jfloatArray lookData,jfloat inputMax,jfloat linearFraction) {
    try {
        const auto sourceMatrix=matrix(env,source);
        const auto s9Matrix=matrix(env,s9);
        auto hueSat=map(env,hueDims,hueData);
        auto lookTable=map(env,lookDims,lookData);
        if(env->ExceptionCheck())return nullptr;
        auto result=lumix::bake(size,inputMax,linearFraction,sourceMatrix,s9Matrix,
                                std::move(hueSat),std::move(lookTable));
        if(env->ExceptionCheck())return nullptr;
        auto output=env->NewFloatArray(static_cast<jsize>(result.size()));
        if(output)env->SetFloatArrayRegion(output,0,static_cast<jsize>(result.size()),result.data());
        return output;
    } catch(const std::exception& error) {
        if(!env->ExceptionCheck())env->ThrowNew(env->FindClass("java/lang/IllegalStateException"),error.what());
        return nullptr;
    }
}
