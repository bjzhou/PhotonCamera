.class public Lcom/google/googlex/gcam/GcamModuleJNI;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final native AddG3aMetadata(I[B[B[BJLcom/google/googlex/gcam/ShotMetadata;)V
.end method

.method public static final native AeMetadata_exposure_compensation_set(JLcom/google/googlex/gcam/AeMetadata;F)V
.end method

.method public static final native AeMetadata_lock_set(JLcom/google/googlex/gcam/AeMetadata;Z)V
.end method

.method public static final native AeMetadata_metering_rectangles_get(JLcom/google/googlex/gcam/AeMetadata;)J
.end method

.method public static final native AeMetadata_mode_set(JLcom/google/googlex/gcam/AeMetadata;I)V
.end method

.method public static final native AeMetadata_precapture_trigger_set(JLcom/google/googlex/gcam/AeMetadata;I)V
.end method

.method public static final native AeMetadata_state_set(JLcom/google/googlex/gcam/AeMetadata;I)V
.end method

.method public static final native AeMetadata_touch_roi_type_get(JLcom/google/googlex/gcam/AeMetadata;)I
.end method

.method public static final native AeMetadata_touch_roi_type_set(JLcom/google/googlex/gcam/AeMetadata;I)V
.end method

.method public static final native AeModeResult_final_tet_get(JLcom/google/googlex/gcam/AeModeResult;)F
.end method

.method public static final native AeModeResult_final_tet_set(JLcom/google/googlex/gcam/AeModeResult;F)V
.end method

.method public static final native AeModeResult_ideal_tet_get(JLcom/google/googlex/gcam/AeModeResult;)F
.end method

.method public static final native AeModeResult_ideal_tet_set(JLcom/google/googlex/gcam/AeModeResult;F)V
.end method

.method public static final native AeModeResult_log_scene_brightness_get(JLcom/google/googlex/gcam/AeModeResult;)F
.end method

.method public static final native AeModeResult_log_scene_brightness_set(JLcom/google/googlex/gcam/AeModeResult;F)V
.end method

.method public static final native AeModeResult_target_avg_ldr_get(JLcom/google/googlex/gcam/AeModeResult;)F
.end method

.method public static final native AeModeResult_target_avg_ldr_set(JLcom/google/googlex/gcam/AeModeResult;F)V
.end method

.method public static final native AeModeResult_touch_area_linear_value_set(JLcom/google/googlex/gcam/AeModeResult;F)V
.end method

.method public static final native AeModeResult_touch_roi_clip_protection_tripped_set(JLcom/google/googlex/gcam/AeModeResult;Z)V
.end method

.method public static final native AeResults_Check(JLcom/google/googlex/gcam/AeResults;)Z
.end method

.method public static final native AeResults_FinalHdrRatio(JLcom/google/googlex/gcam/AeResults;)F
.end method

.method public static final native AeResults_FinalPortraitTetGain(JLcom/google/googlex/gcam/AeResults;)F
.end method

.method public static final native AeResults_FinalTet(JLcom/google/googlex/gcam/AeResults;I)F
.end method

.method public static final native AeResults_LogSceneBrightness(JLcom/google/googlex/gcam/AeResults;)F
.end method

.method public static final native AeResults_mode_result_set(JLcom/google/googlex/gcam/AeResults;[J)V
.end method

.method public static final native AeResults_portrait_result_get(JLcom/google/googlex/gcam/AeResults;)J
.end method

.method public static final native AeResults_predicted_image_brightness_set(JLcom/google/googlex/gcam/AeResults;F)V
.end method

.method public static final native AeResults_process_ae_stats_executed_set(JLcom/google/googlex/gcam/AeResults;Z)V
.end method

.method public static final native AeResults_pure_fraction_of_pixels_from_long_exposure_set(JLcom/google/googlex/gcam/AeResults;F)V
.end method

.method public static final native AeResults_safe_underexposure_set(JLcom/google/googlex/gcam/AeResults;F)V
.end method

.method public static final native AeResults_weighted_fraction_of_pixels_from_long_exposure_set(JLcom/google/googlex/gcam/AeResults;F)V
.end method

.method public static final native AeShotParams_ark_priority_set(JLcom/google/googlex/gcam/AeShotParams;Z)V
.end method

.method public static final native AeShotParams_auto_night_sight_get(JLcom/google/googlex/gcam/AeShotParams;)I
.end method

.method public static final native AeShotParams_auto_night_sight_set(JLcom/google/googlex/gcam/AeShotParams;I)V
.end method

.method public static final native AeShotParams_crop_get(JLcom/google/googlex/gcam/AeShotParams;)J
.end method

.method public static final native AeShotParams_crop_set(JLcom/google/googlex/gcam/AeShotParams;JLcom/google/googlex/gcam/NormalizedRect;)V
.end method

.method public static final native AeShotParams_exposure_compensation_set(JLcom/google/googlex/gcam/AeShotParams;F)V
.end method

.method public static final native AeShotParams_general_brightness_preference_set(JLcom/google/googlex/gcam/AeShotParams;F)V
.end method

.method public static final native AeShotParams_legacy_pre_slm_processing_set(JLcom/google/googlex/gcam/AeShotParams;Z)V
.end method

.method public static final native AeShotParams_merged_crop_get(JLcom/google/googlex/gcam/AeShotParams;)J
.end method

.method public static final native AeShotParams_merged_crop_set(JLcom/google/googlex/gcam/AeShotParams;JLcom/google/googlex/gcam/NormalizedRect;)V
.end method

.method public static final native AeShotParams_people_brightness_preference_set(JLcom/google/googlex/gcam/AeShotParams;F)V
.end method

.method public static final native AeShotParams_relighting_expected_set(JLcom/google/googlex/gcam/AeShotParams;Z)V
.end method

.method public static final native AeShotParams_spoofed_touch_rectangle_set(JLcom/google/googlex/gcam/AeShotParams;Z)V
.end method

.method public static final native AeShotParams_target_height_set(JLcom/google/googlex/gcam/AeShotParams;I)V
.end method

.method public static final native AeShotParams_target_width_set(JLcom/google/googlex/gcam/AeShotParams;I)V
.end method

.method public static final native AeShotParams_touch_roi_type_get(JLcom/google/googlex/gcam/AeShotParams;)I
.end method

.method public static final native AeShotParams_touch_roi_type_set(JLcom/google/googlex/gcam/AeShotParams;I)V
.end method

.method public static final native AeShotParams_ux_mode_set(JLcom/google/googlex/gcam/AeShotParams;I)V
.end method

.method public static final native AeShotParams_weighted_metering_areas_get(JLcom/google/googlex/gcam/AeShotParams;)J
.end method

.method public static final native AfMetadata_metering_rectangles_get(JLcom/google/googlex/gcam/AfMetadata;)J
.end method

.method public static final native AfMetadata_mode_set(JLcom/google/googlex/gcam/AfMetadata;I)V
.end method

.method public static final native AfMetadata_state_get(JLcom/google/googlex/gcam/AfMetadata;)I
.end method

.method public static final native AfMetadata_state_set(JLcom/google/googlex/gcam/AfMetadata;I)V
.end method

.method public static final native AfMetadata_trigger_set(JLcom/google/googlex/gcam/AfMetadata;I)V
.end method

.method public static final native ApplySensorBinning__SWIG_0(IZZJLcom/google/googlex/gcam/FrameMetadata;)V
.end method

.method public static final native ApplySensorBinning__SWIG_1(IJLcom/google/googlex/gcam/StaticMetadata;)Z
.end method

.method public static final native ApplySensorCropping(JLcom/google/googlex/gcam/PixelRect;JLcom/google/googlex/gcam/FrameMetadata;)V
.end method

.method public static final native ArkInfo_brightness_factor_get(JLcom/google/googlex/gcam/ArkInfo;)F
.end method

.method public static final native ArkInfo_brightness_factor_set(JLcom/google/googlex/gcam/ArkInfo;F)V
.end method

.method public static final native ArkInfo_exposure_mode_get(JLcom/google/googlex/gcam/ArkInfo;)I
.end method

.method public static final native ArkInfo_exposure_mode_set(JLcom/google/googlex/gcam/ArkInfo;I)V
.end method

.method public static final native ArkInfo_exposure_time_ms_get(JLcom/google/googlex/gcam/ArkInfo;)F
.end method

.method public static final native ArkInfo_exposure_time_ms_set(JLcom/google/googlex/gcam/ArkInfo;F)V
.end method

.method public static final native ArkInfo_focus_distance_set(JLcom/google/googlex/gcam/ArkInfo;F)V
.end method

.method public static final native ArkInfo_focus_mode_get(JLcom/google/googlex/gcam/ArkInfo;)I
.end method

.method public static final native ArkInfo_focus_mode_set(JLcom/google/googlex/gcam/ArkInfo;I)V
.end method

.method public static final native ArkInfo_gain_get(JLcom/google/googlex/gcam/ArkInfo;)F
.end method

.method public static final native ArkInfo_gain_set(JLcom/google/googlex/gcam/ArkInfo;F)V
.end method

.method public static final native ArkInfo_shadow_factor_get(JLcom/google/googlex/gcam/ArkInfo;)F
.end method

.method public static final native ArkInfo_shadow_factor_set(JLcom/google/googlex/gcam/ArkInfo;F)V
.end method

.method public static final native ArkInfo_white_balance_factor_get(JLcom/google/googlex/gcam/ArkInfo;)F
.end method

.method public static final native ArkInfo_white_balance_factor_set(JLcom/google/googlex/gcam/ArkInfo;F)V
.end method

.method public static final native AssetData_fd_get(JLcom/google/googlex/gcam/AssetData;)I
.end method

.method public static final native AssetData_fd_set(JLcom/google/googlex/gcam/AssetData;I)V
.end method

.method public static final native AssetData_length_get(JLcom/google/googlex/gcam/AssetData;)I
.end method

.method public static final native AssetData_length_set(JLcom/google/googlex/gcam/AssetData;I)V
.end method

.method public static final native AssetData_name_set(JLcom/google/googlex/gcam/AssetData;Ljava/lang/String;)V
.end method

.method public static final native AssetData_offset_get(JLcom/google/googlex/gcam/AssetData;)I
.end method

.method public static final native AssetData_offset_set(JLcom/google/googlex/gcam/AssetData;I)V
.end method

.method public static final native AwbInfo_IsValid(JLcom/google/googlex/gcam/AwbInfo;)Z
.end method

.method public static final native AwbInfo_rgb2rgb_get(JLcom/google/googlex/gcam/AwbInfo;)J
.end method

.method public static final native AwbInfo_rgb2rgb_set(JLcom/google/googlex/gcam/AwbInfo;JLcom/google/googlex/gcam/FloatArray9;)V
.end method

.method public static final native AwbInfo_rggb_gains_get(JLcom/google/googlex/gcam/AwbInfo;)J
.end method

.method public static final native AwbInfo_rggb_gains_set(JLcom/google/googlex/gcam/AwbInfo;JLcom/google/googlex/gcam/FloatArray4;)V
.end method

.method public static final native AwbMetadata_lock_set(JLcom/google/googlex/gcam/AwbMetadata;Z)V
.end method

.method public static final native AwbMetadata_metering_rectangles_get(JLcom/google/googlex/gcam/AwbMetadata;)J
.end method

.method public static final native AwbMetadata_mode_set(JLcom/google/googlex/gcam/AwbMetadata;I)V
.end method

.method public static final native AwbMetadata_state_set(JLcom/google/googlex/gcam/AwbMetadata;I)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_bento_max_shot_capture_time_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_cyclops_enabled_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_cyclops_f_number_scale_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_cyclops_force_trigger_face_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_cyclops_force_trigger_full_frame_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_cyclops_max_shot_capture_time_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_cyclops_preferred_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_default_max_bracketing_frames_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_default_max_short_frames_get(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)I
.end method

.method public static final native BuildPayloadBurstSpecOptions_default_max_short_frames_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_default_min_bracketing_frames_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_default_min_short_frames_get(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)I
.end method

.method public static final native BuildPayloadBurstSpecOptions_default_min_short_frames_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_exposure_time_override_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_gain_override_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_include_ultra_short_frame_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_max_exposure_time_ms_get(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)F
.end method

.method public static final native BuildPayloadBurstSpecOptions_max_exposure_time_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_max_frame_count_get(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)I
.end method

.method public static final native BuildPayloadBurstSpecOptions_max_frame_count_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_max_total_capture_time_ms_get(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)F
.end method

.method public static final native BuildPayloadBurstSpecOptions_max_total_capture_time_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_recompute_ae_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_shasta_zsl_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_ultra_short_first_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V
.end method

.method public static final native BuildPayloadBurstSpecOptions_ultrashort_tet_factor_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V
.end method

.method public static final native BurstSpec_TotalCaptureTimeMs(JLcom/google/googlex/gcam/BurstSpec;F)F
.end method

.method public static final native BurstSpec_frame_requests_get(JLcom/google/googlex/gcam/BurstSpec;)J
.end method

.method public static final native BurstSpec_frame_requests_set(JLcom/google/googlex/gcam/BurstSpec;JLcom/google/googlex/gcam/FrameRequestVector;)V
.end method

.method public static final native ClientShotMetadata_location_set(JLcom/google/googlex/gcam/ClientShotMetadata;JLcom/google/googlex/gcam/LocationData;)V
.end method

.method public static final native ClutWeightVector_emplace_back(JLcom/google/googlex/gcam/ClutWeightVector;IF)V
.end method

.method public static final native ClutWeights_clut_weights_get(JLcom/google/googlex/gcam/ClutWeights;)J
.end method

.method public static final native CyclopsParameters_apply_isp_tonemapping_get(JLcom/google/googlex/gcam/CyclopsParameters;)Z
.end method

.method public static final native CyclopsParameters_face_ids_get(JLcom/google/googlex/gcam/CyclopsParameters;)J
.end method

.method public static final native CyclopsParameters_trigger_roi_get(JLcom/google/googlex/gcam/CyclopsParameters;)J
.end method

.method public static final native DEBUG_SAVE_INPUT_METERING_get()J
.end method

.method public static final native DEBUG_SAVE_INPUT_PAYLOAD_get()J
.end method

.method public static final native DEBUG_SAVE_METADATA_get()J
.end method

.method public static final native DarkShadingData_SetDarkShadingDataFromBytes(JLcom/google/googlex/gcam/DarkShadingData;JJ)Z
.end method

.method public static final native DebugParams_image_saver_params_set(JLcom/google/googlex/gcam/DebugParams;JLcom/google/googlex/gcam/ImageSaverParams;)V
.end method

.method public static final native DebugParams_save_bitmask_set(JLcom/google/googlex/gcam/DebugParams;J)V
.end method

.method public static final native DegreesToImageRotation(I)I
.end method

.method public static final native DirtyLensHistory_AddRawScore(JLcom/google/googlex/gcam/DirtyLensHistory;F)Z
.end method

.method public static final native DirtyLensHistory_Reset(JLcom/google/googlex/gcam/DirtyLensHistory;)V
.end method

.method public static final native DirtyLensHistory_frame_influence_decay_rate__set(JLcom/google/googlex/gcam/DirtyLensHistory;F)V
.end method

.method public static final native DirtyLensHistory_initial_score__set(JLcom/google/googlex/gcam/DirtyLensHistory;F)V
.end method

.method public static final native DirtyLensHistory_max_photo_count__set(JLcom/google/googlex/gcam/DirtyLensHistory;I)V
.end method

.method public static final native DirtyLensHistory_raw_score_history__get(JLcom/google/googlex/gcam/DirtyLensHistory;)J
.end method

.method public static final native DirtyLensHistory_raw_score_history__set(JLcom/google/googlex/gcam/DirtyLensHistory;JLcom/google/googlex/gcam/FloatDeque;)V
.end method

.method public static final native DirtyLensHistory_weighted_score_threshold__set(JLcom/google/googlex/gcam/DirtyLensHistory;F)V
.end method

.method public static final native DngColorCalibrationVector_add(JLcom/google/googlex/gcam/DngColorCalibrationVector;JLcom/google/googlex/gcam/DngColorCalibration;)V
.end method

.method public static final native DngColorCalibration_illuminant_set(JLcom/google/googlex/gcam/DngColorCalibration;I)V
.end method

.method public static final native DngColorCalibration_model_rgb_to_device_rgb_set(JLcom/google/googlex/gcam/DngColorCalibration;JLcom/google/googlex/gcam/FloatArray9;)V
.end method

.method public static final native DngColorCalibration_xyz_to_model_rgb_set(JLcom/google/googlex/gcam/DngColorCalibration;JLcom/google/googlex/gcam/FloatArray9;)V
.end method

.method public static final native FaceInfoVector_add(JLcom/google/googlex/gcam/FaceInfoVector;JLcom/google/googlex/gcam/FaceInfo;)V
.end method

.method public static final native FaceInfoVector_get(JLcom/google/googlex/gcam/FaceInfoVector;I)J
.end method

.method public static final native FaceInfoVector_size(JLcom/google/googlex/gcam/FaceInfoVector;)J
.end method

.method public static final native FaceInfo_Landmark_x_set(JLcom/google/googlex/gcam/FaceInfo$Landmark;F)V
.end method

.method public static final native FaceInfo_Landmark_y_set(JLcom/google/googlex/gcam/FaceInfo$Landmark;F)V
.end method

.method public static final native FaceInfo_confidence_set(JLcom/google/googlex/gcam/FaceInfo;F)V
.end method

.method public static final native FaceInfo_familiarity_set(JLcom/google/googlex/gcam/FaceInfo;F)V
.end method

.method public static final native FaceInfo_id_set(JLcom/google/googlex/gcam/FaceInfo;I)V
.end method

.method public static final native FaceInfo_landmarks_get(JLcom/google/googlex/gcam/FaceInfo;)J
.end method

.method public static final native FaceInfo_monk_skin_type_set(JLcom/google/googlex/gcam/FaceInfo;F)V
.end method

.method public static final native FaceInfo_pan_angle_set(JLcom/google/googlex/gcam/FaceInfo;F)V
.end method

.method public static final native FaceInfo_pos_x_set(JLcom/google/googlex/gcam/FaceInfo;F)V
.end method

.method public static final native FaceInfo_pos_y_set(JLcom/google/googlex/gcam/FaceInfo;F)V
.end method

.method public static final native FaceInfo_roll_angle_set(JLcom/google/googlex/gcam/FaceInfo;F)V
.end method

.method public static final native FaceInfo_size_set(JLcom/google/googlex/gcam/FaceInfo;F)V
.end method

.method public static final native FaceInfo_tilt_angle_set(JLcom/google/googlex/gcam/FaceInfo;F)V
.end method

.method public static final native FlipHdrGainMapHorizontal(JLcom/google/googlex/gcam/ShotMetadata;)Z
.end method

.method public static final native FloatArray2_set(JLcom/google/googlex/gcam/FloatArray2;IF)V
.end method

.method public static final native FloatArray4_get(JLcom/google/googlex/gcam/FloatArray4;I)F
.end method

.method public static final native FloatArray4_set(JLcom/google/googlex/gcam/FloatArray4;IF)V
.end method

.method public static final native FloatArray4_size(JLcom/google/googlex/gcam/FloatArray4;)J
.end method

.method public static final native FloatArray9_get(JLcom/google/googlex/gcam/FloatArray9;I)F
.end method

.method public static final native FloatArray9_set(JLcom/google/googlex/gcam/FloatArray9;IF)V
.end method

.method public static final native FloatArray9_size(JLcom/google/googlex/gcam/FloatArray9;)J
.end method

.method public static final native FloatDeque_getitem(JLcom/google/googlex/gcam/FloatDeque;I)F
.end method

.method public static final native FloatDeque_push_back(JLcom/google/googlex/gcam/FloatDeque;F)V
.end method

.method public static final native FloatDeque_size(JLcom/google/googlex/gcam/FloatDeque;)J
.end method

.method public static final native FloatVector_add(JLcom/google/googlex/gcam/FloatVector;F)V
.end method

.method public static final native FloatVector_get(JLcom/google/googlex/gcam/FloatVector;I)F
.end method

.method public static final native FloatVector_isEmpty(JLcom/google/googlex/gcam/FloatVector;)Z
.end method

.method public static final native FrameMetadata_actual_analog_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F
.end method

.method public static final native FrameMetadata_actual_analog_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
.end method

.method public static final native FrameMetadata_actual_exposure_time_ms_get(JLcom/google/googlex/gcam/FrameMetadata;)F
.end method

.method public static final native FrameMetadata_actual_exposure_time_ms_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
.end method

.method public static final native FrameMetadata_ae_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_ae_results_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_af_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_applied_digital_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F
.end method

.method public static final native FrameMetadata_applied_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
.end method

.method public static final native FrameMetadata_awb_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_black_levels_bayer_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/FloatArray4;)V
.end method

.method public static final native FrameMetadata_burst_frame_type_set(JLcom/google/googlex/gcam/FrameMetadata;I)V
.end method

.method public static final native FrameMetadata_clut_weights_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_control_mode_set(JLcom/google/googlex/gcam/FrameMetadata;I)V
.end method

.method public static final native FrameMetadata_dng_noise_model_bayer_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/NoiseModel;)V
.end method

.method public static final native FrameMetadata_f_number_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
.end method

.method public static final native FrameMetadata_faces_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_flash_set(JLcom/google/googlex/gcam/FrameMetadata;I)V
.end method

.method public static final native FrameMetadata_focal_length_mm_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
.end method

.method public static final native FrameMetadata_focus_distance_diopters_get(JLcom/google/googlex/gcam/FrameMetadata;)F
.end method

.method public static final native FrameMetadata_focus_distance_diopters_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
.end method

.method public static final native FrameMetadata_frame_duration_ms_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
.end method

.method public static final native FrameMetadata_geometric_calibration_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_geometric_calibration_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/GeometricCalibrationVector;)V
.end method

.method public static final native FrameMetadata_gyro_samples_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/GyroSampleVector;)V
.end method

