.class public abstract Ljha;
.super Ljpy;
.source "PG"


# static fields
.field private static final s:Lsdb;


# instance fields
.field public o:Lpdf;

.field public p:Ljow;

.field public q:Lprb;

.field public r:Lggp;

.field private final t:Ljava/lang/Object;

.field private u:Z

.field private v:Lfwv;

.field private volatile w:Lhon;

.field private volatile z:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "jha"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ljha;->s:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Ljha;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljpy;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Ljha;->t:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Ljha;->u:Z

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    invoke-virtual {p0}, Ljha;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    check-cast v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e()Ljip;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ljip;->h:Ltur;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lpdf;

    nop

    nop

    nop

    nop

    nop

    iput-object v2, p0, Ljha;->o:Lpdf;

    nop

    iget-object v2, v1, Ljip;->ak:Ltur;

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lggp;

    nop

    nop

    iput-object v2, p0, Ljha;->r:Lggp;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ljip;->lj:Lfdo;

    nop

    invoke-static {v2}, Ljpd;->c(Lfdo;)Ljow;

    move-result-object v2

    nop

    iput-object v2, p0, Ljha;->p:Ljow;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Ljip;->b:Ltur;

    nop

    nop

    invoke-interface {v1}, Ltur;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lprb;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Ljha;->q:Lprb;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljha;->r:Lggp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    nop

    invoke-static {v2}, La;->au(Z)V

    new-instance v3, Lfwv;

    nop

    nop

    nop

    invoke-direct {v3, v1}, Lfwv;-><init>(Lggp;)V

    iput-object v3, p0, Ljha;->v:Lfwv;

    nop

    nop

    nop

    iput-boolean v2, p0, Ljha;->u:Z

    nop

    :cond_1
    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    iget-object v0, p0, Ljha;->t:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Ljha;->u:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1d

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ljha;->v:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    :goto_3
    const-string v1, "GcaActivity#onCreate"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljha;->e94656b6137dd01f26085f984afe853em()V

    goto/32 :goto_13

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ljha;->o:Lpdf;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "WARNING!!!"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    iget-object v1, v0, Lfwv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljha;->q:Lprb;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_21

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljha;->o:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_12
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    iget-object v2, v0, Lfwv;->g:Lgig;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lgig;->a()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lfwv;->h:Lggp;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lggp;->b()Lows;

    move-result-object v2

    nop

    nop

    nop

    iput-object v2, v0, Lfwv;->d:Lows;

    nop

    nop

    iget-object v2, v0, Lfwv;->d:Lows;

    nop

    nop

    nop

    nop

    new-instance v3, Lgig;

    nop

    invoke-direct {v3}, Lgig;-><init>()V

    invoke-virtual {v2, v3}, Lows;->d(Lpci;)V

    iput-object v3, v0, Lfwv;->g:Lgig;

    nop

    nop

    iget-object v2, v0, Lfwv;->h:Lggp;

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lfwv;->d:Lows;

    nop

    invoke-virtual {v2, v3}, Lggp;->c(Lows;)Lows;

    move-result-object v2

    nop

    iput-object v2, v0, Lfwv;->c:Lows;

    nop

    iget-object v2, v0, Lfwv;->c:Lows;

    nop

    nop

    new-instance v3, Lgig;

    nop

    nop

    nop

    invoke-direct {v3}, Lgig;-><init>()V

    invoke-virtual {v2, v3}, Lows;->d(Lpci;)V

    iput-object v3, v0, Lfwv;->f:Lgig;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lfwv;->h:Lggp;

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lfwv;->c:Lows;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lggp;->a(Lows;)Lows;

    move-result-object v2

    nop

    iput-object v2, v0, Lfwv;->b:Lows;

    nop

    nop

    nop

    iget-object v2, v0, Lfwv;->b:Lows;

    nop

    nop

    nop

    new-instance v3, Lgig;

    nop

    nop

    nop

    invoke-direct {v3}, Lgig;-><init>()V

    invoke-virtual {v2, v3}, Lows;->d(Lpci;)V

    iput-object v3, v0, Lfwv;->e:Lgig;

    nop

    :cond_2
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Lrgs;->a(Landroid/app/Activity;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean v0, v0, Lprb;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "Cannot start the Google Camera App on an unsupported device"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ljha;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Ljha;->c43d12f4f4da28dd6c943a4effe477b7m()V

    goto/32 :goto_10

    nop

    nop

    :goto_1f
    invoke-super {p0, p1}, Ljpy;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v1, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->rqJvMdDgkcOTCE:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method protected onDestroy()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Ljpy;->onDestroy()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const-string v1, "GcaActivity#onDestroy"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lfwv;->de()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Ljha;->o:Lpdf;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    :goto_f
    iget-object v0, p0, Ljha;->o:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljha;->c43d12f4f4da28dd6c943a4effe477b7m()V

    goto/32 :goto_f

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljha;->v:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Ljpy;->onNewIntent(Landroid/content/Intent;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljha;->c43d12f4f4da28dd6c943a4effe477b7m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method protected onPause()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljha;->o:Lpdf;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Ljpy;->onPause()V

    goto/32 :goto_10

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljha;->c43d12f4f4da28dd6c943a4effe477b7m()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ljha;->o:Lpdf;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "GcaActivity#onPause"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljha;->v:Lfwv;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lfwv;->cX()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected onResume()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const-string v1, "GcaActivity#onResume"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljha;->o:Lpdf;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lfwv;->cY()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    iget-object v0, p0, Ljha;->o:Lpdf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0}, Ljpy;->onResume()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljha;->v:Lfwv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_c

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljha;->c43d12f4f4da28dd6c943a4effe477b7m()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method protected onStart()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljha;->o:Lpdf;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljha;->c43d12f4f4da28dd6c943a4effe477b7m()V

    goto/32 :goto_a

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lfwv;->dj()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    const v1, 0x8

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ljha;->o:Lpdf;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "GcaActivity#onStart"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-super {p0}, Ljpy;->onStart()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljha;->v:Lfwv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method protected onStop()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljha;->o:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljha;->c43d12f4f4da28dd6c943a4effe477b7m()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljha;->v:Lfwv;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const-string v1, "GcaActivity#onStop"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_c
    invoke-super {p0}, Ljpy;->onStop()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Ljha;->o:Lpdf;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lfwv;->dv()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final q()Lpdf;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljha;->e94656b6137dd01f26085f984afe853em()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljha;->o:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected final r()Lhon;
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ljha;->w:Lhon;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljha;->w:Lhon;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljpy;->x:Ljov;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ljpy;->y:Ljmo;

    nop

    nop

    nop

    iget-object v3, p0, Ljha;->p:Ljow;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljph;->e(Ljpv;)V

    new-instance v1, Lhon;

    nop

    iget-object v3, p0, Ljha;->x:Ljov;

    nop

    nop

    invoke-direct {p0}, Ljha;->e94656b6137dd01f26085f984afe853em()V

    iget-object v4, p0, Ljha;->v:Lfwv;

    nop

    invoke-direct {v1, p0, v3, v2, v4}, Lhon;-><init>(Ljha;Ljov;Ljmo;Lfwv;)V

    iput-object v1, p0, Ljha;->w:Lhon;

    nop

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iget-object p0, p0, Ljha;->w:Lhon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    iget-object v0, p0, Ljha;->t:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_d
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljha;->e94656b6137dd01f26085f984afe853em()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method protected final s()Lmhz;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljha;->z:Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    iget-object v0, p0, Ljha;->z:Lmhz;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljha;->z:Lmhz;

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    new-instance v1, Lmhz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Lmhz;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Ljha;->z:Lmhz;

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljha;->t:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
