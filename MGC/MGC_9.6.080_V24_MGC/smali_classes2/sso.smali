.class public abstract Lsso;
.super Lsto;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lsui;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lsui;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lsso;->a:Lsui;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lsto;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lsso;->b:Ljava/lang/Object;

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
.end method

.method public static i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1}, Lssn;-><init>(Lsui;Lrsk;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-interface {p0, v0, p1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lssn;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {p2, v0}, Lsgj;->J(Ljava/util/concurrent/Executor;Lssk;)Ljava/util/concurrent/Executor;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-interface {p0, v0, p1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    new-instance v0, Lssm;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2, v0}, Lsgj;->J(Ljava/util/concurrent/Executor;Lssk;)Ljava/util/concurrent/Executor;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1}, Lssm;-><init>(Lsui;Lssx;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final d()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lssk;->o(Ljava/util/concurrent/Future;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object v0, p0, Lsso;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

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

    nop

    :goto_4
    iput-object v0, p0, Lsso;->a:Lsui;

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

    :goto_5
    iget-object v0, p0, Lsso;->a:Lsui;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected final dA()Ljava/lang/String;
    .locals 4

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "function=["

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    const-string v3, "], "

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lsso;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v2, v3}, La;->bk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    const-string p0, "]"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_13
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lsso;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    const-string v2, "inputFuture=["

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_1a
    invoke-super {p0}, Lsto;->dA()Ljava/lang/String;

    move-result-object p0

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

    :goto_1b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_1f

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    goto :goto_26

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v0, ""

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method public abstract g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract h(Ljava/lang/Object;)V
.end method

.method public final run()V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    move v5, v3

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

    :goto_2
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    move v5, v4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lsso;->h(Ljava/lang/Object;)V

    goto/32 :goto_6

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

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    invoke-static {v0}, Lsgj;->G(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lssk;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x1

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-nez v2, :cond_0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v2, p0, Lsso;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_d
    goto :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Lssk;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    goto/16 :goto_21

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    or-int/2addr v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    :try_start_1
    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p0, v1, v0}, Lsso;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Lsui;->isCancelled()Z

    move-result v3

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

    :goto_20
    move v3, v4

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_0

    nop

    nop

    :goto_22
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0}, Lssk;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lssk;->isCancelled()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_27
    iput-object v2, p0, Lsso;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v2, p0, Lsso;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0}, Lssk;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v0}, Lssk;->f(Lsui;)Z

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    :goto_2c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    :goto_2e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v4}, Lssk;->cancel(Z)Z

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lsso;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_31
    iput-object v2, p0, Lsso;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_32
    throw v0

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_3
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lsso;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop
.end method
