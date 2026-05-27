.class public final Leao;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Ljava/lang/Boolean;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lj$/util/Optional;

.field private final h:Ldhi;

.field private final i:Lecy;

.field private final j:Lebe;


# direct methods
.method public constructor <init>(Ldhi;Lecy;Lebe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leao;->b:Ljava/lang/Boolean;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    iput-object v0, p0, Leao;->g:Lj$/util/Optional;

    iput-object p1, p0, Leao;->h:Ldhi;

    iput-object p2, p0, Leao;->i:Lecy;

    iput-object p3, p0, Leao;->j:Lebe;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;
    .locals 7

    new-instance v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;

    invoke-direct {v0}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;-><init>()V

    iget-boolean v1, p0, Leao;->a:Z

    iget-wide v2, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_shasta_zsl_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    iget-object v1, p0, Leao;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->d(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Leao;->h:Ldhi;

    sget-object v2, Ldhq;->at:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->d(Z)V

    :goto_0
    iget-boolean v1, p0, Leao;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Leao;->h:Ldhi;

    sget-object v2, Ldhq;->N:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v2, 0x42855555

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b(F)V

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    :cond_1
    iget-object v1, p0, Leao;->h:Ldhi;

    sget-object v2, Ldhq;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->c()V

    iget-boolean v1, p0, Leao;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Leao;->h:Ldhi;

    sget-object v2, Ldhq;->h:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leao;->h:Ldhi;

    sget-object v2, Ldhq;->h:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Leao;->c:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Leao;->d:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Leao;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Leao;->h:Ldhi;

    invoke-interface {v1}, Ldhi;->c()V

    iget-object v1, p0, Leao;->h:Ldhi;

    sget-object v2, Ldhq;->i:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Leao;->h:Ldhi;

    sget-object v2, Ldhq;->f:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    :goto_1
    invoke-static {v1}, Lcom/agc/LensSettings;->getFrameCount(I)I

    move-result v1

    iget-wide v2, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_max_frame_count_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V

    iget-boolean v1, p0, Leao;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    iget-object v1, p0, Leao;->h:Ldhi;

    sget-object v3, Ldhq;->B:Ldhj;

    invoke-interface {v1, v3}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    new-instance v3, Ldcc;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Ldcc;-><init>(Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V

    new-instance v4, Ldgd;

    const/16 v5, 0xf

    invoke-direct {v4, p0, v0, v5}, Ldgd;-><init>(Leao;Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V

    invoke-virtual {v1, v3, v4}, Lj$/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Leao;->d:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Leao;->e:Z

    if-eq v2, v1, :cond_5

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_2

    :cond_5
    const v1, 0x466a6000    # 15000.0f

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    goto :goto_3

    :cond_6
    iget-boolean v1, p0, Leao;->f:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Leao;->h:Ldhi;

    invoke-interface {v1}, Ldhi;->c()V

    goto :goto_3

    :cond_7
    const v1, 0x45bb8000    # 6000.0f

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    :goto_3
    iget-object v1, p0, Leao;->g:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Leao;->g:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_8

    iget-object v1, p0, Leao;->h:Ldhi;

    invoke-interface {v1}, Ldhi;->c()V

    iget-boolean v1, p0, Leao;->d:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Leao;->g:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    iget-object v1, p0, Leao;->g:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    :cond_8
    iget-object v1, p0, Leao;->j:Lebe;

    iget-object v3, p0, Leao;->i:Lecy;

    invoke-virtual {v1, v3}, Lebe;->f(Lecy;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Leao;->h:Ldhi;

    sget-object v4, Ldhq;->as:Ldhj;

    invoke-interface {v1, v4}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    iget-wide v3, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_include_ultra_short_frame_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    return-object v0
.end method
