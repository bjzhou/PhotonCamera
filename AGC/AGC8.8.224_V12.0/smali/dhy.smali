.class public final Ldhy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldhk;

.field public static final b:Ldhk;

.field public static final c:Ldhk;

.field public static final d:Ldhk;

.field public static final e:Ldhk;

.field public static final f:Ldhk;

.field public static final g:Ldhk;

.field public static final h:Ldhk;

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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "face_detect_mode_use_extended"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->i:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "flash_intensity_for_photo_modes"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhy;->a:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "flash_intensity_for_photo_modes_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->j:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "global_imagereader_ticket_limit"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "max_hdr_plus_imagereader_image_count"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhy;->b:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "max_hdr_plus_burst_frame_count"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhy;->c:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "max_imagereader_image_count"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhy;->d:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "pd_image_format_is_raw_depth"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->k:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "pd_image_format_is_raw_depth10"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->l:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.auto_hdrp_conf"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hdrp_conf"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.f_tuning"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v1

    iput-object v1, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhy;->e:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "bgae.enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->m:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.sm.denom"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhy;->f:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.sm.denom_night"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhy;->g:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.sm.denom_night_limited"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhy;->h:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.sm.enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->n:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.sm.log"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->o:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.debug"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->p:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hwhdr_intent"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->q:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hwhdr_inapp"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.raw_mode"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->r:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "portrait_use_pd"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->s:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "portrait_use_stereo"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->t:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "portrait_use_ml"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->u:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "simultaneous_af_ae_trigger_supported"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->v:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.lead_cam_id"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhy;->w:Ldhj;

    return-void
.end method
