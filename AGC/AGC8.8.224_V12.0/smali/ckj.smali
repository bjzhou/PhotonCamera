.class public final synthetic Lckj;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lckk;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckv;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lclc;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lclu;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcmg;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcqj;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcqz;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcsa;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcsd;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcuo;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcvb;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lken;I)V
    .locals 0

    iput p2, p0, Lckj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckj;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lckj;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    check-cast v0, Lcvb;

    iget-boolean v1, v0, Lcvb;->c:Z

    if-eqz v1, :cond_c

    iput-boolean v2, v0, Lcvb;->c:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    move-object p1, v0

    check-cast p1, Lcuo;

    iget-object v1, p1, Lcuo;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object p1, v0

    check-cast p1, Lcuo;

    iget-boolean p1, p1, Lcuo;->h:Z

    if-eqz p1, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    move-object p1, v0

    check-cast p1, Lcuo;

    iget-object p1, p1, Lcuo;->f:Lgyd;

    sget-object v2, Lgyc;->d:Lgyc;

    invoke-virtual {p1, v2}, Lgyd;->c(Lgyc;)Ljava/lang/String;

    move-result-object p1

    move-object v2, v0

    check-cast v2, Lcuo;

    iget-boolean v2, v2, Lcuo;->g:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcuo;

    iget-object v2, v2, Lcuo;->f:Lgyd;

    iget-object v2, v2, Lgyd;->a:Ljwb;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgys;

    sget-object v3, Lgys;->c:Lgys;

    invoke-virtual {v2, v3}, Lgys;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    check-cast v0, Lcuo;

    invoke-virtual {v0, p1}, Lcuo;->a(Ljava/lang/String;)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move-object v1, v0

    check-cast v1, Lcuo;

    iget-object v1, v1, Lcuo;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    move-object v2, v0

    check-cast v2, Lcuo;

    iget-boolean v2, v2, Lcuo;->h:Z

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    if-eqz p1, :cond_3

    move-object p1, v0

    check-cast p1, Lcuo;

    iget-object p1, p1, Lcuo;->f:Lgyd;

    sget-object v2, Lgyc;->d:Lgyc;

    invoke-virtual {p1, v2}, Lgyd;->c(Lgyc;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcuo;

    invoke-virtual {v0, p1}, Lcuo;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    check-cast v0, Lcuo;

    invoke-virtual {v0}, Lcuo;->b()V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :pswitch_2
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Lgdj;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p1, Lgdj;->a:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lken;->i(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    iget p1, p1, Lgdj;->c:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lken;->i(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v1, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    :goto_1
    invoke-interface {v0}, Lken;->b()Lkdz;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lkfr;

    iput-object v1, v2, Lkfr;->g:Ljava/lang/Integer;

    invoke-interface {p1}, Lkdz;->a()Lkea;

    move-result-object p1

    invoke-interface {v0, p1}, Lken;->n(Lkea;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0}, Lken;->b()Lkdz;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object p1, v2, Lkfr;->f:Ljava/lang/Integer;

    invoke-interface {v1}, Lkdz;->a()Lkea;

    move-result-object p1

    invoke-interface {v0, p1}, Lken;->n(Lkea;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Lgll;

    sget-object v1, Liuz;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p1, Lgll;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v1

    sget-object v2, Liuz;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Lgll;->b:Lmvv;

    invoke-static {p1}, Lnsy;->Y(Ljava/util/Collection;)[F

    move-result-object p1

    invoke-static {v2, p1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-static {v1, p1}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object p1

    invoke-interface {v0, p1}, Lken;->j(Ljava/util/Set;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1, p1}, Lken;->i(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    move-object p1, v0

    check-cast p1, Lcsd;

    iget-object v1, p1, Lcsd;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    move-object p1, v0

    check-cast p1, Lcsd;

    iget-object p1, p1, Lcsd;->a:Lgft;

    invoke-interface {p1}, Lgft;->c()Lkab;

    move-result-object p1

    move-object v2, v0

    check-cast v2, Lcsd;

    invoke-virtual {v2, p1}, Lcsd;->b(Lkab;)Ljava/lang/Integer;

    move-result-object p1

    move-object v2, v0

    check-cast v2, Lcsd;

    iget-object v2, v2, Lcsd;->b:Ljvk;

    invoke-virtual {v2, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    check-cast v0, Lcsd;

    iget-object v0, v0, Lcsd;->c:Ljvk;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lkab;->b(I)Lkab;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :pswitch_8
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Lcrx;

    sget-object v1, Lcrx;->f:Lcrx;

    if-ne p1, v1, :cond_5

    check-cast v0, Lcsa;

    iget-object p1, v0, Lcsa;->a:Liff;

    invoke-interface {p1, v2}, Liff;->G(Z)V

    iget-object p1, v0, Lcsa;->b:Lico;

    sget-object v0, Licm;->g:Licm;

    invoke-virtual {p1, v0}, Lico;->c(Licm;)V

    :cond_5
    return-void

    :pswitch_9
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Lgyt;

    sget-object v1, Lgyt;->b:Lgyt;

    invoke-virtual {p1, v1}, Lgyt;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    check-cast v0, Lcqz;

    iget-object p1, v0, Lcqz;->b:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v0, Lcqz;->b:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhhz;

    invoke-virtual {v0, p1}, Lcqz;->j(Lhhz;)V

    :cond_6
    return-void

    :pswitch_c
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    check-cast v0, Lcqj;

    invoke-virtual {v0}, Lcqj;->c()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ldbw;->a()Lklv;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcmg;

    iget-object v2, v2, Lcmg;->a:Lklv;

    if-eq v1, v2, :cond_7

    invoke-virtual {p1}, Ldbw;->a()Lklv;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcmg;

    iput-object v1, v2, Lcmg;->a:Lklv;

    iget-object p1, p1, Ldbw;->c:Lfuz;

    move-object v1, v0

    check-cast v1, Lcmg;

    iput-object p1, v1, Lcmg;->c:Lfuz;

    new-instance p1, Loxq;

    move-object v1, v0

    check-cast v1, Lcmg;

    iget-object v1, v1, Lcmg;->c:Lfuz;

    invoke-virtual {v1}, Lklw;->f()I

    move-result v1

    invoke-direct {p1, v1}, Loxq;-><init>(I)V

    move-object v1, v0

    check-cast v1, Lcmg;

    iput-object p1, v1, Lcmg;->d:Loxq;

    :cond_7
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :pswitch_e
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    check-cast v0, Lclu;

    iget-boolean v1, v0, Lclu;->d:Z

    if-eqz v1, :cond_8

    iget-object v0, v0, Lclu;->c:Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->a(F)V

    :cond_8
    return-void

    :pswitch_f
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Lgyu;

    check-cast v0, Lclc;

    iput-boolean v2, v0, Lclc;->d:Z

    return-void

    :pswitch_10
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lckv;

    iget-object v0, v0, Lckv;->m:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;->b(Z)V

    :cond_9
    return-void

    :pswitch_11
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    check-cast v0, Lckk;

    invoke-virtual {v0, v1, v1}, Lckk;->o(ZZ)V

    invoke-virtual {v0}, Lckk;->r()V

    iget-boolean p1, v0, Lckk;->q:Z

    invoke-virtual {v0, p1}, Lckk;->q(Z)V

    return-void

    :cond_a
    check-cast v0, Lckk;

    invoke-virtual {v0}, Lckk;->j()V

    invoke-virtual {v0}, Lckk;->k()V

    return-void

    :pswitch_12
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lckk;

    invoke-virtual {v0}, Lckk;->y()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lckj;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    check-cast v0, Lckk;

    iget-object p1, v0, Lckk;->b:Lebl;

    invoke-virtual {p1}, Lebl;->d()Ljvs;

    move-result-object p1

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lckk;->r()V

    :cond_b
    return-void

    :cond_c
    iget-object v0, v0, Lcvb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