.method public static final native FrameMetadata_hal_af_metadata_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_lens_state_set(JLcom/google/googlex/gcam/FrameMetadata;I)V
.end method

.method public static final native FrameMetadata_live_hdr_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_live_hdr_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/LiveHdrMetadata;)V
.end method

.method public static final native FrameMetadata_mesh_warp_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_mesh_warp_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/MeshWarp;)V
.end method

.method public static final native FrameMetadata_ois_metadata_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_portrait_mask_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_post_raw_digital_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F
.end method

.method public static final native FrameMetadata_post_raw_digital_gain_set(JLcom/google/googlex/gcam/FrameMetadata;F)V
.end method

.method public static final native FrameMetadata_scene_flicker_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SceneFlicker;)V
.end method

.method public static final native FrameMetadata_sensor_id_get(JLcom/google/googlex/gcam/FrameMetadata;)I
.end method

.method public static final native FrameMetadata_sensor_id_set(JLcom/google/googlex/gcam/FrameMetadata;I)V
.end method

.method public static final native FrameMetadata_sensor_temp_set(JLcom/google/googlex/gcam/FrameMetadata;I)V
.end method

.method public static final native FrameMetadata_skin_area_faces_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_spatial_awb_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_timestamp_faces_ns_set(JLcom/google/googlex/gcam/FrameMetadata;J)V
.end method

