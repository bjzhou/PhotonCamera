.class public final Ldik;
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

.field public static final i:Ldhk;

.field public static final j:Ldhk;

.field public static final k:Ldhk;

.field public static final l:Ldhk;

.field public static final m:Ldhk;

.field public static final n:Ldhk;

.field public static final o:Ldhk;

.field public static final p:Ldhk;

.field public static final q:Ldhk;

.field public static final r:Ldhk;

.field public static final s:Ldhk;

.field public static final t:Ldhk;

.field public static final u:Ldhk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "Thermal"

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "focus_tracking_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->a:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "flounder_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->b:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "hdr_net_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->c:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "lenslite_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->d:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "lens_suggestion_thermal_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->e:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "portrait_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->f:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "rectiface_shape_correction_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->g:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "smart_metering_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->h:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "temporal_binning_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->i:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "torch_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->j:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "video_ts_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->k:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "swiss_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->l:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "falcon_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->m:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "hawk_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->n:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "boba_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->o:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "video_display_early_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->p:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "video_display_late_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->q:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "video_recording_early_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->r:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "video_recording_late_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->s:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "taxi_autoswitch_thermal_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->t:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v1, "microvideo_thermal_threshold"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldik;->u:Ldhk;

    return-void
.end method
