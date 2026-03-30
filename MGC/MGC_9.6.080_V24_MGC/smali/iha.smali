.class public final Liha;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lqht;

.field public final b:I

.field public final c:[F

.field public final d:[F

.field private final e:[S


# direct methods
.method public constructor <init>(Lqht;I)V
    .locals 6

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    int-to-short v5, v5

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const/4 v1, 0x0

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

    :goto_7
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/lit8 v4, v2, 0x3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    aput-short v5, p1, v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    add-int/lit8 v3, v3, 0x1

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

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    add-int v3, p2, p2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr p2, v0

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

    :goto_13
    const v1, 0x9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    add-int v5, v2, v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    move v2, v1

    nop

    :goto_16
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_17
    const v0, 0x15

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_19
    if-lt v2, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v4, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-array p1, p1, [S

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Liha;->e:[S

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p1, p0, Liha;->a:Lqht;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1f
    add-int/lit8 v2, v2, 0x1

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

    nop

    :goto_20
    iput p2, p0, Liha;->b:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    if-lt v3, v4, :cond_4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    mul-int/lit8 p1, p2, 0x6

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

    :goto_24
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_25
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object p1, p0, Liha;->d:[F

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    iput-object p1, p0, Liha;->c:[F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_16

    nop

    nop

    :goto_2b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2c
    move v2, v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_36

    nop

    :goto_2e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1, v1, p1, p2, v0}, Liha;->c(FFFII)[F

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_30
    invoke-static {v2}, Lrrf;->x(Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0, v0, v1, p2, p1}, Liha;->c(FFFII)[F

    move-result-object p1

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
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1c

    nop

    nop

    :goto_35
    move v3, v1

    nop

    :goto_36
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static c(FFFII)[F
    .locals 11

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

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

    :goto_1
    add-int/lit8 v10, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v2, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    :goto_8
    aput v9, v0, v7

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v7, 0x2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v8, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_d
    sub-float v9, v8, p0

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

    :goto_e
    add-int/lit8 v7, v7, -0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/2addr v3, p4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput v4, v0, v10

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_11
    div-float/2addr v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    move v6, p0

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

    :goto_14
    add-int v7, v3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    add-int v0, p3, p3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_16
    if-gt p4, v7, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    :goto_17
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sub-float v6, p2, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    if-lt v2, p3, :cond_2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    aput v8, v0, v7

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    if-lt v5, v7, :cond_3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    aput v6, v0, v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_21
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_22
    if-lt v7, v9, :cond_4

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

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-float/2addr v6, v9

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v3, v2

    nop

    nop

    :goto_27
    goto/32 :goto_19

    nop

    nop

    :goto_28
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    add-int/lit8 v7, v3, 0x2

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

    :goto_2b
    goto :goto_33

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v9, p4, -0x1

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

    :goto_2e
    const/4 v7, 0x3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_30
    move v4, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-float/2addr v4, v6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_32
    move v5, v1

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto :goto_27

    nop

    nop

    :goto_35
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_36
    mul-int/2addr v0, p4

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

    :goto_37
    add-int/lit8 v5, p3, -0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lqjb;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Liha;->e:[S

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Lqjb;->b(Lqht;[S)Lqjb;

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

    :goto_2
    iget-object v0, p0, Liha;->a:Lqht;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop
.end method

.method public final b(Ljava/util/List;)Lqjy;
    .locals 20

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_0
    mul-float v13, v13, v16

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_2
    goto/32 :goto_2f

    nop

    :goto_3
    add-int/lit8 v15, v12, 0x1

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_4
    const/4 v13, 0x6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-float v16, v16, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_6
    aget v15, v14, v5

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    goto/16 :goto_16

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    aput v13, v3, v12

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

    :goto_a
    aget v19, v14, v8

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v11, v5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget v18, v2, v17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const/4 v15, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_f
    move v7, v5

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_11
    aput v13, v3, v15

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

    :goto_12
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_13
    aget v17, v14, v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v13, v12, 0x2

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

    :goto_15
    move v2, v5

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v9, v7, -0x1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aget v15, v2, v17

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

    :goto_19
    aget v14, v14, v16

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, v2}, Lqjy;->e(Lqht;[Lqka;)Lqjy;

    move-result-object v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    mul-float/2addr v13, v15

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, v0, Liha;->a:Lqht;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    :goto_1f
    const/16 v16, 0x3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_20
    aput-object v0, v2, v4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    mul-float v16, v16, v18

    nop

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

    nop

    :goto_22
    iget-object v2, v0, Liha;->d:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_23
    mul-float/2addr v15, v14

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

    :goto_24
    mul-int/lit8 v12, v11, 0x4

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_25
    aget v13, v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    iget-object v0, v0, Liha;->c:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_27
    array-length v3, v2

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_28
    iget-object v14, v9, Lqhi;->c:[F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_29
    const/4 v4, 0x1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aget v13, v14, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v17, v12, 0x3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2c
    if-gtz v7, :cond_1

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2d
    add-float v13, v13, v18

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_30
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v16, 0x8

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

    :goto_32
    add-float v13, v13, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_34
    aget v16, v14, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_35
    const/16 v18, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v9, Lqhi;

    nop

    nop

    :goto_37
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_38
    if-le v7, v6, :cond_2

    nop

    goto/32 :goto_49

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_39
    if-lt v11, v8, :cond_3

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3a
    mul-float/2addr v13, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3b
    aget v16, v2, v15

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3c
    const/16 v16, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object/from16 v1, p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3e
    const/4 v8, 0x2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3f
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_41
    aget v13, v2, v12

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v0}, Lqka;->b([F)Lqka;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_43
    aget v18, v2, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-float/2addr v12, v15

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

    :goto_45
    add-int/2addr v12, v10

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

    :goto_46
    aget v12, v2, v12

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

    :goto_47
    aput v16, v3, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_1d

    nop

    nop

    :goto_4a
    mul-float/2addr v12, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    mul-float v18, v18, v19

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    aget v19, v14, v19

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_4d
    mul-float v18, v18, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_4e
    check-cast v9, Lqhi;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    mul-int/lit8 v10, v7, 0x8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_51
    aget v13, v2, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_52
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_53
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v0, 0xb

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_55
    invoke-static {v3}, Lqka;->c([F)Lqka;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v2}, Lrrf;->x(Z)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_57
    new-array v2, v8, [Lqka;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_58
    add-float v13, v13, v16

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

    :goto_59
    add-float/2addr v12, v13

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_5a
    aget v16, v2, v15

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-eq v2, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_5c
    const/16 v19, 0x5

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5d
    aget v15, v14, v15

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move-object/from16 v0, p0

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

    :goto_5f
    add-int v0, v0, v1

    nop

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

    :goto_60
    add-float v13, v13, v16

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_61
    aput v12, v3, v17

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

    :goto_62
    aget v18, v14, v18

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

    :goto_63
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    aput-object v3, v2, v5

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

    :goto_67
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget v3, v0, Liha;->b:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_6a
    move v2, v4

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

    :goto_6b
    new-array v3, v3, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop
.end method
