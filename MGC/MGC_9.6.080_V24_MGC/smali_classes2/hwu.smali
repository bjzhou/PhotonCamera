.class public final Lhwu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnrm;
.implements Lpci;


# static fields
.field private static final d:Lsdb;


# instance fields
.field public final a:Loyd;

.field public final b:Ljava/lang/Object;

.field public c:J

.field private final e:Ljava/util/concurrent/Executor;

.field private f:I

.field private g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->rtenL:Ljava/lang/String;

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

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    sput-object v0, Lhwu;->d:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Loyd;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lhwu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lhwu;->f:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhwu;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lhwu;->g:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-direct {p2, p0, v0}, Lhsx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    :goto_c
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_13
    new-instance p2, Lhsx;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    iput-wide v0, p0, Lhwu;->c:J

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    const/4 v0, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p2, p0, Lhwu;->a:Loyd;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;Lprw;)Lnrl;
    .locals 8

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    return-object p0

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

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    :goto_3
    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_4
    :try_start_1
    monitor-exit p2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v6

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v7, Lllh;

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    move-object v0, v7

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    move-object v2, v6

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v0 .. v5}, Lllh;-><init>(Lhwu;Landroid/hardware/HardwareBuffer;Lprw;Ljava/util/List;I)V

    new-instance p1, Lsuj;

    nop

    nop

    nop

    invoke-direct {p1, v7}, Lsuj;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p0, p0, Lhwu;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lsuj;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lnrl;

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_c
    sget-object p0, Lnrl;->b:Lnrl;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lhwu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    monitor-enter p2

    nop

    :try_start_4
    iget-wide v0, p0, Lhwu;->c:J

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    cmp-long v0, v0, v2

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lnrl;->b:Lnrl;

    nop

    nop

    nop

    nop

    monitor-exit p2

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    if-le p2, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    nop

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

    :goto_14
    goto :goto_15

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw p0

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    sget-object p1, Lhwu;->d:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    invoke-interface {p1, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p0

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const/16 p1, 0x4f5

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string p1, "Failed to apply live face retouch"

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    sget-object p0, Lnrl;->b:Lnrl;

    nop

    monitor-exit p2

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    monitor-exit p2

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_9

    nop

    nop

    :goto_16
    iget-object v4, p0, Lhwu;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v6, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_7
    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    iget p2, p0, Lhwu;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpge;Lphh;Lpge;)Lnrl;
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lhwu;->f:I

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

    nop

    :goto_3
    return-object p0

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Lhwu;->f:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lhwu;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    goto/16 :goto_20

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    if-nez p2, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lprw;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v1, 0x4f6

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_12
    iput v1, p0, Lhwu;->f:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_14

    nop

    nop

    :catchall_2
    move-exception p2

    nop

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :catchall_3
    move-exception p0

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

    :goto_15
    if-eqz v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v0, v0, 0x1

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

    :goto_17
    sget-object v0, Lhwu;->d:Lsdb;

    nop

    nop

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

    :goto_18
    invoke-interface {v0, v2, v1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_8

    nop

    nop

    :goto_19
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_2
    invoke-interface {p1}, Lprw;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    :goto_1b
    goto/32 :goto_27

    nop

    nop

    :goto_1c
    invoke-interface {p1, p2}, Lpge;->e(Lphh;)Lprw;

    move-result-object p1

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-interface {p3, p2}, Lpge;->e(Lphh;)Lprw;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lhwu;->a(Lprw;Lprw;)Lnrl;

    move-result-object p0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {p2}, Lprw;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lhwu;->g:Ljava/util/List;

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Lhst;->c(Lpro;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_26
    const-string v2, "Using previous faceMetadata: metadata missed for %d consecutive frames."

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_27
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lnrn;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lnrn;->c:Lnrn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final close()V
    .locals 6

    goto/32 :goto_9

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhwu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-wide v1, p0, Lhwu;->c:J

    nop

    const-wide/16 v3, 0x0

    nop

    nop

    nop

    cmp-long v5, v1, v3

    nop

    nop

    nop

    nop

    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->releaseRetoucher(J)V

    iput-wide v3, p0, Lhwu;->c:J

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x17

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic d()Lqht;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic e()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lnzk;->m(Lnrm;)Ljava/lang/String;

    move-result-object p0

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
    return-object p0

    nop
.end method

.method public final r()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhwu;->a:Loyd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Llyd;->a:Llyd;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final synthetic t(Lqiu;Lqjs;)Lnrl;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lnzk;->n()Lnrl;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
