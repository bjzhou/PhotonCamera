.class public final Ldht;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ldhj;

.field public static final B:Ldhj;

.field public static final C:Ldhj;

.field public static final D:Ldhj;

.field public static final a:[Ljava/lang/String;

.field public static final b:Ldhk;

.field public static final c:Ldhk;

.field public static final d:Ldhk;

.field public static final e:Ldhj;

.field public static final f:Ldhj;

.field public static final g:Ldhj;

.field public static final h:Ldhj;

.field public static final i:Ldhj;

.field public static final j:Ldhj;

.field public static final k:Ldhj;

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
    .locals 18

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "shc:"

    aput-object v3, v1, v2

    const-string v3, "fido:"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "lpa:"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "mobiledataplan:"

    const/4 v6, 0x3

    aput-object v3, v1, v6

    sput-object v1, Ldht;->a:[Ljava/lang/String;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v3, "camera.enable_lenslite"

    iput-object v3, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->e:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v3, "Lens"

    iput-object v3, v1, Lnoc;->c:Ljava/lang/Object;

    const-string v7, "enable_lenslite"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->f:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    iput-object v3, v1, Lnoc;->c:Ljava/lang/Object;

    const-string v7, "force_cpu_processing"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->g:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.force_cpu_processing"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.enable_text_wifi_credentials"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->h:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.enable_document_scanning"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->i:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.enable_lightweight_suggestions"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->j:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.enable_foreign_contact_recognition"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->k:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.force_enable_capabilities"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.enable_dynamic_loading"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->l:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "dynamic_loading_from_playground"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->m:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "stop_pipeline_on_pause"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    iput-object v3, v1, Lnoc;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->n:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.trivial_feature_enabled_bits"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->l()Ldhk;

    move-result-object v1

    sput-object v1, Ldht;->b:Ldhk;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.enable_logging"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->o:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera.lenslite.ornament_vr"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->p:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "fast_scan_enabled"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->q:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "camera_vision_kit_enabled"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->r:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    iput-object v3, v1, Lnoc;->c:Ljava/lang/Object;

    const-string v7, "camera_vision_kit"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->s:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "translate_edu"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->t:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v7, "fast_scan_fps"

    iput-object v7, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v14, v5, [Ljava/lang/Integer;

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v2

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v4

    move-object v11, v0

    move-object v12, v6

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v5

    iput-object v5, v1, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->l()Ldhk;

    move-result-object v1

    sput-object v1, Ldht;->c:Ldhk;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v5, "fast_scan_pass_through"

    iput-object v5, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->t()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->u:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    iput-object v3, v1, Lnoc;->c:Ljava/lang/Object;

    const-string v5, "fast_scan_pass_through_interval"

    iput-object v5, v1, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->s()Ldhj;

    move-result-object v1

    sput-object v1, Ldht;->v:Ldhj;

    new-instance v1, Lnoc;

    invoke-direct {v1}, Lnoc;-><init>()V

    const-string v5, "cvk_frame_supply_fps"

    iput-object v5, v1, Lnoc;->b:Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v13, v6

    move-object v14, v7

    move-object/from16 v17, v4

    invoke-static/range {v11 .. v17}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v0

    iput-object v0, v1, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldht;->d:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "scene_detection_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldht;->w:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "content_detection_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldht;->x:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "scan_document_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldht;->y:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera_vision_kit_acceleration_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldht;->z:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v3, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v1, "arcore_fast_scan_compatible"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldht;->A:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "test_only_arcore_fast_scan_compatible"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "vkp_low_energy_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "cvk_debug_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.apollo"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v3, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v1, "drive_for_scan_doc"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldht;->B:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v3, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v1, "compatible_drive_version"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Ldht;->C:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v3, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v1, "schemes_requiring_not_found_toast"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Ldht;->D:Ldhj;

    return-void
.end method
