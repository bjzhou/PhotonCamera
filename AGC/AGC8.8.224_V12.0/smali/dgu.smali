.class public final Ldgu;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ldhj;

.field public static final B:Ldhj;

.field public static final C:Ldhj;

.field public static final D:Ldhj;

.field public static final E:Ldhj;

.field public static final F:Ldhj;

.field public static final G:Ldhj;

.field public static final H:Ldhj;

.field public static final I:Ldhj;

.field public static final J:Ldhj;

.field public static final K:Ldhj;

.field public static final L:Ldhj;

.field public static final M:Ldhj;

.field public static final N:Ldhj;

.field public static final O:Ldhj;

.field public static final P:Ldhj;

.field public static final Q:Ldhj;

.field public static final R:Ldhj;

.field public static final S:Ldhj;

.field public static final T:Ldhj;

.field public static final U:Ldhj;

.field public static final V:Ldhj;

.field public static final W:Ldhj;

.field public static final X:Ldhj;

.field public static final Y:Ldhj;

.field public static final Z:Ldhj;

.field public static final a:Ldhk;

.field public static final aa:Ldhj;

.field public static final ab:Ldhj;

.field public static final ac:Ldhj;

.field public static final ad:Ldhj;

.field public static final ae:Ldhj;

.field public static final af:Ldhj;

.field public static final ag:Ldhj;

.field public static final ah:Ldhj;

.field public static final ai:Ldhj;

.field public static final aj:Ldhj;

.field public static final ak:Ldhj;

.field public static final al:Ldhj;

.field public static final am:Ldhj;

.field public static final an:Ldhj;

.field public static final b:Ldhk;

.field public static final c:Ldhk;

.field public static final d:Ldhk;

.field public static final e:Ldhk;

.field public static final f:Ldhk;

.field public static final g:Ldhk;

.field public static final h:Ldhk;

.field public static final i:Ldhk;

.field public static final j:Ldhk;

.field public static final k:Ldhk;

.field public static final l:Ldhj;

.field public static final m:Ldhj;

.field public static final n:Ldhj;

.field public static final o:Ldhj;

.field public static final p:Ldhj;

.field public static final q:Ldhj;

.field public static final r:Ldhj;

.field public static final s:Ldhj;

.field public static final t:Ldhj;

.field public static final u:Ldhj;

.field public static final v:Ldhj;

.field public static final w:Ldhj;

.field public static final x:Ldhj;

.field public static final y:Ldhj;

