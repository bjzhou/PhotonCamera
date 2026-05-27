.class public final Lhba;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ldin;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public final h:Ljuh;

.field public final i:Landroid/content/pm/PackageInstaller;

.field public final j:Ldmz;

.field public final k:Lhbf;

.field public final l:Lgzm;

.field public final m:Lgzn;

.field public final n:Loiw;

.field public final o:Loiw;

.field public final p:Lkbc;

.field public q:Lnph;

.field public r:J

.field public s:Lkbf;

.field public final t:Llhm;

.field public final u:Ldja;

.field private final v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/sideline/SidelineInstaller"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhba;->a:Lnak;

    :try_start_0
    const-string v0, "brotli"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldin;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljuh;Ldja;Llhm;Ldmz;Lhbf;Lgzm;Lgzn;Loiw;Loiw;Landroid/content/pm/PackageInfo;Lkbc;[B[B[B)V
    .locals 5

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lhba;->r:J

    move-object v1, p1

    iput-object v1, v0, Lhba;->b:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lhba;->c:Ldin;

    move-object v2, p3

    iput-object v2, v0, Lhba;->e:Ljava/util/concurrent/Executor;

    move-object v2, p4

    iput-object v2, v0, Lhba;->f:Ljava/util/concurrent/Executor;

    move-object v2, p5

    iput-object v2, v0, Lhba;->g:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, p6

    iput-object v2, v0, Lhba;->h:Ljuh;

    move-object v2, p7

    iput-object v2, v0, Lhba;->u:Ldja;

    move-object v2, p8

    iput-object v2, v0, Lhba;->t:Llhm;

    move-object v2, p9

    iput-object v2, v0, Lhba;->j:Ldmz;

    move-object v2, p10

    iput-object v2, v0, Lhba;->k:Lhbf;

    move-object/from16 v2, p11

    iput-object v2, v0, Lhba;->l:Lgzm;

    move-object/from16 v2, p12

    iput-object v2, v0, Lhba;->m:Lgzn;

    move-object/from16 v2, p13

    iput-object v2, v0, Lhba;->n:Loiw;

    move-object/from16 v2, p14

    iput-object v2, v0, Lhba;->o:Loiw;

    move-object/from16 v2, p16

    iput-object v2, v0, Lhba;->p:Lkbc;

    invoke-virtual/range {p15 .. p15}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    iput-wide v2, v0, Lhba;->v:J

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "release-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "release"

    goto :goto_0

    :cond_0
    const-string v2, "test"

    :goto_0
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-keys_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_com.google.pixel.camera.hal.apex.br"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lhba;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    iput-object v1, v0, Lhba;->i:Landroid/content/pm/PackageInstaller;

    return-void
.end method


# virtual methods
.method public final a(ILj$/util/Optional;)V
    .locals 3

    sget-object v0, Lhba;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xd60

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Install failed! Status (%d): %s"

    invoke-interface {v0, v2, p1, v1}, Lnah;->u(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lhba;->c:Ldin;

    sget-object v1, Ldin;->c:Ldin;

    invoke-virtual {v0, v1}, Ldin;->b(Ldin;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhba;->u:Ldja;

    invoke-virtual {v0}, Ldja;->A()V

    :cond_0
    invoke-virtual {p0}, Lhba;->c()V

    iget-object v0, p0, Lhba;->q:Lnph;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string p2, "INSTALL_FAILED_INTERNAL_ERROR.*signature.*not compatible.*"

    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xc

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :cond_2
    const/4 p2, 0x2

    move v1, p1

    const/4 p1, 0x2

    :goto_0
    iget-object p2, p0, Lhba;->k:Lhbf;

    invoke-virtual {p2, v1, p1}, Lhbf;->b(II)V

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lhba;->b:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/camera/sideline/SidelineJobService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0xe453

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    iget-object v2, p0, Lhba;->o:Loiw;

    check-cast v2, Lemd;

    invoke-virtual {v2}, Lemd;->a()Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lhba;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Failed to schedule retry!"

    const/16 v2, 0xd67

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lhba;->m:Lgzn;

    sget-object v1, Lgzd;->aj:Lgzt;

    iget-wide v2, p0, Lhba;->v:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void
.end method
