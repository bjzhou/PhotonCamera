.class public final Lgzd;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lgzr;

.field public static final B:Lgzr;

.field public static final C:Lgzr;

.field public static final D:Lgzr;

.field public static final E:Lgzr;

.field public static final F:Lgzs;

.field public static final G:Lgzs;

.field public static final H:Lgzr;

.field public static final I:Lgzr;

.field public static final J:Lgzr;

.field public static final K:Lgzs;

.field public static final L:Lgzr;

.field public static final M:Lgzr;

.field public static final N:Lgzs;

.field public static final O:Lgzr;

.field public static final P:Lgzr;

.field public static final Q:Lgzr;

.field public static final R:Lgzr;

.field public static final S:Lgzr;

.field public static final T:Lgzr;

.field public static final U:Lgzr;

.field public static final V:Lgzr;

.field public static final W:Lgzr;

.field public static final X:Lgzr;

.field public static final Y:Lgzu;

.field public static final Z:Lgzs;

.field public static final a:Ljava/lang/Integer;

.field public static final aa:Lgzr;

.field public static final ab:Lgzr;

.field public static final ac:Lgzu;

.field public static final ad:Lgzu;

.field public static final ae:Lgzt;

.field public static final af:Lgzt;

.field public static final ag:Lgzs;

.field public static final ah:Lgzs;

.field public static final ai:Lgzt;

.field public static final aj:Lgzt;

.field public static final ak:Lgzs;

.field public static final al:Lgzs;

.field public static final am:Lgzs;

.field public static final an:Lgzs;

.field public static final ao:Lgzs;

.field public static final ap:Lgzs;

.field public static final aq:Lgzs;

.field public static final ar:Lgzs;

.field public static final as:Lgzu;

.field public static final at:Lgzr;

.field public static final au:Lgzr;

.field public static final av:Lgzs;

.field public static final aw:Lgzt;

.field public static final ax:Lgzs;

.field public static final b:Lgzr;

.field public static final c:Lgzr;

.field public static final d:Lgzs;

.field public static final e:Lgzs;

.field public static final f:Lgzs;

.field public static final g:Lgzs;

.field public static final h:Lgzu;

.field public static final i:Lgzs;

.field public static final j:Lgzu;

.field public static final k:Lgzr;

.field public static final l:Lgzr;

.field public static final m:Lgzr;

.field public static final n:Lgzr;

.field public static final o:Lgzr;

.field public static final p:Lgzr;

.field public static final q:Lgzr;

.field public static final r:Lgzs;

.field public static final s:Lgzu;

.field public static final t:Lgzu;

.field public static final u:Lgzr;

.field public static final v:Lgzu;

.field public static final w:Lgzu;

.field public static final x:Lgzu;

.field public static final y:Lgzr;

