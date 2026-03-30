.class Ljqr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljqp;
.implements Ljpv;
.implements Ljpa;
.implements Ljpb;


# static fields
.field private static final f:Lsdb;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ltxm;

.field public final c:Lpdf;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Llyv;

.field private final g:Lowu;

.field private final h:Ljava/util/concurrent/Executor;

.field private i:Lsui;

.field private j:Z


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object v0, p0, Ljqr;->i:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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

    :goto_3
    iget-object v1, p0, Ljqr;->h:Ljava/util/concurrent/Executor;

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

    :goto_4
    new-instance v0, Ljqq;

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Ljqr;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Ljqr;->j:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Ljqq;-><init>(Ljqr;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    invoke-static {v0, v1}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

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

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    :goto_14
    const v0, 0x14

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
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    sput-object v0, Ljqr;->f:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "jqr"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Llyv;Ltxm;Lowu;Lpdf;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ljqr;->e:Llyv;

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

    :goto_1
    iput-object p7, p0, Ljqr;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Ljqr;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p6, p0, Ljqr;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Ljqr;->g:Lowu;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput-object p3, p0, Ljqr;->b:Ltxm;

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

    :goto_7
    iput-object p1, p0, Ljqr;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return-void

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Lsui;)Lsui;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    const/4 v1, 0x2

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

    nop

    :goto_5
    new-instance v0, Ljjo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v0, p0}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljjo;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget-object p0, p0, Ljqr;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljqr;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_1

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
.end method

.method public final b()Lgii;
    .locals 3

    goto/32 :goto_8

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

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const-wide/16 v1, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    new-instance v0, Lgii;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v1, 0x9

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

    :goto_7
    invoke-direct {p0, v0}, Ljqr;->d5484163cd8d335e6b17663474ff5f2bm(Lsui;)Lsui;

    move-result-object p0

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

    :goto_8
    const v0, 0x7

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

    :goto_9
    iget-object v0, p0, Ljqr;->i:Lsui;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-static {}, Lgii;->a()Lgii;

    move-result-object p0

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

    :goto_11
    invoke-direct {v0, p0, v1, v2}, Lgii;-><init>(Lsui;J)V

    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lrss;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ljqr;->i:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x15

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ljqr;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_a

    nop

    nop

    :catch_0
    move-exception v0

    nop

    :try_start_0
    sget-object v1, Ljqr;->f:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const/16 v1, 0x9fc

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "Failed to get current location."

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ljqr;->c:Lpdf;

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

    :goto_d
    iget-object p0, p0, Ljqr;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_f
    const v1, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :goto_13
    :try_start_1
    iget-object v0, p0, Ljqr;->c:Lpdf;

    nop

    nop

    const-string v1, "Location#getCurrent"

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Ljqr;->i:Lsui;

    nop

    nop

    invoke-direct {p0, v0}, Ljqr;->d5484163cd8d335e6b17663474ff5f2bm(Lsui;)Lsui;

    move-result-object v0

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-wide/16 v2, 0x3e8

    nop

    nop

    nop

    invoke-interface {v0, v2, v3, v1}, Lsui;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/location/Location;

    nop

    nop

    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_14
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, v2}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lkoe;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Ljqr;->g:Lowu;

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

    :goto_4
    const/4 v2, 0x1

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

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x18

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

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Ljqr;->j:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    const v1, 0x12

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljqr;->i:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v2}, Lkoe;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Lrss;
    .locals 1

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljqr;->c()Lrss;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

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

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_c
    sget-object p0, Ljqr;->f:Lsdb;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    const/16 v0, 0x9fd

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljqr;->i:Lsui;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    const-string v0, "Location provider not ready, skipping."

    nop

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

    nop
.end method

.method public final f()Lgii;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljqr;->i:Lsui;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljqr;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xc

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    nop

    :goto_7
    invoke-direct {v0, p0, v1, v2}, Lgii;-><init>(Lsui;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

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
    const v1, 0xf

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
    const-wide/16 v1, 0x7d0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0}, Ljqr;->d5484163cd8d335e6b17663474ff5f2bm(Lsui;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lgii;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    rem-int v0, v0, v1

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
.end method
