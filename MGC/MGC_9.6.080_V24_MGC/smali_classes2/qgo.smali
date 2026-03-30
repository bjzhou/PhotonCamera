.class public final Lqgo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqfs;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Lqft;

.field private c:Lqgk;

.field private d:Lqgk;


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lqgo;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lqgo;->f()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    new-instance v0, Lqgk;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, p2, p3}, Lqgk;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lqgo;)V

    iget-object p1, p0, Lqgo;->d:Lqgk;

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    iput-object v0, p1, Lqgk;->a:Ljava/lang/Object;

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    :cond_0
    iput-object v0, p0, Lqgo;->c:Lqgk;

    nop

    nop

    :goto_2
    iput-object v0, p0, Lqgo;->d:Lqgk;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string p2, "Should not be delaying execution when done"

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

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

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lqgo;->b:Lqft;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lqgo;->c:Lqgk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object v0, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lqgo;->d:Lqgk;

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_4

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

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    throw v0

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
    const v1, 0x1f

    nop

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x18

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

    :goto_b
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lqgk;->a()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lqgo;->c:Lqgk;

    nop

    nop

    const/4 v1, 0x0

    nop

    iput-object v1, p0, Lqgo;->c:Lqgk;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lqgo;->d:Lqgk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    :goto_11
    check-cast v0, Lqgk;

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

    :goto_12
    iget-object v0, v0, Lqgk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public static l(Ljava/lang/Object;Lqfw;Ljava/util/concurrent/Executor;Lqgo;)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p0, p2}, Lqfw;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lqfs;

    move-result-object p0

    nop

    nop

    nop

    nop

    sget-object p1, Lstd;->a:Lstd;

    nop

    new-instance p2, Lqgm;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p3}, Lqgm;-><init>(Lqgo;)V

    new-instance v0, Lqgl;

    nop

    invoke-direct {v0, p3}, Lqgl;-><init>(Lqgo;)V

    invoke-interface {p0, p1, p2, v0}, Lqfs;->c(Ljava/util/concurrent/Executor;Lqeu;Lqeu;)Lqfs;

    move-result-object p0

    nop

    sget-object p1, Lqff;->a:Lqff;

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lqfs;->g(Lqff;)V
    :try_end_0
    .catch Lqft; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p3, p0}, Lqgo;->j(Lqft;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lqft;->a(Ljava/lang/Throwable;)Lqft;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
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

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3, p0}, Lqgo;->j(Lqft;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static o(Lqft;Lqeu;Ljava/util/concurrent/Executor;Lqgo;)V
    .locals 2

    goto/32 :goto_3

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

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lqft;->a(Ljava/lang/Throwable;)Lqft;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

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

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    :try_start_0
    new-instance v0, Lqgi;

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-direct {v0, p0, p1, p3, v1}, Lqgi;-><init>(Ljava/lang/Object;Lqeu;Lqgo;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

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

    :goto_a
    invoke-virtual {p3, p0}, Lqgo;->j(Lqft;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private static p(Ljava/lang/Object;Lqeu;Ljava/util/concurrent/Executor;Lqgo;)V
    .locals 2

    goto/32 :goto_2

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
    move-exception p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3, p0}, Lqgo;->j(Lqft;)V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v0, 0xc

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

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    :try_start_0
    new-instance v0, Lqgi;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-direct {v0, p0, p1, p3, v1}, Lqgi;-><init>(Ljava/lang/Object;Lqeu;Lqgo;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Lqft;->a(Ljava/lang/Throwable;)Lqft;

    move-result-object p0

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method private static q(Lqft;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lqft;->a(Ljava/lang/Throwable;)Lqft;

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

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    :try_start_0
    new-instance v6, Lqgj;

    nop

    nop

    nop

    nop

    nop

    move-object v0, v6

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    move-object v3, p2

    nop

    nop

    move-object v4, p3

    nop

    move-object v5, p4

    nop

    nop

    nop

    invoke-direct/range {v0 .. v5}, Lqgj;-><init>(Ljava/lang/Object;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V

    invoke-interface {p2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    invoke-virtual {p3, p0}, Lqgo;->j(Lqft;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1f

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method private static r(Ljava/lang/Object;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    :try_start_0
    new-instance v6, Lqgj;

    nop

    move-object v0, v6

    nop

    move-object v1, p0

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    move-object v3, p2

    nop

    nop

    nop

    nop

    nop

    move-object v4, p3

    nop

    nop

    nop

    move-object v5, p4

    nop

    nop

    invoke-direct/range {v0 .. v5}, Lqgj;-><init>(Ljava/lang/Object;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V

    invoke-interface {p2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-virtual {p3, p0}, Lqgo;->j(Lqft;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Lqft;->a(Ljava/lang/Throwable;)Lqft;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lqeu;)Lqfs;
    .locals 3

    goto/32 :goto_16

    nop

    nop

    :goto_0
    iget-object v1, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2, p2, p1, v0}, Lqgo;->p(Ljava/lang/Object;Lqeu;Ljava/util/concurrent/Executor;Lqgo;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, p2, p1, v0}, Lqgo;->p(Ljava/lang/Object;Lqeu;Ljava/util/concurrent/Executor;Lqgo;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lqgo;->j(Lqft;)V

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Lqgo;->j(Lqft;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lqgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_d
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lqgo;->b:Lqft;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    const v1, 0xe

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

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Lqgo;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    :goto_1a
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v2, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    iget-object v1, p0, Lqgo;->b:Lqft;

    nop

    if-nez v1, :cond_4

    nop

    nop

    new-instance v1, Lqip;

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p2, v0, v2}, Lqip;-><init>(Lqgo;Lqeu;Lqgo;I)V

    invoke-direct {p0, p1, v1, v0}, Lqgo;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lqgo;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/16 :goto_4

    nop

    nop

    :cond_4
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/util/concurrent/Executor;Lqfw;)Lqfs;
    .locals 8

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, p2, p1, v6, v5}, Lqgo;->r(Ljava/lang/Object;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_1c

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

    nop

    :goto_3
    return-object v6

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lqgo;->a:Ljava/lang/Object;

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
    invoke-virtual {v6, v0}, Lqgo;->j(Lqft;)V

    goto/32 :goto_e

    nop

    nop

    :goto_8
    return-object v6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Lqgo;->b:Lqft;

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    new-instance v7, Lqgg;

    nop

    nop

    nop

    nop

    nop

    move-object v0, v7

    nop

    nop

    nop

    move-object v1, p0

    nop

    move-object v2, p2

    nop

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    move-object v4, v6

    nop

    nop

    nop

    invoke-direct/range {v0 .. v5}, Lqgg;-><init>(Lqgo;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V

    invoke-direct {p0, p1, v7, v6}, Lqgo;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lqgo;)V

    monitor-exit p0

    nop

    nop

    goto :goto_13

    nop

    :cond_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v5, Lqgp;->a:Lqoe;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v6, Lqgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v6, v0}, Lqgo;->j(Lqft;)V

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, p2, p1, v6, v5}, Lqgo;->r(Ljava/lang/Object;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V

    goto/32 :goto_8

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    :goto_17
    const v0, 0xf

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

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_1b
    goto :goto_13

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lqgo;->b:Lqft;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v6}, Lqgo;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final c(Ljava/util/concurrent/Executor;Lqeu;Lqeu;)Lqfs;
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, p2, p1, v0}, Lqgo;->p(Ljava/lang/Object;Lqeu;Ljava/util/concurrent/Executor;Lqgo;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, p3, p1, v0}, Lqgo;->o(Lqft;Lqeu;Ljava/util/concurrent/Executor;Lqgo;)V

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_9
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, p3, p1, v0}, Lqgo;->o(Lqft;Lqeu;Ljava/util/concurrent/Executor;Lqgo;)V

    goto/32 :goto_6

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

    :goto_c
    return-object v0

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    :try_start_1
    iget-object v2, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lqgo;->b:Lqft;

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    new-instance v1, Lqgf;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p2, v0, p3}, Lqgf;-><init>(Lqgo;Lqeu;Lqgo;Lqeu;)V

    invoke-direct {p0, p1, v1, v0}, Lqgo;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lqgo;)V

    monitor-exit p0

    nop

    goto/16 :goto_3

    nop

    :cond_2
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, p2, p1, v0}, Lqgo;->p(Ljava/lang/Object;Lqeu;Ljava/util/concurrent/Executor;Lqgo;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Lqgo;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    new-instance v0, Lqgo;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_3

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lqgo;->a:Ljava/lang/Object;

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

    :goto_1b
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Lsui;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lqgn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1c

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0, v1}, Lqgn;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :goto_3
    :try_start_0
    invoke-virtual {p0}, Lqgo;->f()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-object v0

    nop

    nop

    :cond_2
    iget-object v0, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

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

    nop

    :goto_4
    iget-object v0, p0, Lqgo;->a:Ljava/lang/Object;

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

    :goto_5
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    return-object v0

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop
.end method

.method public final f()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lqgo;->a:Ljava/lang/Object;

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

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final g(Lqff;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lrtq;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    :try_start_0
    iget-object v1, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    iget-object v0, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lqfx;

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1, v2}, Lqfx;-><init>(Lqgo;Lqff;I)V

    invoke-virtual {p0, v0, v1}, Lqgo;->k(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xf

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

    :goto_c
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

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

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Lrtq;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

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

    :goto_11
    iget-object v0, p0, Lqgo;->b:Lqft;

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

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    :goto_16
    goto/32 :goto_e

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop
.end method

.method public final h(Ljava/util/concurrent/Executor;Lqar;)Lqfs;
    .locals 8

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    nop

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

    :goto_1
    invoke-direct {v2, p0, p2}, Lqgd;-><init>(Lqgo;Lqar;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_14

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_14

    nop

    nop

    :goto_6
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v6, p1, p2, v5}, Lqgo;->q(Lqft;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_14

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v6, p0, p2}, Lqge;-><init>(Lqgo;Lqar;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    :goto_11
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p2}, Lqgo;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v6, p1, p2, v5}, Lqgo;->q(Lqft;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p2, Lqgo;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    monitor-enter p0

    nop

    :try_start_1
    iget-object v1, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    iget-object v0, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    new-instance v7, Lqgh;

    nop

    nop

    nop

    move-object v0, v7

    nop

    nop

    move-object v1, p0

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    move-object v4, p2

    nop

    invoke-direct/range {v0 .. v6}, Lqgh;-><init>(Lqgo;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;Lqfw;)V

    invoke-direct {p0, p1, v7, p2}, Lqgo;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lqgo;)V

    monitor-exit p0

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_18
    iget-object v0, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    new-instance v2, Lqgd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    const v1, 0x2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1, v2, p1, p2, v5}, Lqgo;->r(Ljava/lang/Object;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    invoke-static {v0, v2, p1, p2, v5}, Lqgo;->r(Ljava/lang/Object;Lqfw;Ljava/util/concurrent/Executor;Lqgo;Lqoe;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v5, Lqgp;->a:Lqoe;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v6, Lqge;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_f

    nop
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lqgo;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lqgo;->f()Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lqgo;->f()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    iput-object p1, p0, Lqgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Lqft;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lqgo;->f()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    return-void

    nop

    nop

    :cond_1
    iput-object p1, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lqgo;->b1051a9d8893542362ad09051775f8f6m()V

    goto/32 :goto_5

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_1

    nop

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

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lqgo;->f()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop
.end method

.method public final k(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lqgo;->f()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    new-instance v0, Lqgk;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, p2}, Lqgk;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lqgo;->d:Lqgk;

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    iput-object v0, p1, Lqgk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iput-object v0, p0, Lqgo;->c:Lqgk;

    nop

    nop

    :goto_2
    iput-object v0, p0, Lqgo;->d:Lqgk;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    const-string p2, "Should not be delaying execution when done"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