.method public static final native FrameMetadata_timestamp_ns_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_timestamp_ns_set(JLcom/google/googlex/gcam/FrameMetadata;J)V
.end method

.method public static final native FrameMetadata_was_black_level_locked_set(JLcom/google/googlex/gcam/FrameMetadata;Z)V
.end method

.method public static final native FrameMetadata_wb_get(JLcom/google/googlex/gcam/FrameMetadata;)J
.end method

.method public static final native FrameMetadata_wb_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/AwbInfo;)V
.end method

.method public static final native FrameRequestVector_add(JLcom/google/googlex/gcam/FrameRequestVector;JLcom/google/googlex/gcam/FrameRequest;)V
.end method

.method public static final native FrameRequestVector_clear(JLcom/google/googlex/gcam/FrameRequestVector;)V
.end method

.method public static final native FrameRequestVector_get(JLcom/google/googlex/gcam/FrameRequestVector;I)J
.end method

.method public static final native FrameRequestVector_isEmpty(JLcom/google/googlex/gcam/FrameRequestVector;)Z
.end method

.method public static final native FrameRequestVector_size(JLcom/google/googlex/gcam/FrameRequestVector;)J
.end method

.method public static final native FrameRequest_Equals(JLcom/google/googlex/gcam/FrameRequest;JLcom/google/googlex/gcam/FrameRequest;)Z
.end method

.method public static final native FrameRequest_awb_get(JLcom/google/googlex/gcam/FrameRequest;)J
.end method

.method public static final native FrameRequest_cyclops_params_get(JLcom/google/googlex/gcam/FrameRequest;)J
.end method

.method public static final native FrameRequest_desired_additional_sensor_frame_duration_ms_get(JLcom/google/googlex/gcam/FrameRequest;)F
.end method

.method public static final native FrameRequest_desired_analog_gain_get(JLcom/google/googlex/gcam/FrameRequest;)F
.end method

.method public static final native FrameRequest_desired_analog_gain_set(JLcom/google/googlex/gcam/FrameRequest;F)V
.end method

.method public static final native FrameRequest_desired_digital_gain_get(JLcom/google/googlex/gcam/FrameRequest;)F
.end method

.method public static final native FrameRequest_desired_digital_gain_set(JLcom/google/googlex/gcam/FrameRequest;F)V
.end method

.method public static final native FrameRequest_desired_exposure_time_ms_get(JLcom/google/googlex/gcam/FrameRequest;)F
.end method

.method public static final native FrameRequest_desired_exposure_time_ms_set(JLcom/google/googlex/gcam/FrameRequest;F)V
.end method

.method public static final native FrameRequest_desired_focus_distance_diopters_get(JLcom/google/googlex/gcam/FrameRequest;)F
.end method

.method public static final native FrameRequest_desired_focus_distance_diopters_set(JLcom/google/googlex/gcam/FrameRequest;F)V
.end method

.method public static final native FrameRequest_long_tet_get(JLcom/google/googlex/gcam/FrameRequest;)F
.end method

.method public static final native FrameRequest_portrait_tet_get(JLcom/google/googlex/gcam/FrameRequest;)F
.end method

.method public static final native FrameRequest_short_tet_get(JLcom/google/googlex/gcam/FrameRequest;)F
.end method

.method public static final native FrameRequest_short_tet_set(JLcom/google/googlex/gcam/FrameRequest;F)V
.end method

.method public static final native FrameRequest_try_to_lock_black_level_get(JLcom/google/googlex/gcam/FrameRequest;)Z
.end method

.method public static final native FrameRequest_type_get(JLcom/google/googlex/gcam/FrameRequest;)I
.end method

.method public static final native FrameRequest_type_set(JLcom/google/googlex/gcam/FrameRequest;I)V
.end method

.method public static final native Gcam_AbortShot(JLcom/google/googlex/gcam/Gcam;I)V
.end method

.method public static final native Gcam_AllSensorIdsUnique(JLcom/google/googlex/gcam/Gcam;)Z
.end method

.method public static final native Gcam_BeginPayloadFrames(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/BurstSpec;)V
.end method

.method public static final native Gcam_BuildAfBurstSpec(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/RawReadView;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;F)J
.end method

.method public static final native Gcam_BuildPayloadBurstSpec__SWIG_0(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/RawReadView;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)J
.end method

.method public static final native Gcam_BuildPayloadBurstSpec__SWIG_1(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)J
.end method

.method public static final native Gcam_ClaimFrameForBinning(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/FrameMetadataKey;)Z
.end method

.method public static final native Gcam_ComputeAeResults(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/AeShotParams;JLcom/google/googlex/gcam/RawReadView;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;Z)J
.end method

.method public static final native Gcam_ConfigureViewfinderProcessing(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/ViewfinderProcessingOptions;)V
.end method

.method public static final native Gcam_Create(JLcom/google/googlex/gcam/InitParams;JLcom/google/googlex/gcam/StaticMetadataVector;)J
.end method

.method public static final native Gcam_EndPayloadFrames(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/BurstSpec;JLcom/google/googlex/gcam/ClientShotMetadata;)Z
.end method

.method public static final native Gcam_EndShotCapture(JLcom/google/googlex/gcam/Gcam;I)Z
.end method

.method public static final native Gcam_EndZslPayloadFrames(JLcom/google/googlex/gcam/Gcam;I)V
.end method

.method public static final native Gcam_FindFirstCamera(JLcom/google/googlex/gcam/Gcam;I)I
.end method

.method public static final native Gcam_FlushTemporalBinning(JLcom/google/googlex/gcam/Gcam;I)V
.end method

.method public static final native Gcam_FlushViewfinder(JLcom/google/googlex/gcam/Gcam;I)V
.end method

.method public static final native Gcam_GenerateRgbImage(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;JLcom/google/googlex/gcam/RawWriteView;IJLcom/google/googlex/gcam/GenerateRgbImageOptions;)J
.end method

.method public static final native Gcam_GetLancetRunner(JLcom/google/googlex/gcam/Gcam;)J
.end method

.method public static final native Gcam_GetLatestViewfinderResults(JLcom/google/googlex/gcam/Gcam;I)J
.end method

.method public static final native Gcam_GetNumCameras(JLcom/google/googlex/gcam/Gcam;)I
.end method

.method public static final native Gcam_GetPortraitBrighteningProcessor(JLcom/google/googlex/gcam/Gcam;)J
.end method

.method public static final native Gcam_GetStaticMetadata(JLcom/google/googlex/gcam/Gcam;I)J
.end method

.method public static final native Gcam_GetTuning(JLcom/google/googlex/gcam/Gcam;I)J
.end method

.method public static final native Gcam_GetWalnutRunner(JLcom/google/googlex/gcam/Gcam;)J
.end method

.method public static final native Gcam_LimitShotCpuUsage(JLcom/google/googlex/gcam/Gcam;IF)Z
.end method

.method public static final native Gcam_LockFrameFromFutureBinning(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/FrameMetadataKey;)Z
.end method

.method public static final native Gcam_OverrideFrameMetadata(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/FrameMetadataKey;JLcom/google/googlex/gcam/FrameMetadata;)Z
.end method

.method public static final native Gcam_ResetThreadPriority(JLcom/google/googlex/gcam/Gcam;)V
.end method

.method public static final native Gcam_SetThreadPriority(JLcom/google/googlex/gcam/Gcam;I)V
.end method

.method public static final native Gcam_StartShotCapture(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/ShotCallbacks;JLcom/google/googlex/gcam/DebugParams;)I
.end method

.method public static final native GenerateRgbImageOptions_actual_number_of_frames_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;I)V
.end method

.method public static final native GenerateRgbImageOptions_debug_params_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;JLcom/google/googlex/gcam/DebugParams;)V
.end method

.method public static final native GenerateRgbImageOptions_expected_number_of_frames_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;I)V
.end method

.method public static final native GenerateRgbImageOptions_verbose_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;Z)V
.end method

.method public static final native GeometricCalibrationVector_add(JLcom/google/googlex/gcam/GeometricCalibrationVector;JLcom/google/googlex/gcam/GeometricCalibration;)V
.end method

.method public static final native GeometricCalibrationVector_isEmpty(JLcom/google/googlex/gcam/GeometricCalibrationVector;)Z
.end method

.method public static final native GeometricCalibration_active_rectangle_set(JLcom/google/googlex/gcam/GeometricCalibration;JLcom/google/googlex/gcam/PixelRect;)V
.end method

