.class public final Lcom/DeveloperOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/DeveloperOptions$KeyBuilder;
    }
.end annotation


# static fields
.field public static c2api_color_correction_ambition_mode:Ldhk;

.field public static c2api_color_correction_mode:Ldhk;

.field public static c2api_distortion_correction_mode:Ldhk;

.field public static c2api_edge_mode:Ldhk;

.field public static c2api_noise_reduction_mode:Ldhk;

.field public static c2api_tone_mode:Ldhk;

.field public static c2api_viewfinder_noise_reduction_mode:Ldhk;

.field public static camcorder_level_fix:Ldhk;

.field public static cutout_display:Ldhj;

.field public static fix_request_capabilities:Ldhj;

.field public static gboard_enabled:Ldhj;

.field public static lens_toggle_enable:Ldhj;

.field public static nonzsl_base_frame_is_the_last:Ldhj;

.field public static pck_analysis_yuv:Ldhj;

.field public static pck_large_yuv:Ldhj;

.field public static shasta_force:Ldhj;

.field public static spatial_rgb_force:Ldhj;

.field public static ultra_tele_zoom_ratio_facing_back:Ldhj;

.field public static ultra_wide_zoom_ratio_facing_back:Ldhj;

.field public static zoom_decimal_point_threshold:Ldhj;