.field public static final z:Lgzr;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lgzd;->a:Ljava/lang/Integer;

    new-instance v1, Lgzr;

    const-string v2, "pref_camera_recordlocation_key"

    sget-object v3, Lgzc;->b:Lgzc;

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Lgza;)V

    sput-object v1, Lgzd;->b:Lgzr;

    new-instance v1, Lgzr;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "pref_dirty_lens_detector_key"

    invoke-direct {v1, v3, v2}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->c:Lgzr;

    new-instance v1, Lgzs;

    sget-object v3, Lhxs;->a:Lhxs;

    iget v3, v3, Lhxs;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "pref_camera_grid_lines_mode"

    invoke-direct {v1, v4, v3}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->d:Lgzs;

    new-instance v1, Lgzs;

    sget-object v3, Lgzc;->a:Lgzc;

    const-string v4, "key_aspect_ratio"

    invoke-direct {v1, v4, v3}, Lgzs;-><init>(Ljava/lang/String;Lgza;)V

    sput-object v1, Lgzd;->e:Lgzs;

    new-instance v1, Lgzs;

    sget-object v3, Lgzc;->c:Lgzc;

    const-string v4, "pref_video_immersive_aspect_ratio"

    invoke-direct {v1, v4, v3}, Lgzs;-><init>(Ljava/lang/String;Lgza;)V

    sput-object v1, Lgzd;->f:Lgzs;

    new-instance v1, Lgzs;

    sget-object v3, Lgzc;->d:Lgzc;

    const-string v4, "key_immersive_aspect_ratio"

    invoke-direct {v1, v4, v3}, Lgzs;-><init>(Ljava/lang/String;Lgza;)V

    sput-object v1, Lgzd;->g:Lgzs;

    new-instance v1, Lgzu;

    const-string v3, "pref_double_tap_key"

    const-string v4, "zoom"

    invoke-direct {v1, v3, v4}, Lgzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgzd;->h:Lgzu;

    new-instance v1, Lgzs;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "pref_double_tap_launch_edu_count"

    invoke-direct {v1, v5, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->i:Lgzs;

    new-instance v1, Lgzu;

    const-string v5, "pref_volume_key_action"

    const-string v6, "shutter"

    invoke-direct {v1, v5, v6}, Lgzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgzd;->j:Lgzu;

    new-instance v1, Lgzr;

    const-string v5, "pref_camera_sounds_key"

    invoke-direct {v1, v5, v2}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->k:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_camera_catcher_key"

    invoke-direct {v1, v5, v2}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->l:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_hotshot_key"

    invoke-direct {v1, v5, v2}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->m:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_enable_auto_taxi_key"

    invoke-direct {v1, v5, v2}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->n:Lgzr;

    new-instance v1, Lgzr;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "pref_anglerfish_enabled_key"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->o:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_camera_single_shot_sound_key"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->p:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_camera_coach_key"

    invoke-direct {v1, v5, v2}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->q:Lgzr;

    new-instance v1, Lgzs;

    const-string v5, "pref_lens_moved_notification_count"

    invoke-direct {v1, v5, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->r:Lgzs;

    new-instance v1, Lgzu;

    sget-object v5, Lgzc;->e:Lgzc;

    const-string v6, "pref_camera_back_flashmode_key"

    invoke-direct {v1, v6, v5}, Lgzu;-><init>(Ljava/lang/String;Lgza;)V

    sput-object v1, Lgzd;->s:Lgzu;

    new-instance v1, Lgzu;

    sget-object v5, Lgzc;->f:Lgzc;

    const-string v6, "pref_camera_front_flashmode_key"

    invoke-direct {v1, v6, v5}, Lgzu;-><init>(Ljava/lang/String;Lgza;)V

    sput-object v1, Lgzd;->t:Lgzu;

    new-instance v1, Lgzr;

    const-string v5, "pref_camera_selfie_flashmode_key"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->u:Lgzr;

    new-instance v1, Lgzu;

    const-string v5, "pref_camera_video_back_flashmode_key"

    const-string v6, "off"

    invoke-direct {v1, v5, v6}, Lgzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgzd;->v:Lgzu;

    new-instance v1, Lgzu;

    const-string v5, "pref_camera_video_front_flashmode_key"

    invoke-direct {v1, v5, v6}, Lgzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgzd;->w:Lgzu;

    new-instance v1, Lgzu;

    const-string v5, "pref_cuttlefish_front_torch_mode_key"

    invoke-direct {v1, v5, v6}, Lgzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgzd;->x:Lgzu;

    new-instance v1, Lgzr;

    const-string v5, "pref_camera_video_back_flashmode_thermally_disabled_key"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->y:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_camera_hdr_plus_back_flashmode_thermally_disabled_key"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->z:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_video_stabilization_key"

    invoke-direct {v1, v5, v2}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->A:Lgzr;

    new-instance v1, Lgzr;

    sget-object v5, Lgzc;->g:Lgzc;

    const-string v6, "pref_video_hevc_setting_key"

    invoke-direct {v1, v6, v5}, Lgzr;-><init>(Ljava/lang/String;Lgza;)V

    sput-object v1, Lgzd;->B:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_video_amethyst_key"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->C:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_video_quality_ultra_key"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->D:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_first_time_video_stab_edu"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->E:Lgzr;

    new-instance v1, Lgzs;

    sget-object v5, Lgyt;->b:Lgyt;

    iget v5, v5, Lgyt;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "pref_front_speech_enhance_key"

    invoke-direct {v1, v6, v5}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->F:Lgzs;

    new-instance v1, Lgzs;

    sget-object v5, Lgyt;->a:Lgyt;

    iget v5, v5, Lgyt;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "pref_back_speech_enhance_key"

    invoke-direct {v1, v6, v5}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->G:Lgzs;

    new-instance v1, Lgzr;

    const-string v5, "pref_speech_enhance_edu_shown"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->H:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_speech_enhance_ever_recorded"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->I:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_speech_enhance_tooltip_shown"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->J:Lgzr;

    new-instance v1, Lgzs;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "pref_speech_enhance_tooltip_countdown"

    invoke-direct {v1, v6, v5}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Lgzs;

    const-string v6, "pref_speech_enhance_menu_tooltip_countdown"

    invoke-direct {v1, v6, v5}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Lgzs;

    const-string v5, "pref_video_stab_button_untouched_count"

    invoke-direct {v1, v5, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->K:Lgzs;

    new-instance v1, Lgzr;

    const-string v5, "pref_first_time_video_stab_tooltip"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->L:Lgzr;

    new-instance v1, Lgzr;

    const-string v5, "pref_video_portrait_has_checked"

    invoke-direct {v1, v5, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->M:Lgzr;

    new-instance v1, Lgzs;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pref_hdr_tooltip_countdown"

    invoke-direct {v1, v7, v6}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->N:Lgzs;

    new-instance v1, Lgzr;

    const-string v6, "pref_has_hdr_tooltip_shown"

    invoke-direct {v1, v6, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->O:Lgzr;

    new-instance v1, Lgzr;

    const-string v6, "key_social_share_opt_in"

    invoke-direct {v1, v6, v2}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->P:Lgzr;

    new-instance v1, Lgzr;

    const-string v2, "pref_has_set_social_share_apps"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->Q:Lgzr;

    new-instance v1, Lgzr;

    const-string v2, "pref_has_checked_social_share"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->R:Lgzr;

    new-instance v1, Lgzr;

    const-string v2, "pref_has_checked_social_share_toggle"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->S:Lgzr;

    new-instance v1, Lgzr;

    const-string v2, "pref_has_checked_social_app_toggle"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->T:Lgzr;

    new-instance v1, Lgzr;

    const-string v2, "pref_has_share_successful"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->U:Lgzr;

    new-instance v1, Lgzr;

    const-string v2, "pref_storage_saver"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->V:Lgzr;

    new-instance v1, Lgzr;

    const-string v2, "pref_storage_saver_auto_disable"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->W:Lgzr;

    new-instance v1, Lgzr;

    const-string v2, "pref_raw_output_previous"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->X:Lgzr;

    new-instance v1, Lgzu;

    const-string v2, "pref_camera_resolution_previous"

    const-string v6, "full"

    invoke-direct {v1, v2, v6}, Lgzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgzd;->Y:Lgzu;

    new-instance v1, Lgzs;

    const-string v2, "pref_microvideo_mode_previous"

    invoke-direct {v1, v2, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->Z:Lgzs;

    new-instance v1, Lgzr;

    const-string v2, "pref_video_hevc_previous"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->aa:Lgzr;

    new-instance v1, Lgzr;

    const-string v2, "pref_dynamic_depth_previous"

    invoke-direct {v1, v2, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lgzd;->ab:Lgzr;

    new-instance v1, Lgzu;

    sget-object v2, Lgyw;->a:Lgyw;

    invoke-virtual {v2}, Lgyw;->name()Ljava/lang/String;

    move-result-object v2

    const-string v6, "pref_video_resolution_previous"

    invoke-direct {v1, v6, v2}, Lgzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgzd;->ac:Lgzu;

    new-instance v1, Lgzu;

    sget-object v2, Lgyr;->c:Lgyr;

    invoke-virtual {v2}, Lgyr;->name()Ljava/lang/String;

    move-result-object v2

    const-string v6, "pref_video_fps_previous"

    invoke-direct {v1, v6, v2}, Lgzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgzd;->ad:Lgzu;

    new-instance v1, Lgzt;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "pref_last_survey_toast_timestamp"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Lgzt;

    const-string v6, "pref_last_photo_taken_survey_toast_timestamp"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Lgzt;

    const-string v6, "pref_last_photo_taken_survey_request_timestamp"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Lgzt;

    const-string v6, "pref_last_dual_ev_survey_toast_timestamp"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Lgzt;

    const-string v6, "pref_last_dual_ev_survey_request_timestamp"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Lgzt;

    const-string v6, "pref_last_app_startup_survey_toast_timestamp"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Lgzt;

    const-string v6, "pref_last_app_startup_survey_request_timestamp"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Lgzt;

    const-string v6, "pref_updated_from_version_code"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v1, Lgzd;->ae:Lgzt;

    new-instance v1, Lgzt;

    const-string v6, "pref_last_installed_version_code"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v1, Lgzd;->af:Lgzt;

    new-instance v1, Lgzs;

    const-string v6, "pref_update_available_chip_dismissal_times"

    invoke-direct {v1, v6, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->ag:Lgzs;

    new-instance v1, Lgzs;

    const-string v6, "pref_last_available_update_version_code"

    invoke-direct {v1, v6, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->ah:Lgzs;

    new-instance v1, Lgzt;

    const-string v6, "pref_last_available_update_timestamp"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v1, Lgzd;->ai:Lgzt;

    new-instance v1, Lgzt;

    const-string v6, "pref_check_hal_update_after_gca_version"

    invoke-direct {v1, v6, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v1, Lgzd;->aj:Lgzt;

    new-instance v1, Lgzs;

    const-string v6, "pref_hal_update_attempts"

    invoke-direct {v1, v6, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->ak:Lgzs;

    new-instance v1, Lgzs;

    const-string v6, "pref_entered_taxi_count"

    invoke-direct {v1, v6, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Lgzs;

    sget-object v6, Lgzc;->h:Lgzc;

    const-string v7, "pref_taxi_state"

    invoke-direct {v1, v7, v6}, Lgzs;-><init>(Ljava/lang/String;Lgza;)V

    sput-object v1, Lgzd;->al:Lgzs;

    new-instance v1, Lgzs;

    sget-object v6, Lcks;->a:Lcks;

    invoke-static {v6}, Lcks;->a(Lcks;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pref_camera_cuttlefish_bone_option"

    invoke-direct {v1, v7, v6}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->am:Lgzs;

    new-instance v1, Lgzs;

    const-string v6, "pref_has_seen_vertical_pano_hint"

    invoke-direct {v1, v6, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->an:Lgzs;

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v8

    if-nez v8, :cond_0

    const v5, 0x1

    :cond_0
    invoke-static {v5}, Linb;->D(I)I

    move-result v1

    new-instance v5, Lgzs;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "pref_camera_astro"

    invoke-direct {v5, v6, v1}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v5, Lgzd;->ao:Lgzs;

    invoke-static {v0}, Ljfc;->i(I)I

    move-result v1

    new-instance v5, Lgzs;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "pref_camera_swiss"

    invoke-direct {v5, v6, v1}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v5, Lgzd;->ap:Lgzs;

    new-instance v1, Lgzs;

    sget-object v5, Lgyv;->b:Lgyv;

    iget v5, v5, Lgyv;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "pref_camera_lasagna_tr"

    invoke-direct {v1, v6, v5}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->aq:Lgzs;

    invoke-static {v0}, Ljcb;->n(I)I

    move-result v0

    new-instance v1, Lgzs;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "pref_camera_flounder"

    invoke-direct {v1, v5, v0}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lgzd;->ar:Lgzs;

    new-instance v0, Lgzr;

    const-string v1, "pref_has_seen_permissions_dialogs"

    invoke-direct {v0, v1, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Lgzu;

    const-string v1, "pref_camera_photosphere_orientation"

    const-string v5, "pano_photosphere"

    invoke-direct {v0, v1, v5}, Lgzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lgzd;->as:Lgzu;

    new-instance v0, Lgzr;

    const-string v1, "pref_mars_enabled"

    invoke-direct {v0, v1, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lgzd;->at:Lgzr;

    new-instance v0, Lgzr;

    const-string v1, "pref_mars_tutorial_seen"

    invoke-direct {v0, v1, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lgzd;->au:Lgzr;

    new-instance v0, Lgzs;

    const-string v1, "pref_mars_tutorial_display_count"

    invoke-direct {v0, v1, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lgzd;->av:Lgzs;

    new-instance v0, Lgzt;

    const-string v1, "pref_release_dialog_last_shown_timestamp"

    invoke-direct {v0, v1, v2}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v0, Lgzd;->aw:Lgzt;

    new-instance v0, Lgzs;

    sget-object v1, Lgzc;->i:Lgzc;

    const-string v2, "pref_micro_mode"

    invoke-direct {v0, v2, v1}, Lgzs;-><init>(Ljava/lang/String;Lgza;)V

    sput-object v0, Lgzd;->ax:Lgzs;

    new-instance v0, Lgzs;

    const-string v1, "perf_jupiter_tooltip_shown"

    invoke-direct {v0, v1, v4}, Lgzs;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Lgzr;

    const-string v1, "perf_jupiter_bottom_sheet_shown"

    invoke-direct {v0, v1, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Lgzr;

    const-string v1, "perf_has_enter_jupiter_session"

    invoke-direct {v0, v1, v3}, Lgzr;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
