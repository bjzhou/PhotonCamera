.class public final Ljmm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field private b:J

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Ljmm;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
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

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final a()D
    .locals 9

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    cmpg-double v0, v5, v7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-double/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    div-double/2addr v3, v5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    long-to-double v3, v3

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    if-ltz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

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

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    return-wide v1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    const-wide/high16 v5, -0x3fe6000000000000L    # -6.5

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

    :goto_e
    mul-double/2addr v3, v5

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

    :goto_f
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    nop

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

    :goto_10
    iget-boolean v0, p0, Ljmm;->a:Z

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-double/2addr v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    const v0, 0x14

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    return-wide v1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_17
    sub-long/2addr v3, v5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    iget-wide v5, p0, Ljmm;->c:D

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    iget-wide v5, p0, Ljmm;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1e
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    div-double/2addr v3, v7

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

    :goto_20
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean v0, p0, Ljmm;->a:Z

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    iget-wide v5, p0, Ljmm;->b:J

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_2

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x17

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

    :goto_2
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Ljmm;->c:D

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
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    iput-wide v0, p0, Ljmm;->b:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Ljmm;->a:Z

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide v0, 0x3fe6666666666666L    # 0.7

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
