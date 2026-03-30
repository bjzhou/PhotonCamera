.class public abstract Lugo;
.super Lugj;
.source "PG"

# interfaces
.implements Lufz;


# instance fields
.field private final a:Luen;

.field public final c:Lueq;

.field public final d:Lueq;


# direct methods
.method private final 7dd154808b1c676d3d63f3a63e9edabfm()V
    .locals 9

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit v0

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    :goto_5
    :try_start_0
    check-cast v3, Lugm;

    nop

    iget-wide v5, v3, Lugm;->b:J

    nop

    nop

    nop

    nop

    sub-long v5, v1, v5

    nop

    nop

    nop

    const-wide/16 v7, 0x0

    nop

    nop

    nop

    cmp-long v5, v5, v7

    nop

    nop

    nop

    nop

    nop

    if-ltz v5, :cond_5

    nop

    nop

    invoke-direct {p0, v3}, Lugo;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/Runnable;)Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_5

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-virtual {v0, v3}, Luny;->d(I)Lunz;

    move-result-object v3

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    if-eqz v4, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Luny;->g()Z

    move-result v1

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

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v3, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v4, Lugm;

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

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Luny;->b()Lunz;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lugo;->d:Lueq;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-exit v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    goto :goto_1a

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    move-object v4, v3

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lugn;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method private final 92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/Runnable;)Z
    .locals 5

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v3, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v4, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_3
    if-eq v0, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v0, v2}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_21

    nop

    :goto_8
    goto/32 :goto_23

    nop

    nop

    :goto_9
    return v1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v3, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    new-instance v2, Luno;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2, p1}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, v3, v1}, Luno;-><init>(IZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, p1}, Luno;->a(Ljava/lang/Object;)I

    goto/32 :goto_f

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3, p1}, Luno;->a(Ljava/lang/Object;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lugo;->c:Lueq;

    nop

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

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    :goto_19
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v3}, Luno;->a(Ljava/lang/Object;)I

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x20

    nop

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

    :goto_1d
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Luno;->c()Luno;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lugo;->x()Z

    move-result v1

    nop

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

    nop

    :goto_23
    return v1

    nop

    :goto_24
    goto/32 :goto_2b

    nop

    nop

    :goto_25
    check-cast v3, Luno;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return v2

    nop

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2a
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v3, Lugp;->b:Lunv;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v3, v0, v2}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2d
    instance-of v3, v0, Luno;

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

    :goto_2e
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_30
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_32
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_33
    const v0, 0x14

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_35
    const/4 v2, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Lugo;->d:Lueq;

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

    :goto_1
    invoke-direct {p0}, Lugj;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    new-instance v1, Luen;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lueq;

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

    nop

    :goto_4
    sget-object v0, Luer;->a:Luer;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v2, v0}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Luer;->a:Luer;

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

    :goto_8
    invoke-direct {v1, v2, v0}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lueq;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    iput-object v1, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    iput-object v1, p0, Lugo;->a:Luen;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    invoke-direct {v1, v2, v0}, Luen;-><init>(ZLucu;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Luad;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p2}, Lugo;->i(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(JLuez;)V
    .locals 3

    goto/32 :goto_10

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

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    :goto_4
    new-instance v2, Lugk;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v1, 0x1d

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
    invoke-static {p1, p2}, Lugp;->a(J)J

    move-result-wide p1

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

    :goto_8
    invoke-direct {v2, p0, p1, p2, p3}, Lugk;-><init>(Lugo;JLuez;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    cmp-long v0, p1, v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_b
    if-ltz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_c
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-long/2addr p1, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0, v1, v2}, Lugo;->w(JLugm;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

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

    nop

    :goto_10
    const v0, 0x1f

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
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p3, v2}, Lucg;->p(Luez;Lugg;)V

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public h(JLjava/lang/Runnable;Luad;)Lugg;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, p2, p3, p4}, Lufz;->h(JLjava/lang/Runnable;Luad;)Lugg;

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

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lufx;->a:Lufz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public i(Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lugo;->92ebcae27b5395a18af07a7e07265cf7m(Ljava/lang/Runnable;)Z

    move-result v0

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lugj;->s()V

    goto/32 :goto_1

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

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lugo;->i(Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lugo;->7dd154808b1c676d3d63f3a63e9edabfm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lufw;->a:Lufw;

    nop

    nop

    goto/32 :goto_5

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

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public k()V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3, v4}, Luno;->a(Ljava/lang/Object;)I

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    invoke-virtual {p0, v2, v3, v4}, Lugj;->j(JLugm;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_5
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6
    iget-object v0, p0, Lugo;->a:Luen;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    iput v2, v0, Luen;->a:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    goto/16 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Luny;->a()I

    move-result v4

    nop

    if-lez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    invoke-virtual {v0, v4}, Luny;->d(I)Lunz;

    move-result-object v4

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_42

    nop

    :goto_d
    goto/32 :goto_2e

    nop

    nop

    :goto_e
    iget-object v0, p0, Lugo;->d:Lueq;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long v0, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_35

    nop

    nop

    :goto_11
    goto/32 :goto_36

    nop

    nop

    :goto_12
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Lugn;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-boolean v0, Lufu;->a:Z

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v0, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_35

    nop

    :goto_18
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_1a
    invoke-virtual {v4, v0, v3}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

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

    :goto_1c
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    :goto_1e
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v4, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_20
    move-object v4, v1

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_12

    nop

    nop

    :goto_22
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_23
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x1

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

    :goto_25
    const v1, 0xa

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_26
    if-nez v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v0, Luhu;->a:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v4, v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

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

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Luno;->d()Z

    goto/32 :goto_10

    nop

    nop

    :goto_2d
    check-cast v4, Lugm;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v0, Luhu;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_30
    check-cast v0, Luno;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    throw p0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v3, v4, v2}, Luno;-><init>(IZ)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_6

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

    :cond_6
    :goto_35
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v3, Lugp;->b:Lunv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lugj;->l()J

    move-result-wide v2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-gtz v0, :cond_7

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    :goto_39
    invoke-virtual {v0, v1, v3}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3a
    check-cast v4, Ljava/lang/Runnable;

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

    :goto_3b
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v3, Luno;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v3, Lugp;->b:Lunv;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto :goto_35

    nop

    nop

    :goto_3f
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    instance-of v3, v0, Luno;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    :goto_42
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_32

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_46
    if-eqz v4, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_9
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l()J
    .locals 7

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lugp;->b:Lunv;

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

    :goto_1
    if-eq v3, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v4, v1, v2}, Lucd;->k(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3
    iget-wide v3, p0, Lugm;->b:J

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    return-wide v1

    nop

    nop

    :goto_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lugo;->7dd154808b1c676d3d63f3a63e9edabfm()V

    goto/32 :goto_e

    nop

    nop

    :goto_7
    move-wide v1, v3

    nop

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
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v5, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

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

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_63

    nop

    nop

    :goto_10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_11
    move-object v4, v5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lugo;->d:Lueq;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    check-cast p0, Lugn;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_4
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_66

    nop

    :goto_18
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_5
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v4, :cond_6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_64

    nop

    nop

    :goto_1c
    move-wide v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_66

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v4}, Luno;->b()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lugj;->r()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lugj;->b:Ltyu;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-wide v1

    nop

    :goto_23
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eq v0, p0, :cond_8

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v5, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_27
    iget-object v0, p0, Lugo;->c:Lueq;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lueq;->a:Ljava/lang/Object;

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

    :goto_2a
    return-wide v1

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2c
    check-cast v4, Luno;

    nop

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

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_2f
    check-cast v4, Ljava/lang/Runnable;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_30
    move-object v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_32
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_9
    goto/32 :goto_9

    nop

    :goto_33
    invoke-virtual {v5, v3, v4}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/32 :goto_51

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Luny;->c()Lunz;

    move-result-object p0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v5, Lugp;->b:Lunv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_8

    nop

    nop

    :goto_37
    goto/32 :goto_0

    nop

    nop

    :goto_38
    sget-object v6, Luno;->a:Lunv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_39
    goto/16 :goto_66

    nop

    :goto_3a
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_8

    nop

    :goto_3c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast p0, Lugm;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    instance-of v5, v3, Luno;

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_40
    move-wide v5, v1

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_42
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz p0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    instance-of v5, v0, Luno;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_49
    check-cast v0, Luno;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto :goto_54

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto :goto_41

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0}, Ltyu;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4f
    goto :goto_57

    nop

    :goto_50
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_53
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v5, v3, v4}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

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

    :goto_56
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_c
    :goto_57
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_58
    const-wide v3, 0x7fffffffffffffffL

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v5, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5a
    return-wide v1

    nop

    :goto_5b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_e
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-eqz v3, :cond_f

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0}, Luno;->e()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5f
    sub-long/2addr v3, v5

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_60
    invoke-virtual {v4}, Luno;->c()Luno;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_61
    cmp-long v0, v5, v1

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

    :goto_62
    if-ne v5, v6, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_63
    iget-object v3, v0, Lueq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move-object v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v4, Ljava/lang/Runnable;

    nop

    :goto_66
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final v(JLjava/lang/Runnable;)Lugg;
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long v0, p1, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

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

    :goto_3
    invoke-static {p1, p2}, Lugp;->a(J)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/16 :goto_13

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
    invoke-virtual {p0, v0, v1, v2}, Lugo;->w(JLugm;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, p1, p2, p3}, Lugl;-><init>(JLjava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_9
    new-instance v2, Lugl;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

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

    :goto_b
    add-long/2addr p1, v0

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

    :goto_c
    return-object v2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

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
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v2, Luhm;->a:Luhm;

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    if-ltz v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_16
    const v0, 0x11

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
.end method

.method public final w(JLugm;)V
    .locals 9

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

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

    :goto_1
    if-nez p1, :cond_0

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, p1, p2}, Lugn;-><init>(J)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_1b

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lugo;->d:Lueq;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    monitor-exit p3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    :try_start_0
    iput-wide p1, v0, Lugn;->a:J

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :goto_d
    iget-wide v5, v2, Lugm;->b:J

    nop

    sub-long v7, v5, p1

    nop

    nop

    nop

    cmp-long v2, v7, v3

    nop

    nop

    nop

    if-ltz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    :cond_3
    move-wide p1, v5

    nop

    nop

    :goto_e
    iget-wide v5, v0, Lugn;->a:J

    nop

    nop

    nop

    nop

    sub-long v7, p1, v5

    nop

    cmp-long v2, v7, v3

    nop

    nop

    nop

    if-lez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    iput-wide p1, v0, Lugn;->a:J

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_4
    move-wide p1, v5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v5, p3, Lugm;->b:J

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v5, p1

    nop

    nop

    cmp-long v2, v5, v3

    nop

    nop

    if-gez v2, :cond_5

    nop

    nop

    nop

    nop

    iput-wide p1, p3, Lugm;->b:J

    nop

    nop

    nop

    :cond_5
    sget-boolean p1, Lufu;->a:Z

    nop

    nop

    nop

    invoke-interface {p3, v0}, Lunz;->d(Luny;)V

    iget-object p1, v0, Luny;->b:[Lunz;

    nop

    nop

    nop

    nop

    if-nez p1, :cond_6

    nop

    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    new-array p1, p1, [Lunz;

    nop

    iput-object p1, v0, Luny;->b:[Lunz;

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v0}, Luny;->a()I

    move-result p2

    nop

    nop

    nop

    nop

    array-length v2, p1

    nop

    nop

    if-lt p2, v2, :cond_7

    nop

    nop

    nop

    invoke-virtual {v0}, Luny;->a()I

    move-result p2

    nop

    nop

    add-int/2addr p2, p2

    nop

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, [Lunz;

    nop

    nop

    nop

    iput-object p1, v0, Luny;->b:[Lunz;

    nop

    nop

    nop

    nop

    :cond_7
    :goto_10
    invoke-virtual {v0}, Luny;->a()I

    move-result p2

    nop

    add-int/lit8 v2, p2, 0x1

    nop

    nop

    invoke-virtual {v0, v2}, Luny;->e(I)V

    aput-object p3, p1, p2

    nop

    invoke-interface {p3, p2}, Lunz;->e(I)V

    invoke-virtual {v0, p2}, Luny;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lugo;->d:Lueq;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v1, p3, :cond_8

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1, v2}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

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

    :goto_17
    invoke-virtual {p0}, Lugo;->x()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Luny;->c()Lunz;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    monitor-exit p3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    throw p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lugo;->d:Lueq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p1, Lugn;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Lugn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_24
    if-nez v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_b
    :try_start_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p1, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_c
    goto/32 :goto_29

    nop

    :goto_27
    check-cast v1, Lugm;

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3

    nop

    nop

    :goto_2a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    monitor-enter p3

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v2, p3, Lugm;->_heap:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v3, Lugp;->a:Lunv;

    nop

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Luny;->b()Lunz;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lugm;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lugo;->x()Z

    move-result v3

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lugj;->s()V

    :goto_2d
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2e
    new-instance v2, Lugn;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v0, Lugn;

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2b

    nop

    nop

    :goto_31
    monitor-exit p3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_32
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_34
    iget-object p1, p0, Lugo;->d:Lueq;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_35
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1, p2, p3}, Lugj;->j(JLugm;)V

    goto/32 :goto_37

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1e

    nop

    nop

    nop
.end method

.method public final x()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0}, Luen;->b()Z

    move-result p0

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

    :goto_2
    iget-object p0, p0, Lugo;->a:Luen;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method protected final y()Z
    .locals 3

    goto/32 :goto_26

    nop

    nop

    :goto_0
    move v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1a

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_25

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Luno;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lugo;->c:Lueq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Lugp;->b:Lunv;

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

    nop

    :goto_9
    return v0

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Lueq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Luno;->e()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_11
    instance-of v2, p0, Luno;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lugj;->q()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_3
    goto/32 :goto_29

    nop

    :goto_17
    return v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_4

    nop

    goto/32 :goto_2

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lueq;->a:Ljava/lang/Object;

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

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Lugn;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_25

    nop

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lugo;->d:Lueq;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    if-ne p0, v2, :cond_6

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

    :cond_6
    :goto_25
    goto/32 :goto_b

    nop

    nop

    :goto_26
    const v0, 0x17

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Luny;->g()Z

    move-result v0

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

    :goto_29
    goto/32 :goto_a

    nop

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop
.end method
