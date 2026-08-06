#include <dlfcn.h>
#include <inttypes.h>
#include <link.h>
#include <math.h>
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

typedef int64_t (*UpdateLinearKernelMask)(
    void *user_context,
    HalideBuffer *rejection_buffers,
    HalideBuffer *linear_kernel_mask);

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

static void initialize_buffer(
    HalideBuffer *buffer,
    HalideDimension dimensions[2],
    void *pixels,
    int width,
    int height,
    HalideType type) {
    memset(buffer, 0, sizeof(*buffer));
    dimensions[0] = (HalideDimension){0, width, 1, 0};
    dimensions[1] = (HalideDimension){0, height, width, 0};
    buffer->host = (uint8_t *)pixels;
    buffer->type = type;
    buffer->dimensions = 2;
    buffer->dim = dimensions;
}

static void print_u8_window(
    const char *name,
    const uint8_t *pixels,
    int width,
    int height) {
    printf("%s\n", name);
    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            printf("%4u", pixels[y * width + x]);
        }
        putchar('\n');
    }
}

static void print_float_window(
    const char *name,
    const float *pixels,
    int width,
    int height) {
    printf("%s\n", name);
    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            printf("%7.3f", pixels[y * width + x]);
        }
        putchar('\n');
    }
}

static void run_case(
    UpdateLinearKernelMask function,
    const char *name,
    uint8_t *input,
    int width,
    int height,
    float output_initial_value) {
    const size_t size = (size_t)width * (size_t)height;
    float *output = (float *)malloc(size * sizeof(float));
    for (size_t i = 0; i < size; ++i) {
        output[i] = output_initial_value;
    }

    HalideDimension input_dimensions[2];
    HalideDimension output_dimensions[2];
    HalideBuffer input_buffer;
    HalideBuffer output_buffer;
    initialize_buffer(
        &input_buffer,
        input_dimensions,
        input,
        width,
        height,
        (HalideType){1, 8, 1});
    initialize_buffer(
        &output_buffer,
        output_dimensions,
        output,
        width,
        height,
        (HalideType){2, 32, 1});

    const int64_t status = function(NULL, &input_buffer, &output_buffer);
    printf(
        "case=%s output_initial=%.3f status=%" PRId64 "\n",
        name,
        output_initial_value,
        status);
    print_u8_window("input", input, width, height);
    print_float_window("output", output, width, height);
    free(output);
}

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "usage: %s /path/to/libgcastartup.so\n", argv[0]);
        return 2;
    }
    void *handle = dlopen(argv[1], RTLD_NOW | RTLD_LOCAL);
    if (!handle) {
        fprintf(stderr, "dlopen failed: %s\n", dlerror());
        return 3;
    }
    dl_iterate_phdr(find_library, (void *)"libgcastartup.so");
    if (!g_library_base) {
        fprintf(stderr, "libgcastartup.so base not found\n");
        return 4;
    }
    UpdateLinearKernelMask function =
        (UpdateLinearKernelMask)(g_library_base + 0x3bf5284);
    printf(
        "library_base=%#" PRIxPTR " function=%p\n",
        g_library_base,
        (void *)function);

    enum { WIDTH = 13, HEIGHT = 13, SIZE = WIDTH * HEIGHT };
    uint8_t pixels[SIZE];

    memset(pixels, 0, sizeof(pixels));
    run_case(function, "constant_zero", pixels, WIDTH, HEIGHT, 0.0f);
    run_case(function, "constant_zero_existing", pixels, WIDTH, HEIGHT, 0.37f);

    memset(pixels, 1, sizeof(pixels));
    run_case(function, "constant_one", pixels, WIDTH, HEIGHT, 0.0f);

    memset(pixels, 0, sizeof(pixels));
    pixels[6 * WIDTH + 6] = 1;
    run_case(function, "unit_impulse", pixels, WIDTH, HEIGHT, 0.0f);

    memset(pixels, 0, sizeof(pixels));
    pixels[6 * WIDTH + 6] = 16;
    run_case(function, "low_impulse", pixels, WIDTH, HEIGHT, 0.0f);

    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            pixels[y * WIDTH + x] = x < 6 ? 0 : 255;
        }
    }
    run_case(function, "full_vertical_step", pixels, WIDTH, HEIGHT, 0.0f);

    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            pixels[y * WIDTH + x] = x < 6 ? 64 : 192;
        }
    }
    run_case(function, "scaled_vertical_step", pixels, WIDTH, HEIGHT, 0.0f);

    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            pixels[y * WIDTH + x] = ((x + y) & 1) ? 0 : 255;
        }
    }
    run_case(function, "checker", pixels, WIDTH, HEIGHT, 0.0f);

    dlclose(handle);
    return 0;
}
