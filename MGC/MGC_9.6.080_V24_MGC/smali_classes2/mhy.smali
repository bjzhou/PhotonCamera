.class public Lmhy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmih;


# static fields
.field public static final a:Lsdb;

.field private static final n:Lj$/time/Duration;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lsuk;

.field public final e:Lsuk;

.field public final f:Ljava/lang/Object;

.field public final g:Lpdf;

.field public final h:Ljava/util/List;

.field public i:Lmhx;

.field public j:Lmif;

.field public final k:Lhoh;

.field public final l:Llto;

.field public m:Lfdo;

.field private o:Lmid;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const-string v0, "mhy"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x19

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lmhy;->n:Lj$/time/Duration;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    goto/32 :goto_7

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

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

    :goto_e
    const-wide/16 v0, 0x1f4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lmhy;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lhoh;Lpdf;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object v1, p0, Lmhy;->e:Lsuk;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lmhy;->k:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object v1

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

    :goto_7
    new-instance v2, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iput-object v2, p0, Lmhy;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    sget-object v2, Lmhx;->a:Lmhx;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string p1, "avenh-model0.tflite.uncompressed"

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_e
    iput-object v2, p0, Lmhy;->h:Ljava/util/List;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v2, p0, Lmhy;->i:Lmhx;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    const-string v1, "SEnhWorker"

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

    :goto_13
    new-instance v2, Ljava/util/ArrayList;

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

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v0, 0x32

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p3, p0, Lmhy;->g:Lpdf;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    invoke-direct {p1, p0}, Lmhw;-><init>(Lmhy;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lmhy;->c:Landroid/content/Context;

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

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_1e
    invoke-static {v0}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lmhy;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    iput-object p1, p0, Lmhy;->l:Llto;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p1, Lmhw;

    nop

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

    :goto_22
    iput-object v0, p0, Lmhy;->d:Lsuk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final j(Ljava/lang/Runnable;Lsuk;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface {p1, p0}, Lsuk;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, v0}, Lgoy;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lgoy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lmig;)Lpci;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lmhy;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lmhy;->h:Ljava/util/List;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    nop

    :goto_a
    const/16 v1, 0x1127

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

    :goto_b
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, p1, v1}, Ller;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    check-cast v0, Lscz;

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

    nop

    :goto_11
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ller;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
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

    :goto_16
    iget-object v0, p0, Lmhy;->h:Ljava/util/List;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "Remove existing duplicate listener."

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final b()Lj$/time/Duration;
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
    sget-object p0, Lmhy;->n:Lj$/time/Duration;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    iget-object v0, p0, Lmhy;->f:Ljava/lang/Object;

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

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    nop

    sget-object v2, Lmhx;->e:Lmhx;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    new-instance v1, Lmgx;

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    invoke-direct {v1, p0, v2}, Lmgx;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lmhy;->e:Lsuk;

    nop

    nop

    invoke-static {v1, p0}, Lmhy;->j(Ljava/lang/Runnable;Lsuk;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Lmif;)V
    .locals 1

    goto/32 :goto_5

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

    :goto_1
    invoke-direct {v0, p1}, Lmid;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lmid;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lmhy;->o:Lmid;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p1, p1, Lmif;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lmhy;->j:Lmif;

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
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lmhy;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    nop

    sget-object v2, Lmhx;->a:Lmhx;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
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
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Lmgx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, p0}, Lmhy;->j(Ljava/lang/Runnable;Lsuk;)V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const/4 v1, 0x6

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

    :goto_9
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lmgx;

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

    :goto_c
    throw p0

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lmhy;->e:Lsuk;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

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