.method public static final native GeometricCalibration_lens_distortion_extended_get(JLcom/google/googlex/gcam/GeometricCalibration;)[F
.end method

.method public static final native GeometricCalibration_lens_distortion_extended_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V
.end method

.method public static final native GeometricCalibration_lens_distortion_get(JLcom/google/googlex/gcam/GeometricCalibration;)[F
.end method

.method public static final native GeometricCalibration_lens_distortion_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V
.end method

.method public static final native GeometricCalibration_lens_intrinsic_calibration_get(JLcom/google/googlex/gcam/GeometricCalibration;)[F
.end method

.method public static final native GeometricCalibration_lens_intrinsic_calibration_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V
.end method

.method public static final native GeometricCalibration_lens_pose_rotation_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V
.end method

.method public static final native GeometricCalibration_lens_pose_translation_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V
.end method

.method public static final native GeometricCalibration_quality_set(JLcom/google/googlex/gcam/GeometricCalibration;I)V
.end method

.method public static final native GeometricCalibration_valid_rectangle_set(JLcom/google/googlex/gcam/GeometricCalibration;JLcom/google/googlex/gcam/PixelRect;)V
.end method

.method public static final native GetVersion()Ljava/lang/String;
.end method

.method public static final native GrayImageS16_empty(JLcom/google/googlex/gcam/GrayImageS16;)Z
.end method

.method public static final native GrayImageS16_read_view(JLcom/google/googlex/gcam/GrayImageS16;)J
.end method

.method public static final native GrayImageS16_size_in_bytes(JLcom/google/googlex/gcam/GrayImageS16;)I
.end method

.method public static final native GrayImageS16_write_view(JLcom/google/googlex/gcam/GrayImageS16;)J
.end method

.method public static final native GrayReadViewU8_data(JLcom/google/googlex/gcam/GrayReadViewU8;)J
.end method

.method public static final native GrayReadViewU8_height(JLcom/google/googlex/gcam/GrayReadViewU8;)I
.end method

.method public static final native GrayReadViewU8_width(JLcom/google/googlex/gcam/GrayReadViewU8;)I
.end method

.method public static final native GrayReadViewU8_x_stride(JLcom/google/googlex/gcam/GrayReadViewU8;)I
.end method

.method public static final native GrayReadViewU8_y_stride(JLcom/google/googlex/gcam/GrayReadViewU8;)I
.end method

.method public static final native GyroSampleVector_emplace_back(JLcom/google/googlex/gcam/GyroSampleVector;JFFF)V
.end method

.method public static final native HalAfMetadata_SetAfTargetFocusInfoFromBytes(JLcom/google/googlex/gcam/HalAfMetadata;JJ)Z
.end method

.method public static final native HalAfMetadata_SetFaceDeblurInfoFromBytes(JLcom/google/googlex/gcam/HalAfMetadata;JJ)Z
.end method

.method public static final native ImageRotationToDegrees(I)I
.end method

.method public static final native ImageSaverParams_dest_folder_get(JLcom/google/googlex/gcam/ImageSaverParams;)Ljava/lang/String;
.end method

.method public static final native ImageSaverParams_dest_folder_set(JLcom/google/googlex/gcam/ImageSaverParams;Ljava/lang/String;)V
.end method

.method public static final native InitParams_allow_unknown_devices_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_eager_simultaneous_merge_and_finish_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_execute_finish_on_get(JLcom/google/googlex/gcam/InitParams;)I
.end method

.method public static final native InitParams_execute_finish_on_set(JLcom/google/googlex/gcam/InitParams;I)V
.end method

.method public static final native InitParams_execute_postview_on_get(JLcom/google/googlex/gcam/InitParams;)I
.end method

.method public static final native InitParams_execute_postview_on_set(JLcom/google/googlex/gcam/InitParams;I)V
.end method

.method public static final native InitParams_finish_almond_initialize_on_gcam_creation_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_kepler_gan_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_kepler_gan_initialize_on_gcam_creation_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_lancet_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_lancet_initialize_on_gcam_creation_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_ml_walnut_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_ml_walnut_initialize_on_gcam_creation_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_pecan_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_pecan_initialize_on_gcam_creation_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_pecan_light_model_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_pecan_pie_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_finish_pecan_wait_until_ready_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_portrait_brightening_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_reference_focal_length_35mm_set(JLcom/google/googlex/gcam/InitParams;JLcom/google/googlex/gcam/FloatArray2;)V
.end method

.method public static final native InitParams_serialized_cache_dir_set(JLcom/google/googlex/gcam/InitParams;Ljava/lang/String;)V
.end method

.method public static final native InitParams_simultaneous_merge_and_finish_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_spatial_merge_processor_error_fallback_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native InitParams_spatial_merge_processor_type_set(JLcom/google/googlex/gcam/InitParams;I)V
.end method

.method public static final native InitParams_wait_for_portrait_brightening_init_set(JLcom/google/googlex/gcam/InitParams;Z)V
.end method

.method public static final native IntVector_get(JLcom/google/googlex/gcam/IntVector;I)I
.end method

.method public static final native IntVector_size(JLcom/google/googlex/gcam/IntVector;)J
.end method

.method public static final native InterleavedImageS16_read_view(JLcom/google/googlex/gcam/InterleavedImageS16;)J
.end method

.method public static final native InterleavedImageS16_size_in_bytes(JLcom/google/googlex/gcam/InterleavedImageS16;)I
.end method

.method public static final native InterleavedImageS16_write_view(JLcom/google/googlex/gcam/InterleavedImageS16;)J
.end method

.method public static final native InterleavedImageU16_read_view(JLcom/google/googlex/gcam/InterleavedImageU16;)J
.end method

.method public static final native InterleavedImageU16_size_in_bytes(JLcom/google/googlex/gcam/InterleavedImageU16;)I
.end method

.method public static final native InterleavedImageU16_write_view(JLcom/google/googlex/gcam/InterleavedImageU16;)J
.end method

.method public static final native InterleavedImageU8_channels(JLcom/google/googlex/gcam/InterleavedImageU8;)I
.end method

.method public static final native InterleavedImageU8_empty(JLcom/google/googlex/gcam/InterleavedImageU8;)Z
.end method

.method public static final native InterleavedImageU8_height(JLcom/google/googlex/gcam/InterleavedImageU8;)I
.end method

.method public static final native InterleavedImageU8_read_view(JLcom/google/googlex/gcam/InterleavedImageU8;)J
.end method

.method public static final native InterleavedImageU8_size_in_bytes(JLcom/google/googlex/gcam/InterleavedImageU8;)I
.end method

.method public static final native InterleavedImageU8_width(JLcom/google/googlex/gcam/InterleavedImageU8;)I
.end method

.method public static final native InterleavedImageU8_write_view(JLcom/google/googlex/gcam/InterleavedImageU8;)J
.end method

.method public static final native InterleavedReadViewU8_c_stride(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I
.end method

.method public static final native InterleavedReadViewU8_channels(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I
.end method

.method public static final native InterleavedReadViewU8_data(JLcom/google/googlex/gcam/InterleavedReadViewU8;)J
.end method

.method public static final native InterleavedReadViewU8_height(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I
.end method

.method public static final native InterleavedReadViewU8_width(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I
.end method

.method public static final native InterleavedReadViewU8_x_stride(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I
.end method

.method public static final native InterleavedReadViewU8_y_stride(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I
.end method

.method public static final native InterleavedWriteViewU8_channels(JLcom/google/googlex/gcam/InterleavedWriteViewU8;)I
.end method

.method public static final native InterleavedWriteViewU8_height(JLcom/google/googlex/gcam/InterleavedWriteViewU8;)I
.end method

.method public static final native InterleavedWriteViewU8_read_view(JLcom/google/googlex/gcam/InterleavedWriteViewU8;)J
.end method

.method public static final native InterleavedWriteViewU8_width(JLcom/google/googlex/gcam/InterleavedWriteViewU8;)I
.end method

.method public static final native Intersect(JLcom/google/googlex/gcam/NormalizedRect;JLcom/google/googlex/gcam/NormalizedRect;)J
.end method

.method public static final native IsLogical(I)Z
.end method

.method public static final native IsQuadBayer(I)Z
.end method

.method public static final native IsRgb(I)Z
.end method

.method public static final native IsRgb8(I)Z
.end method

.method public static final native JpgEncodeOptions_jpg_encoder_metadata_set(JLcom/google/googlex/gcam/JpgEncodeOptions;JLcom/google/googlex/gcam/JpgEncoderMetadata;)V
.end method

.method public static final native JpgEncodeOptions_quality_set(JLcom/google/googlex/gcam/JpgEncodeOptions;I)V
.end method

.method public static final native JpgEncodeOptions_shot_metadata_set(JLcom/google/googlex/gcam/JpgEncodeOptions;JLcom/google/googlex/gcam/ShotMetadata;)V
.end method

.method public static final native JpgEncoderMetadata_hardware_jpg_encoder_requested_get(JLcom/google/googlex/gcam/JpgEncoderMetadata;)Z
.end method

.method public static final native JpgEncoderMetadata_hardware_jpg_encoder_requested_set(JLcom/google/googlex/gcam/JpgEncoderMetadata;Z)V
.end method

.method public static final native JpgEncoderMetadata_hardware_jpg_encoder_used_get(JLcom/google/googlex/gcam/JpgEncoderMetadata;)Z
.end method

.method public static final native JpgEncoderMetadata_hardware_jpg_encoder_used_set(JLcom/google/googlex/gcam/JpgEncoderMetadata;Z)V
.end method

.method public static final native LandmarkMap_set(JLcom/google/googlex/gcam/LandmarkMap;IJLcom/google/googlex/gcam/FaceInfo$Landmark;)V
.end method

.method public static final native LiveHdrMetadata_filtered_motion_speed_pix_per_ms_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_hdr_ratio_factor_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_manual_long_tet_override_get(JLcom/google/googlex/gcam/LiveHdrMetadata;)F
.end method

.method public static final native LiveHdrMetadata_manual_long_tet_override_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_manual_portrait_tet_override_get(JLcom/google/googlex/gcam/LiveHdrMetadata;)F
.end method

.method public static final native LiveHdrMetadata_manual_portrait_tet_override_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_manual_short_tet_override_get(JLcom/google/googlex/gcam/LiveHdrMetadata;)F
.end method

.method public static final native LiveHdrMetadata_manual_short_tet_override_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_max_hdr_ratio_override_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_metering_interval_ms_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_motion_magnitude_pix_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_night_factor_get(JLcom/google/googlex/gcam/LiveHdrMetadata;)F
.end method

.method public static final native LiveHdrMetadata_night_factor_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_viewfinder_long_tet_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_viewfinder_portrait_tet_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LiveHdrMetadata_viewfinder_short_tet_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V
.end method

.method public static final native LocationData_altitude_set(JLcom/google/googlex/gcam/LocationData;D)V
.end method

.method public static final native LocationData_degree_of_precision_set(JLcom/google/googlex/gcam/LocationData;D)V
.end method

.method public static final native LocationData_latitude_set(JLcom/google/googlex/gcam/LocationData;D)V
.end method

.method public static final native LocationData_longitude_set(JLcom/google/googlex/gcam/LocationData;D)V
.end method

.method public static final native LocationData_processing_method_set(JLcom/google/googlex/gcam/LocationData;Ljava/lang/String;)V
.end method

.method public static final native LocationData_timestamp_unix_set(JLcom/google/googlex/gcam/LocationData;J)V
.end method

.method public static final native MeshTranslation_x_get(JLcom/google/googlex/gcam/MeshTranslation;)I
.end method

.method public static final native MeshTranslation_y_get(JLcom/google/googlex/gcam/MeshTranslation;)I
.end method

.method public static final native MeshWarp_TranslationHint(JLcom/google/googlex/gcam/MeshWarp;)J
.end method

.method public static final native MeshWarp_grid_cols_get(JLcom/google/googlex/gcam/MeshWarp;)I
.end method

.method public static final native MeshWarp_grid_cols_set(JLcom/google/googlex/gcam/MeshWarp;I)V
.end method

.method public static final native MeshWarp_grid_rows_get(JLcom/google/googlex/gcam/MeshWarp;)I
.end method

.method public static final native MeshWarp_grid_rows_set(JLcom/google/googlex/gcam/MeshWarp;I)V
.end method

.method public static final native MeshWarp_is_forward_mesh_get(JLcom/google/googlex/gcam/MeshWarp;)Z
.end method

.method public static final native MeshWarp_is_forward_mesh_set(JLcom/google/googlex/gcam/MeshWarp;Z)V
.end method

.method public static final native MeshWarp_mesh_warp_crop_region_get(JLcom/google/googlex/gcam/MeshWarp;)J
.end method

.method public static final native MeshWarp_mesh_warp_data_get(JLcom/google/googlex/gcam/MeshWarp;)J
.end method

.method public static final native MeshWarp_mesh_warp_dst_region_get(JLcom/google/googlex/gcam/MeshWarp;)J
.end method

.method public static final native NoiseModel_FromShotReadNoiseVector(JLcom/google/googlex/gcam/FloatVector;JLcom/google/googlex/gcam/FloatVector;)J
.end method

.method public static final native NormalizedRect_IsEmpty(JLcom/google/googlex/gcam/NormalizedRect;)Z
.end method

.method public static final native NormalizedRect_x0_set(JLcom/google/googlex/gcam/NormalizedRect;F)V
.end method

.method public static final native NormalizedRect_x1_set(JLcom/google/googlex/gcam/NormalizedRect;F)V
.end method

.method public static final native NormalizedRect_y0_set(JLcom/google/googlex/gcam/NormalizedRect;F)V
.end method

.method public static final native NormalizedRect_y1_set(JLcom/google/googlex/gcam/NormalizedRect;F)V
.end method

.method public static final native OisMetadata_lens_optical_stabilization_mode_set(JLcom/google/googlex/gcam/OisMetadata;I)V
.end method

.method public static final native OisMetadata_ois_positions_get(JLcom/google/googlex/gcam/OisMetadata;)J
.end method

.method public static final native OisMetadata_ois_positions_raw_get(JLcom/google/googlex/gcam/OisMetadata;)J
.end method

.method public static final native OisMetadata_timestamp_ois_clock_ns_set(JLcom/google/googlex/gcam/OisMetadata;J)V
.end method

.method public static final native OisPositionRawVector_emplace_back(JLcom/google/googlex/gcam/OisPositionRawVector;JII)V
.end method

.method public static final native OisPositionVector_emplace_back(JLcom/google/googlex/gcam/OisPositionVector;JFF)V
.end method

.method public static final native PhysicalStabilityParams_thresholds_get(JLcom/google/googlex/gcam/PhysicalStabilityParams;)J
.end method

.method public static final native PhysicalStabilityThresholds_braced_speed_rad_per_sec_get(JLcom/google/googlex/gcam/PhysicalStabilityThresholds;)F
.end method

.method public static final native PhysicalStabilityThresholds_tripod_speed_rad_per_sec_get(JLcom/google/googlex/gcam/PhysicalStabilityThresholds;)F
.end method

.method public static final native PixelRectVector_add(JLcom/google/googlex/gcam/PixelRectVector;JLcom/google/googlex/gcam/PixelRect;)V
.end method

.method public static final native PixelRectVector_size(JLcom/google/googlex/gcam/PixelRectVector;)J
.end method

.method public static final native PixelRect_height(JLcom/google/googlex/gcam/PixelRect;)I
.end method

.method public static final native PixelRect_width(JLcom/google/googlex/gcam/PixelRect;)I
.end method

.method public static final native PixelRect_x0_get(JLcom/google/googlex/gcam/PixelRect;)I
.end method

.method public static final native PixelRect_x0_set(JLcom/google/googlex/gcam/PixelRect;I)V
.end method

.method public static final native PixelRect_x1_get(JLcom/google/googlex/gcam/PixelRect;)I
.end method

.method public static final native PixelRect_x1_set(JLcom/google/googlex/gcam/PixelRect;I)V
.end method

.method public static final native PixelRect_y0_get(JLcom/google/googlex/gcam/PixelRect;)I
.end method

.method public static final native PixelRect_y0_set(JLcom/google/googlex/gcam/PixelRect;I)V
.end method

.method public static final native PixelRect_y1_get(JLcom/google/googlex/gcam/PixelRect;)I
.end method

.method public static final native PixelRect_y1_set(JLcom/google/googlex/gcam/PixelRect;I)V
.end method

.method public static final native PortraitMask_crop_get(JLcom/google/googlex/gcam/PortraitMask;)J
.end method

.method public static final native PortraitMask_data_get(JLcom/google/googlex/gcam/PortraitMask;)J
.end method

.method public static final native PortraitMask_size_get(JLcom/google/googlex/gcam/PortraitMask;)J
.end method

.method public static final native PortraitOutputs_dynamic_depth_result_ptr_set(JLcom/google/googlex/gcam/PortraitOutputs;J)V
.end method

.method public static final native PortraitOutputs_hdr_gain_map_info_ptr_set(JLcom/google/googlex/gcam/PortraitOutputs;J)V
.end method

.method public static final native PortraitRequest_ae_results_get(JLcom/google/googlex/gcam/PortraitRequest;)J
.end method

.method public static final native PortraitRequest_apply_portrait_matting_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_cache_directory_set(JLcom/google/googlex/gcam/PortraitRequest;Ljava/lang/String;)V
.end method

.method public static final native PortraitRequest_crop_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/NormalizedRect;)V
.end method

.method public static final native PortraitRequest_depth_postprocessor_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V
.end method

.method public static final native PortraitRequest_depth_processing_get(JLcom/google/googlex/gcam/PortraitRequest;)I
.end method

.method public static final native PortraitRequest_depth_processing_set(JLcom/google/googlex/gcam/PortraitRequest;I)V
.end method

.method public static final native PortraitRequest_embed_gdepth_metadata_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_enable_eevee_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_enable_gpu_boost_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_enable_lancet_upscaler_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_enable_pd_disparity_model_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_enable_peperomia_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_enable_portrait_brightening_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_execute_finish_on_set(JLcom/google/googlex/gcam/PortraitRequest;I)V
.end method

.method public static final native PortraitRequest_face_detection_method_set(JLcom/google/googlex/gcam/PortraitRequest;I)V
.end method

.method public static final native PortraitRequest_faces_get(JLcom/google/googlex/gcam/PortraitRequest;)J
.end method

.method public static final native PortraitRequest_faces_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/PixelRectVector;)V
.end method

.method public static final native PortraitRequest_force_run_stereo_depth_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_frame_metadata_get(JLcom/google/googlex/gcam/PortraitRequest;)J
.end method

.method public static final native PortraitRequest_frame_metadata_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/StringFrameMetadataMap;)V
.end method

.method public static final native PortraitRequest_gain_map_get(JLcom/google/googlex/gcam/PortraitRequest;)J
.end method

.method public static final native PortraitRequest_hdr_gain_map_original_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/HdrGainMapInfo;)V
.end method

.method public static final native PortraitRequest_horizontal_flip_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_image_rotation_set(JLcom/google/googlex/gcam/PortraitRequest;I)V
.end method

.method public static final native PortraitRequest_manually_rotate_xmp_jpg_get(JLcom/google/googlex/gcam/PortraitRequest;)Z
.end method

.method public static final native PortraitRequest_manually_rotate_xmp_jpg_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_merged_crop_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/NormalizedRect;)V
.end method

.method public static final native PortraitRequest_monocular_depth_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V
.end method

.method public static final native PortraitRequest_output_color_space_set(JLcom/google/googlex/gcam/PortraitRequest;I)V
.end method

.method public static final native PortraitRequest_output_format_primary_set(JLcom/google/googlex/gcam/PortraitRequest;I)V
.end method

.method public static final native PortraitRequest_output_height_get(JLcom/google/googlex/gcam/PortraitRequest;)I
.end method

.method public static final native PortraitRequest_output_height_set(JLcom/google/googlex/gcam/PortraitRequest;I)V
.end method

.method public static final native PortraitRequest_output_width_get(JLcom/google/googlex/gcam/PortraitRequest;)I
.end method

.method public static final native PortraitRequest_output_width_set(JLcom/google/googlex/gcam/PortraitRequest;I)V
.end method

.method public static final native PortraitRequest_pd_disparity_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V
.end method

.method public static final native PortraitRequest_pdlearned_depth_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V
.end method

.method public static final native PortraitRequest_pdstereo_depth_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V
.end method

.method public static final native PortraitRequest_portrait_raw_path_set(JLcom/google/googlex/gcam/PortraitRequest;Ljava/lang/String;)V
.end method

.method public static final native PortraitRequest_post_resample_sharpening_set(JLcom/google/googlex/gcam/PortraitRequest;F)V
.end method

.method public static final native PortraitRequest_relighting_option_set(JLcom/google/googlex/gcam/PortraitRequest;I)V
.end method

.method public static final native PortraitRequest_shot_prefix_set(JLcom/google/googlex/gcam/PortraitRequest;Ljava/lang/String;)V
.end method

.method public static final native PortraitRequest_static_metadata_get(JLcom/google/googlex/gcam/PortraitRequest;)J
.end method

.method public static final native PortraitRequest_static_metadata_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/StringStaticMetadataMap;)V
.end method

.method public static final native PortraitRequest_use_gpu_resample_get(JLcom/google/googlex/gcam/PortraitRequest;)Z
.end method

.method public static final native PortraitRequest_use_gpu_resample_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_use_internal_rectiface_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_use_opencl_depth_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_use_spotlight_enhance_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PortraitRequest_use_spotlight_enhance_v2_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V
.end method

.method public static final native PostShutterAfParams_max_handheld_exposure_time_ms_get(JLcom/google/googlex/gcam/PostShutterAfParams;)F
.end method

.method public static final native PostviewParams_pixel_format_set(JLcom/google/googlex/gcam/PostviewParams;I)V
.end method

.method public static final native PostviewParams_target_height_set(JLcom/google/googlex/gcam/PostviewParams;I)V
.end method

.method public static final native PostviewParams_target_width_set(JLcom/google/googlex/gcam/PostviewParams;I)V
.end method

.method public static final native QcColorCalibration_IlluminantData_bg_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;F)V
.end method

.method public static final native QcColorCalibration_IlluminantData_rg_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;F)V
.end method

.method public static final native QcColorCalibration_grgb_ratio_set(JLcom/google/googlex/gcam/QcColorCalibration;F)V
.end method

.method public static final native QcColorCalibration_illuminant_data_set(JLcom/google/googlex/gcam/QcColorCalibration;JLcom/google/googlex/gcam/QcIlluminantVector;)V
.end method

.method public static final native QcIlluminantVector_add(JLcom/google/googlex/gcam/QcIlluminantVector;JLcom/google/googlex/gcam/QcColorCalibration$IlluminantData;)V
.end method

.method public static final native RawImage_SWIGUpcast(J)J
.end method

.method public static final native RawReadView_empty(JLcom/google/googlex/gcam/RawReadView;)Z
.end method

.method public static final native RawReadView_size_in_bytes(JLcom/google/googlex/gcam/RawReadView;)I
.end method

.method public static final native RawWriteView_SWIGUpcast(J)J
.end method

.method public static final native ReverseRotation(I)I
.end method

.method public static final native RotateShotMetadata__SWIG_1(JLcom/google/googlex/gcam/ShotMetadata;I)Z
.end method

.method public static final native SceneFlicker_confidence_set(JLcom/google/googlex/gcam/SceneFlicker;F)V
.end method

.method public static final native SceneFlicker_frequency_set(JLcom/google/googlex/gcam/SceneFlicker;F)V
.end method

.method public static final native SetGcaDebugMetadata([BJLcom/google/googlex/gcam/ShotMetadata;)V
.end method

.method public static final native SetKolaEnabled(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native SetThermalState(JLcom/google/googlex/gcam/ShotMetadata;I)V
.end method

.method public static final native ShotCallbacks_final_image_pixel_format_set(JLcom/google/googlex/gcam/ShotCallbacks;I)V
.end method

.method public static final native ShotCallbacks_postview_params_set(JLcom/google/googlex/gcam/ShotCallbacks;JLcom/google/googlex/gcam/PostviewParams;)V
.end method

.method public static final native ShotMetadata_ae_results_get(JLcom/google/googlex/gcam/ShotMetadata;)J
.end method

.method public static final native ShotMetadata_client_shot_metadata_set(JLcom/google/googlex/gcam/ShotMetadata;JLcom/google/googlex/gcam/ClientShotMetadata;)V
.end method

.method public static final native ShotMetadata_exposure_compensation_set(JLcom/google/googlex/gcam/ShotMetadata;F)V
.end method

.method public static final native ShotMetadata_final_crop_get(JLcom/google/googlex/gcam/ShotMetadata;)J
.end method

.method public static final native ShotMetadata_flash_mode_set(JLcom/google/googlex/gcam/ShotMetadata;I)V
.end method

.method public static final native ShotMetadata_frame_metadata_get(JLcom/google/googlex/gcam/ShotMetadata;)J
.end method

.method public static final native ShotMetadata_frame_metadata_set(JLcom/google/googlex/gcam/ShotMetadata;JLcom/google/googlex/gcam/FrameMetadata;)V
.end method

.method public static final native ShotMetadata_gain_map_rggb_get(JLcom/google/googlex/gcam/ShotMetadata;)J
.end method

.method public static final native ShotMetadata_gain_map_rggb_set(JLcom/google/googlex/gcam/ShotMetadata;JLcom/google/googlex/gcam/InterleavedImageF;)V
.end method

.method public static final native ShotMetadata_hdr_gain_map_get(JLcom/google/googlex/gcam/ShotMetadata;)J
.end method

.method public static final native ShotMetadata_hdr_gain_map_set(JLcom/google/googlex/gcam/ShotMetadata;JLcom/google/googlex/gcam/HdrGainMapInfo;)V
.end method

.method public static final native ShotMetadata_image_rotation_get(JLcom/google/googlex/gcam/ShotMetadata;)I
.end method

.method public static final native ShotMetadata_image_rotation_set(JLcom/google/googlex/gcam/ShotMetadata;I)V
.end method

.method public static final native ShotMetadata_peperomia_applied_get(JLcom/google/googlex/gcam/ShotMetadata;)Z
.end method

.method public static final native ShotMetadata_portrait_brightening_applied_get(JLcom/google/googlex/gcam/ShotMetadata;)Z
.end method

.method public static final native ShotMetadata_should_apply_deblur_badge_get(JLcom/google/googlex/gcam/ShotMetadata;)Z
.end method

.method public static final native ShotMetadata_should_apply_deblur_badge_set(JLcom/google/googlex/gcam/ShotMetadata;Z)V
.end method

.method public static final native ShotMetadata_slowraw_path_set(JLcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V
.end method

.method public static final native ShotMetadata_software_suffix_get(JLcom/google/googlex/gcam/ShotMetadata;)Ljava/lang/String;
.end method

.method public static final native ShotMetadata_software_suffix_set(JLcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V
.end method

.method public static final native ShotMetadata_static_metadata_get(JLcom/google/googlex/gcam/ShotMetadata;)J
.end method

.method public static final native ShotMetadata_static_metadata_set(JLcom/google/googlex/gcam/ShotMetadata;JLcom/google/googlex/gcam/StaticMetadata;)V
.end method

.method public static final native ShotMetadata_timestamp_unix_us_get(JLcom/google/googlex/gcam/ShotMetadata;)J
.end method

.method public static final native ShotMetadata_wb_mode_set(JLcom/google/googlex/gcam/ShotMetadata;I)V
.end method

.method public static final native ShotMetadata_xmp_metadata_extended_get(JLcom/google/googlex/gcam/ShotMetadata;)Ljava/lang/String;
.end method

.method public static final native ShotMetadata_xmp_metadata_main_get(JLcom/google/googlex/gcam/ShotMetadata;)Ljava/lang/String;
.end method

.method public static final native ShotParams_GcamAwbDesired(JLcom/google/googlex/gcam/ShotParams;)Z
.end method

.method public static final native ShotParams_ae_get(JLcom/google/googlex/gcam/ShotParams;)J
.end method

.method public static final native ShotParams_ae_set(JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/AeShotParams;)V
.end method

.method public static final native ShotParams_allow_base_frame_reuse_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_allow_sabre_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_allow_spatial_rgb_get(JLcom/google/googlex/gcam/ShotParams;)Z
.end method

.method public static final native ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_almond_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_apply_sgm_in_raw_to_yuv_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_apply_sgm_spatially_varying_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_ark_info_get(JLcom/google/googlex/gcam/ShotParams;)J
.end method

.method public static final native ShotParams_ark_info_set(JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/ArkInfo;)V
.end method

.method public static final native ShotParams_base_frame_override_index_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_bento_annotate_final_image_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_bento_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_bento_force_apply_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_bento_use_separable_merge_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_big_cpu_freq_option_set(JLcom/google/googlex/gcam/ShotParams;F)V
.end method

.method public static final native ShotParams_cache_payload_images_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_compress_merged_dng_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_cyclops_enabled_get(JLcom/google/googlex/gcam/ShotParams;)Z
.end method

.method public static final native ShotParams_cyclops_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_cyclops_use_psl_for_base_frame_get(JLcom/google/googlex/gcam/ShotParams;)Z
.end method

.method public static final native ShotParams_cyclops_use_psl_for_base_frame_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_device_is_on_tripod_get(JLcom/google/googlex/gcam/ShotParams;)Z
.end method

.method public static final native ShotParams_device_is_on_tripod_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_downsample1to2x_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_downsample_by_2_before_merge_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_eevee_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_extra_finish_vignetting_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_flash_mode_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_force_pecan_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_force_wb_set(JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/AwbInfo;)V
.end method

.method public static final native ShotParams_gpu_power_boost_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_hazelnut_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_icc_output_profile_override_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_image_rotation_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_layla_active_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_little_cpu_freq_option_set(JLcom/google/googlex/gcam/ShotParams;F)V
.end method

.method public static final native ShotParams_manually_rotate_final_jpg_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_merge_max_frame_count_override_get(JLcom/google/googlex/gcam/ShotParams;)I
.end method

.method public static final native ShotParams_merge_max_frame_count_override_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_merge_method_override_get(JLcom/google/googlex/gcam/ShotParams;)I
.end method

.method public static final native ShotParams_merge_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_metering_frame_night_factor_set(JLcom/google/googlex/gcam/ShotParams;F)V
.end method

.method public static final native ShotParams_metering_frame_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V
.end method

.method public static final native ShotParams_mid_cpu_freq_option_set(JLcom/google/googlex/gcam/ShotParams;F)V
.end method

.method public static final native ShotParams_motion_ef_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_nonzsl_extended_base_frame_selection_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_optimize_sky_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_output_color_space_override_get(JLcom/google/googlex/gcam/ShotParams;)I
.end method

.method public static final native ShotParams_output_color_space_override_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_pecan_model_type_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_psaf_frame_count_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_psaf_log_scene_brightness_threshold_override_set(JLcom/google/googlex/gcam/ShotParams;F)V
.end method

.method public static final native ShotParams_psaf_max_exposure_time_ms_set(JLcom/google/googlex/gcam/ShotParams;F)V
.end method

.method public static final native ShotParams_recompute_wb_on_base_frame_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_rerun_face_detection_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_resampling_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_save_merged_dng_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_shasta_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_shasta_factor_set(JLcom/google/googlex/gcam/ShotParams;F)V
.end method

.method public static final native ShotParams_shasta_force_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_shutter_press_down_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V
.end method

.method public static final native ShotParams_shutter_press_up_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V
.end method

.method public static final native ShotParams_software_suffix_set(JLcom/google/googlex/gcam/ShotParams;Ljava/lang/String;)V
.end method

.method public static final native ShotParams_use_binned_metering_frame_get(JLcom/google/googlex/gcam/ShotParams;)Z
.end method

.method public static final native ShotParams_use_binned_metering_frame_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_walnut_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native ShotParams_walnut_option_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_wb_mode_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_zsl_base_frame_index_hint_set(JLcom/google/googlex/gcam/ShotParams;I)V
.end method

.method public static final native ShotParams_zsl_set(JLcom/google/googlex/gcam/ShotParams;Z)V
.end method

.method public static final native Size_height_set(JLcom/google/googlex/gcam/Size;I)V
.end method

.method public static final native Size_width_set(JLcom/google/googlex/gcam/Size;I)V
.end method

.method public static final native SpatialAwb_background_awb_set(JLcom/google/googlex/gcam/SpatialAwb;JLcom/google/googlex/gcam/AwbInfo;)V
.end method

.method public static final native SpatialAwb_subject_awb_set(JLcom/google/googlex/gcam/SpatialAwb;JLcom/google/googlex/gcam/AwbInfo;)V
.end method

.method public static final native SpatialGainMap_WriteRggb(JLcom/google/googlex/gcam/SpatialGainMap;IIIF)V
.end method

.method public static final native SpatialGainMap_gain_map(JLcom/google/googlex/gcam/SpatialGainMap;)J
.end method

.method public static final native StandardToQuadBayerPattern(I)I
.end method

.method public static final native StaticMetadataVector_add(JLcom/google/googlex/gcam/StaticMetadataVector;JLcom/google/googlex/gcam/StaticMetadata;)V
.end method

.method public static final native StaticMetadataVector_get(JLcom/google/googlex/gcam/StaticMetadataVector;I)J
.end method

.method public static final native StaticMetadataVector_size(JLcom/google/googlex/gcam/StaticMetadataVector;)J
.end method

.method public static final native StaticMetadata_FocalLength35mm(JLcom/google/googlex/gcam/StaticMetadata;)F
.end method

.method public static final native StaticMetadata_active_area_get(JLcom/google/googlex/gcam/StaticMetadata;)J
.end method

.method public static final native StaticMetadata_active_area_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/PixelRect;)V
.end method

.method public static final native StaticMetadata_available_f_numbers_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V
.end method

.method public static final native StaticMetadata_available_focal_lengths_mm_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V
.end method

.method public static final native StaticMetadata_bayer_pattern_get(JLcom/google/googlex/gcam/StaticMetadata;)I
.end method

.method public static final native StaticMetadata_bayer_pattern_set(JLcom/google/googlex/gcam/StaticMetadata;I)V
.end method

.method public static final native StaticMetadata_dark_shading_data_get(JLcom/google/googlex/gcam/StaticMetadata;)J
.end method

.method public static final native StaticMetadata_device_os_unix_ms_set(JLcom/google/googlex/gcam/StaticMetadata;J)V
.end method

.method public static final native StaticMetadata_device_os_version_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V
.end method

.method public static final native StaticMetadata_device_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V
.end method

.method public static final native StaticMetadata_dng_color_calibration_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/DngColorCalibrationVector;)V
.end method

.method public static final native StaticMetadata_exposure_time_range_ms_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V
.end method

.method public static final native StaticMetadata_frame_raw_max_height_get(JLcom/google/googlex/gcam/StaticMetadata;)I
.end method

.method public static final native StaticMetadata_frame_raw_max_height_set(JLcom/google/googlex/gcam/StaticMetadata;I)V
.end method

.method public static final native StaticMetadata_frame_raw_max_width_get(JLcom/google/googlex/gcam/StaticMetadata;)I
.end method

.method public static final native StaticMetadata_frame_raw_max_width_set(JLcom/google/googlex/gcam/StaticMetadata;I)V
.end method

.method public static final native StaticMetadata_frame_readout_time_ms_set(JLcom/google/googlex/gcam/StaticMetadata;F)V
.end method

.method public static final native StaticMetadata_ghawb_clut_control_enabled_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V
.end method

.method public static final native StaticMetadata_hardware_revision_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V
.end method

.method public static final native StaticMetadata_has_flash_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V
.end method

.method public static final native StaticMetadata_has_ois_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V
.end method

.method public static final native StaticMetadata_iso_range_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V
.end method

.method public static final native StaticMetadata_lens_facing_get(JLcom/google/googlex/gcam/StaticMetadata;)I
.end method

.method public static final native StaticMetadata_lens_facing_set(JLcom/google/googlex/gcam/StaticMetadata;I)V
.end method

.method public static final native StaticMetadata_make_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V
.end method

.method public static final native StaticMetadata_max_analog_iso_set(JLcom/google/googlex/gcam/StaticMetadata;F)V
.end method

.method public static final native StaticMetadata_model_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V
.end method

.method public static final native StaticMetadata_optically_black_regions_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/PixelRectVector;)V
.end method

.method public static final native StaticMetadata_package_name_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V
.end method

.method public static final native StaticMetadata_package_version_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V
.end method

.method public static final native StaticMetadata_pixel_array_height_get(JLcom/google/googlex/gcam/StaticMetadata;)I
.end method

.method public static final native StaticMetadata_pixel_array_height_set(JLcom/google/googlex/gcam/StaticMetadata;I)V
.end method

.method public static final native StaticMetadata_pixel_array_width_get(JLcom/google/googlex/gcam/StaticMetadata;)I
.end method

.method public static final native StaticMetadata_pixel_array_width_set(JLcom/google/googlex/gcam/StaticMetadata;I)V
.end method

.method public static final native StaticMetadata_qc_color_calibration_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/QcColorCalibration;)V
.end method

.method public static final native StaticMetadata_sensor_id_get(JLcom/google/googlex/gcam/StaticMetadata;)I
.end method

.method public static final native StaticMetadata_sensor_id_set(JLcom/google/googlex/gcam/StaticMetadata;I)V
.end method

.method public static final native StaticMetadata_sensor_physical_height_mm_get(JLcom/google/googlex/gcam/StaticMetadata;)F
.end method

.method public static final native StaticMetadata_sensor_physical_height_mm_set(JLcom/google/googlex/gcam/StaticMetadata;F)V
.end method

.method public static final native StaticMetadata_sensor_physical_width_mm_get(JLcom/google/googlex/gcam/StaticMetadata;)F
.end method

.method public static final native StaticMetadata_sensor_physical_width_mm_set(JLcom/google/googlex/gcam/StaticMetadata;F)V
.end method

.method public static final native StaticMetadata_software_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V
.end method

.method public static final native StaticMetadata_white_level_set(JLcom/google/googlex/gcam/StaticMetadata;I)V
.end method

.method public static final native StringAeResultsMap_set(JLcom/google/googlex/gcam/StringAeResultsMap;Ljava/lang/String;JLcom/google/googlex/gcam/AeResults;)V
.end method

.method public static final native StringFrameMetadataMap_set(JLcom/google/googlex/gcam/StringFrameMetadataMap;Ljava/lang/String;JLcom/google/googlex/gcam/FrameMetadata;)V
.end method

.method public static final native StringRawReadViewMap_set(JLcom/google/googlex/gcam/StringRawReadViewMap;Ljava/lang/String;JLcom/google/googlex/gcam/RawReadView;)V
.end method

.method public static final native StringSpatialGainMap_set(JLcom/google/googlex/gcam/StringSpatialGainMap;Ljava/lang/String;JLcom/google/googlex/gcam/SpatialGainMap;)V
.end method

.method public static final native StringStaticMetadataMap_get(JLcom/google/googlex/gcam/StringStaticMetadataMap;Ljava/lang/String;)J
.end method

.method public static final native StringStaticMetadataMap_set(JLcom/google/googlex/gcam/StringStaticMetadataMap;Ljava/lang/String;JLcom/google/googlex/gcam/StaticMetadata;)V
.end method

.method public static final native TfliteFileData_fd_get(JLcom/google/googlex/gcam/TfliteFileData;)I
.end method

.method public static final native Tuning_physical_stability_params_get(JLcom/google/googlex/gcam/Tuning;)J
.end method

.method public static final native Tuning_post_shutter_af_params_get(JLcom/google/googlex/gcam/Tuning;)J
.end method

.method public static final native Tuning_sensitivity_get(JLcom/google/googlex/gcam/Tuning;)F
.end method

.method public static final native ViewfinderProcessingOptions_burst_spec_options_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)V
.end method

