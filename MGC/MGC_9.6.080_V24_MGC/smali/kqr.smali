.class public final Lkqr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksk;


# instance fields
.field public final synthetic a:Lkqs;

.field private final b:Lfxj;

.field private final c:Llxa;

.field private final d:Llqx;

.field private e:I

.field private f:Lpcg;

.field private final g:Llqy;

.field private final h:Lkqq;


# direct methods
.method public constructor <init>(Lkqs;Llko;Lksk;Lfxj;Llqy;)V
    .locals 8

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p3, 0x9

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    iget-object p0, p5, Llqx;->f:Ljrj;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_24

    nop

    nop

    :goto_6
    iput v0, p0, Lkqr;->e:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lkqr;->g:Llqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v1 .. v6}, Llra;-><init>(Llqo;Ljava/util/concurrent/Executor;Llqy;Ljrj;Lpdf;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_a
    sget-object p3, Lstd;->a:Lstd;

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

    :goto_b
    iput-object p1, p0, Lkqr;->a:Lkqs;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1}, Ljrj;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    move-object v2, p3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    iget-object v6, p1, Lkqs;->b:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    move-object v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    iput-object p5, p0, Lkqr;->d:Llqx;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p5, Llqr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    throw p1

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-wide p3, p0, Ljrj;->d:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    move-object v4, p5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p4

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

    :goto_18
    goto/32 :goto_14

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    :goto_1a
    iput-object p2, p0, Lkqr;->c:Llxa;

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

    :goto_1b
    invoke-direct {p0, p5, p2, p3}, Litv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p5, Llqx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1d
    new-instance v7, Llra;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p2}, Llxa;->ag()Lmjn;

    move-result-object p0

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

    :goto_21
    invoke-direct {p4, p0, p3}, Lkqq;-><init>(Lkqr;Lksk;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_22
    iget-object p2, p2, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_23
    invoke-static {p1, p0, p3}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    const v0, 0xc

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget p1, p5, Llqr;->d:I

    nop

    nop

    nop

    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    if-ne p1, p3, :cond_1

    nop

    nop

    move v0, p3

    nop

    nop

    nop

    :cond_1
    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object p1, p5, Llqr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    iput p1, p5, Llqr;->d:I

    nop

    nop

    nop

    nop

    iget-object p1, p5, Llqr;->b:Lsuu;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

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

    :goto_29
    iget-object v3, p1, Lkqs;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2a
    move-object v5, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2b
    new-instance p1, Ljrj;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Litv;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p5, p3, v7, p4, p1}, Llqx;-><init>(Llqo;Llra;Lrss;Ljrj;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2f
    new-instance p4, Lkqq;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_31
    iget-object p3, p1, Lkqs;->c:Llqo;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-wide p1, p0, Lmjn;->b:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_33
    iput-object p4, p0, Lkqr;->h:Lkqq;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_34
    iput-object p4, p0, Lkqr;->b:Lfxj;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object p5, v7, Llra;->b:Llqx;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;Lsui;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkqr;->c:Llxa;

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

    :goto_1
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lkqr;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object p1, v0, Llqv;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-direct {v0, p1}, Llqv;-><init>(Lprw;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p2, p0, Lkqr;->d:Llqx;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Llqv;->a()Llqw;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, v0, Llqv;->c:Lpcg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lkqr;->f:Lpcg;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lpcg;->a:Lpcg;

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lkqr;->b:Lfxj;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lfxj;->a()Loyd;

    move-result-object v0

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

    nop

    :goto_f
    iget-object p1, p1, Lkqs;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Llqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lkqr;->a:Lkqs;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lkqr;->f:Lpcg;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Lpcg;->b(I)Lpcg;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-virtual {p2, p1, p0}, Llqr;->b(Llqw;Llxa;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    iput-object p2, v0, Llqv;->d:Lsui;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Lkqr;->e:I

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
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

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
    iget v0, p0, Lkqr;->e:I

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

    nop

    :goto_4
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lkqr;->d:Llqx;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "LuckyShotReprocessingImageSaver closed without processing any Images."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

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

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "ERROR"

    nop

    nop

    goto/32 :goto_5

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

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_11
    invoke-virtual {v0}, Llqr;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
