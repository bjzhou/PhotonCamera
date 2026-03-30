.class public final Lqhg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
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

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-wide v0, p0, Lqhg;->a:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
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

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
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

    :goto_8
    new-instance p0, Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-wide p1, p0, Lqhg;->a:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public constructor <init>(Lhoh;)V
    .locals 4

    goto/32 :goto_1

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-gtz p1, :cond_0

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
    goto/32 :goto_a

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    mul-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    int-to-long v0, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

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

    :goto_c
    const-wide/16 v0, 0x1a4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    :goto_11
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lhmq;->o:Lhmo;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-wide v0, p0, Lqhg;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    const-wide/32 v2, 0xf4240

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v0

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

    :goto_2
    iput-wide v0, p0, Lqhg;->a:J

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v1, 0x12

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    const v0, 0xb

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
.end method

.method public static b()Lqhg;
    .locals 15

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    const-wide v5, 0x7fffffffffffffffL

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_8
    goto :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-wide v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    div-long/2addr v7, v3

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

    :goto_d
    new-instance v0, Lqhg;

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

    :goto_e
    invoke-direct {v0, v3, v4}, Lqhg;-><init>(J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    goto :goto_1c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

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

    :goto_13
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    const v0, 0xa

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    move-wide v5, v13

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    move v1, v0

    nop

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-long/2addr v7, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    :goto_20
    cmp-long v1, v13, v5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v1, v1, 0x1

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

    :goto_22
    sub-long v13, v11, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_5

    nop

    nop

    :goto_24
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

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

    :goto_26
    const-wide/16 v3, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_27
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ltz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2a
    sub-long/2addr v9, v7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide p1

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    iget-wide v0, p0, Lqhg;->a:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x17

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xe

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-long/2addr p1, v0

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
.end method