.method public static final native ViewfinderProcessingOptions_compute_payload_capture_time_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V
.end method

.method public static final native ViewfinderProcessingOptions_compute_psaf_capture_time_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V
.end method

.method public static final native ViewfinderProcessingOptions_motion_processing_method_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;I)V
.end method

.method public static final native ViewfinderProcessingOptions_process_gyro_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V
.end method

.method public static final native ViewfinderProcessingOptions_save_motion_trace_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V
.end method

.method public static final native ViewfinderProcessingOptions_verbose_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V
.end method

.method public static final native ViewfinderProcessingOptions_will_capture_max_res_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V
.end method

.method public static final native ViewfinderResults_gyro_speed_rad_per_sec_get(JLcom/google/googlex/gcam/ViewfinderResults;)F
.end method

.method public static final native ViewfinderResults_payload_capture_time_ms_get(JLcom/google/googlex/gcam/ViewfinderResults;)F
.end method

.method public static final native ViewfinderResults_psaf_capture_time_ms_get(JLcom/google/googlex/gcam/ViewfinderResults;)F
.end method

.method public static final native WeightedNormalizedRectVector_add(JLcom/google/googlex/gcam/WeightedNormalizedRectVector;JLcom/google/googlex/gcam/WeightedNormalizedRect;)V
.end method

