.class public final Leeh;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field private final a:Lebi;

.field private final b:Lecy;

.field private final c:Ldhi;

.field private final d:Lebe;

.field private final e:Lnqx;

.field private final f:Lebl;

.field private final g:Leao;

.field private final h:Ljvs;


# direct methods
.method public constructor <init>(Lebi;Lecy;Ldhi;Lebe;Lnqx;Lebl;Leao;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leeh;->a:Lebi;

    iput-object p2, p0, Leeh;->b:Lecy;

    iput-object p3, p0, Leeh;->c:Ldhi;

    iput-object p4, p0, Leeh;->d:Lebe;

    iput-object p5, p0, Leeh;->e:Lnqx;

    iput-object p6, p0, Leeh;->f:Lebl;

    iput-object p7, p0, Leeh;->g:Leao;

    iput-object p8, p0, Leeh;->h:Ljvs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leeh;->b()Lcom/google/googlex/gcam/ViewfinderProcessingOptions;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/googlex/gcam/ViewfinderProcessingOptions;
    .locals 8

    new-instance v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;

    invoke-direct {v6}, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;-><init>()V

    iget-object v0, p0, Leeh;->b:Lecy;

    sget-object v1, Lecy;->c:Lecy;

    const/4 v7, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Leeh;->f:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Leeh;->e:Lnqx;

    iget-wide v1, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    iget v0, v0, Lnqx;->c:I

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_motion_processing_method_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;I)V

    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v6, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_process_gyro_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    iget-object v0, p0, Leeh;->a:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    if-eqz v0, :cond_1

    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    invoke-static {v0, v1, v6, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_compute_total_capture_time_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    iget-object v0, p0, Leeh;->g:Leao;

    iput-boolean v2, v0, Leao;->c:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Leao;->b:Ljava/lang/Boolean;

    iget-object v1, p0, Leeh;->a:Lebi;

    iget-object v2, p0, Leeh;->h:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcks;

    invoke-virtual {v1, v2}, Lebi;->e(Lcks;)Z

    move-result v1

    iput-boolean v1, v0, Leao;->f:Z

    invoke-virtual {v0}, Leao;->a()Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;

    move-result-object v5

    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    iget-wide v3, v5, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_burst_spec_options_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)V

    :cond_1
    iget-object v0, p0, Leeh;->c:Ldhi;

    sget-object v1, Ldhq;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    invoke-static {v0, v1, v6, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_verbose_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    iget-object v0, p0, Leeh;->d:Lebe;

    iget-object v1, p0, Leeh;->b:Lecy;

    invoke-virtual {v0, v1}, Lebe;->f(Lecy;)Z

    move-result v0

    iget-wide v1, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_save_motion_trace_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    return-object v6
.end method
