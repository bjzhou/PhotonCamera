#include <dlfcn.h>
#include <inttypes.h>
#include <link.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    uint8_t code;
    uint8_t bits;
    uint16_t lanes;
} HalideType;

typedef struct {
    int32_t min;
    int32_t extent;
    int32_t stride;
    uint32_t flags;
} HalideDimension;

typedef struct {
    uint64_t device;
    const void *device_interface;
    uint8_t *host;
    uint64_t flags;
    HalideType type;
    int32_t dimensions;
    HalideDimension *dim;
    void *padding;
} HalideBuffer;

typedef int64_t (*ConvertAlignment)(
    void *user_context,
    HalideBuffer *alignment,
    HalideBuffer *flow_scale,
    int32_t crop_x,
    int32_t crop_y,
    HalideBuffer *output);

typedef struct {
    HalideBuffer buffer;
    HalideDimension dimensions[4];
} OwnedBuffer;

static uintptr_t g_library_base;

static int find_library(struct dl_phdr_info *info, size_t size, void *data) {
    (void)size;
    const char *name = (const char *)data;
    if (info->dlpi_name && strstr(info->dlpi_name, name)) {
        g_library_base = (uintptr_t)info->dlpi_addr;
        return 1;
    }
    return 0;
}

static void initialize_query(OwnedBuffer *owned) {
    memset(owned, 0, sizeof(*owned));
    owned->buffer.dim = owned->dimensions;
    owned->buffer.dimensions = 4;
}

static float half_to_float(uint16_t half) {
    const uint32_t sign = ((uint32_t)half & 0x8000u) << 16;
    uint32_t exponent = ((uint32_t)half >> 10) & 0x1fu;
    uint32_t mantissa = (uint32_t)half & 0x3ffu;
    uint32_t bits;
    if (exponent == 0) {
        if (mantissa == 0) {
            bits = sign;
        } else {
            exponent = 127 - 15 + 1;
            while ((mantissa & 0x400u) == 0) {
                mantissa <<= 1;
                --exponent;
            }
            mantissa &= 0x3ffu;
            bits = sign | (exponent << 23) | (mantissa << 13);
        }
    } else if (exponent == 0x1fu) {
        bits = sign | 0x7f800000u | (mantissa << 13);
    } else {
        bits = sign | ((exponent + (127 - 15)) << 23) | (mantissa << 13);
    }
    float result;
    memcpy(&result, &bits, sizeof(result));
    return result;
}

static void print_buffer(const char *label, const OwnedBuffer *owned) {
    const HalideBuffer *buffer = &owned->buffer;
    printf(
        "%s type=%u/%u/%u dimensions=%d host=%p\n",
        label,
        buffer->type.code,
        buffer->type.bits,
        buffer->type.lanes,
        buffer->dimensions,
        buffer->host);
    for (int index = 0; index < buffer->dimensions && index < 4; ++index) {
        const HalideDimension *dimension = &owned->dimensions[index];
        printf(
            "  dim%d min=%d extent=%d stride=%d flags=%u\n",
            index,
            dimension->min,
            dimension->extent,
            dimension->stride,
            dimension->flags);
    }
}

static void initialize_buffer(
    OwnedBuffer *owned,
    void *host,
    HalideType type,
    int dimensions,
    const int *mins,
    const int *extents,
    const int *strides) {
    memset(owned, 0, sizeof(*owned));
    owned->buffer.host = (uint8_t *)host;
    owned->buffer.type = type;
    owned->buffer.dimensions = dimensions;
    owned->buffer.dim = owned->dimensions;
    for (int index = 0; index < dimensions; ++index) {
        owned->dimensions[index] = (HalideDimension){
            mins[index],
            extents[index],
            strides[index],
            0,
        };
    }
}

static int run_query(ConvertAlignment function) {
    OwnedBuffer alignment;
    OwnedBuffer flow_scale;
    OwnedBuffer output;
    initialize_query(&alignment);
    initialize_query(&flow_scale);
    initialize_query(&output);
    output.buffer.type = (HalideType){1, 16, 1};
    output.buffer.dimensions = 3;
    output.dimensions[0] = (HalideDimension){0, 16, 4, 0};
    output.dimensions[1] = (HalideDimension){0, 16, 16 * 4, 0};
    output.dimensions[2] = (HalideDimension){0, 4, 1, 0};
    const int64_t status = function(
        NULL,
        &alignment.buffer,
        &flow_scale.buffer,
        0,
        0,
        &output.buffer);
    printf("query status=%" PRId64 "\n", status);
    print_buffer("alignment", &alignment);
    print_buffer("flow_scale", &flow_scale);
    print_buffer("output", &output);
    return status == 0 ? 0 : 1;
}

