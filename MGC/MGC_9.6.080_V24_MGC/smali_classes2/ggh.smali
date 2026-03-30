.class public Lggh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfgr;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/os/Handler;

.field public c:Lfgr;

.field public d:Lfhi;

.field public e:Lfgv;

.field public f:Lpnx;

.field public final g:Ljava/util/HashSet;

.field private final h:Lggg;

.field private final i:Lpea;

.field private final j:Lpnv;

.field private final k:Landroid/app/admin/DevicePolicyManager;

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Ljava/util/concurrent/Semaphore;

.field private final n:Lfhl;

.field private final o:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Lggg;Lpnx;Landroid/os/Handler;Lfgr;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0, p4, p2, p1}, Lfzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    const v1, 0x12

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Lfzj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    :try_start_0
    iget-object v0, p0, Lggh;->k:Landroid/app/admin/DevicePolicyManager;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    iget-object p0, p0, Lggh;->m:Ljava/util/concurrent/Semaphore;

    nop

    nop

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {p2}, Lpnx;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p3, p0, p4}, Lggg;->b(Landroid/os/Handler;ILfgr;)V

    return-void

    nop

    :cond_1
    new-instance p0, Lhtm;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lhtm;-><init>()V

    throw p0

    nop

    nop

    nop
    :try_end_0
    .catch Lhtm; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    :goto_d
    const v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "ggh"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lggh;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Handler;Lggg;Lpea;Lpnv;Landroidx/wear/ambient/AmbientDelegate;Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Semaphore;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, v1}, Ljhw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-eqz p3, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lggh;->n:Lfhl;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Lggg;->a()Lfhi;

    move-result-object p3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lggh;->c:Lfgr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Lggh;->k:Landroid/app/admin/DevicePolicyManager;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Lggh;->o:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    iput-object v0, p0, Lggh;->f:Lpnx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    new-instance p0, Lfhm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_f
    iput-object p1, p0, Lggh;->b:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    iput-object p3, p0, Lggh;->i:Lpea;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p2, p0, Lggh;->h:Lggg;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_14
    invoke-interface {p0, p3, p4}, Lfgr;->c(ILjava/lang/String;)V

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p4, p0, Lggh;->j:Lpnv;

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

    :goto_17
    iput-object p7, p0, Lggh;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lggh;->g:Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v0, p1}, Lfhm;-><init>(Lfhl;Landroid/os/Handler;)V

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    const v1, 0x16

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    iput-object p8, p0, Lggh;->m:Ljava/util/concurrent/Semaphore;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    invoke-virtual {p2, p0}, Lggg;->c(Lfhm;)V

    goto/32 :goto_19

    nop

    nop

    :goto_21
    new-instance v0, Ljhw;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p3, p0, Lggh;->d:Lfhi;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p3, -0x1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_27
    const-string p4, "GETTING_CAMERA_INFO"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object p0, p0, Lggh;->m:Ljava/util/concurrent/Semaphore;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lggh;->m:Ljava/util/concurrent/Semaphore;

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lggh;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p1}, Lfgr;->a(I)V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object v0, p0, Lggh;->c:Lfgr;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lfgv;)V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    :goto_5
    :try_start_0
    invoke-virtual {p1}, Lfgv;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lggh;->f:Lpnx;

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    invoke-virtual {v1}, Lpnx;->a()I

    move-result v1

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_0
    const/4 v1, -0x1

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    if-ne v1, v0, :cond_3

    nop

    nop

    nop

    invoke-virtual {p1}, Lfgv;->g()Lfho;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfho;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lggh;->e:Lfgv;

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfgv;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    if-eq v1, v0, :cond_1

    nop

    invoke-virtual {p0, v2}, Lggh;->k(Z)V

    :cond_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lggh;->f:Lpnx;

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lggh;->e:Lfgv;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lggh;->c:Lfgr;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lfgr;->b(Lfgv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    iget-object p1, p0, Lggh;->c:Lfgr;

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_4

    nop

    const-string v2, "Camera "

    nop

    nop

    nop

    const-string v3, " opened, but in UNOPENED state"

    nop

    nop

    invoke-static {v1, v2, v3}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {p1, v0, v1}, Lfgr;->c(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_2
    invoke-virtual {p0, v2}, Lggh;->k(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop
.end method

.method public final c(ILjava/lang/String;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p1, p2}, Lfgr;->c(ILjava/lang/String;)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lggh;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lggh;->c:Lfgr;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final d(ILjava/lang/String;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-interface {v0, p1, p2}, Lfgr;->d(ILjava/lang/String;)V

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lggh;->c:Lfgr;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lggh;->g(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lggh;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lfgz;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p1, p2}, Lfgr;->e(Lfgz;Ljava/lang/String;)V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lggh;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lggh;->c:Lfgr;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method

.method public final f()I
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/4 p0, -0x1

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lfhi;->a()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lggh;->d:Lfhi;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized g(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lggh;->f:Lpnx;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    invoke-virtual {v0}, Lpnx;->a()I

    :cond_0
    iget-object v0, p0, Lggh;->f:Lpnx;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpnx;->a()I

    move-result v0

    nop

    nop

    nop

    if-ne v0, p1, :cond_1

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lggh;->f:Lpnx;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h()V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v1, p0, Lggh;->o:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Landroidx/wear/ambient/AmbientDelegate;->R(Lpnx;)V

    iget-object v1, p0, Lggh;->h:Lggg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lggh;->e:Lfgv;

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lggh;->b:Landroid/os/Handler;

    nop

    nop

    invoke-direct {p0, v1, v0, v2, p0}, Lggh;->33b3102b6558811a7b7629a1e8e59bd2m(Lggg;Lpnx;Landroid/os/Handler;Lfgr;)V

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v2}, Lfgv;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpnx;->a()I

    move-result v3

    nop

    nop

    nop

    if-eq v1, v3, :cond_2

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-virtual {p0, v1}, Lggh;->k(Z)V

    iget-object v1, p0, Lggh;->h:Lggg;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lggh;->b:Landroid/os/Handler;

    nop

    nop

    nop

    invoke-direct {p0, v1, v0, v2, p0}, Lggh;->33b3102b6558811a7b7629a1e8e59bd2m(Lggg;Lpnx;Landroid/os/Handler;Lfgr;)V

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lggh;->b:Landroid/os/Handler;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lfgv;->h()Lfhp;

    move-result-object v1

    nop

    new-instance v3, Las;

    nop

    nop

    nop

    const/16 v4, 0xb

    nop

    nop

    nop

    invoke-direct {v3, v2, v0, p0, v4}, Las;-><init>(Lfgv;Landroid/os/Handler;Lfgr;I)V

    invoke-virtual {v1, v3}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_3

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v2}, Lfgv;->d()Lfgz;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Lfgz;->c()Lfhm;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1, v0}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    :goto_3
    iget-object v0, p0, Lggh;->h:Lggg;

    nop

    nop

    invoke-virtual {v0}, Lggg;->a()Lfhi;

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, p0, Lggh;->d:Lfhi;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_3
    iget-object v0, p0, Lggh;->f:Lpnx;

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lggh;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x132

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "doRequestCamera: might be interrupted by early release. return"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_8

    nop
.end method

.method public final i(I)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lggh;->e:Lfgv;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lpnv;->c(I)Lpnx;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_8
    const-string v0, "releaseCamera: Try to release a not-yet-available camera(%s). Wait till it\'s available"

    nop

    nop

    goto/32 :goto_14

    nop

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

    nop

    nop

    :goto_a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v0, p1, :cond_1

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lggh;->j:Lpnv;

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

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    :goto_10
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_12
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lggh;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, v0, p1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_16
    const/16 v1, 0x135

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    invoke-static {p0}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lscz;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lfgv;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0, v1, v0, p1}, Lscz;->w(Ljava/lang/String;II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Lggh;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x10

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    :try_start_0
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    check-cast v1, Lpnx;

    nop

    invoke-virtual {v1, p0}, Lpnx;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    if-eqz p0, :cond_4

    nop

    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object p0, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :cond_4
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lggh;->o:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    :goto_24
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_26
    sget-object v1, Lcom/google/android/libraries/phenotype/client/stable/NyRu/FYEOygtxYXoPt;->riglHbdwri:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_27
    const/16 v0, 0x136

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Lggh;->g(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic j()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_1
    new-instance v2, Ldtv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2, p0, v0, v3}, Ldtv;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v1, v0}, Lpnv;->c(I)Lpnx;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_a
    invoke-virtual {p0}, Lggh;->f()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lggh;->j:Lpnv;

    nop

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

    :goto_c
    const v0, 0x17

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-interface {v1}, Lpea;->a()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    iget-object v1, p0, Lggh;->i:Lpea;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v1

    nop

    :goto_16
    :try_start_0
    iget-object v2, p0, Lggh;->f:Lpnx;

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lpnx;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_3

    nop

    return-void

    nop

    nop

    :cond_3
    iget-object v2, p0, Lggh;->f:Lpnx;

    nop

    nop

    nop

    invoke-virtual {v2}, Lpnx;->a()I

    move-result v2

    nop

    invoke-virtual {p0, v2}, Lggh;->i(I)V

    :cond_4
    iput-object v1, p0, Lggh;->f:Lpnx;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    :goto_19
    iget-object v1, p0, Lggh;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw v0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v3, 0x9

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final k(Z)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Lggg;->d(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lggh;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lggh;->h:Lggg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