.field public static final z:Ldhj;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.bitrate"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->a:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.capture_rate"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-array v8, v1, [Ljava/lang/Integer;

    move-object v2, v9

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v8}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v2

    iput-object v2, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->b:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "detect_face_on_front_camera"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->l:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "detect_face_on_non_front_camera"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->m:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.fragmented_muxer"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder_slowmo.fs"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->n:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.h265"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "enable_hevc_setting"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->o:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.codec_sm"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->p:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.codec_video"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->q:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.no_audio"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.ois"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->r()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->r:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.stereo"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->r()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->s:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.sf_share"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.trk_yuv"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->t:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.viewfinder_effect"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.vfe_limit_30fps"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "fps_video_setting_writeable"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->u:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "google_llv_30_fps_non_4k"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->v:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "google_llv_auto_fps_non_4k"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->w:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "max_1080p_video_duration_seconds"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->c:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "max_2160p_video_duration_seconds"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->d:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "max_hfr_video_duration_seconds"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->e:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "UNLOCK_AF_AE_WITH_SCENE_CHANGE_FOR_FRONT_CAM"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->x:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camcorder.vidqual_front"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    const/16 v2, 0x90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x120

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x2d0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x438

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Integer;

    const/16 v10, 0x870

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v8, v1

    move-object v10, v2

    move-object/from16 v11, v17

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v8

    invoke-static/range {v10 .. v16}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v8

    iput-object v8, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->f:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v8, "camcorder.vidqual_back"

    iput-object v8, v0, Lnoc;->b:Ljava/lang/Object;

    new-array v8, v7, [Ljava/lang/Integer;

    aput-object v18, v8, v1

    move-object/from16 v16, v8

    invoke-static/range {v10 .. v16}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v1

    iput-object v1, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->g:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "zoom_override_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->y:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "zoom_min_override_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->z:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.max_zoom"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->A:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.max_zoom_30fps"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->B:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.max_zoom_default"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->C:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.max_zoom_hfr"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->D:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder_prewire_record_surface"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->E:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder_recorder_warm_up"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->F:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.24fps"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.4k60fps"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->G:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.stokes_dyn"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->H:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.stokes_thr"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->I:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.stokes_mra"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->J:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.stokes_asm"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->K:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.stokes_uw"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->L:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.poll"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.submode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9, v1, v2}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    iput-object v3, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->h:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v3, "camcorder.washington_md"

    iput-object v3, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9, v1, v2, v3, v4}, Lmwn;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    iput-object v4, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->i:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v4, "camcorder.enable_w_poll"

    iput-object v4, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v4, "camcorder.slowmo_snapshot"

    iput-object v4, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->M:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v4, "camcorder.screenshot_snapshot"

    iput-object v4, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v4, "camcorder.washington"

    iput-object v4, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->N:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v4, "camcorder.washington_edu"

    iput-object v4, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->O:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v4, "camcorder.ext_mic_state"

    iput-object v4, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-static {v9, v1, v2, v3}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v1

    iput-object v1, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->j:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.use_gcamux"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->P:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.video_file_max_size"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v1, Ldhj;

    iget-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    iget-object v0, v0, Lnoc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Ldgu;->Q:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.3a_metadata"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->R:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.fix_crtime"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->S:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.fb_preview"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->T:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.animate_stab_button"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->U:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.washington_l"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->V:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.washington_a"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->W:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.washington_c"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->X:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.slowmo_pause"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->Y:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.sync_fps"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->Z:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.log_3a"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->aa:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.auto_stop_on_frame_drop"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->ab:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.camera_perfetto_trace_frame_drops"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const-string v1, "General"

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "g"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgu;->k:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.ir_fs"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.front_variable_fps_range"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->ac:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.ts"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->ad:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.ts60"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.ap"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->ae:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.ap_pipeline"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.use_bt709"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->af:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.add_silent_audio"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->ag:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.default_resolution_4K"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.1080p60_thr"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->ah:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.front_4k"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->ai:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.amber"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->aj:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.amber_ft_edu"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->ak:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.amethyst"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.amethyst_opt"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->al:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.hedgehog"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->am:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.3a_video_metadata_extended"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.awb_bg_stats_video_metadata"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.emerald"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.thermal_recording_wrn"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgu;->an:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.force_viewfinder_effect"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.enable_feature_central"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.xmp_dates"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camcorder.fps_thermal_throttle"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ldhm;Lkoe;)V
    .locals 11

    sget-object v0, Ldgu;->a:Ldhk;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->b:Ldhk;

    invoke-interface {p0, v0, v1}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->l:Ldhj;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->m:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->n:Ldhj;

    invoke-interface {p0, v0}, Ldhm;->r(Ldhj;)V

    sget-object v0, Ldgu;->o:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->p:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->q:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->r:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->s(Ldhj;Z)V

    sget-object v0, Ldgu;->s:Ldhj;

    iget-boolean v3, p1, Lkoe;->b:Z

    invoke-interface {p0, v0, v2}, Ldhm;->s(Ldhj;Z)V

    sget-object v0, Ldgu;->t:Ldhj;

    invoke-interface {p0, v0}, Ldhm;->r(Ldhj;)V

    sget-object v0, Ldgu;->u:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->c:Ldhk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->d:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->e:Ldhk;

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->v:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->w:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->x:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->f:Ldhk;

    invoke-interface {p0, v0, v1}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->g:Ldhk;

    invoke-interface {p0, v0, v1}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->y:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->z:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->B:Ldhj;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgu;->C:Ldhj;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p0, v0, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgu;->D:Ldhj;

    invoke-interface {p0, v0, v5}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgu;->A:Ldhj;

    invoke-interface {p0, v0, v4}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v0, Ldgu;->E:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->F:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->G:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->H:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->I:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->J:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->K:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->L:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->h:Ldhk;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->M:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->N:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->O:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->j:Ldhk;

    invoke-interface {p0, v0, v1}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->P:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->Q:Ldhj;

    const-wide v4, 0x280000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Ldit;

    iget-object v5, v5, Ldit;->b:Ljava/util/Map;

    new-instance v6, Landroidx/wear/ambient/AmbientDelegate;

    iget-object v7, v0, Ldhj;->b:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v8, v0, Ldhj;->a:Ljava/lang/String;

    sget-object v9, Ldiq;->a:Llox;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "__"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    invoke-static {v9, v7, v4, v3}, Lloz;->c(Llox;Ljava/lang/String;Ljava/lang/Long;Z)Lloz;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    invoke-direct {v6, v4, v7}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldgu;->R:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->i:Ldhk;

    invoke-interface {p0, v0, v1}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgu;->S:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->T:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->U:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->V:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->W:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->X:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->Y:Ldhj;

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->Z:Ldhj;

    invoke-interface {p0, v0, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldgu;->ab:Ldhj;

    invoke-interface {p0, v0}, Ldhm;->r(Ldhj;)V

    iget-boolean p1, p1, Lkoe;->c:Z

    sget-object p1, Ldgu;->k:Ldhk;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object p1, Ldgu;->aa:Ldhj;

    invoke-interface {p0, p1, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->ac:Ldhj;

    invoke-interface {p0, p1, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->ad:Ldhj;

    invoke-interface {p0, p1, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->ae:Ldhj;

    invoke-interface {p0, p1, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->ag:Ldhj;

    invoke-interface {p0, p1, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->af:Ldhj;

    invoke-interface {p0, p1, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->ah:Ldhj;

    invoke-interface {p0, p1, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->ai:Ldhj;

    invoke-interface {p0, p1, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->aj:Ldhj;

    invoke-interface {p0, p1, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->ak:Ldhj;

    invoke-interface {p0, p1}, Ldhm;->r(Ldhj;)V

    sget-object p1, Ldgu;->al:Ldhj;

    invoke-interface {p0, p1, v3}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->am:Ldhj;

    invoke-interface {p0, p1, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldgu;->an:Ldhj;

    invoke-interface {p0, p1, v2}, Ldhm;->u(Ldhj;Z)V

    return-void
.end method
