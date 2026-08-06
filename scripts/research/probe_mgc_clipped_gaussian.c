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

typedef int64_t (*ClippedGaussianBlur)(
    void *user_context,
    HalideBuffer *input,
    int32_t kernel_size,
    HalideBuffer *result,
    float smooth_sigma);

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
    uint8_t *pixels,
    int width,
    int height) {
    memset(buffer, 0, sizeof(*buffer));
    dimensions[0] = (HalideDimension){0, width, 1, 0};
    dimensions[1] = (HalideDimension){0, height, width, 0};
    buffer->host = pixels;
    buffer->type = (HalideType){1, 8, 1};
    buffer->dimensions = 2;
    buffer->dim = dimensions;
}

static void print_window(
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

static void run_case(
    ClippedGaussianBlur function,
    const char *name,
    uint8_t *input,
    int width,
    int height,
    int kernel_size,
    float sigma) {
    const size_t size = (size_t)width * (size_t)height;
    uint8_t *output = (uint8_t *)calloc(size, 1);
    HalideDimension input_dimensions[2];
    HalideDimension output_dimensions[2];
    HalideBuffer input_buffer;
    HalideBuffer output_buffer;
    initialize_buffer(
        &input_buffer, input_dimensions, input, width, height);
    initialize_buffer(
        &output_buffer, output_dimensions, output, width, height);
    const int64_t status = function(
        NULL, &input_buffer, kernel_size, &output_buffer, sigma);
    printf(
        "case=%s kernel=%d sigma=%.6g status=%" PRId64 "\n",
        name, kernel_size, sigma, status);
    print_window("input", input, width, height);
    print_window("output", output, width, height);
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
    ClippedGaussianBlur function =
        (ClippedGaussianBlur)(g_library_base + 0x387cd28);
    printf(
        "library_base=%#" PRIxPTR " function=%p\n",
        g_library_base, (void *)function);

    enum { WIDTH = 13, HEIGHT = 13, SIZE = WIDTH * HEIGHT };
    uint8_t pixels[SIZE];

    memset(pixels, 200, sizeof(pixels));
    run_case(function, "constant", pixels, WIDTH, HEIGHT, 3, 500.0f);

    memset(pixels, 0, sizeof(pixels));
    pixels[6 * WIDTH + 6] = 255;
    run_case(function, "high_impulse", pixels, WIDTH, HEIGHT, 3, 500.0f);

    memset(pixels, 255, sizeof(pixels));
    pixels[6 * WIDTH + 6] = 0;
    run_case(function, "low_impulse", pixels, WIDTH, HEIGHT, 3, 500.0f);

    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            pixels[y * WIDTH + x] = x < 6 ? 32 : 224;
        }
    }
    run_case(function, "vertical_step", pixels, WIDTH, HEIGHT, 3, 500.0f);

    memset(pixels, 200, sizeof(pixels));
    pixels[6 * WIDTH + 6] = 20;
    pixels[6 * WIDTH + 7] = 80;
    pixels[7 * WIDTH + 6] = 140;
    run_case(function, "asymmetric_low", pixels, WIDTH, HEIGHT, 5, 500.0f);

    dlclose(handle);
    return 0;
}
