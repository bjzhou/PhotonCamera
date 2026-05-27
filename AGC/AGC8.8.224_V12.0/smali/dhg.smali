.class public final Ldhg;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ldhj;

.field public static final B:Ldhj;

.field public static final C:Ldhj;

.field public static final D:Ldhj;

.field public static final E:Ldhj;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ldhk;

.field public static final d:Ldhj;

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
    .locals 2

    const-string v0, "102"

    sput-object v0, Ldhg;->a:Ljava/lang/String;

    const-string v0, "105"

    sput-object v0, Ldhg;->b:Ljava/lang/String;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->d:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_md_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->e:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_annotate"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->f:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_save_original"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->g:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_process_original"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->h:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_save_secondary"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->i:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_power_hint"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->j:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_always_on"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->k:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_force_fusion"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->l:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_ahwb"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_standby"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_flush_sample_count"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhg;->c:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_cache_primary_results"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.falcon_mm_badge"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->m:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->n:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_tpu_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->o:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_supported_modes"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->p:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_power_hint"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->q:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_boost_big_option"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->r:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_boost_mid_option"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->s:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_boost_little_option"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->t:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_threshold"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->u:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_out_threshold"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->v:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_save_debug"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->w:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_save_more_debug"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->x:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_annotate"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->y:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_force_fusion"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->z:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_crash_on_not_engaged"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->A:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_disable_thermal"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_trim"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->r()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->B:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_downsample_tele_zoom_ratio"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->C:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_throttled_tele_frames_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_luma_secondary_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_model_name"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->D:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hawk_tpu_model_name"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Ldhg;->E:Ldhj;

    return-void
.end method

.method public static a(Ldhi;)Lmwn;
    .locals 1

    sget-object v0, Ldhg;->p:Ldhj;

    invoke-interface {p0, v0}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lmza;->a:Lmza;

    return-object p0

    :cond_0
    const-string v0, ","

    invoke-static {v0}, Lmrd;->c(Ljava/lang/String;)Lmrd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmrd;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lj$/lang/Iterable$-EL;->spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcpy;->j:Lcpy;

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcdm;->j:Lcdm;

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcpy;->k:Lcpy;

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lmtf;->b:Lj$/util/stream/Collector;

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmwn;

    return-object p0
.end method

.method public static b(Ldhm;Ldin;)V
    .locals 3

    sget-object v0, Ldhg;->d:Ldhj;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->e:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->g:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->h:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->i:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->j:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->f:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->l:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->k:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->c:Ldhk;

    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldhg;->m:Ldhj;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->n:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->o:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object v0, Ldhg;->p:Ldhj;

    sget-object v2, Lika;->b:Lika;

    iget v2, v2, Lika;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object v0, Ldhg;->q:Ldhj;

    sget-object v2, Ldin;->b:Ldin;

    invoke-virtual {p1, v2}, Ldin;->a(Ldin;)Z

    move-result p1

    invoke-interface {p0, v0, p1}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldhg;->r:Ldhj;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object p1, Ldhg;->s:Ldhj;

    invoke-interface {p0, p1, v0}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object p1, Ldhg;->t:Ldhj;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object p1, Ldhg;->u:Ldhj;

    const v2, 0x401ccccd    # 2.45f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object p1, Ldhg;->v:Ldhj;

    const v2, 0x409ccccd    # 4.9f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object p1, Ldhg;->w:Ldhj;

    invoke-interface {p0, p1, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldhg;->x:Ldhj;

    invoke-interface {p0, p1, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldhg;->y:Ldhj;

    invoke-interface {p0, p1, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldhg;->z:Ldhj;

    invoke-interface {p0, p1, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldhg;->A:Ldhj;

    invoke-interface {p0, p1, v1}, Ldhm;->u(Ldhj;Z)V

    sget-object p1, Ldhg;->B:Ldhj;

    invoke-interface {p0, p1, v1}, Ldhm;->s(Ldhj;Z)V

    sget-object p1, Ldhg;->C:Ldhj;

    invoke-interface {p0, p1, v0}, Ldhm;->t(Ldhj;Ljava/lang/Float;)V

    sget-object p1, Ldhg;->D:Ldhj;

    const-string v0, "hawk_06_15_2022_v1.tflite.uncompressed"

    invoke-interface {p0, p1, v0}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    sget-object p1, Ldhg;->E:Ldhj;

    const-string v0, "hawk_06_15_2022_v1_custom-op.tflite.uncompressed"

    invoke-interface {p0, p1, v0}, Ldhm;->v(Ldhj;Ljava/lang/String;)V

    return-void
.end method