.field public static zsl_base_frame_is_the_last:Ldhj;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const-string v0, "camera.cutout_display"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->cutout_display:Ldhj;

    const-string v0, "camera.lens_toggle_enable"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->lens_toggle_enable:Ldhj;

    const-string v0, "gboard_enabled"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->gboard_enabled:Ldhj;

    const-string v0, "camera.spatial_rgb_force"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->spatial_rgb_force:Ldhj;

    const-string v0, "camera.shasta.force"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->shasta_force:Ldhj;

    const-string v0, "camera.pck_large_yuv"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->pck_large_yuv:Ldhj;

    const-string v0, "camera.pck_analysis_yuv"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->pck_analysis_yuv:Ldhj;

    const-string v0, "camera.fix_request_capabilities"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->fix_request_capabilities:Ldhj;

    const-string v0, "zsl_base_frame_is_the_last"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->zsl_base_frame_is_the_last:Ldhj;

    const-string v0, "nonzsl_base_frame_is_the_last"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->nonzsl_base_frame_is_the_last:Ldhj;

    const-string v0, "camcorder.level_fix"

    invoke-static {v0, v1, v1, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildReleaseIntKey(Ljava/lang/String;Ljava/lang/String;Lmwn;Lmwn;)Ldhk;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->camcorder_level_fix:Ldhk;

    const-string v0, "camera.zoom_decimal_point_threshold"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildFloatKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->zoom_decimal_point_threshold:Ldhj;

    const-string v0, "camera.ultra_wide_zoom_ratio_facing_back"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildFloatKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->ultra_wide_zoom_ratio_facing_back:Ldhj;

    const-string v0, "camera.ultra_tele_zoom_ratio_facing_back"

    invoke-static {v0, v1}, Lcom/DeveloperOptions$KeyBuilder;->buildFloatKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->ultra_tele_zoom_ratio_facing_back:Ldhj;

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v3, v2, v4

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v5, v2, v6

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v7, v2, v8

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v9, v2, v10

    const/4 v12, 0x4

    aput-object v11, v2, v12

    invoke-static {v2}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v2

    new-array v13, v0, [Ljava/lang/Object;

    const-string v14, "auto"

    aput-object v14, v13, v4

    const-string v15, "off"

    aput-object v15, v13, v6

    const-string v16, "fast"

    aput-object v16, v13, v8

    const-string v17, "high quality"

    aput-object v17, v13, v10

    const-string v18, "zsl"

    aput-object v18, v13, v12

    invoke-static {v13}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v13

    const-string v12, "c2api.edge_mode"

    invoke-static {v12, v1, v2, v13}, Lcom/DeveloperOptions$KeyBuilder;->buildReleaseIntKey(Ljava/lang/String;Ljava/lang/String;Lmwn;Lmwn;)Ldhk;

    move-result-object v2

    sput-object v2, Lcom/DeveloperOptions;->c2api_edge_mode:Ldhk;

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v3, v2, v4

    aput-object v5, v2, v6

    aput-object v7, v2, v8

    aput-object v9, v2, v10

    const/4 v12, 0x4

    aput-object v11, v2, v12

    invoke-static {v2}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v2

    new-array v13, v0, [Ljava/lang/Object;

    aput-object v14, v13, v4

    aput-object v15, v13, v6

    aput-object v16, v13, v8

    aput-object v17, v13, v10

    aput-object v18, v13, v12

    invoke-static {v13}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v13

    const-string v12, "c2api.noise_reduction_mode"

    invoke-static {v12, v1, v2, v13}, Lcom/DeveloperOptions$KeyBuilder;->buildReleaseIntKey(Ljava/lang/String;Ljava/lang/String;Lmwn;Lmwn;)Ldhk;

    move-result-object v2

    sput-object v2, Lcom/DeveloperOptions;->c2api_noise_reduction_mode:Ldhk;

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v3, v2, v4

    aput-object v5, v2, v6

    aput-object v7, v2, v8

    aput-object v9, v2, v10

    const/4 v3, 0x4

    aput-object v11, v2, v3

    invoke-static {v2}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v2

    new-array v12, v0, [Ljava/lang/Object;

    aput-object v14, v12, v4

    aput-object v15, v12, v6

    aput-object v16, v12, v8

    aput-object v17, v12, v10

    aput-object v18, v12, v3

    invoke-static {v12}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v12

    const-string v13, "c2api.viewfinder_noise_reduction_mode"

    invoke-static {v13, v1, v2, v12}, Lcom/DeveloperOptions$KeyBuilder;->buildReleaseIntKey(Ljava/lang/String;Ljava/lang/String;Lmwn;Lmwn;)Ldhk;

    move-result-object v2

    sput-object v2, Lcom/DeveloperOptions;->c2api_viewfinder_noise_reduction_mode:Ldhk;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v5, v2, v4

    aput-object v7, v2, v6

    aput-object v9, v2, v8

    aput-object v11, v2, v10

    invoke-static {v2}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v2

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v14, v12, v4

    const-string v13, "transform matrix"

    aput-object v13, v12, v6

    aput-object v16, v12, v8

    aput-object v17, v12, v10

    invoke-static {v12}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v12

    const-string v13, "c2api.color_correction_mode"

    invoke-static {v13, v1, v2, v12}, Lcom/DeveloperOptions$KeyBuilder;->buildReleaseIntKey(Ljava/lang/String;Ljava/lang/String;Lmwn;Lmwn;)Ldhk;

    move-result-object v2

    sput-object v2, Lcom/DeveloperOptions;->c2api_color_correction_mode:Ldhk;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v5, v2, v4

    aput-object v7, v2, v6

    aput-object v9, v2, v8

    aput-object v11, v2, v10

    invoke-static {v2}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v2

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v14, v12, v4

    aput-object v15, v12, v6

    aput-object v16, v12, v8

    aput-object v17, v12, v10

    invoke-static {v12}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v12

    const-string v13, "c2api.distortion_correction_mode"

    invoke-static {v13, v1, v2, v12}, Lcom/DeveloperOptions$KeyBuilder;->buildReleaseIntKey(Ljava/lang/String;Ljava/lang/String;Lmwn;Lmwn;)Ldhk;

    move-result-object v2

    sput-object v2, Lcom/DeveloperOptions;->c2api_distortion_correction_mode:Ldhk;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v5, v2, v4

    aput-object v7, v2, v6

    aput-object v9, v2, v8

    aput-object v11, v2, v10

    invoke-static {v2}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v2

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v14, v12, v4

    aput-object v15, v12, v6

    aput-object v16, v12, v8

    aput-object v17, v12, v10

    invoke-static {v12}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v3

    const-string v12, "c2api.color_correction_ambition_mode"

    invoke-static {v12, v1, v2, v3}, Lcom/DeveloperOptions$KeyBuilder;->buildReleaseIntKey(Ljava/lang/String;Ljava/lang/String;Lmwn;Lmwn;)Ldhk;

    move-result-object v2

    sput-object v2, Lcom/DeveloperOptions;->c2api_color_correction_ambition_mode:Ldhk;

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v5, v3, v4

    aput-object v7, v3, v6

    aput-object v9, v3, v8

    aput-object v11, v3, v10

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v0

    invoke-static {v3}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v14, v2, v4

    const-string v4, "contrast curve"

    aput-object v4, v2, v6

    aput-object v16, v2, v8

    aput-object v17, v2, v10

    const-string v4, "gamma value"

    aput-object v4, v2, v5

    const-string v4, "preset curve"

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/DeveloperOptions;->of([Ljava/lang/Object;)Lmwn;

    move-result-object v0

    const-string v2, "c2api.tone_mode"

    invoke-static {v2, v1, v3, v0}, Lcom/DeveloperOptions$KeyBuilder;->buildReleaseIntKey(Ljava/lang/String;Ljava/lang/String;Lmwn;Lmwn;)Ldhk;

    move-result-object v0

    sput-object v0, Lcom/DeveloperOptions;->c2api_tone_mode:Ldhk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFloat(Ldhj;)F
    .locals 1

    sget-object v0, Lcom/Developer;->gcaConfig:Ldit;

    invoke-virtual {v0, p0}, Ldit;->h(Ldhj;)Lj$/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getInt(Ldhk;)I
    .locals 1

    sget-object v0, Lcom/Developer;->gcaConfig:Ldit;

    invoke-virtual {v0, p0}, Ldit;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getPhenotypeBoolean(Ldhj;)Z
    .locals 1

    sget-object v0, Lcom/Developer;->gcaConfig:Ldit;

    invoke-virtual {v0, p0}, Ldit;->l(Ldhj;)Z

    move-result p0

    return p0
.end method

.method public static getPhenotypeString(Ldhj;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/Developer;->gcaConfig:Ldit;

    invoke-virtual {v0, p0}, Ldit;->j(Ldhj;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Ljava/lang/Object;)Lmwn;
    .locals 1

    array-length v0, p0

    invoke-static {v0, p0}, Lmwn;->E(I[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static setDefaultValue()V
    .locals 9

    sget-object v0, Lcom/Developer;->gcaConfig:Ldit;

    sget-object v1, Lcom/DeveloperOptions;->cutout_display:Ldhj;

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v1, Lcom/DeveloperOptions;->lens_toggle_enable:Ldhj;

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v1, Lcom/DeveloperOptions;->gboard_enabled:Ldhj;

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v1, Lcom/DeveloperOptions;->spatial_rgb_force:Ldhj;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v1, Lcom/DeveloperOptions;->pck_analysis_yuv:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, Lcom/DeveloperOptions;->fix_request_capabilities:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v1, Lcom/DeveloperOptions;->zsl_base_frame_is_the_last:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v1, Lcom/DeveloperOptions;->nonzsl_base_frame_is_the_last:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    invoke-static {}, Lcom/Utils/Lens;->getCurrentCamera()Lcom/agc/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/agc/Camera;->isRaw10Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sget-object v1, Lcom/DeveloperOptions;->shasta_force:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget v1, Lcom/Globals;->GcamVersionFloat:F

    float-to-double v5, v1

    const-wide v7, 0x4022cccccccccccdL    # 9.4

    cmpl-double v1, v5, v7

    if-ltz v1, :cond_1

    sget-object v1, Lcom/DeveloperOptions;->pck_large_yuv:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    :cond_1
    sget-object v1, Lcom/DeveloperOptions;->camcorder_level_fix:Ldhk;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget v1, Lcom/Globals;->GcamVersionFloat:F

    float-to-double v1, v1

    const-wide/high16 v5, 0x4021000000000000L    # 8.5

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_4

    sget-object v1, Lcom/DeveloperOptions;->ultra_wide_zoom_ratio_facing_back:Ldhj;

    const v2, 0x3f1d70a4    # 0.615f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v1, Lcom/DeveloperOptions;->ultra_tele_zoom_ratio_facing_back:Ldhj;

    const v2, 0x4089999a    # 4.3f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "cheetah"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/DeveloperOptions;->zoom_decimal_point_threshold:Ldhj;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v1, Lcom/DeveloperOptions;->ultra_wide_zoom_ratio_facing_back:Ldhj;

    const v2, 0x3f19d56f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v1, Lcom/DeveloperOptions;->ultra_tele_zoom_ratio_facing_back:Ldhj;

    const/high16 v2, 0x40a00000    # 5.0f

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    goto :goto_2

    :cond_2
    const-string v3, "nuwa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/high16 v3, 0x40800000    # 4.0f

    if-eqz v1, :cond_3

    sget-object v1, Lcom/DeveloperOptions;->zoom_decimal_point_threshold:Ldhj;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v1, Lcom/DeveloperOptions;->ultra_tele_zoom_ratio_facing_back:Ldhj;

    const/high16 v2, 0x40600000    # 3.5f

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/DeveloperOptions;->zoom_decimal_point_threshold:Ldhj;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v1, Lcom/DeveloperOptions;->ultra_tele_zoom_ratio_facing_back:Ldhj;

    goto :goto_1

    :cond_4
    :goto_2
    sget-object v1, Lcom/DeveloperOptions;->c2api_edge_mode:Ldhk;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Lcom/DeveloperOptions;->c2api_noise_reduction_mode:Ldhk;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Lcom/DeveloperOptions;->c2api_viewfinder_noise_reduction_mode:Ldhk;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Lcom/DeveloperOptions;->c2api_color_correction_ambition_mode:Ldhk;

    invoke-virtual {v0, v1, v4}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Lcom/DeveloperOptions;->c2api_color_correction_mode:Ldhk;

    invoke-virtual {v0, v1, v4}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Lcom/DeveloperOptions;->c2api_distortion_correction_mode:Ldhk;

    invoke-virtual {v0, v1, v4}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, Lcom/DeveloperOptions;->c2api_tone_mode:Ldhk;

    invoke-virtual {v0, v1, v4}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    return-void
.end method
