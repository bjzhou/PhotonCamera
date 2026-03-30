.class Lcom/google/ar/core/Quaternion;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/ar/core/Quaternion;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/ar/core/Quaternion;->a:Lcom/google/ar/core/Quaternion;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/Quaternion;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lcom/google/ar/core/Quaternion;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_e

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

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    iput v1, p0, Lcom/google/ar/core/Quaternion;->w:F

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

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    iput v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    return-void

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
    iput v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const v0, 0x7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    :goto_11
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/google/ar/core/Quaternion;->b(FFFF)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    goto/32 :goto_5

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

    nop

    nop

    :goto_1
    iput v0, p0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/ar/core/Quaternion;->b(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

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

    :goto_6
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Quaternion;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p1, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p1, Lcom/google/ar/core/Quaternion;->x:F

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    iput v0, p0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput v0, p0, Lcom/google/ar/core/Quaternion;->x:F

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

    :goto_7
    iget p1, p1, Lcom/google/ar/core/Quaternion;->w:F

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

    :goto_8
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/ar/core/Quaternion;->b(FFFF)V

    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget v2, p1, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    const v0, 0x1

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
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    iput v0, p0, Lcom/google/ar/core/Quaternion;->z:F

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

.method public static a(Lcom/google/ar/core/Quaternion;[FI[FI)V
    .locals 16

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    aget v1, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    mul-float v15, v5, v3

    nop

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

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

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

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    :goto_5
    mul-float/2addr v3, v6

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    iget v5, v0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    mul-float v1, v10, v6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-float/2addr v8, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_9
    aget v2, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iget v4, v0, Lcom/google/ar/core/Quaternion;->x:F

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
    mul-float v2, v7, v6

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

    :goto_c
    add-float/2addr v13, v7

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

    :goto_d
    sub-float/2addr v13, v10

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-float/2addr v10, v4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_f
    neg-float v5, v5

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

    :goto_10
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    mul-float v8, v7, v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-float v8, v5, v1

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

    :goto_13
    aget v3, p1, p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v2, v5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-float/2addr v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_16
    add-float/2addr v13, v14

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    mul-float v1, v10, v0

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

    :goto_18
    add-int/lit8 v8, p4, 0x1

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

    :goto_19
    mul-float v2, v13, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1a
    move-object/from16 v0, p0

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

    :goto_1b
    mul-float v11, v6, v3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1c
    add-int/lit8 v2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float v7, v0, v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    add-float/2addr v8, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    mul-float v13, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    add-float/2addr v13, v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sub-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_22
    mul-float/2addr v7, v5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sub-float/2addr v13, v15

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-float/2addr v1, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v6, v0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    mul-float v14, v4, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    aput v1, p3, v8

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_29
    add-int/lit8 v1, p2, 0x2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2a
    mul-float/2addr v13, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    sub-float/2addr v8, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v3, v4

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

    :goto_2f
    mul-float v9, v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_30
    sub-float/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_31
    sub-float/2addr v10, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_32
    mul-float v1, v13, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_33
    sub-float/2addr v3, v2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sub-float/2addr v7, v9

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

    :goto_35
    mul-float v1, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_36
    iget v0, v0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_39
    aput v8, p3, p4

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3b
    mul-float v2, v3, v5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3c
    add-float/2addr v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3d
    mul-float v10, v0, v2

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

    nop

    :goto_3e
    aput v13, p3, v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3f
    add-float/2addr v7, v8

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_40
    mul-float v12, v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_41
    neg-float v4, v4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0xd

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

    :goto_43
    neg-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v0, p4, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(FFFF)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lcom/google/ar/core/Quaternion;->y:F

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lcom/google/ar/core/Quaternion;->z:F

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

    :goto_4
    iput p4, p0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    const-string v1, "[%.3f, %.3f, %.3f, %.3f]"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

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
    const v0, 0x1f

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

    :goto_9
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

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
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

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

    :goto_12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

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
    iget v3, p0, Lcom/google/ar/core/Quaternion;->z:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
