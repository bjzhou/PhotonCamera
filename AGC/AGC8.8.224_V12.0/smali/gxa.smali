.class public final Lgxa;
.super Lgwp;


# static fields
.field public static final c:Lnak;


# instance fields
.field public final d:Lgxv;

.field public final e:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/session/PhotosphereCaptureSession"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgxa;->c:Lnak;

    return-void
.end method

.method public constructor <init>(Lgwc;Lgpv;Lgxv;Ljava/lang/String;Lcjf;Lgxr;)V
    .locals 7

    sget-object v1, Lgya;->g:Lgya;

    sget-object v6, Lmpx;->a:Lmpx;

    move-object v0, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lgwc;->a(Lgya;Ljava/lang/String;Lcjf;Lgxr;Lgpv;Lmqp;)Lgwd;

    move-result-object p1

    invoke-direct {p0, p1}, Lgwp;-><init>(Lgwd;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lgxa;->e:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p3, p0, Lgxa;->d:Lgxv;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    const-string v0, "finish"

    invoke-virtual {p0, v0}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0}, Ljew;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljew;->ai(II)V

    invoke-virtual {p0}, Lgwp;->F()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lgot;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lgot;-><init>(Lgxa;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final K()V
    .locals 3

    const-string v0, "updatePreview"

    invoke-virtual {p0, v0}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0}, Ljew;->af()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Ignoring updatePreview. CaptureSession is not started."

    invoke-virtual {p0, v0}, Lgwp;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lgwp;->F()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lgot;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lgot;-><init>(Lgxa;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final S(Lkaf;)V
    .locals 2

    invoke-super {p0, p1}, Lgwp;->S(Lkaf;)V

    invoke-virtual {p0}, Lgwp;->M()V

    iget-object p1, p0, Lgwp;->b:Lgwd;

    invoke-virtual {p0}, Lgwp;->h()Lgxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgwd;->H(Lgxy;)V

    invoke-virtual {p0}, Lgwp;->o()Lgwm;

    move-result-object p1

    invoke-virtual {p0}, Lgwp;->i()Lgya;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lfcr;->b(Lgya;Lnjo;Ljava/lang/Float;)Lfce;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgwm;->c(Lfce;)V

    return-void
.end method

.method public final r([BLhkt;)Lnou;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lhkt;->a:Lkqi;

    iget-object v1, p2, Lhkt;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/camera/exif/ExifInterface;

    const-string v2, "saveAndFinish"

    invoke-virtual {p0, v2}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v2

    invoke-virtual {v2}, Ljew;->ad()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "Ignoring saveAndFinish. CaptureSession has been deleted or canceled."

    invoke-virtual {p0, p1}, Lgwp;->I(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->p()Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljew;->ag([I)V

    invoke-virtual {p0}, Lgwp;->e()Lcjf;

    move-result-object v2

    invoke-virtual {v2}, Lcjf;->b()Lmqp;

    move-result-object v2

    iput-object v2, p2, Lhkt;->d:Lmqp;

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljew;->ah(I)V

    invoke-virtual {p0}, Lgwp;->e()Lcjf;

    move-result-object v2

    invoke-virtual {v2}, Lcjf;->b()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lkqi;->c:Lkqi;

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Lkds;

    invoke-direct {v0, v1}, Lkds;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    invoke-virtual {p0}, Lgwp;->e()Lcjf;

    move-result-object v1

    invoke-virtual {v1}, Lcjf;->b()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v0, v1}, Lkds;->d(Landroid/location/Location;)V

    iget-object v1, v0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    goto :goto_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->u:Ljew;

    invoke-virtual {v0, v1}, Ljew;->n(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    invoke-virtual {p0}, Lgwp;->k()Lhjc;

    move-result-object v0

    check-cast v0, Lhjd;

    iput-object v1, v0, Lhjd;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    :cond_2
    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    invoke-virtual {p0}, Lgwp;->F()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lapv;

    const/16 v7, 0x10

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lapv;-><init>(Lgxa;[BLmqp;Lhkt;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lgwp;->p()Lnou;

    move-result-object p1

    return-object p1
.end method