.method public static final native WeightedNormalizedRectVector_size(JLcom/google/googlex/gcam/WeightedNormalizedRectVector;)J
.end method

.method public static final native WeightedNormalizedRect_rect_get(JLcom/google/googlex/gcam/WeightedNormalizedRect;)J
.end method

.method public static final native WeightedNormalizedRect_rect_set(JLcom/google/googlex/gcam/WeightedNormalizedRect;JLcom/google/googlex/gcam/NormalizedRect;)V
.end method

.method public static final native WeightedNormalizedRect_weight_set(JLcom/google/googlex/gcam/WeightedNormalizedRect;F)V
.end method

.method public static final native WeightedPixelRectVector_add(JLcom/google/googlex/gcam/WeightedPixelRectVector;JLcom/google/googlex/gcam/WeightedPixelRect;)V
.end method

.method public static final native WeightedPixelRect_rect_get(JLcom/google/googlex/gcam/WeightedPixelRect;)J
.end method

.method public static final native WeightedPixelRect_weight_set(JLcom/google/googlex/gcam/WeightedPixelRect;F)V
.end method

.method public static final native YuvImage_cref(JLcom/google/googlex/gcam/YuvImage;)J
.end method

.method public static final native YuvImage_height(JLcom/google/googlex/gcam/YuvImage;)I
.end method

