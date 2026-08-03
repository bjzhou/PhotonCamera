/*
 * Runtime research helper for the locally supplied Phocus libcrosssdk.so.
 *
 * CameraBackModelString() contains Phocus' name composer for internal
 * camera-back and CCD enums.  WebDeviceType() filters combinations for the
 * detailed legacy model enums, although generic family enums still accept
 * more than the combinations shipped as products.  The LUT lookup is queried
 * separately with the profile IDs recovered from
 * CRawColorParams::GetCPID()/CXMLLut::GetFileName().
 */

#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>

#include <string>

namespace {

using CameraBackModelString = std::string (*)(int, int);
using WebDeviceType = int (*)(int, int);
using GetLutFileName = std::string (*)(unsigned int);

template <typename T>
T RequireSymbol(void *library, const char *name) {
    dlerror();
    void *symbol = dlsym(library, name);
    const char *error = dlerror();
    if (error != nullptr || symbol == nullptr) {
        fprintf(stderr, "dlsym(%s) failed: %s\n", name, error ? error : "null");
        exit(3);
    }
    return reinterpret_cast<T>(symbol);
}

}  // namespace

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "usage: %s LIBCROSSSDK_SO\n", argv[0]);
        return 1;
    }

    void *library = dlopen(argv[1], RTLD_NOW | RTLD_LOCAL);
    if (library == nullptr) {
        fprintf(stderr, "dlopen(%s) failed: %s\n", argv[1], dlerror());
        return 2;
    }

    const auto camera_back_model_string =
        RequireSymbol<CameraBackModelString>(
            library,
            "_ZN12CBodyAndBack21CameraBackModelStringE16eCameraBackModel9eCCDTypes"
        );
    const auto web_device_type =
        RequireSymbol<WebDeviceType>(
            library,
            "_ZN12CBodyAndBack13WebDeviceTypeE16eCameraBackModel9eCCDTypes"
        );
    const auto get_lut_file_name =
        RequireSymbol<GetLutFileName>(
            library,
            "_ZN7CXMLLut11GetFileNameE13uColorProfile"
        );

    constexpr int kCcdTypes[] = {
        0x04, 0x07, 0x08, 0x09, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
        0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16,
    };
    puts("[camera-models]");
    for (int model = 0; model <= 100; ++model) {
        for (const int ccd : kCcdTypes) {
            const int device_type = web_device_type(model, ccd);
            if (device_type != 0) {
                const std::string name = camera_back_model_string(model, ccd);
                printf(
                    "cameraBackModel=%d ccdType=0x%02x "
                    "webDeviceType=%d name=%s\n",
                    model,
                    ccd,
                    device_type,
                    name.c_str()
                );
            }
        }
    }

    constexpr unsigned int kColorProfiles[] = {
        0x004, 0x007, 0x008, 0x009, 0x012, 0x013,
        0x404, 0x408, 0x409, 0x40b, 0x40c, 0x40d, 0x40e,
        0x50b, 0x50c, 0x50d, 0x50e, 0x50f, 0x510, 0x511, 0x514,
        0x614, 0x714, 0x615, 0x616, 0x690f,
    };
    puts("[lut-files]");
    for (const unsigned int profile : kColorProfiles) {
        const std::string file_name = get_lut_file_name(profile);
        printf("colorProfile=0x%04x file=%s\n", profile, file_name.c_str());
    }

    dlclose(library);
    return 0;
}
