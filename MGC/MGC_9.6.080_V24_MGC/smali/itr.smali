.class public final Litr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:F

.field private b:F

.field private c:I

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput v0, p0, Litr;->f:I

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

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

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

    nop
.end method


# virtual methods
.method public final a()V
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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Litr;->a:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xa

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    iput v0, p0, Litr;->b:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide v0, p0, Litr;->e:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

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

    :goto_9
    const v0, 0x3ac49ba6    # 0.0015f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

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

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Litr;->c:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v0, 0x0

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

    :goto_12
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    iput-wide v0, p0, Litr;->d:J

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

    :goto_14
    iput v0, p0, Litr;->f:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method

.method public final b()V
    .locals 6

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3
    mul-float/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    cmpg-float v3, v3, v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ltz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-float/2addr v3, v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    long-to-float v2, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v4, p0, Litr;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_f
    const v3, -0x49151e75    # -7.0E-6f

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v1, p0, Litr;->b:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v2, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    add-float/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    if-ne v1, v0, :cond_2

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

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_16
    iput-wide v0, p0, Litr;->e:J

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v2, p0, Litr;->a:F

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

    :goto_18
    add-int/lit8 v1, v0, -0x1

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

    :goto_19
    const-wide/16 v1, 0x320

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Litr;->c:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    iput v0, p0, Litr;->f:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-wide v0, p0, Litr;->d:J

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, p0, Litr;->b:F

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

    :goto_21
    cmp-long v1, v4, v1

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

    :goto_22
    iput v3, p0, Litr;->c:I

    nop

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

    :goto_23
    iput-wide v4, p0, Litr;->d:J

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

    nop

    nop

    :goto_24
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_a

    nop

    :goto_27
    if-ge v3, v0, :cond_4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-wide v2, p0, Litr;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_29
    iget v3, p0, Litr;->a:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2a
    iput v3, p0, Litr;->a:F

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

    :goto_2b
    const/4 p0, 0x0

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

    :goto_2c
    mul-float/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2f
    if-gez v1, :cond_5

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x3f0ccccd    # 0.55f

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_31
    iput v0, p0, Litr;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_34
    add-long/2addr v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_35
    sub-long v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x17

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_37
    iget v0, p0, Litr;->f:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_6

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_39
    const v0, 0x3ac49ba6    # 0.0015f

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3a
    iput v0, p0, Litr;->f:I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3b
    neg-float v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3c
    iget v3, p0, Litr;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3d
    iput v0, p0, Litr;->b:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3e
    return-void

    nop

    nop

    :goto_3f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method
