.class public Lcom/google/ar/core/Pose;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final IDENTITY:Lcom/google/ar/core/Pose;


# instance fields
.field private final quaternion:Lcom/google/ar/core/Quaternion;

.field private final translation:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/ar/core/Pose;->IDENTITY:Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const v1, 0xc

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    sget-object v2, Lcom/google/ar/core/Quaternion;->a:Lcom/google/ar/core/Quaternion;

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

    :goto_4
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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/Pose;-><init>([FLcom/google/ar/core/Quaternion;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    new-array v1, v1, [F

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_3

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

    nop

    :goto_b
    new-instance v0, Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method private constructor <init>(FFFFFFF)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    new-array p4, p4, [F

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const/4 p1, 0x2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {v0, p4, p5, p6, p7}, Lcom/google/ar/core/Quaternion;-><init>(FFFF)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lcom/google/ar/core/Quaternion;

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
    const/4 p4, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput p2, p4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    aput p3, p4, p1

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

    :goto_8
    aput p1, p4, p5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const/4 p5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const/4 p1, 0x1

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

    :goto_b
    iput-object v0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p4, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop
.end method

.method private constructor <init>([FLcom/google/ar/core/Quaternion;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_3
    iput-object p2, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([F[F)V
    .locals 9

    goto/32 :goto_9

    nop

    nop

    :goto_0
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    aget v8, p2, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    move v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v1 .. v8}, Lcom/google/ar/core/Pose;-><init>(FFFFFFF)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const v0, 0xc

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

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

    :goto_b
    aget v7, p2, v4

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

    :goto_c
    return-void

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
    aget v5, p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    aget v6, p2, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    const/4 v0, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
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

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_14
    aget v2, p1, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    aget p1, p1, v4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget v3, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    const v1, 0x18

    nop

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
.end method

.method public static makeInterpolated(Lcom/google/ar/core/Pose;Lcom/google/ar/core/Pose;F)Lcom/google/ar/core/Pose;
    .locals 10

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_0
    float-to-double v5, p2

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    mul-float/2addr p2, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v7, p0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p0, v3, Lcom/google/ar/core/Quaternion;->z:F

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_4
    iput p0, v3, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    iget p1, v0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_8
    mul-float/2addr v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_9
    div-float/2addr v1, v5

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_b
    add-float/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v1, p2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d
    neg-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_e
    float-to-double p0, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-array v4, v3, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_11
    cmpl-float v1, p2, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, v4, v3}, Lcom/google/ar/core/Pose;-><init>([FLcom/google/ar/core/Quaternion;)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-float/2addr v1, v5

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

    :goto_14
    neg-float p1, p1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_15
    mul-float/2addr v6, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_16
    sub-float v5, v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    div-double/2addr v0, p0

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_18
    iget p0, p1, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_19
    mul-float/2addr v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v5, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_1e
    neg-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_1f
    iput v5, v3, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_20
    float-to-double v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    iput v1, v3, Lcom/google/ar/core/Quaternion;->y:F

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    float-to-double v5, v5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_24
    iget v7, p1, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v5, p0, Lcom/google/ar/core/Quaternion;->z:F

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

    :goto_26
    iput p0, v3, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    const/4 v5, 0x0

    nop

    nop

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_2c
    double-to-float v2, v5

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_2d
    iget v1, p0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v5, p1, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_2f
    iget p1, v0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_31
    aget v7, v7, v5

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_32
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move-object p1, v0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_35
    iget v5, p0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    mul-float/2addr v5, v5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0, p1}, Lcom/google/ar/core/Quaternion;-><init>(Lcom/google/ar/core/Quaternion;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_38
    iget v8, p0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_61

    nop

    :goto_3a
    cmpl-float v2, p2, v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_3b
    invoke-direct {v3}, Lcom/google/ar/core/Quaternion;-><init>()V

    goto/32 :goto_35

    nop

    nop

    :goto_3c
    iget v1, p1, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3d
    mul-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_a

    nop

    nop

    :goto_3f
    mul-float/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_40
    mul-float/2addr v2, p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v0, Lcom/google/ar/core/Quaternion;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_42
    iput v2, v3, Lcom/google/ar/core/Quaternion;->w:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-float/2addr v5, v8

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_44
    add-float/2addr v2, p2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-gtz v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_46
    iget v9, p1, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_48
    aget v6, v6, v5

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    double-to-float p1, v0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4a
    iget v6, p1, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput p1, v0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4e
    iget-object p1, p1, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4f
    iput p1, v0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    mul-float/2addr v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_51
    cmpg-float v0, v5, v0

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_52
    add-float/2addr v0, v1

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_53
    const v0, 0x8

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

    nop

    :goto_54
    mul-float/2addr v7, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget p0, v3, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_56
    mul-float/2addr v1, v2

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

    :goto_57
    mul-float/2addr v2, v0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v6, p0, Lcom/google/ar/core/Quaternion;->y:F

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

    :goto_59
    add-float/2addr v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget p1, v0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5b
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_5c
    mul-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_62

    nop

    :goto_5e
    new-instance v3, Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5f
    mul-float/2addr p0, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_60
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_4
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_87

    nop

    :goto_62
    goto/32 :goto_47

    nop

    nop

    :goto_63
    iput p1, v0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_64
    iget v6, p1, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_65
    double-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_67
    iput p1, v0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_68
    iget-object v7, p1, Lcom/google/ar/core/Pose;->translation:[F

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

    :goto_69
    add-float/2addr v6, v7

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_6a
    neg-float v5, v5

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

    :goto_6b
    mul-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6c
    iget p0, v3, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_6d
    mul-float/2addr p2, p0

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_6e
    float-to-double v6, v6

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_6f
    neg-float p1, p1

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    add-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_71
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_72
    iput p0, v3, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_73
    iget p0, v3, Lcom/google/ar/core/Quaternion;->x:F

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_74
    mul-float/2addr v6, v7

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

    :goto_75
    return-object p1

    nop

    nop

    :goto_76
    goto/32 :goto_7c

    nop

    nop

    :goto_77
    mul-float/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_78
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_79
    cmpl-double v6, v6, v8

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

    nop

    :goto_7a
    iget v8, p1, Lcom/google/ar/core/Quaternion;->z:F

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_7b
    const v1, 0x1b

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    sub-float v2, v1, p2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7d
    double-to-float v0, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_7e
    mul-float/2addr v5, v5

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

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

    :goto_80
    iget-object v6, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget p0, v3, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_82
    mul-float/2addr v5, p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_83
    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_84
    goto/16 :goto_29

    nop

    nop

    :goto_85
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_88
    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_89
    double-to-float p2, v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    float-to-double v5, v2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    mul-float/2addr p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8c
    if-ltz v0, :cond_5

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_5
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iput v0, v3, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8e
    iget p1, v0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    add-float/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_90
    mul-float/2addr v6, v2

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_91
    add-float/2addr v0, v2

    nop

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

    :goto_92
    aput v6, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    mul-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    new-instance p0, Lcom/google/ar/core/Pose;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    mul-float/2addr v1, v1

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
.end method

.method public static makeRotation(FFFF)Lcom/google/ar/core/Pose;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v1, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/ar/core/Quaternion;-><init>(FFFF)V

    goto/32 :goto_c

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/Pose;-><init>([FLcom/google/ar/core/Quaternion;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v2, Lcom/google/ar/core/Quaternion;

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    sget-object v1, Lcom/google/ar/core/Pose;->IDENTITY:Lcom/google/ar/core/Pose;

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

.method public static makeRotation([F)Lcom/google/ar/core/Pose;
    .locals 4

    goto/32 :goto_2

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget p0, p0, v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

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

    :goto_3
    aget v0, p0, v0

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
    goto/32 :goto_11

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    const/4 v3, 0x3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    aget v1, p0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, v2, p0}, Lcom/google/ar/core/Pose;->makeRotation(FFFF)Lcom/google/ar/core/Pose;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget v2, p0, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    return-object p0

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public static makeTranslation(FFF)Lcom/google/ar/core/Pose;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput p1, v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-array v1, v1, [F

    nop

    goto/32 :goto_f

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

    nop

    :goto_4
    new-instance v0, Lcom/google/ar/core/Pose;

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

    :goto_5
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    sget-object p0, Lcom/google/ar/core/Pose;->IDENTITY:Lcom/google/ar/core/Pose;

    nop

    nop

    goto/32 :goto_7

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

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_b
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    aput p2, v1, p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1, p0}, Lcom/google/ar/core/Pose;-><init>([FLcom/google/ar/core/Quaternion;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    aput p0, v1, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public static makeTranslation([F)Lcom/google/ar/core/Pose;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget v1, p0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    goto/32 :goto_f

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget p0, p0, v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    aget v0, p0, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, p0}, Lcom/google/ar/core/Pose;->makeTranslation(FFF)Lcom/google/ar/core/Pose;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const v0, 0x3

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

    :goto_c
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop
.end method


# virtual methods
.method public compose(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Pose;
    .locals 14

    goto/32 :goto_51

    nop

    nop

    :goto_0
    mul-float/2addr v12, v11

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1
    aget v3, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2
    invoke-direct {v1, v0, v2}, Lcom/google/ar/core/Pose;-><init>([FLcom/google/ar/core/Quaternion;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    sub-float/2addr v7, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    iget p1, p1, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2}, Lcom/google/ar/core/Quaternion;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-float/2addr v10, v13

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
    iget v12, p1, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-float/2addr v10, v9

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_d
    return-object v1

    nop

    :goto_e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_10
    add-float/2addr v10, v5

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

    :goto_11
    add-float/2addr v3, v6

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

    :goto_12
    iget v8, p0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    iget v3, p0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v4, p1, Lcom/google/ar/core/Quaternion;->w:F

    nop

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

    :goto_15
    neg-float v7, v3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p1, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v5, p0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_18
    mul-float/2addr v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_19
    iget v9, p1, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    mul-float/2addr p0, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Lcom/google/ar/core/Pose;

    nop

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

    :goto_1c
    add-float/2addr v1, v4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput v3, v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v11, p0, Lcom/google/ar/core/Quaternion;->w:F

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

    :goto_20
    mul-float/2addr v9, v11

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    iput v7, v2, Lcom/google/ar/core/Quaternion;->w:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    add-float/2addr v3, v2

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_23
    goto/32 :goto_b

    nop

    :goto_24
    mul-float/2addr v8, v4

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

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_26
    iget v5, p1, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v3, p0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2b
    aget v1, v0, v3

    nop

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

    nop

    :goto_2c
    new-instance v2, Lcom/google/ar/core/Quaternion;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2d
    iput v3, v2, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2e
    mul-float v13, v8, v12

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

    :goto_2f
    mul-float/2addr v5, v4

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_30
    aget v4, v2, v1

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

    :goto_31
    sub-float/2addr v3, v10

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_32
    const/4 v3, 0x0

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

    :goto_33
    mul-float/2addr v7, v12

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_34
    add-float/2addr v3, v8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_35
    iget v12, p1, Lcom/google/ar/core/Quaternion;->x:F

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

    nop

    :goto_36
    mul-float v10, v7, v6

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

    :goto_37
    iget p0, p0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_38
    mul-float/2addr v6, v11

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_39
    sub-float/2addr v7, v9

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

    :goto_3a
    iput v10, v2, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3b
    mul-float v7, v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3c
    add-float/2addr v3, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1, v2, v3, v0, v3}, Lcom/google/ar/core/Quaternion;->a(Lcom/google/ar/core/Quaternion;[FI[FI)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    aget v2, v2, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-float/2addr v7, v11

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v2, p1, Lcom/google/ar/core/Pose;->translation:[F

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

    :goto_42
    aput v1, v0, v3

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

    :goto_43
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_44
    iput v3, v2, Lcom/google/ar/core/Quaternion;->x:F

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

    :goto_45
    aget v3, v0, v1

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

    :goto_46
    iget-object v2, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-float/2addr v3, v7

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v9, p0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_49
    sub-float/2addr v3, v10

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4a
    aput v3, v0, v1

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

    :goto_4b
    add-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4c
    mul-float/2addr v3, v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget v6, p1, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4e
    aget v4, v2, v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_50
    mul-float/2addr v9, v5

    nop

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

    :goto_51
    const v0, 0xf

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_52
    mul-float v10, v9, v12

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_53
    mul-float v10, v8, v9

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public extractRotation()Lcom/google/ar/core/Pose;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/Pose;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v1, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    sget-object v1, Lcom/google/ar/core/Pose;->IDENTITY:Lcom/google/ar/core/Pose;

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

    :goto_7
    return-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    const v0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, p0}, Lcom/google/ar/core/Pose;-><init>([FLcom/google/ar/core/Quaternion;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public extractTranslation()Lcom/google/ar/core/Pose;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

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
    sget-object v1, Lcom/google/ar/core/Pose;->IDENTITY:Lcom/google/ar/core/Pose;

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

    :goto_6
    new-instance v0, Lcom/google/ar/core/Pose;

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

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v1, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p0, v1}, Lcom/google/ar/core/Pose;-><init>([FLcom/google/ar/core/Quaternion;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method getQuaternion()Lcom/google/ar/core/Quaternion;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getRotationQuaternion([FI)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    aput v1, p1, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    aput v1, p1, v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    iget v1, p0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    goto/32 :goto_13

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

    :goto_e
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    add-int/lit8 p2, p2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v0, p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    aput v0, p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    aput p0, p1, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v0, p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public getRotationQuaternion()[F
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    new-array v0, v0, [F

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

    :goto_2
    const v1, 0x15

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

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

    nop

    nop

    :goto_8
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/google/ar/core/Pose;->getRotationQuaternion([FI)V

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public getTransformedAxis(IF[FI)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    const v0, 0xf

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

    :goto_4
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    aput v2, v0, v3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0, v1, p3, p4}, Lcom/google/ar/core/Quaternion;->a(Lcom/google/ar/core/Quaternion;[FI[FI)V

    goto/32 :goto_c

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    aput p2, v0, p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    aput v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

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
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    aput v2, v0, v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_15
    const v1, 0x18

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public getTransformedAxis(IF)[F
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x9

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    return-object v0

    nop

    nop

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

    nop

    :goto_6
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ar/core/Pose;->getTransformedAxis(IF[FI)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    new-array v0, v0, [F

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public getTranslation([FI)V
    .locals 2

    goto/32 :goto_5

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

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const v0, 0x12

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public getTranslation()[F
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

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
    new-array v0, v0, [F

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/google/ar/core/Pose;->getTranslation([FI)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xc

    nop

    goto/32 :goto_d

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

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_d
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public getXAxis()[F
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x15

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_6

    nop

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

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/google/ar/core/Pose;->getTransformedAxis(IF)[F

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
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

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public getYAxis()[F
    .locals 2

    goto/32 :goto_6

    nop

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

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x14

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x14

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/google/ar/core/Pose;->getTransformedAxis(IF)[F

    move-result-object p0

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
.end method

.method public getZAxis()[F
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

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

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/google/ar/core/Pose;->getTransformedAxis(IF)[F

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1c

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public inverse()Lcom/google/ar/core/Pose;
    .locals 6

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    neg-float v2, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget v2, v0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    new-array v0, v0, [F

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

    :goto_6
    neg-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7
    neg-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    aput p0, v0, v2

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

    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/Pose;-><init>([FLcom/google/ar/core/Quaternion;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget p0, v0, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    neg-float p0, p0

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
    new-instance v1, Lcom/google/ar/core/Quaternion;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, p0, v2, v0, v2}, Lcom/google/ar/core/Quaternion;->a(Lcom/google/ar/core/Quaternion;[FI[FI)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    iget v3, v2, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    const v1, 0x17

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

    :goto_12
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    iget v5, v2, Lcom/google/ar/core/Quaternion;->z:F

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

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_15
    iget-object v2, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget v2, v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_17
    iget v4, v2, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    neg-float v4, v4

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

    :goto_19
    aput v2, v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/google/ar/core/Quaternion;-><init>(FFFF)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Lcom/google/ar/core/Pose;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_20
    neg-float v2, v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_22
    aput v2, v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v2, v2, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public qw()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

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
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public qx()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/ar/core/Quaternion;->x:F

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

    :goto_1
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

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
    return p0

    nop

    nop

    nop
.end method

.method public qy()F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public qz()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

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
    return p0

    nop

    :goto_2
    iget p0, p0, Lcom/google/ar/core/Quaternion;->z:F

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
.end method

.method public rotateVector([FI[FI)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/ar/core/Quaternion;->a(Lcom/google/ar/core/Quaternion;[FI[FI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

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

    nop
.end method

.method public rotateVector([F)[F
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/google/ar/core/Pose;->rotateVector([FI[FI)V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    const v0, 0x15

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

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    const/4 v1, 0x0

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

    :goto_9
    new-array v0, v0, [F

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

    :goto_a
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public toMatrix([FI)V
    .locals 13

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-float/2addr v2, v1

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

    :goto_1
    add-int/lit8 p0, p2, 0xb

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p0, p2, 0x7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, v0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_4
    const v1, 0x11

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_5
    if-gtz v6, :cond_0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6
    aget v1, p0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7
    cmpl-float v6, v2, v4

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

    :goto_8
    aput v12, p1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_9
    aput v5, p1, v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_a
    mul-float v8, v0, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    aput v4, p1, p0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v0, p2, 0xd

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_d
    add-int/lit8 v0, p2, 0xe

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    mul-float v9, v0, v7

    nop

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

    :goto_f
    sub-float v6, v11, v6

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_10
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    mul-float v6, v5, v5

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

    :goto_12
    iget v3, v0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v6, v4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-float/2addr v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    mul-float v2, v1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_18
    add-float/2addr v5, v2

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v11, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float v10, v1, v7

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-float/2addr v3, v8

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1d
    mul-float/2addr v3, v6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    mul-float/2addr v7, v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    aget p0, p0, v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_20
    aget v1, p0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_21
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    aput v1, p1, v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v0, p2, 0x6

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

    :goto_24
    iget-object p0, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sub-float v12, v10, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aput v1, p1, v0

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

    nop

    :goto_27
    add-int/lit8 p2, p2, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_28
    add-float v12, v1, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_29
    add-float/2addr v2, v7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2a
    div-float/2addr v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aput v12, p1, v6

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2d
    iget v0, v0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2e
    aput v6, p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2f
    sub-float/2addr v1, v9

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

    nop

    :goto_30
    aput v4, p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_31
    add-float v6, v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v0, p2, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_33
    aput v1, p1, v0

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

    :goto_34
    add-int/lit8 v0, p2, 0x2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_36
    add-float/2addr v10, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    aput v1, p1, v0

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

    :goto_38
    aput v11, p1, p2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_3a
    mul-float v4, v3, v3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_3b
    add-float/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3c
    goto/16 :goto_15

    nop

    :goto_3d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3e
    mul-float/2addr v6, v5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3f
    const/high16 v6, 0x40000000    # 2.0f

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_40
    mul-float v7, v3, v6

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_41
    add-int/lit8 v6, p2, 0x1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_42
    aput v3, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    :goto_44
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    aput v4, p1, p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v0, p2, 0xa

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-float/2addr v2, v6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_48
    mul-float/2addr v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    mul-float v2, v1, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_4c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_1
    goto/32 :goto_4a

    nop

    :goto_4d
    aput v5, p1, v0

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

    nop

    nop

    :goto_4e
    iget v5, v0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4f
    add-int/lit8 p0, p2, 0x3

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v1, 0x0

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

    :goto_51
    add-int/lit8 v6, p2, 0x4

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

    :goto_52
    sub-float v5, v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_53
    aput p0, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    add-int/lit8 v6, p2, 0x8

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_55
    add-int/lit8 v0, p2, 0x5

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

    nop

    :goto_56
    add-float/2addr v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_58
    aput v10, p1, v6

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    add-int/lit8 v0, p2, 0xc

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    mul-float v7, v0, v0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5b
    sub-float v1, v11, v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5d
    sub-float v5, v11, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object v1, p0, Lcom/google/ar/core/Pose;->translation:[F

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    aget v1, v1, v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "t:[x:%.3f, y:%.3f, z:%.3f], q:[x:%.2f, y:%.2f, z:%.2f, w:%.2f]"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    iget-object v1, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, v1, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

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

    :goto_c
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_e
    iget-object v1, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lcom/google/ar/core/Pose;->quaternion:Lcom/google/ar/core/Quaternion;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1c

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    aget v1, v1, v4

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

    :goto_16
    iget v1, v1, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

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

    :goto_19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

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

    :goto_1b
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
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

    :goto_1d
    const/4 v3, 0x1

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

    nop

    nop

    :goto_1e
    iget v1, v1, Lcom/google/ar/core/Quaternion;->x:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    aget v1, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public transformPoint([FI[FI)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 p2, 0x3

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
    const v0, 0x11

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    if-lt p1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_6
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

    :goto_7
    aput v0, p3, p2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget v1, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/ar/core/Pose;->rotateVector([FI[FI)V

    goto/32 :goto_16

    nop

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lcom/google/ar/core/Pose;->translation:[F

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

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_17

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

    nop

    :goto_10
    add-int p2, p1, p4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    :goto_13
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    :goto_15
    aget v0, p3, p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x0

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public transformPoint([F)[F
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const v1, 0x1d

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

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    const/4 v0, 0x3

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/google/ar/core/Pose;->transformPoint([FI[FI)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xe

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

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

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

    :goto_d
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
.end method

.method public tx()F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    aget p0, p0, v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public ty()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    aget p0, p0, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

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
.end method

.method public tz()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget p0, p0, v0

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
    iget-object p0, p0, Lcom/google/ar/core/Pose;->translation:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