.method public final f(Ljava/nio/ByteBuffer;IIIJLrss;)V
    .locals 11

    goto/32 :goto_1

    nop

    nop

    :goto_0
    move-object v1, v10

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

    nop

    :goto_1
    const v0, 0xe

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    throw v0

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
    invoke-static {v10, v0}, Lmhy;->j(Ljava/lang/Runnable;Lsuk;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_8
    int-to-long v3, v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    monitor-enter v3

    nop

    nop

    nop

    :try_start_0
    iget-object v4, v0, Lmhy;->i:Lmhx;

    nop

    nop

    sget-object v5, Lmhx;->e:Lmhx;

    nop

    nop

    invoke-virtual {v4, v5}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_0

    nop

    nop

    monitor-exit v3

    nop

    nop

    return-void

    nop

    :cond_0
    monitor-exit v3

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_a
    move v3, p4

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

    :goto_b
    move-object/from16 v9, p7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct/range {v1 .. v9}, Lmhu;-><init>(Lmhy;IIILjava/nio/ByteBuffer;JLrss;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    mul-long/2addr v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    move v4, p2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    move-wide/from16 v1, p5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long v6, v4, v6

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-wide v1, v3, Lmid;->b:J

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

    :goto_14
    new-instance v10, Lmhu;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    iget-wide v4, v3, Lmid;->b:J

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    iget-object v0, v0, Lmhy;->e:Lsuk;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/high16 v6, -0x8000000000000000L

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    move-object v2, p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-long/2addr v1, v4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    div-long/2addr v3, v1

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

    nop

    :goto_1c
    move-object v0, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    if-eqz v6, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_22
    move v5, p3

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

    :goto_23
    const-wide/32 v1, 0x3b9aca00

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

    :goto_24
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v3

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_25
    move-wide v7, v3

    nop

    :goto_26
    goto/32 :goto_27

    nop

    nop

    :goto_27
    invoke-static {p1}, Lcom/google/googlex/gcam/BufferUtils;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v3, v0, Lmhy;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-wide v7, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    iget-object v3, v0, Lmhy;->o:Lmid;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    iget v3, v3, Lmid;->a:I

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
.end method

.method public final g()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const v0, 0x5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    invoke-direct {v0, p0}, Lmhv;-><init>(Lmhy;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lmhy;->e:Lsuk;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    iget-object v0, p0, Lmhy;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, p0}, Lmhy;->j(Ljava/lang/Runnable;Lsuk;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lmhv;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    monitor-enter v0

    nop

    :try_start_1
    iget-object v1, p0, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    sget-object v2, Lmhx;->b:Lmhx;

    nop

    nop

    invoke-virtual {v1, v2}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lmhy;->i:Lmhx;

    nop

    nop

    sget-object v3, Lmhx;->f:Lmhx;

    nop

    invoke-virtual {v1, v3}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    :cond_1
    const/4 v2, 0x0

    nop

    nop

    nop

    :cond_2
    :goto_10
    const-string v1, "Cannot start from %s"

    nop

    nop

    iget-object v3, p0, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    nop

    invoke-static {v2, v1, v3}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop
.end method

.method public final h()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
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

    :goto_2
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lmhx;->d:Lmhx;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    iget-object v1, p0, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    sget-object v2, Lmhx;->e:Lmhx;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    :cond_1
    sget-object v1, Lmhx;->f:Lmhx;

    nop

    iput-object v1, p0, Lmhy;->i:Lmhx;

    nop

    nop

    new-instance v1, Lmgx;

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lmgx;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lmhy;->e:Lsuk;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lmhy;->j(Ljava/lang/Runnable;Lsuk;)V

    iget-object v1, p0, Lmhy;->o:Lmid;

    nop

    nop

    nop

    const-wide/high16 v2, -0x8000000000000000L

    nop

    nop

    nop

    iput-wide v2, v1, Lmid;->b:J

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    iput-boolean v1, p0, Lmhy;->p:Z

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    return-void

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    iget-object v0, p0, Lmhy;->f:Ljava/lang/Object;

    nop

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

    nop
.end method

.method public final i(Ljava/nio/ByteBuffer;)Z
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p1, p0, Lmhy;->p:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lcom/google/googlex/gcam/BufferUtils;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    new-instance v0, Llwv;

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

    :goto_5
    goto/32 :goto_9

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x14

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

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    iget-object v0, p0, Lmhy;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p0, p1, v1}, Llwv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Lmhy;->p:Z

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lmhx;->d:Lmhx;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lmhx;->e:Lmhx;

    nop

    iput-object v1, p0, Lmhy;->i:Lmhx;

    nop

    goto :goto_11

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lmhx;->e:Lmhx;

    nop

    nop

    invoke-virtual {v1, v2}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    return p0

    nop

    nop

    nop

    nop

    :cond_2
    :goto_11
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lmhy;->e:Lsuk;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    const v0, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, p1}, Lmhy;->j(Ljava/lang/Runnable;Lsuk;)V

    goto/32 :goto_0

    nop

    nop

    :goto_16
    return v0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_5

    nop
.end method