static int run_case(ConvertAlignment function, const char *name) {
    enum {
        GRID_WIDTH = 4,
        GRID_HEIGHT = 4,
        OUTPUT_WIDTH = 16,
        OUTPUT_HEIGHT = 16,
    };
    float alignment_values[GRID_WIDTH * GRID_HEIGHT * 2];
    float flow_scale_values[2] = {
        1.0f / OUTPUT_WIDTH,
        1.0f / OUTPUT_HEIGHT,
    };
    uint16_t output_values[OUTPUT_WIDTH * OUTPUT_HEIGHT * 4];
    memset(alignment_values, 0, sizeof(alignment_values));
    memset(output_values, 0, sizeof(output_values));

    for (int y = 0; y < GRID_HEIGHT; ++y) {
        for (int x = 0; x < GRID_WIDTH; ++x) {
            const int offset = x + GRID_WIDTH * y;
            if (!strcmp(name, "x-step")) {
                alignment_values[offset] = x >= 2 ? 4.0f : 0.0f;
            } else if (!strcmp(name, "xy-step")) {
                alignment_values[offset] = x >= 2 ? 4.0f : 0.0f;
                alignment_values[
                    GRID_WIDTH * GRID_HEIGHT + offset] = y >= 2 ? 3.0f : 0.0f;
            } else if (!strcmp(name, "constant")) {
                alignment_values[offset] = 2.0f;
                alignment_values[
                    GRID_WIDTH * GRID_HEIGHT + offset] = -1.0f;
            }
        }
    }

    OwnedBuffer alignment;
    OwnedBuffer flow_scale;
    OwnedBuffer output;
    initialize_buffer(
        &alignment,
        alignment_values,
        (HalideType){2, 32, 1},
        3,
        (int[3]){0, 0, 0},
        (int[3]){GRID_WIDTH, GRID_HEIGHT, 2},
        (int[3]){1, GRID_WIDTH, GRID_WIDTH * GRID_HEIGHT});
    initialize_buffer(
        &flow_scale,
        flow_scale_values,
        (HalideType){2, 32, 1},
        1,
        (int[1]){0},
        (int[1]){2},
        (int[1]){1});
    initialize_buffer(
        &output,
        output_values,
        (HalideType){1, 16, 1},
        3,
        (int[3]){0, 0, 0},
        (int[3]){OUTPUT_WIDTH, OUTPUT_HEIGHT, 4},
        (int[3]){4, OUTPUT_WIDTH * 4, 1});
    const int64_t status = function(
        NULL,
        &alignment.buffer,
        &flow_scale.buffer,
        0,
        0,
        &output.buffer);
    printf("%s status=%" PRId64 "\n", name, status);
    if (status != 0) {
        return 1;
    }
    float maximum_z = 0.0f;
    int maximum_z_x = 0;
    int maximum_z_y = 0;
    for (int y = 0; y < OUTPUT_HEIGHT; ++y) {
        for (int x = 0; x < OUTPUT_WIDTH; ++x) {
            const int offset = x + OUTPUT_WIDTH * y;
            const float z = half_to_float(output_values[4 * offset + 2]);
            if (z > maximum_z) {
                maximum_z = z;
                maximum_z_x = x;
                maximum_z_y = y;
            }
        }
    }
    printf(
        "  maximum_z=%.9g at (%d,%d)\n",
        maximum_z,
        maximum_z_x,
        maximum_z_y);
    for (int y = 0; y < OUTPUT_HEIGHT; y += 4) {
        for (int x = 0; x < OUTPUT_WIDTH; x += 4) {
            const int offset = x + OUTPUT_WIDTH * y;
            printf(
                "  (%d,%d)=[%.8g,%.8g,%.8g,%.8g]\n",
                x,
                y,
                half_to_float(output_values[4 * offset]),
                half_to_float(output_values[4 * offset + 1]),
                half_to_float(output_values[4 * offset + 2]),
                half_to_float(output_values[4 * offset + 3]));
        }
    }
    return 0;
}

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "usage: %s /path/to/libgcastartup.so\n", argv[0]);
        return 2;
    }
    void *library = dlopen(argv[1], RTLD_NOW | RTLD_LOCAL);
    if (!library) {
        fprintf(stderr, "dlopen failed: %s\n", dlerror());
        return 3;
    }
    dl_iterate_phdr(find_library, "libgcastartup.so");
    if (!g_library_base) {
        fprintf(stderr, "library base not found\n");
        return 4;
    }
    ConvertAlignment function =
        (ConvertAlignment)(g_library_base + 0x35cf3ec);
    printf(
        "base=%p function=%p\n",
        (void *)g_library_base,
        (void *)function);
    int result = run_query(function);
    result |= run_case(function, "constant");
    result |= run_case(function, "x-step");
    result |= run_case(function, "xy-step");
    dlclose(library);
    return result;
}
