.class public final Lexg;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Leqg;

.field final synthetic e:Levq;

.field final synthetic f:Lfdn;

.field private synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Leqg;Lfdn;Levq;Ltzy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p4}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object p1, p0, Lexg;->d:Leqg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lexg;->e:Levq;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lexg;->f:Lfdn;

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_4

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
    invoke-virtual {p0, p1}, Lexg;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lexg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p2, Ltzy;

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

    :goto_4
    check-cast p1, Lufs;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    const v1, 0x17

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lufs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object p1, v3

    nop

    nop

    nop

    goto/32 :goto_16

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

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    :goto_8
    if-ne v3, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_a
    invoke-static {p1, v4, v5, v11, v3}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object p1

    nop

    nop

    nop

    nop

    :try_start_0
    iput-object v1, p0, Lexg;->g:Ljava/lang/Object;

    nop

    nop

    nop

    iput-object v10, p0, Lexg;->a:Ljava/lang/Object;

    nop

    nop

    iput-object p1, p0, Lexg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    iput v3, p0, Lexg;->c:I

    nop
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v10}, Lsui;->isDone()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    invoke-static {v10}, La;->at(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

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

    :goto_c
    iget-object v3, p0, Lexg;->g:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v12, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_11
    move-object v7, v10

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

    :goto_12
    goto :goto_13

    nop

    nop

    nop

    :cond_2
    :try_start_3
    new-instance v4, Lufa;

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lrkm;->x(Ltzy;)Ltzy;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-direct {v4, v5, v3}, Lufa;-><init>(Ltzy;I)V

    invoke-virtual {v4}, Lufa;->y()V

    new-instance v5, Lerm;

    nop

    nop

    nop

    invoke-direct {v5, v10, v4, v3}, Lerm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v3, Ldqt;->a:Ldqt;

    nop

    invoke-interface {v10, v5, v3}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v3, Lnb;

    nop

    nop

    nop

    const/16 v5, 0xb

    nop

    nop

    nop

    nop

    invoke-direct {v3, v10, v5}, Lnb;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v3}, Luez;->d(Lubk;)V

    invoke-virtual {v4}, Lufa;->i()Ljava/lang/Object;

    move-result-object v3

    nop

    sget-object v4, Luag;->a:Luag;

    nop

    nop
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Lexg;->d:Leqg;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lexg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    move-object v3, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    :goto_18
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct/range {v3 .. v9}, Lenv;-><init>(Lfdn;Levq;Ljava/util/concurrent/atomic/AtomicInteger;Lsui;Ltzy;I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1b
    invoke-static {v0}, Luch;->I(Lugy;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Luch;->I(Lugy;)V

    goto/32 :goto_26

    nop

    nop

    :goto_1d
    goto/16 :goto_25

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lexg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v4, p0, Lexg;->f:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_20
    move-object v6, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_21
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Lexg;->g:Ljava/lang/Object;

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

    :goto_24
    move-object v1, v10

    nop

    nop

    nop

    :goto_25
    :try_start_4
    check-cast p1, Landroidx/wear/ambient/WearableControllerProvider;

    nop
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_26
    return-object p1

    nop

    :goto_27
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_2c

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_29
    const/4 v8, 0x0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v3}, Leqg;->a()Lsui;

    move-result-object v10

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    move-object p1, v12

    nop

    nop

    nop

    nop

    :goto_2c
    :try_start_5
    sget-object v1, Lexm;->a:Ljava/lang/String;

    nop

    nop

    nop

    iget-object p0, p0, Lexg;->d:Leqg;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    throw p1

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_2e

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    move-object v3, v1

    nop

    nop

    move-object v1, v10

    nop

    move-object v12, v0

    nop

    nop

    nop

    nop

    move-object v0, p1

    nop

    nop

    nop

    move-object p1, v12

    nop

    nop

    nop

    :goto_2d
    sget-object v4, Lexm;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lexg;->d:Leqg;

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lsui;->isCancelled()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    if-eq p0, v2, :cond_3

    nop

    nop

    nop

    new-instance p0, Lexe;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    invoke-direct {p0, p1}, Lexe;-><init>(I)V

    throw p0

    nop

    :cond_3
    throw p1

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v2, -0x100

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v5, p0, Lexg;->e:Levq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v11, Lenv;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_2d

    nop

    :goto_33
    goto/32 :goto_18

    nop

    nop

    :goto_34
    iget v1, p0, Lexg;->c:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v9, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_36
    return-object v0

    nop

    nop

    :catch_2
    move-exception v0

    nop

    :try_start_6
    invoke-static {v0}, La;->ap(Ljava/util/concurrent/ExecutionException;)Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_37
    throw p0

    nop

    nop

    :goto_38
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lexg;->e:Levq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    goto/32 :goto_f

    nop

    :goto_3
    iput-object p1, v0, Lexg;->g:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1, v2, p0, p2}, Lexg;-><init>(Leqg;Lfdn;Levq;Ltzy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lexg;->f:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
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

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    new-instance v0, Lexg;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lexg;->d:Leqg;

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

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
