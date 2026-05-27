.class public final synthetic Lgij;
.super Ljava/lang/Object;

# interfaces
.implements Ljzs;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfzb;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgta;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfm;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfn;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfo;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhim;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhoz;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhsn;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lije;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liom;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkef;I)V
    .locals 0

    iput p2, p0, Lgij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgij;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lgij;->b:I

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Liom;

    iget-object p1, p1, Liom;->b:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v0, Lhju;->n:Lhju;

    sget-object v1, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    invoke-virtual {p1, v0, v1}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Lcjp;

    check-cast v0, Lije;

    iget-object p1, v0, Lije;->w:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lije;->h:Lgeh;

    invoke-interface {p1}, Lgeh;->l()V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Lhsq;

    check-cast v0, Lhsn;

    iget-object v1, v0, Lhsn;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lhsq;->b()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lhsq;->c()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lhsq;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lhsq;->c()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lmoz;->p(Z)V

    iget-object v1, p1, Lhsq;->a:Landroid/graphics/Bitmap;

    invoke-static {v1}, Llkj;->C(Ljava/lang/Object;)V

    iget p1, p1, Lhsq;->b:I

    invoke-virtual {v0, v1, p1}, Lhsn;->k(Landroid/graphics/Bitmap;I)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lhsn;->h()V

    return-void

    :cond_4
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Lhlv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lhoz;

    invoke-virtual {v0, p1, v4}, Lhoz;->a(Lhlv;Z)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lgij;->a:Ljava/lang/Object;

    sget-object v0, Lhju;->r:Lhju;

    sget-object v1, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    check-cast p1, Lhkh;

    invoke-virtual {p1, v0, v1}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Lmqp;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Limj;

    iget v4, p1, Limj;->a:I

    if-ne v4, v2, :cond_5

    iget-object p1, p1, Limj;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lhim;

    invoke-virtual {v0, p1}, Lhim;->f(Ljava/lang/String;)V

    return-void

    :cond_5
    if-ne v4, v1, :cond_6

    goto :goto_2

    :cond_6
    check-cast v0, Lhim;

    iget-object p1, v0, Lhim;->b:Lhsx;

    invoke-interface {p1}, Lhsx;->l()V

    invoke-virtual {v0}, Lhim;->e()V

    return-void

    :cond_7
    :goto_2
    check-cast v0, Lhim;

    iget-object p1, v0, Lhim;->f:Ligo;

    iget-object v1, v0, Lhim;->c:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ligo;->g(Landroid/net/Uri;)V

    iget-object p1, v0, Lhim;->a:Landroid/content/Context;

    invoke-static {p1}, Linb;->w(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v3, :cond_8

    iget-object p1, v0, Lhim;->f:Ligo;

    iget-object v1, v0, Lhim;->c:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ligo;->f(Landroid/net/Uri;)V

    iget-object p1, v0, Lhim;->b:Lhsx;

    invoke-interface {p1}, Lhsx;->l()V

    invoke-virtual {v0}, Lhim;->e()V

    :cond_8
    return-void

    :pswitch_5
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Lmqp;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Limj;

    iget v3, p1, Limj;->a:I

    if-ne v3, v2, :cond_9

    iget-object p1, p1, Limj;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lhim;

    invoke-virtual {v0, p1}, Lhim;->f(Ljava/lang/String;)V

    return-void

    :cond_9
    if-ne v3, v1, :cond_a

    check-cast v0, Lhim;

    iget-object p1, v0, Lhim;->f:Ligo;

    iget-object v1, v0, Lhim;->c:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ligo;->g(Landroid/net/Uri;)V

    iget-object p1, v0, Lhim;->b:Lhsx;

    invoke-interface {p1}, Lhsx;->j()V

    return-void

    :cond_a
    iget p1, p1, Limj;->b:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_b

    move-object v1, v0

    check-cast v1, Lhim;

    iget-object v1, v1, Lhim;->b:Lhsx;

    invoke-interface {v1, p1}, Lhsx;->f(F)V

    :cond_b
    check-cast v0, Lhim;

    invoke-virtual {v0}, Lhim;->d()V

    iget-object p1, v0, Lhim;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lhfi;

    const/16 v2, 0x12

    invoke-direct {v1, v0, v2}, Lhfi;-><init>(Lhim;I)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x96

    invoke-interface {p1, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lhim;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_c
    return-void

    :pswitch_6
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lhfo;

    iget-object v1, v0, Lhfo;->b:Lhfq;

    iget-boolean v1, v1, Lhfq;->v:Z

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, v0, Lhfo;->b:Lhfq;

    iget-object p1, p1, Lhfq;->s:Lhgn;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lhfi;

    invoke-direct {v0, p1, v3}, Lhfi;-><init>(Lhgn;I)V

    invoke-interface {p1, v0}, Lhgn;->h(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    :goto_3
    return-void

    :pswitch_7
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lhfn;

    iget-object v1, v0, Lhfn;->b:Lhfq;

    iget-boolean v1, v1, Lhfq;->v:Z

    if-eqz v1, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, v0, Lhfn;->b:Lhfq;

    iget-object p1, p1, Lhfq;->s:Lhgn;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lhfi;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lhfi;-><init>(Lhgn;I)V

    invoke-interface {p1, v0}, Lhgn;->h(Ljava/lang/Runnable;)V

    return-void

    :cond_10
    :goto_4
    return-void

    :pswitch_8
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lhfm;

    invoke-virtual {v0}, Lhfm;->r()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lhfm;

    iget-object v1, v0, Lhfm;->b:Lhfq;

    iget-boolean v1, v1, Lhfq;->v:Z

    if-eqz v1, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, v0, Lhfm;->b:Lhfq;

    iget-object p1, p1, Lhfq;->s:Lhgn;

    invoke-interface {p1}, Lhgn;->g()V

    iget-object p1, v0, Lhfm;->b:Lhfq;

    iget-object p1, p1, Lhfq;->s:Lhgn;

    invoke-interface {p1}, Lhgn;->b()Lnou;

    move-result-object p1

    new-instance v1, Lgij;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lgij;-><init>(Lhfm;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_12
    :goto_5
    return-void

    :pswitch_a
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;

    monitor-enter v0

    if-eqz p1, :cond_13

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->close()V

    :cond_13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_b
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lfzb;

    iget-object p1, v0, Lfzb;->d:Lnph;

    sget-object v0, Lcjp;->i:Lcjp;

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    iget-object v0, p0, Lgij;->a:Ljava/lang/Object;

    check-cast p1, Lmqp;

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lked;

    invoke-interface {v0, p1}, Lkef;->n(Lked;)V

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