.method public static final native YuvImage_ref(JLcom/google/googlex/gcam/YuvImage;)J
.end method

.method public static final native YuvImage_size_in_bytes(JLcom/google/googlex/gcam/YuvImage;)I
.end method

.method public static final native YuvImage_width(JLcom/google/googlex/gcam/YuvImage;)I
.end method

.method public static final native YuvImage_yuv_format(JLcom/google/googlex/gcam/YuvImage;)I
.end method

.method public static final native YuvReadView_chroma(JLcom/google/googlex/gcam/YuvReadView;)J
.end method

.method public static final native YuvReadView_height(JLcom/google/googlex/gcam/YuvReadView;)I
.end method

.method public static final native YuvReadView_luma(JLcom/google/googlex/gcam/YuvReadView;)J
.end method

.method public static final native YuvReadView_width(JLcom/google/googlex/gcam/YuvReadView;)I
.end method

.method public static final native YuvReadView_yuv_format(JLcom/google/googlex/gcam/YuvReadView;)I
.end method

.method public static final native YuvWriteView_FastCrop(JLcom/google/googlex/gcam/YuvWriteView;IIII)V
.end method

.method public static final native YuvWriteView_cref(JLcom/google/googlex/gcam/YuvWriteView;)J
.end method

.method public static final native YuvWriteView_height(JLcom/google/googlex/gcam/YuvWriteView;)I
.end method

.method public static final native YuvWriteView_width(JLcom/google/googlex/gcam/YuvWriteView;)I
.end method

.method public static final native YuvWriteView_yuv_format(JLcom/google/googlex/gcam/YuvWriteView;)I
.end method

.method public static final native delete_AeMetadata(J)V
.end method

.method public static final native delete_AeModeResult(J)V
.end method

.method public static final native delete_AeResults(J)V
.end method

.method public static final native delete_AeShotParams(J)V
.end method

.method public static final native delete_AfMetadata(J)V
.end method

.method public static final native delete_ArkInfo(J)V
.end method

.method public static final native delete_AssetData(J)V
.end method

.method public static final native delete_AwbInfo(J)V
.end method

.method public static final native delete_AwbMetadata(J)V
.end method

.method public static final native delete_BuildPayloadBurstSpecOptions(J)V
.end method

.method public static final native delete_BurstSpec(J)V
.end method

.method public static final native delete_ClientShotMetadata(J)V
.end method

.method public static final native delete_ClutWeightVector(J)V
.end method

.method public static final native delete_ClutWeights(J)V
.end method

.method public static final native delete_CyclopsParameters(J)V
.end method

.method public static final native delete_DarkShadingData(J)V
.end method

.method public static final native delete_DebugParams(J)V
.end method

.method public static final native delete_DirtyLensHistory(J)V
.end method

.method public static final native delete_DngColorCalibration(J)V
.end method

.method public static final native delete_DngColorCalibrationVector(J)V
.end method

.method public static final native delete_FaceInfo(J)V
.end method

.method public static final native delete_FaceInfoVector(J)V
.end method

.method public static final native delete_FaceInfo_Landmark(J)V
.end method

.method public static final native delete_FloatArray2(J)V
.end method

.method public static final native delete_FloatArray4(J)V
.end method

.method public static final native delete_FloatArray9(J)V
.end method

.method public static final native delete_FloatDeque(J)V
.end method

.method public static final native delete_FloatVector(J)V
.end method

.method public static final native delete_FrameMetadata(J)V
.end method

.method public static final native delete_FrameMetadataKey(J)V
.end method

.method public static final native delete_FrameRequest(J)V
.end method

.method public static final native delete_FrameRequestVector(J)V
.end method

.method public static final native delete_Gcam(J)V
.end method

.method public static final native delete_GenerateRgbImageOptions(J)V
.end method

.method public static final native delete_GeometricCalibration(J)V
.end method

.method public static final native delete_GeometricCalibrationVector(J)V
.end method

.method public static final native delete_GrayImageS16(J)V
.end method

.method public static final native delete_GrayReadViewS16(J)V
.end method

.method public static final native delete_GrayReadViewU8(J)V
.end method

.method public static final native delete_GrayWriteViewS16(J)V
.end method

.method public static final native delete_GrayWriteViewU16(J)V
.end method

.method public static final native delete_GyroSampleVector(J)V
.end method

.method public static final native delete_HalAfMetadata(J)V
.end method

.method public static final native delete_HdrGainMapInfo(J)V
.end method

.method public static final native delete_ImageSaverParams(J)V
.end method

.method public static final native delete_InitParams(J)V
.end method

.method public static final native delete_IntVector(J)V
.end method

.method public static final native delete_InterleavedImageF(J)V
.end method

.method public static final native delete_InterleavedImageS16(J)V
.end method

.method public static final native delete_InterleavedImageU16(J)V
.end method

.method public static final native delete_InterleavedImageU8(J)V
.end method

.method public static final native delete_InterleavedReadViewS16(J)V
.end method

.method public static final native delete_InterleavedReadViewU16(J)V
.end method

.method public static final native delete_InterleavedReadViewU8(J)V
.end method

.method public static final native delete_InterleavedWriteViewS16(J)V
.end method

.method public static final native delete_InterleavedWriteViewU16(J)V
.end method

.method public static final native delete_InterleavedWriteViewU8(J)V
.end method

.method public static final native delete_JpgEncodeOptions(J)V
.end method

.method public static final native delete_JpgEncoderMetadata(J)V
.end method

.method public static final native delete_LandmarkMap(J)V
.end method

.method public static final native delete_LiveHdrMetadata(J)V
.end method

.method public static final native delete_LocationData(J)V
.end method

.method public static final native delete_MeshTranslation(J)V
.end method

.method public static final native delete_MeshWarp(J)V
.end method

.method public static final native delete_NoiseModel(J)V
.end method

.method public static final native delete_NormalizedRect(J)V
.end method

.method public static final native delete_OisMetadata(J)V
.end method

.method public static final native delete_OisPositionRawVector(J)V
.end method

.method public static final native delete_OisPositionVector(J)V
.end method

.method public static final native delete_PhysicalStabilityParams(J)V
.end method

.method public static final native delete_PhysicalStabilityThresholds(J)V
.end method

.method public static final native delete_PixelRect(J)V
.end method

.method public static final native delete_PixelRectVector(J)V
.end method

.method public static final native delete_PortraitBrighteningProcessor(J)V
.end method

.method public static final native delete_PortraitDepthArguments(J)V
.end method

.method public static final native delete_PortraitMask(J)V
.end method

.method public static final native delete_PortraitOutputs(J)V
.end method

.method public static final native delete_PortraitRequest(J)V
.end method

.method public static final native delete_PostShutterAfParams(J)V
.end method

.method public static final native delete_PostviewParams(J)V
.end method

.method public static final native delete_QcColorCalibration(J)V
.end method

.method public static final native delete_QcColorCalibration_IlluminantData(J)V
.end method

.method public static final native delete_QcIlluminantVector(J)V
.end method

.method public static final native delete_RawImage(J)V
.end method

.method public static final native delete_RawReadView(J)V
.end method

.method public static final native delete_RawWriteView(J)V
.end method

.method public static final native delete_SceneFlicker(J)V
.end method

