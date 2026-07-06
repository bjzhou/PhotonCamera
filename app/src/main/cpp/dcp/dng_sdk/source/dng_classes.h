/*****************************************************************************/
// Copyright 2006-2023 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/*** \file
 * Forward class declarations to avoid having to include many .h files in most places.
 */

/*****************************************************************************/

#ifndef __dng_classes__
#define __dng_classes__

/*****************************************************************************/

#include <memory>
#include <vector>

/*****************************************************************************/

class dng_1d_function;
class dng_1d_table;
class dng_abort_sniffer;
class dng_area_task;
class dng_area_task_progress;
class dng_av1_encode_settings;
class dng_base_tile_iterator;
class dng_basic_tag_set;
class dng_big_table;
class dng_big_table_accessor;
class dng_big_table_cache;
class dng_big_table_dictionary;
class dng_big_table_storage;
class dng_camera_profile;
class dng_camera_profile_dynamic_range;
class dng_camera_profile_group_selector;
class dng_camera_profile_id;
class dng_camera_profile_info;
class dng_camera_profile_metadata;
class dng_color_space;
class dng_color_spec;
class dng_date_time;
class dng_date_time_info;
class dng_date_time_storage_info;
class dng_exif;
class dng_fingerprint;
class dng_gain_table_map;
class dng_host;
class dng_hue_sat_map;
class dng_ifd;
class dng_image;
class dng_image_preview;
class dng_image_table;
class dng_image_table_compression_info;
class dng_image_table_jxl_compression_info;
class dng_image_writer;
class dng_info;
class dng_iptc;
class dng_jpeg_image;
class dng_jpeg_preview;
class dng_jxl_color_space_info;
class dng_jxl_encode_settings;
class dng_linearization_info;
class dng_local_string;
class dng_look_table;
class dng_lossless_jpeg_handler;
class dng_lossy_compressed_image;
class dng_masked_rgb_table;
class dng_masked_rgb_table_render_data;
class dng_masked_rgb_tables;
class dng_matrix;
class dng_matrix_3by3;
class dng_matrix_4by3;
class dng_md5_printer;
class dng_md5_printer_le_stream;
class dng_md5_printer_stream;
class dng_memory_allocator;
class dng_memory_block;
class dng_memory_data;
class dng_memory_stream;
class dng_metadata;
class dng_mosaic_info;
class dng_mutex;
class dng_noise_function;
class dng_noise_profile;
class dng_opcode;
class dng_opcode_list;
class dng_orientation;
class dng_negative;
class dng_oriented_bounding_box;
class dng_piecewise_linear;
class dng_pixel_buffer;
class dng_point;
class dng_point_real64;
class dng_preview;
class dng_preview_info;
class dng_preview_list;
class dng_raw_preview;
class dng_read_image;
class dng_rect;
class dng_rect_real64;
class dng_ref_counted_block;
class dng_render;
class dng_resample_function;
class dng_resolution;
class dng_rgb_table;
class dng_rgb_to_rgb_table_data;
class dng_semantic_mask;
class dng_set_minimum_priority;
class dng_shared;
class dng_spline_solver;
class dng_spooler;
class dng_srational;
class dng_stream;
class dng_string;
class dng_string_list;
class dng_tiff_directory;
class dng_tile_buffer;
class dng_time_zone;
class dng_tone_curve;
class dng_urational;
class dng_vector;
class dng_vector_3;
class dng_xmp;
class dng_xmp_sdk;
class dng_xy_coord;

class tiff_tag;

class tag_string;
class tag_uint32_ptr;

/*****************************************************************************/

typedef std::shared_ptr<dng_masked_rgb_table> dng_masked_rgb_table_sptr;
typedef std::shared_ptr<dng_rgb_to_rgb_table_data> dng_rgb_to_rgb_table_data_sptr;
typedef std::shared_ptr<dng_masked_rgb_table_render_data> dng_masked_rgb_table_render_data_sptr;

typedef std::shared_ptr<dng_image> dng_image_sptr;
typedef std::weak_ptr<dng_image>   dng_image_wptr;

typedef std::shared_ptr<const dng_image> const_dng_image_sptr;

typedef std::shared_ptr<dng_pixel_buffer> dng_pixel_buffer_sptr;
typedef std::vector<dng_pixel_buffer_sptr> dng_pixel_buffer_vec;

typedef std::shared_ptr<const dng_memory_block> const_dng_memory_block_sptr;

/*****************************************************************************/

struct dng_fingerprint_hash;
struct dng_xmp_namespace;

/*****************************************************************************/

#endif
	
/*****************************************************************************/
