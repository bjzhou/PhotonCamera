.class public final Lgzs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lmtj;

.field public final c:Lrss;

.field public final d:Landroid/net/Uri;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Ljava/lang/Runnable;

.field public g:Ljava/util/concurrent/ScheduledFuture;

.field public h:Lrss;

.field public final i:Lnar;

.field private final j:Ljava/util/concurrent/Executor;

.field private k:Lsui;


# direct methods
.method public constructor <init>(Lmtj;Lrss;Lnar;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lgzs;->h:Lrss;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Lgzs;->d:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

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

    nop

    :goto_4
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p3, p0, Lgzs;->i:Lnar;

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
    iput-object p7, p0, Lgzs;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p2, Lgzr;

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

    :goto_8
    iput-object p4, p0, Lgzs;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, p2}, Lmtj;->d(Lmti;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Lgzs;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p8, p0, Lgzs;->f:Ljava/lang/Runnable;

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

    :goto_c
    iput-object p1, p0, Lgzs;->b:Lmtj;

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

    :goto_d
    iput-object p2, p0, Lgzs;->c:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    invoke-direct {p2, p0, p1}, Lgzr;-><init>(Lgzs;Lmtj;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-object v0, p0, Lgzs;->g:Ljava/util/concurrent/ScheduledFuture;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgzs;->g:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_11

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

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lgzs;->c()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_7
    const/4 v1, 0x1

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

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lnar;->i(Landroid/net/Uri;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lgzs;->d:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    iget-object v0, p0, Lgzs;->i:Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lgzs;->h()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x20

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lnar;->h(Landroid/net/Uri;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lgzs;->j:Ljava/util/concurrent/Executor;

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

    :goto_5
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p0, v2}, Lghf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return-void

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lgzs;->i:Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p0}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

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

    :goto_e
    const v0, 0x1f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lgzs;->k:Lsui;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lghf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lgzs;->d:Landroid/net/Uri;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lgzs;->k:Lsui;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lgzs;->a()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const v1, 0x19

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

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
    invoke-interface {v0, v1}, Lsui;->cancel(Z)Z

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lgzs;->k:Lsui;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lgzs;->f()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgzs;->b:Lmtj;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

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

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

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
    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-interface {p0}, Lmtj;->b()V

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgzs;->c:Lrss;

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

    :goto_d
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x9

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    invoke-interface {v0}, Lmtj;->b()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Lmtj;->a()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lgzs;->c:Lrss;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Lmtj;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lgzs;->b:Lmtj;

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
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgzs;->b:Lmtj;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-interface {v0}, Lmtj;->o()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgzs;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lmtj;->o()V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

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

    nop

    nop
.end method

.method public final g(Lgzs;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgzs;->h:Lrss;

    nop

    goto/32 :goto_1

    nop

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
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final h()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgzs;->a:Landroid/content/Context;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lnzk;->N(Landroid/content/Context;)I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