.method public static final native delete_ShotCallbacks(J)V
.end method

.method public static final native delete_ShotMetadata(J)V
.end method

.method public static final native delete_ShotParams(J)V
.end method

.method public static final native delete_Size(J)V
.end method

.method public static final native delete_SpatialAwb(J)V
.end method

.method public static final native delete_SpatialGainMap(J)V
.end method

.method public static final native delete_StaticMetadata(J)V
.end method

.method public static final native delete_StaticMetadataVector(J)V
.end method

.method public static final native delete_StringAeResultsMap(J)V
.end method

.method public static final native delete_StringFrameMetadataMap(J)V
.end method

.method public static final native delete_StringRawReadViewMap(J)V
.end method

.method public static final native delete_StringSpatialGainMap(J)V
.end method

.method public static final native delete_StringStaticMetadataMap(J)V
.end method

.method public static final native delete_TfliteFileData(J)V
.end method

.method public static final native delete_Uint8Vector(J)V
.end method

.method public static final native delete_ViewfinderProcessingOptions(J)V
.end method

.method public static final native delete_ViewfinderResults(J)V
.end method

.method public static final native delete_WeightedNormalizedRect(J)V
.end method

.method public static final native delete_WeightedNormalizedRectVector(J)V
.end method

.method public static final native delete_WeightedPixelRect(J)V
.end method

.method public static final native delete_WeightedPixelRectVector(J)V
.end method

.method public static final native delete_YuvImage(J)V
.end method

.method public static final native delete_YuvReadView(J)V
.end method

.method public static final native delete_YuvWriteView(J)V
.end method

.method public static final native kInvalidAllocationId_get()J
.end method

.method public static final native kInvalidShotId_get()I
.end method

.method public static final native kRequestCameraPrimary_get()Ljava/lang/String;
.end method

.method public static final native kRequestCameraSecondaryTele_get()Ljava/lang/String;
.end method

.method public static final native kRequestCameraSecondaryWide_get()Ljava/lang/String;
.end method

.method public static final native kSensorTempUnknown_get()I
.end method

.method public static final native new_AeMetadata()J
.end method

.method public static final native new_AeModeResult()J
.end method

.method public static final native new_AeResults()J
.end method

.method public static final native new_AeShotParams__SWIG_0()J
.end method

.method public static final native new_AeShotParams__SWIG_1(JLcom/google/googlex/gcam/AeShotParams;)J
.end method

.method public static final native new_AfMetadata()J
.end method

.method public static final native new_ArkInfo__SWIG_0()J
.end method

.method public static final native new_AssetData()J
.end method

.method public static final native new_AwbInfo__SWIG_0()J
.end method

.method public static final native new_AwbInfo__SWIG_1(JLcom/google/googlex/gcam/AwbInfo;)J
.end method

.method public static final native new_AwbMetadata()J
.end method

.method public static final native new_BuildPayloadBurstSpecOptions__SWIG_0()J
.end method

.method public static final native new_BurstSpec()J
.end method

.method public static final native new_ClientShotMetadata()J
.end method

.method public static final native new_ClutWeightVector__SWIG_0()J
.end method

.method public static final native new_ClutWeights()J
.end method

.method public static final native new_CyclopsParameters__SWIG_0()J
.end method

.method public static final native new_CyclopsParameters__SWIG_1(JLcom/google/googlex/gcam/CyclopsParameters;)J
.end method

.method public static final native new_DarkShadingData()J
.end method

.method public static final native new_DebugParams()J
.end method

.method public static final native new_DirtyLensHistory()J
.end method

.method public static final native new_DngColorCalibration()J
.end method

.method public static final native new_DngColorCalibrationVector__SWIG_0()J
.end method

.method public static final native new_FaceInfoVector__SWIG_0()J
.end method

.method public static final native new_FaceInfo_Landmark()J
.end method

.method public static final native new_FaceInfo__SWIG_0()J
.end method

.method public static final native new_FaceInfo__SWIG_1(JLcom/google/googlex/gcam/FaceInfo;)J
.end method

.method public static final native new_FloatArray2__SWIG_0()J
.end method

.method public static final native new_FloatArray4__SWIG_0()J
.end method

.method public static final native new_FloatArray9__SWIG_0()J
.end method

.method public static final native new_FloatDeque__SWIG_0()J
.end method

.method public static final native new_FloatVector__SWIG_0()J
.end method

.method public static final native new_FrameMetadata()J
.end method

.method public static final native new_FrameMetadataKey(JI)J
.end method

.method public static final native new_FrameRequestVector__SWIG_0()J
.end method

.method public static final native new_FrameRequest__SWIG_0()J
.end method

.method public static final native new_FrameRequest__SWIG_1(JLcom/google/googlex/gcam/FrameRequest;)J
.end method

.method public static final native new_GenerateRgbImageOptions()J
.end method

.method public static final native new_GeometricCalibration()J
.end method

.method public static final native new_GeometricCalibrationVector__SWIG_0()J
.end method

.method public static final native new_GrayImageS16__SWIG_0()J
.end method

.method public static final native new_GrayImageS16__SWIG_1(III)J
.end method

.method public static final native new_GrayReadViewS16__SWIG_0()J
.end method

.method public static final native new_GrayReadViewU8__SWIG_0()J
.end method

.method public static final native new_GrayWriteViewS16__SWIG_0()J
.end method

.method public static final native new_GrayWriteViewU16__SWIG_0()J
.end method

.method public static final native new_GrayWriteViewU16__SWIG_1(IIIJI)J
.end method

.method public static final native new_GyroSampleVector__SWIG_0()J
.end method

.method public static final native new_HalAfMetadata()J
.end method

.method public static final native new_HdrGainMapInfo()J
.end method

.method public static final native new_ImageSaverParams()J
.end method

.method public static final native new_InitParams()J
.end method

.method public static final native new_IntVector__SWIG_0()J
.end method

.method public static final native new_InterleavedImageF()J
.end method

.method public static final native new_InterleavedImageS16__SWIG_0()J
.end method

.method public static final native new_InterleavedImageS16__SWIG_1(III)J
.end method

.method public static final native new_InterleavedImageU16__SWIG_0()J
.end method

.method public static final native new_InterleavedImageU16__SWIG_1(III)J
.end method

.method public static final native new_InterleavedImageU8__SWIG_0()J
.end method

.method public static final native new_InterleavedImageU8__SWIG_1(III)J
.end method

.method public static final native new_InterleavedReadViewS16__SWIG_0()J
.end method

.method public static final native new_InterleavedReadViewU16__SWIG_0()J
.end method

.method public static final native new_InterleavedReadViewU8__SWIG_0()J
.end method

.method public static final native new_InterleavedWriteViewS16__SWIG_0()J
.end method

.method public static final native new_InterleavedWriteViewU16__SWIG_0()J
.end method

.method public static final native new_InterleavedWriteViewU8__SWIG_0()J
.end method

.method public static final native new_InterleavedWriteViewU8__SWIG_1(IIIJI)J
.end method

.method public static final native new_JpgEncodeOptions()J
.end method

.method public static final native new_JpgEncoderMetadata()J
.end method

.method public static final native new_LandmarkMap__SWIG_0()J
.end method

.method public static final native new_LiveHdrMetadata()J
.end method

.method public static final native new_LocationData()J
.end method

.method public static final native new_MeshTranslation()J
.end method

.method public static final native new_MeshWarp()J
.end method

.method public static final native new_NormalizedRect()J
.end method

.method public static final native new_OisMetadata()J
.end method

.method public static final native new_OisPositionRawVector__SWIG_0()J
.end method

.method public static final native new_OisPositionVector__SWIG_0()J
.end method

.method public static final native new_PhysicalStabilityParams()J
.end method

.method public static final native new_PhysicalStabilityThresholds()J
.end method

.method public static final native new_PixelRect()J
.end method

.method public static final native new_PixelRectVector__SWIG_0()J
.end method

.method public static final native new_PortraitBrighteningProcessor()J
.end method

.method public static final native new_PortraitDepthArguments(JLcom/google/googlex/gcam/InterleavedReadViewU16;JLcom/google/googlex/gcam/StringRawReadViewMap;)J
.end method

.method public static final native new_PortraitMask()J
.end method

.method public static final native new_PortraitOutputs()J
.end method

.method public static final native new_PortraitRequest()J
.end method

.method public static final native new_PostShutterAfParams()J
.end method

.method public static final native new_PostviewParams()J
.end method

.method public static final native new_QcColorCalibration()J
.end method

.method public static final native new_QcColorCalibration_IlluminantData()J
.end method

.method public static final native new_QcIlluminantVector__SWIG_0()J
.end method

.method public static final native new_RawImage__SWIG_0()J
.end method

.method public static final native new_RawImage__SWIG_1(III)J
.end method

.method public static final native new_RawReadView__SWIG_0()J
.end method

.method public static final native new_RawWriteView__SWIG_0()J
.end method

.method public static final native new_RawWriteView__SWIG_1(IIIIJ)J
.end method

.method public static final native new_SceneFlicker()J
.end method

.method public static final native new_ShotCallbacks()J
.end method

.method public static final native new_ShotMetadata__SWIG_0()J
.end method

.method public static final native new_ShotMetadata__SWIG_1(JLcom/google/googlex/gcam/ShotMetadata;)J
.end method

.method public static final native new_ShotParams__SWIG_0()J
.end method

.method public static final native new_ShotParams__SWIG_1(JLcom/google/googlex/gcam/ShotParams;)J
.end method

.method public static final native new_Size()J
.end method

.method public static final native new_SpatialAwb()J
.end method

.method public static final native new_SpatialGainMap__SWIG_0()J
.end method

.method public static final native new_SpatialGainMap__SWIG_1(JLcom/google/googlex/gcam/InterleavedImageF;)J
.end method

.method public static final native new_SpatialGainMap__SWIG_2(II)J
.end method

.method public static final native new_StaticMetadataVector__SWIG_0()J
.end method

.method public static final native new_StaticMetadata__SWIG_0()J
.end method

.method public static final native new_StaticMetadata__SWIG_1(JLcom/google/googlex/gcam/StaticMetadata;)J
.end method

.method public static final native new_StringAeResultsMap__SWIG_0()J
.end method

.method public static final native new_StringFrameMetadataMap__SWIG_0()J
.end method

.method public static final native new_StringRawReadViewMap__SWIG_0()J
.end method

.method public static final native new_StringSpatialGainMap__SWIG_0()J
.end method

.method public static final native new_StringStaticMetadataMap__SWIG_0()J
.end method

.method public static final native new_TfliteFileData(IJJ)J
.end method

.method public static final native new_Uint8Vector__SWIG_0()J
.end method

.method public static final native new_ViewfinderProcessingOptions__SWIG_0()J
.end method

.method public static final native new_ViewfinderResults()J
.end method

.method public static final native new_WeightedNormalizedRect()J
.end method

.method public static final native new_WeightedNormalizedRectVector__SWIG_0()J
.end method

.method public static final native new_WeightedPixelRect()J
.end method

.method public static final native new_WeightedPixelRectVector__SWIG_0()J
.end method

.method public static final native new_YuvImage__SWIG_0(III)J
.end method

.method public static final native new_YuvReadView__SWIG_0()J
.end method

.method public static final native new_YuvReadView__SWIG_1(JLcom/google/googlex/gcam/YuvReadView;)J
.end method

.method public static final native new_YuvReadView__SWIG_2(IIIJIIIJI)J
.end method

.method public static final native new_YuvWriteView__SWIG_0()J
.end method

.method public static final native new_YuvWriteView__SWIG_1(JLcom/google/googlex/gcam/YuvWriteView;)J
.end method

.method public static final native new_YuvWriteView__SWIG_2(IIIJIIIJI)J
.end method
