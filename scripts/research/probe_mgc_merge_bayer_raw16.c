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

typedef int64_t (*MergeBayerRaw16)(
    void *user_context,
    int32_t bayer_pattern,
    HalideBuffer *base_frame,
    HalideBuffer *burst_ptrs,
    HalideBuffer *alignment,
    HalideBuffer *rejection_masks,
    HalideBuffer *frame_weights,
    HalideBuffer *input_black_levels,
    HalideBuffer *input_gains,
    float overall_gain,
    HalideBuffer *kernel_sigmas,
    HalideBuffer *linear_kernel_mask,
    int32_t linear_kernel_mask_downsampling,
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

static void initialize_output_query(OwnedBuffer *owned, int width, int height) {
    initialize_query(owned);
    owned->buffer.type = (HalideType){0, 16, 1};
    owned->buffer.dimensions = 2;
    owned->dimensions[0] = (HalideDimension){0, width, 1, 0};
    owned->dimensions[1] = (HalideDimension){0, height, width, 0};
}

static void initialize_u64_vector(
    OwnedBuffer *owned,
    uint64_t *values,
    int extent) {
    memset(owned, 0, sizeof(*owned));
    owned->buffer.host = (uint8_t *)values;
    owned->buffer.type = (HalideType){1, 64, 1};
    owned->buffer.dimensions = 1;
    owned->buffer.dim = owned->dimensions;
    owned->dimensions[0] = (HalideDimension){0, extent, 1, 0};
}

static void initialize_buffer(
    OwnedBuffer *owned,
    void *host,
    HalideType type,
    int dimensions,
    const int *extents) {
    memset(owned, 0, sizeof(*owned));
    owned->buffer.host = (uint8_t *)host;
    owned->buffer.type = type;
    owned->buffer.dimensions = dimensions;
    owned->buffer.dim = owned->dimensions;
    int stride = 1;
    for (int i = 0; i < dimensions; ++i) {
        owned->dimensions[i] =
            (HalideDimension){0, extents[i], stride, 0};
        stride *= extents[i];
    }
}

static void initialize_buffer_with_strides(
    OwnedBuffer *owned,
    void *host,
    HalideType type,
    int dimensions,
    const int *extents,
    const int *strides) {
    memset(owned, 0, sizeof(*owned));
    owned->buffer.host = (uint8_t *)host;
    owned->buffer.type = type;
    owned->buffer.dimensions = dimensions;
    owned->buffer.dim = owned->dimensions;
    for (int i = 0; i < dimensions; ++i) {
        owned->dimensions[i] =
            (HalideDimension){0, extents[i], strides[i], 0};
    }
}

static int run_constant_case(
    MergeBayerRaw16 function,
    float linear_mask_value,
    uint8_t rejection_value,
    float frame_weight,
    float input_gain,
    float kernel_sigma) {
    enum {
        OUTPUT_WIDTH = 16,
        OUTPUT_HEIGHT = 16,
        RAW_STORAGE_SAMPLES = 4 * 1024 * 1024,
    };
    uint16_t *base_storage =
        (uint16_t *)malloc(RAW_STORAGE_SAMPLES * sizeof(uint16_t));
    uint16_t *burst_storage =
        (uint16_t *)malloc(RAW_STORAGE_SAMPLES * sizeof(uint16_t));
    if (!base_storage || !burst_storage) {
        fprintf(stderr, "raw storage allocation failed\n");
        free(base_storage);
        free(burst_storage);
        return 1;
    }
    for (int index = 0; index < RAW_STORAGE_SAMPLES; ++index) {
        base_storage[index] = 4096;
        burst_storage[index] = 4096;
    }
    uint16_t *base_raw = base_storage + RAW_STORAGE_SAMPLES / 2;
    uint16_t *burst_raw = burst_storage + RAW_STORAGE_SAMPLES / 2;
    uint64_t burst_pointer = (uint64_t)(uintptr_t)burst_raw;
    float alignment_values[8] = {0};
    alignment_values[0] = 1.0f;
    alignment_values[3] = 1.0f;
    alignment_values[4] = 1.0f;
    alignment_values[7] = 1.0f;
    uint8_t rejection_values[1] = {rejection_value};
    float frame_weight_values[1] = {frame_weight};
    float black_level_values[3] = {0};
    float gain_values[1] = {input_gain};
    float kernel_sigma_values[1] = {kernel_sigma};
    float linear_mask_values[1] = {linear_mask_value};
    int16_t output_values[OUTPUT_WIDTH * OUTPUT_HEIGHT * 4];
    for (int index = 0;
         index < OUTPUT_WIDTH * OUTPUT_HEIGHT * 4;
         ++index) {
        output_values[index] = (int16_t)0x5a5a;
    }

    OwnedBuffer base_frame;
    OwnedBuffer burst_ptrs;
    OwnedBuffer alignment;
    OwnedBuffer rejection_masks;
    OwnedBuffer frame_weights;
    OwnedBuffer input_black_levels;
    OwnedBuffer input_gains;
    OwnedBuffer kernel_sigmas;
    OwnedBuffer linear_kernel_mask;
    OwnedBuffer output;
    const int raw_extents[2] = {0, 0};
    const int vector_extent[1] = {1};
    const int alignment_extents[4] = {2, 2, 1, 2};
    const int alignment_strides[4] = {1, 2, 4, 4};
    const int rejection_extents[3] = {1, 1, 1};
    const int black_extents[2] = {1, 3};
    const int output_extents[3] = {
        OUTPUT_WIDTH,
        OUTPUT_HEIGHT,
        4,
    };
    initialize_buffer(
        &base_frame,
        base_raw,
        (HalideType){1, 16, 1},
        2,
        raw_extents);
    initialize_u64_vector(&burst_ptrs, &burst_pointer, 1);
    initialize_buffer_with_strides(
        &alignment,
        alignment_values,
        (HalideType){2, 32, 1},
        4,
        alignment_extents,
        alignment_strides);
    initialize_buffer(
        &rejection_masks,
        rejection_values,
        (HalideType){1, 8, 1},
        3,
        rejection_extents);
    initialize_buffer(
        &frame_weights,
        frame_weight_values,
        (HalideType){2, 32, 1},
        1,
        vector_extent);
    initialize_buffer(
        &input_black_levels,
        black_level_values,
        (HalideType){2, 32, 1},
        2,
        black_extents);
    initialize_buffer(
        &input_gains,
        gain_values,
        (HalideType){2, 32, 1},
        1,
        vector_extent);
    initialize_buffer(
        &kernel_sigmas,
        kernel_sigma_values,
        (HalideType){2, 32, 1},
        1,
        vector_extent);
    initialize_buffer(
        &linear_kernel_mask,
        linear_mask_values,
        (HalideType){2, 32, 1},
        2,
        (int[2]){1, 1});
    initialize_buffer(
        &output,
        output_values,
        (HalideType){0, 16, 1},
        3,
        output_extents);

    const int64_t status = function(
        NULL,
        0,
        &base_frame.buffer,
        &burst_ptrs.buffer,
        &alignment.buffer,
        &rejection_masks.buffer,
        &frame_weights.buffer,
        &input_black_levels.buffer,
        &input_gains.buffer,
        1.0f,
        &kernel_sigmas.buffer,
        &linear_kernel_mask.buffer,
        4,
        &output.buffer);
    printf(
        "constant mask=%.1f rejection=%u weight=%.2f gain=%.2f sigma=%.2f "
        "status=%" PRId64 " center=[",
        linear_mask_value,
        rejection_value,
        frame_weight,
        input_gain,
        kernel_sigma,
        status);
    const int center = (8 * OUTPUT_WIDTH + 8);
    for (int channel = 0; channel < 4; ++channel) {
        if (channel != 0) {
            putchar(',');
        }
        printf(
            "%d",
            output_values[channel * OUTPUT_WIDTH * OUTPUT_HEIGHT + center]);
    }
    int minimum = INT16_MAX;
    int maximum = INT16_MIN;
    int changed = 0;
    int nonzero = 0;
    for (int index = 0;
         index < OUTPUT_WIDTH * OUTPUT_HEIGHT * 4;
         ++index) {
        const int value = output_values[index];
        if (value < minimum) minimum = value;
        if (value > maximum) maximum = value;
        if (value != (int16_t)0x5a5a) ++changed;
        if (value != 0) ++nonzero;
    }
    printf(
        "] range=[%d,%d] changed=%d nonzero=%d\n",
        minimum,
        maximum,
        changed,
        nonzero);
    free(base_storage);
    free(burst_storage);
    return status == 0 ? 0 : 1;
}

static int run_two_frame_case(
    MergeBayerRaw16 function,
    uint8_t rejection0,
    uint8_t rejection1,
    float frame_weight0,
    float frame_weight1) {
    enum {
        OUTPUT_WIDTH = 16,
        OUTPUT_HEIGHT = 16,
        RAW_STORAGE_SAMPLES = 4 * 1024 * 1024,
        FRAME_COUNT = 2,
    };
    uint16_t *raw_storage[FRAME_COUNT] = {0};
    uint64_t burst_pointers[FRAME_COUNT] = {0};
    const uint16_t raw_values[FRAME_COUNT] = {1000, 9000};
    for (int frame = 0; frame < FRAME_COUNT; ++frame) {
        raw_storage[frame] =
            (uint16_t *)malloc(RAW_STORAGE_SAMPLES * sizeof(uint16_t));
        if (!raw_storage[frame]) {
            fprintf(stderr, "two-frame raw storage allocation failed\n");
            for (int previous = 0; previous < frame; ++previous) {
                free(raw_storage[previous]);
            }
            return 1;
        }
        for (int index = 0; index < RAW_STORAGE_SAMPLES; ++index) {
            raw_storage[frame][index] = raw_values[frame];
        }
        burst_pointers[frame] = (uint64_t)(uintptr_t)(
            raw_storage[frame] + RAW_STORAGE_SAMPLES / 2);
    }
    float alignment_values[2 * 2 * FRAME_COUNT * 2] = {0};
    for (int layer = 0; layer < 2; ++layer) {
        for (int frame = 0; frame < FRAME_COUNT; ++frame) {
            const int matrix = (layer * FRAME_COUNT + frame) * 4;
            alignment_values[matrix] = 1.0f;
            alignment_values[matrix + 3] = 1.0f;
        }
    }
    uint8_t rejection_values[FRAME_COUNT] = {rejection0, rejection1};
    float frame_weight_values[FRAME_COUNT] = {
        frame_weight0,
        frame_weight1,
    };
    float black_level_values[FRAME_COUNT * 3] = {0};
    float gain_values[FRAME_COUNT] = {1.0f, 1.0f};
    float kernel_sigma_values[FRAME_COUNT] = {1.0f, 1.0f};
    float linear_mask_values[1] = {0.0f};
    int16_t output_values[OUTPUT_WIDTH * OUTPUT_HEIGHT * 4] = {0};

    OwnedBuffer base_frame;
    OwnedBuffer burst_ptrs;
    OwnedBuffer alignment;
    OwnedBuffer rejection_masks;
    OwnedBuffer frame_weights;
    OwnedBuffer input_black_levels;
    OwnedBuffer input_gains;
    OwnedBuffer kernel_sigmas;
    OwnedBuffer linear_kernel_mask;
    OwnedBuffer output;
    const int base_extents[2] = {0, 0};
    const int vector_extent[1] = {FRAME_COUNT};
    const int alignment_extents[4] = {2, 2, FRAME_COUNT, 2};
    const int alignment_strides[4] = {
        1,
        2,
        4,
        4 * FRAME_COUNT,
    };
    const int rejection_extents[3] = {1, 1, FRAME_COUNT};
    const int black_extents[2] = {FRAME_COUNT, 3};
    const int output_extents[3] = {
        OUTPUT_WIDTH,
        OUTPUT_HEIGHT,
        4,
    };
    initialize_buffer(
        &base_frame,
        NULL,
        (HalideType){1, 16, 1},
        2,
        base_extents);
    initialize_u64_vector(&burst_ptrs, burst_pointers, FRAME_COUNT);
    initialize_buffer_with_strides(
        &alignment,
        alignment_values,
        (HalideType){2, 32, 1},
        4,
        alignment_extents,
        alignment_strides);
    initialize_buffer(
        &rejection_masks,
        rejection_values,
        (HalideType){1, 8, 1},
        3,
        rejection_extents);
    initialize_buffer(
        &frame_weights,
        frame_weight_values,
        (HalideType){2, 32, 1},
        1,
        vector_extent);
    initialize_buffer(
        &input_black_levels,
        black_level_values,
        (HalideType){2, 32, 1},
        2,
        black_extents);
    initialize_buffer(
        &input_gains,
        gain_values,
        (HalideType){2, 32, 1},
        1,
        vector_extent);
    initialize_buffer(
        &kernel_sigmas,
        kernel_sigma_values,
        (HalideType){2, 32, 1},
        1,
        vector_extent);
    initialize_buffer(
        &linear_kernel_mask,
        linear_mask_values,
        (HalideType){2, 32, 1},
        2,
        (int[2]){1, 1});
    initialize_buffer(
        &output,
        output_values,
        (HalideType){0, 16, 1},
        3,
        output_extents);

    const int64_t status = function(
        NULL,
        0,
        &base_frame.buffer,
        &burst_ptrs.buffer,
        &alignment.buffer,
        &rejection_masks.buffer,
        &frame_weights.buffer,
        &input_black_levels.buffer,
        &input_gains.buffer,
        1.0f,
        &kernel_sigmas.buffer,
        &linear_kernel_mask.buffer,
        4,
        &output.buffer);
    const int center = 8 * OUTPUT_WIDTH + 8;
    printf(
        "two_frame rejection=[%u,%u] frame_weight=[%.2f,%.2f] "
        "status=%" PRId64 " center=[%d,%d,%d,%d]\n",
        rejection0,
        rejection1,
        frame_weight0,
        frame_weight1,
        status,
        output_values[center],
        output_values[OUTPUT_WIDTH * OUTPUT_HEIGHT + center],
        output_values[2 * OUTPUT_WIDTH * OUTPUT_HEIGHT + center],
        output_values[3 * OUTPUT_WIDTH * OUTPUT_HEIGHT + center]);
    for (int frame = 0; frame < FRAME_COUNT; ++frame) {
        free(raw_storage[frame]);
    }
    return status == 0 ? 0 : 1;
}

static void print_buffer(const char *name, const OwnedBuffer *owned) {
    const HalideBuffer *buffer = &owned->buffer;
    printf(
        "%s type={code=%u bits=%u lanes=%u} dimensions=%d"
        " host=%p device=%" PRIu64 "\n",
        name,
        buffer->type.code,
        buffer->type.bits,
        buffer->type.lanes,
        buffer->dimensions,
        buffer->host,
        buffer->device);
    int dimensions = buffer->dimensions;
    if (dimensions < 0) {
        dimensions = 0;
    } else if (dimensions > 4) {
        dimensions = 4;
    }
    for (int i = 0; i < dimensions; ++i) {
        printf(
            "  dim%d min=%d extent=%d stride=%d flags=%u\n",
            i,
            buffer->dim[i].min,
            buffer->dim[i].extent,
            buffer->dim[i].stride,
            buffer->dim[i].flags);
    }
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
    MergeBayerRaw16 function =
        (MergeBayerRaw16)(g_library_base + 0x3665564);

    OwnedBuffer base_frame;
    OwnedBuffer burst_ptrs;
    OwnedBuffer alignment;
    OwnedBuffer rejection_masks;
    OwnedBuffer frame_weights;
    OwnedBuffer input_black_levels;
    OwnedBuffer input_gains;
    OwnedBuffer kernel_sigmas;
    OwnedBuffer linear_kernel_mask;
    OwnedBuffer output;
    initialize_query(&base_frame);
    initialize_query(&burst_ptrs);
    initialize_query(&alignment);
    initialize_query(&rejection_masks);
    initialize_query(&frame_weights);
    initialize_query(&input_black_levels);
    initialize_query(&input_gains);
    initialize_query(&kernel_sigmas);
    initialize_query(&linear_kernel_mask);
    initialize_output_query(&output, 16, 16);

    printf(
        "library_base=%#" PRIxPTR " function=%p\n",
        g_library_base,
        (void *)function);
    const int64_t status = function(
        NULL,
        0,
        &base_frame.buffer,
        &burst_ptrs.buffer,
        &alignment.buffer,
        &rejection_masks.buffer,
        &frame_weights.buffer,
        &input_black_levels.buffer,
        &input_gains.buffer,
        1.0f,
        &kernel_sigmas.buffer,
        &linear_kernel_mask.buffer,
        4,
        &output.buffer);
    printf("status=%" PRId64 "\n", status);
    print_buffer("base_frame", &base_frame);
    print_buffer("burst_ptrs", &burst_ptrs);
    print_buffer("alignment", &alignment);
    print_buffer("rejection_masks", &rejection_masks);
    print_buffer("frame_weights", &frame_weights);
    print_buffer("input_black_levels", &input_black_levels);
    print_buffer("input_gains", &input_gains);
    print_buffer("kernel_sigmas", &kernel_sigmas);
    print_buffer("linear_kernel_mask", &linear_kernel_mask);
    print_buffer("output", &output);

    uint64_t burst_pointer = 0;
    initialize_query(&base_frame);
    initialize_u64_vector(&burst_ptrs, &burst_pointer, 1);
    initialize_query(&alignment);
    initialize_query(&rejection_masks);
    initialize_query(&frame_weights);
    initialize_query(&input_black_levels);
    initialize_query(&input_gains);
    initialize_query(&kernel_sigmas);
    initialize_query(&linear_kernel_mask);
    initialize_output_query(&output, 16, 16);
    const int64_t one_burst_status = function(
        NULL,
        0,
        &base_frame.buffer,
        &burst_ptrs.buffer,
        &alignment.buffer,
        &rejection_masks.buffer,
        &frame_weights.buffer,
        &input_black_levels.buffer,
        &input_gains.buffer,
        1.0f,
        &kernel_sigmas.buffer,
        &linear_kernel_mask.buffer,
        4,
        &output.buffer);
    printf("one_burst_bounds status=%" PRId64 "\n", one_burst_status);
    print_buffer("base_frame", &base_frame);
    print_buffer("burst_ptrs", &burst_ptrs);
    print_buffer("alignment", &alignment);
    print_buffer("rejection_masks", &rejection_masks);
    print_buffer("frame_weights", &frame_weights);
    print_buffer("input_black_levels", &input_black_levels);
    print_buffer("input_gains", &input_gains);
    print_buffer("kernel_sigmas", &kernel_sigmas);
    print_buffer("linear_kernel_mask", &linear_kernel_mask);
    print_buffer("output", &output);

    const int output_sizes[] = {16, 32, 64, 128};
    for (size_t size_index = 0;
         size_index < sizeof(output_sizes) / sizeof(output_sizes[0]);
         ++size_index) {
        const int output_size = output_sizes[size_index];
        initialize_query(&base_frame);
        initialize_u64_vector(&burst_ptrs, &burst_pointer, 1);
        initialize_query(&alignment);
        initialize_query(&rejection_masks);
        initialize_query(&frame_weights);
        initialize_query(&input_black_levels);
        initialize_query(&input_gains);
        initialize_query(&kernel_sigmas);
        initialize_query(&linear_kernel_mask);
        initialize_output_query(&output, output_size, output_size);
        const int64_t size_status = function(
            NULL,
            0,
            &base_frame.buffer,
            &burst_ptrs.buffer,
            &alignment.buffer,
            &rejection_masks.buffer,
            &frame_weights.buffer,
            &input_black_levels.buffer,
            &input_gains.buffer,
            1.0f,
            &kernel_sigmas.buffer,
            &linear_kernel_mask.buffer,
            4,
            &output.buffer);
        printf(
            "bounds output=%dx%d status=%" PRId64
            " alignment=%dx%dx%dx%d rejection=%dx%d"
            " linear_mask=%dx%d\n",
            output_size,
            output_size,
            size_status,
            alignment.dimensions[0].extent,
            alignment.dimensions[1].extent,
            alignment.dimensions[2].extent,
            alignment.dimensions[3].extent,
            rejection_masks.dimensions[0].extent,
            rejection_masks.dimensions[1].extent,
            linear_kernel_mask.dimensions[0].extent,
            linear_kernel_mask.dimensions[1].extent);
    }
    const int output_origins[] = {0, 1, 7, 8, 15, 16, 17, 31, 32, 63, 64};
    for (size_t origin_index = 0;
         origin_index < sizeof(output_origins) / sizeof(output_origins[0]);
         ++origin_index) {
        const int output_origin = output_origins[origin_index];
        initialize_query(&base_frame);
        initialize_u64_vector(&burst_ptrs, &burst_pointer, 1);
        initialize_query(&alignment);
        initialize_query(&rejection_masks);
        initialize_query(&frame_weights);
        initialize_query(&input_black_levels);
        initialize_query(&input_gains);
        initialize_query(&kernel_sigmas);
        initialize_query(&linear_kernel_mask);
        initialize_output_query(&output, 16, 16);
        output.dimensions[0].min = output_origin;
        output.dimensions[1].min = output_origin;
        const int64_t origin_status = function(
            NULL,
            0,
            &base_frame.buffer,
            &burst_ptrs.buffer,
            &alignment.buffer,
            &rejection_masks.buffer,
            &frame_weights.buffer,
            &input_black_levels.buffer,
            &input_gains.buffer,
            1.0f,
            &kernel_sigmas.buffer,
            &linear_kernel_mask.buffer,
            4,
            &output.buffer);
        printf(
            "bounds origin=%d status=%" PRId64
            " alignment_min=%d,%d extent=%dx%d"
            " rejection_min=%d,%d extent=%dx%d"
            " linear_min=%d,%d extent=%dx%d\n",
            output_origin,
            origin_status,
            alignment.dimensions[0].min,
            alignment.dimensions[1].min,
            alignment.dimensions[0].extent,
            alignment.dimensions[1].extent,
            rejection_masks.dimensions[0].min,
            rejection_masks.dimensions[1].min,
            rejection_masks.dimensions[0].extent,
            rejection_masks.dimensions[1].extent,
            linear_kernel_mask.dimensions[0].min,
            linear_kernel_mask.dimensions[1].min,
            linear_kernel_mask.dimensions[0].extent,
            linear_kernel_mask.dimensions[1].extent);
    }

    uint64_t two_burst_pointers[2] = {0, 0};
    initialize_query(&base_frame);
    initialize_u64_vector(&burst_ptrs, two_burst_pointers, 2);
    initialize_query(&alignment);
    initialize_query(&rejection_masks);
    initialize_query(&frame_weights);
    initialize_query(&input_black_levels);
    initialize_query(&input_gains);
    initialize_query(&kernel_sigmas);
    initialize_query(&linear_kernel_mask);
    initialize_output_query(&output, 16, 16);
    const int64_t two_burst_status = function(
        NULL,
        0,
        &base_frame.buffer,
        &burst_ptrs.buffer,
        &alignment.buffer,
        &rejection_masks.buffer,
        &frame_weights.buffer,
        &input_black_levels.buffer,
        &input_gains.buffer,
        1.0f,
        &kernel_sigmas.buffer,
        &linear_kernel_mask.buffer,
        4,
        &output.buffer);
    printf("two_burst_bounds status=%" PRId64 "\n", two_burst_status);
    print_buffer("alignment", &alignment);
    print_buffer("rejection_masks", &rejection_masks);
    print_buffer("frame_weights", &frame_weights);
    print_buffer("input_black_levels", &input_black_levels);
    print_buffer("input_gains", &input_gains);
    print_buffer("kernel_sigmas", &kernel_sigmas);

    run_constant_case(function, 0.0f, 0, 1.0f, 1.0f, 1.0f);
    run_constant_case(function, 0.0f, 1, 1.0f, 1.0f, 1.0f);
    run_constant_case(function, 0.0f, 255, 1.0f, 1.0f, 1.0f);
    run_constant_case(function, 1.0f, 0, 1.0f, 1.0f, 1.0f);
    run_constant_case(function, 1.0f, 1, 1.0f, 1.0f, 1.0f);
    run_constant_case(function, 1.0f, 255, 1.0f, 1.0f, 1.0f);
    run_two_frame_case(function, 1, 1, 1.0f, 1.0f);
    run_two_frame_case(function, 1, 0, 1.0f, 1.0f);
    run_two_frame_case(function, 0, 1, 1.0f, 1.0f);
    run_two_frame_case(function, 1, 255, 1.0f, 1.0f);
    run_two_frame_case(function, 255, 1, 1.0f, 1.0f);
    run_two_frame_case(function, 255, 255, 1.0f, 1.0f);
    run_two_frame_case(function, 1, 1, 1.0f, 3.0f);
    run_two_frame_case(function, 1, 1, 3.0f, 1.0f);

    dlclose(handle);
    return 0;
}
