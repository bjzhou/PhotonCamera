.class public final Lpvq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lpvq;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpvq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    iput-object p0, v1, Lutm;->a:Ljava/lang/Thread;

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

    nop

    nop

    :goto_4
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p1, v0}, Lowx;-><init>(Ljava/lang/Runnable;Lsuu;)V

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    check-cast p0, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x7

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

    :goto_b
    new-instance v1, Lutm;

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

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_e
    iget-object p0, p0, Lpvq;->b:Ljava/lang/Object;

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

    nop

    nop

    :goto_f
    iget v0, p0, Lpvq;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lowu;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v4, 0x21f

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_13
    const/16 v4, 0x220

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_16

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_16
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x0

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

    :goto_18
    iget-object p0, v1, Lutm;->b:Lusk;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v0}, Lsuu;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput-object v1, v2, v4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_20
    new-instance v0, Lsuu;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    throw p1

    nop

    :goto_22
    goto/32 :goto_32

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v1, Lowx;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lpvq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2a
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    :goto_2e
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2f
    if-lez v0, :cond_3

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    :goto_30
    invoke-direct {v1, p1, v0}, Lutm;-><init>(Ljava/lang/Runnable;Ljava/lang/Thread;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_31
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lpvq;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_37
    const/4 v1, 0x1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_39
    new-instance p1, Ljava/lang/RuntimeException;

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

    :goto_3a
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_5

    nop

    nop
.end method
