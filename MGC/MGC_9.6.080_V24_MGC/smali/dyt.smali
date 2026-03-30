.class public final Ldyt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field private e:Z

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private final j:Ldyl;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

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
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

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

    :goto_6
    iput-boolean v0, p0, Ldyt;->e:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ldyl;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Ldyt;->a:D

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ldyl;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iput-wide v0, p0, Ldyt;->b:D

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    iput-object v0, p0, Ldyt;->j:Ldyl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    const-wide v0, 0x4097700000000000L    # 1500.0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    iput-wide v0, p0, Ldyt;->i:D

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(F)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    iput-wide v0, p0, Ldyt;->i:D

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

    :goto_4
    const-wide v0, 0x4097700000000000L    # 1500.0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide v0, p0, Ldyt;->i:D

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

    :goto_7
    iput-object v0, p0, Ldyt;->j:Ldyl;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

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

    :goto_b
    float-to-double v0, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

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

    :goto_e
    new-instance v0, Ldyl;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x19

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
    goto/32 :goto_2

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    iput-wide v0, p0, Ldyt;->a:D

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

    :goto_14
    iput-boolean v0, p0, Ldyt;->e:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    iput-wide v0, p0, Ldyt;->b:D

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Ldyl;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop
.end method


# virtual methods
.method public final a()F
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-wide v0, p0, Ldyt;->i:D

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v0, 0x1f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    double-to-float p0, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method final b(DDJ)Ldyl;
    .locals 16

    goto/32 :goto_19

    nop

    nop

    :goto_0
    neg-double v12, v12

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1
    neg-double v12, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-double/2addr v8, v6

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-double/2addr v6, v8

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

    :goto_5
    move-wide/from16 v4, p5

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_6
    mul-double/2addr v4, v4

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_7
    mul-double/2addr v6, v8

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
    mul-double/2addr v1, v6

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_9
    mul-double/2addr v10, v2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-double v8, p3, v8

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_b
    mul-double/2addr v6, v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-double/2addr v8, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    mul-double/2addr v10, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_e
    iget-wide v14, v0, Ldyt;->f:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_10
    iget-wide v12, v0, Ldyt;->a:D

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

    :goto_11
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v8, v0, Ldyt;->b:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_13
    iget-boolean v1, v0, Ldyt;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_14
    mul-double/2addr v12, v8

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v1, v0, Ldyt;->a:D

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_18
    mul-double/2addr v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_19
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_1a
    mul-double v14, v8, v12

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1b
    mul-double/2addr v12, v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1c
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-double/2addr v12, v8

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-wide v6, v0, Ldyt;->h:D

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_1f
    sub-double/2addr v6, v8

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    neg-double v8, v14

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

    nop

    :goto_21
    const-wide v10, 0x408f400000000000L    # 1000.0

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

    :goto_22
    iget-wide v4, v0, Ldyt;->i:D

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-wide v6, v0, Ldyt;->g:D

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_24
    add-double/2addr v8, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_25
    return-object v3

    nop

    :goto_26
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_28
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_29
    iget-wide v4, v0, Ldyt;->i:D

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_2a
    sub-double v12, v1, v12

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    mul-double/2addr v6, v4

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_2c
    iget-wide v4, v0, Ldyt;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2d
    mul-double/2addr v14, v6

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    mul-double/2addr v14, v4

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

    :goto_2f
    add-double/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_30
    neg-double v6, v4

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    mul-double/2addr v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_32
    goto/16 :goto_9c

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_35
    double-to-float v0, v1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    div-double/2addr v4, v10

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_37
    sub-double v4, v2, v4

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_38
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_39
    mul-double/2addr v6, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3a
    iget-wide v10, v0, Ldyt;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_85

    nop

    nop

    :goto_3c
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-double/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3e
    add-double/2addr v4, v10

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3f
    mul-double/2addr v1, v4

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_40
    goto/16 :goto_85

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_42
    sub-double v8, v8, p3

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput v0, v3, Ldyl;->b:F

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

    :goto_44
    add-double/2addr v4, v8

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_45
    mul-double/2addr v1, v4

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_46
    iget-wide v6, v0, Ldyt;->i:D

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_47
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_48
    iget-wide v12, v0, Ldyt;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_4a
    cmpl-double v1, v8, v2

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

    :goto_4b
    cmpl-double v1, v4, v6

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-boolean v1, v0, Ldyt;->e:Z

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_4d
    add-double/2addr v1, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-wide v12, v0, Ldyt;->f:D

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_50
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_58

    nop

    :goto_51
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_53
    cmpl-double v1, v4, v6

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-wide v12, v0, Ldyt;->h:D

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_55
    add-double/2addr v12, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_56
    mul-double v8, v1, v6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_57
    mul-double/2addr v6, v14

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

    :goto_58
    goto/32 :goto_17

    nop

    nop

    :goto_59
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_5a
    iget-wide v12, v0, Ldyt;->f:D

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5b
    iput v0, v3, Ldyl;->a:F

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_5c
    cmpl-double v1, v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5e
    mul-double/2addr v8, v3

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

    :goto_5f
    add-double/2addr v6, v12

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_61
    mul-double/2addr v6, v14

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_62
    sub-double v6, p1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_63
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-wide v12, v0, Ldyt;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_66
    iget-wide v1, v0, Ldyt;->g:D

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_68
    neg-double v12, v12

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_69
    iput-wide v4, v0, Ldyt;->f:D

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_6a
    mul-double/2addr v8, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    mul-double/2addr v2, v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6d
    move-object/from16 v0, p0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6e
    if-gtz v1, :cond_3

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_3
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    mul-double/2addr v8, v12

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_72
    mul-double/2addr v14, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_73
    rem-int v0, v0, v1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_74
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_75
    div-double/2addr v2, v12

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_76
    if-gtz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_77
    iget-wide v4, v0, Ldyt;->b:D

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_78
    mul-double/2addr v8, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    mul-double/2addr v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7a
    mul-double v12, v8, v4

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    add-double/2addr v6, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_7c
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_7d
    neg-double v14, v14

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_7e
    mul-double v6, v4, v4

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_7f
    neg-double v8, v8

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_80
    iget-wide v10, v0, Ldyt;->h:D

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_81
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    mul-double/2addr v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_83
    mul-double v8, v1, v6

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_84
    move-wide/from16 v1, p1

    nop

    :goto_85
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_86
    mul-double/2addr v14, v4

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_87
    iget-wide v14, v0, Ldyt;->h:D

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_88
    if-ltz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    add-double/2addr v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8a
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_8b
    mul-double/2addr v10, v4

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_71

    nop

    :goto_8d
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8e
    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_8f
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v3, v0, Ldyt;->j:Ldyl;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_91
    long-to-double v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_92
    goto/32 :goto_59

    nop

    :goto_93
    mul-double/2addr v1, v6

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

    :goto_94
    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    neg-double v1, v1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_96
    iget-wide v14, v0, Ldyt;->b:D

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_97
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    add-double v14, v14, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_99
    if-gez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_ab

    nop

    nop

    :goto_9a
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iput-wide v6, v0, Ldyt;->h:D

    nop

    nop

    :goto_9c
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    mul-double/2addr v12, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    mul-double/2addr v6, v12

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    mul-double/2addr v2, v14

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    mul-double/2addr v12, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_a1
    mul-double/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a2
    mul-double/2addr v8, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a3
    mul-double/2addr v12, v6

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_a4
    double-to-float v0, v6

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_a5
    iget-wide v8, v0, Ldyt;->a:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a6
    move-wide/from16 p1, v8

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a7
    div-double/2addr v8, v12

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

    :goto_a8
    iget-wide v14, v0, Ldyt;->g:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    mul-double/2addr v14, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_ab
    cmpg-double v1, v4, v2

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_ac
    iget-wide v12, v0, Ldyt;->h:D

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_ad
    mul-double/2addr v8, v6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_ae
    add-double v6, v12, v10

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_af
    mul-double/2addr v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_b0
    iget-wide v8, v0, Ldyt;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_b1
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_b2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b3
    iget-wide v6, v0, Ldyt;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_b4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    mul-double/2addr v14, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_b6
    mul-double/2addr v4, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_b7
    neg-double v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(F)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    float-to-double v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Ldyt;->e:Z

    nop

    goto/32 :goto_7

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
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_14

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-wide v0, p0, Ldyt;->b:D

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    cmpg-float v0, p1, v0

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

    :goto_11
    const-string p1, "Damping ratio must be non-negative"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    :goto_15
    if-gez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final d(F)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    float-to-double v0, p1

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

    :goto_1
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Ldyt;->i:D

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(F)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_3
    cmpg-float v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iput-wide v0, p0, Ldyt;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    float-to-double v0, p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const-string p1, "Spring stiffness constant must be positive."

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

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    :goto_d
    iput-boolean p1, p0, Ldyt;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_10
    const v1, 0x6

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

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-gtz v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    const v0, 0xa

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
