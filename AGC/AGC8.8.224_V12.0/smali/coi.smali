.class public final Lcoi;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lcmw;Landroid/app/job/JobParameters;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;Landroid/app/job/JobParameters;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcpk;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcpu;Lgxz;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcpu;Ljyc;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lert;Lika;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhhr;Lkbf;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhos;Lkbf;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Liau;Lika;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljkm;Landroid/app/job/JobParameters;I)V
    .locals 0

    iput p3, p0, Lcoi;->c:I

    iput-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcoi;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()V
    .locals 3

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpk;

    iget-object v0, v0, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v1, Lcpk;

    invoke-virtual {v1}, Lcpk;->b()V

    iget-object v1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v1, Lcpk;

    iget-object v1, v1, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->b:Lcpj;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v1, Lcpk;

    iget-object v1, v1, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->d:Lcpj;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v1, p0, Lcoi;->a:Ljava/lang/Object;

    sget-object v2, Lcpj;->a:Lcpj;

    check-cast v1, Lcpk;

    invoke-virtual {v1, v2}, Lcpk;->k(Lcpj;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Lcoi;->c:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Ljkt;

    if-eqz v0, :cond_0

    return-void

    :pswitch_0
    sget-object p1, Liau;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xfe6

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Unable to launch mode for: %s"

    iget-object v1, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lkbf;->a()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbf;->a()V

    new-instance v0, Lmrr;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmrr;-><init>(Ljava/lang/Throwable;[B)V

    throw v0

    :pswitch_3
    sget-object v0, Lert;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Failure disconnecting camera device"

    const/16 v2, 0x745

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_4
    sget-object v0, Lcpu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "CamcorderSnapshot is not available: %s"

    const/16 v2, 0x1d1

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->b:Lcqu;

    check-cast v0, Lcpk;

    iget-object v1, v0, Lcpk;->B:Ldfa;

    iget-object v0, v0, Lcpk;->b:Lklv;

    invoke-virtual {v1, p1, v0}, Ldfa;->b(Ljava/lang/Throwable;Lklv;)V

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->y:Ldlj;

    iget-object v0, p0, Lcoi;->b:Ljava/lang/Object;

    check-cast v0, Lgxz;

    iget-wide v0, v0, Lgxz;->b:J

    invoke-interface {p1, v0, v1}, Ldlj;->e(J)V

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->C:Ljava/util/List;

    iget-object v0, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->d:Lcqa;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcqa;->l(Z)V

    :pswitch_5
    return-void

    :pswitch_6
    sget-object v0, Lcpk;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Failed to stop recording."

    const/16 v2, 0x1b7

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-direct {p0}, Lcoi;->c()V

    :pswitch_7
    return-void

    :pswitch_8
    sget p1, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;->c:I

    iget-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;->a(Landroid/content/Context;)Z

    iget-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    check-cast p1, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcoi;->b:Ljava/lang/Object;

    check-cast v0, Ljkm;

    invoke-virtual {v0}, Ljkm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljkm;->a(Landroid/content/Context;)Lkte;

    move-result-object v0

    iget-object v0, v0, Lkte;->c:Ljava/lang/Object;

    new-instance v1, Liwu;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, Liwu;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcoi;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    check-cast p1, Ljkm;

    invoke-virtual {p1, v0, v3}, Ljkm;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcoi;->b:Ljava/lang/Object;

    check-cast v0, Lika;

    check-cast p1, Liau;

    invoke-virtual {p1, v0, v2}, Liau;->j(Lika;Z)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p1, Liha;

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v0, v0, Lhos;->B:Lhol;

    iget-object v0, v0, Lhol;->R:Lkfj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Liha;->a:Landroid/view/Surface;

    invoke-interface {v0, p1}, Lkfj;->d(Landroid/view/Surface;)V

    iget-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lkbf;->a()V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lkbf;->a()V

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    new-instance v0, Lhfi;

    const/16 v2, 0xc

    invoke-direct {v0, p0, v2, v1}, Lhfi;-><init>(Lcoi;I[B)V

    check-cast p1, Lhhr;

    iget-object p1, p1, Lhhr;->d:Lnow;

    invoke-static {v0, p1}, Lhhr;->k(Ljava/lang/Runnable;Lnow;)V

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lhhr;

    iget-object v0, p1, Lhhr;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    sget-object v1, Lhhq;->b:Lhhq;

    check-cast p1, Lhhr;

    iput-object v1, p1, Lhhr;->h:Lhhq;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_3
    check-cast p1, Ljava/lang/Void;

    invoke-static {}, Ljuh;->a()V

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lert;

    iget-object p1, p1, Lert;->k:Lkbc;

    iget-object v0, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSelectMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " second half"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkbc;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcoi;->b:Ljava/lang/Object;

    check-cast v0, Lika;

    check-cast p1, Lert;

    invoke-virtual {p1, v0}, Lert;->C(Lika;)V

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lert;

    iget-object p1, p1, Lert;->p:Lchk;

    invoke-virtual {p1}, Lchk;->v()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lert;

    iget-object p1, p1, Lert;->h:Ligx;

    invoke-virtual {p1}, Ligx;->g()V

    :cond_1
    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lert;

    iget-object v0, p1, Lert;->p:Lchk;

    iget-boolean v2, p1, Lert;->z:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lchk;->ce()V

    invoke-virtual {v0}, Lchk;->m()V

    iget-object v0, p1, Lert;->F:Lkad;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkad;->close()V

    iput-object v1, p1, Lert;->F:Lkad;

    :cond_2
    invoke-virtual {p1}, Lert;->E()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lert;->t:Lfbz;

    invoke-virtual {p1}, Lert;->E()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lfbz;->Z(II)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v2, p1, Lert;->o:Lcha;

    check-cast v2, Lcie;

    iget-object v2, v2, Lcie;->h:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getClickEnabledObservable()Ljvs;

    move-result-object v2

    new-instance v3, Lers;

    invoke-direct {v3, p1, v0, v1}, Lers;-><init>(Lert;ILjava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v2, v3}, Ljvw;->l(Ljvs;Lkai;)Lkad;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkad;

    iput-object v0, p1, Lert;->F:Lkad;

    iget-object v0, p1, Lert;->T:Lcdi;

    invoke-virtual {v0}, Lcdi;->j()Ljuf;

    move-result-object v0

    iget-object v1, p1, Lert;->F:Lkad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    :goto_1
    invoke-virtual {p1}, Lert;->D()V

    :cond_5
    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lert;

    iget-object p1, p1, Lert;->k:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :pswitch_4
    check-cast p1, Lcsw;

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->d:Lcqa;

    invoke-virtual {p1, v2}, Lcqa;->l(Z)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lcpu;

    iget-object v0, p1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->F:Lcpt;

    sget-object v1, Lcpt;->f:Lcpt;

    if-ne p1, v1, :cond_6

    monitor-exit v0

    return-void

    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lcpu;

    invoke-virtual {p1}, Lcpu;->d()V

    iget-object v0, p1, Lcpu;->z:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lclr;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v2}, Lclr;-><init>(Lcpu;I)V

    sget-object v2, Ldlg;->a:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v2

    sget-object v4, Ldlg;->a:Lj$/time/Duration;

    invoke-virtual {v4}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p1, Lcpu;->D:Ljava/util/concurrent/ScheduledFuture;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->q:Lctu;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v1, v0, Lcpu;->l:Lcsc;

    iget-boolean v1, v1, Lcsc;->A:Z

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcpu;->j:Ldhi;

    sget-object v1, Ldgu;->R:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lctr;

    iget-object v1, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lctr;-><init>(Ljyc;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->l:Lcsc;

    iget-object v0, v0, Lcsc;->c:Ljws;

    sget-object v1, Ljws;->a:Ljws;

    if-ne v0, v1, :cond_8

    new-instance v0, Lctq;

    iget-object v1, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lctq;-><init>(Ljyc;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->u:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->u:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfg;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->l:Lcsc;

    iget-object v0, v0, Lcsc;->y:Lgya;

    invoke-static {v0}, Ldyy;->c(Lgya;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyy;

    invoke-virtual {v0}, Ldyy;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljyc;->o(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->o:Lcvx;

    invoke-interface {v0, p1}, Lcvx;->e(Ljava/util/List;)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :pswitch_6
    check-cast p1, Lfsf;

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Lcpk;

    iget-object v0, v0, Lcpk;->o:Lhkl;

    sget-object v1, Lhkk;->d:Lhkk;

    invoke-virtual {v0, v1}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v0, p0, Lcoi;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcqs;

    invoke-interface {v1, p1}, Lcqs;->o(Lfsf;)V

    goto :goto_2

    :cond_a
    iget-object p1, p1, Lfsf;->d:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->d:Lcqa;

    iget-object v0, p1, Lcqa;->a:Lhsl;

    sget-object v1, Likn;->e:Likn;

    invoke-interface {v0, v1}, Lhsl;->g(Likn;)V

    iget-object v0, p1, Lcqa;->a:Lhsl;

    iget-object p1, p1, Lcqa;->b:Ljava/lang/String;

    invoke-interface {v0, p1}, Lhsl;->i(Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0}, Lcoi;->c()V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    sget-wide v0, Lcmw;->e:J

    :cond_c
    iget-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    check-cast p1, Lcmw;

    invoke-virtual {p1, v0, v3}, Lcmw;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Void;

    sget p1, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;->c:I

    iget-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;->a(Landroid/content/Context;)Z

    iget-object p1, p0, Lcoi;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcoi;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    check-cast p1, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;

    invoke-virtual {p1, v0, v3}, Lcom/google/android/apps/camera/brella/mediastore/MediaListeningService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
