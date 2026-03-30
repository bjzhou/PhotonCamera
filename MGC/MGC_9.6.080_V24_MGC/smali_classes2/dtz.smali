.class public final Ldtz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ldtz;->a:Ljava/lang/ThreadLocal;

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

    :goto_3
    new-instance v0, Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static a(I)D
    .locals 19

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1
    div-double/2addr v2, v15

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2
    const-wide v7, 0x406fe00000000000L    # 255.0

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

    nop

    nop

    :goto_3
    cmpg-double v0, v2, v9

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-double v5, v0

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

    :goto_5
    goto/16 :goto_4e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-double v2, v2, v17

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

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

    :goto_9
    rem-int v0, v0, v1

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

    nop

    :goto_a
    array-length v5, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    div-double/2addr v13, v11

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Ldtz;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    add-double v13, v13, v17

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

    :goto_e
    div-double/2addr v5, v11

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

    :goto_f
    mul-double/2addr v9, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-wide v7

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aput-wide v7, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_13
    if-eq v5, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_14
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-array v1, v2, [D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

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

    :goto_18
    div-double/2addr v2, v11

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_19
    mul-double/2addr v11, v13

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    div-double/2addr v7, v9

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

    :goto_1b
    const-wide v11, 0x3f93c36113404ea5L    # 0.0193

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-double v13, v4

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1d
    const-wide v2, 0x3fee6a7ef9db22d1L    # 0.9505

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1e
    aput-wide v5, v1, v0

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

    :goto_1f
    add-double/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_20
    div-double/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-wide v7, 0x3fda64c2f837b4a2L    # 0.4124

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v1, [D

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    mul-double/2addr v5, v11

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

    :goto_24
    cmpg-double v0, v5, v9

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

    :goto_25
    mul-double/2addr v7, v9

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

    :goto_26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "outXyz must have a length of 3."

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_29
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    :goto_2b
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_2c
    div-double/2addr v2, v7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide v7, 0x4003333333333333L    # 2.4

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

    :goto_2e
    mul-double/2addr v11, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

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

    :goto_30
    const-wide v11, 0x3fbe83e425aee632L    # 0.1192

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

    :goto_31
    mul-double/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_32
    int-to-double v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    div-double/2addr v13, v7

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-wide v9, 0x3fd6e2eb1c432ca5L    # 0.3576

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_35
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_36
    add-double/2addr v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_37
    aput-wide v7, v1, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_38
    if-ltz v0, :cond_3

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_39
    throw v0

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_35

    nop

    nop

    :goto_3b
    mul-double/2addr v5, v9

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3d
    const-wide v13, 0x4003333333333333L    # 2.4

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-ltz v0, :cond_4

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

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3f
    const-wide v15, 0x3ff0e147ae147ae1L    # 1.055

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_42
    mul-double/2addr v13, v2

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_43
    div-double/2addr v13, v15

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_48
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_49
    mul-double/2addr v9, v13

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4c
    add-double/2addr v7, v9

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4d
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4f
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_50
    if-ltz v0, :cond_5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_52
    add-double/2addr v7, v11

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_53
    const v0, 0x19

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-double/2addr v5, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_57
    add-double v5, v5, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_58
    mul-double/2addr v2, v11

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    cmpg-double v0, v13, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5a
    mul-double/2addr v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5b
    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_5c
    add-double/2addr v7, v11

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5e
    mul-double/2addr v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_5f
    const-wide v17, 0x3fac28f5c28f5c29L    # 0.055

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const-wide v11, 0x3fb27bb2fec56d5dL    # 0.0722

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_61
    const-wide v11, 0x4029d70a3d70a3d7L    # 12.92

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_62
    div-double/2addr v5, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_63
    const-wide v11, 0x3fe6e2eb1c432ca5L    # 0.7152

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_64
    const-wide v9, 0x3fa4b5dcc63f1412L    # 0.04045

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const-wide v9, 0x3fc71a9fbe76c8b4L    # 0.1805

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop
.end method

.method public static b(DDD)I
    .locals 23

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    mul-double v15, v15, p2

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    div-double v2, v19, v2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-double/2addr v0, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_5
    mul-double v21, v21, p4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide v15, 0x3ffe0346dc5d6388L    # 1.8758

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    cmpl-double v6, v13, v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    add-double/2addr v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-double v17, v17, v15

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_b
    add-double v19, v19, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Ldtz;->f(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    add-double v19, v19, v21

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

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

    :goto_11
    add-double/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    long-to-int v1, v6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

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

    nop

    :goto_14
    mul-double/2addr v0, v13

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Ldtz;->f(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_17
    mul-double v17, v17, p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide v4, 0x3f69a5c37387b719L    # 0.0031308

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1a
    const v1, 0x14

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1b
    mul-double v2, v2, p2

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

    :goto_1c
    mul-double/2addr v13, v15

    nop

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    const-wide v21, 0x3ff0e978d4fdf3b6L    # 1.057

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-wide v19, 0x3fa53f7ced916873L    # 0.0415

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

    :goto_22
    if-gtz v4, :cond_0

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_0
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_23
    mul-double/2addr v0, v9

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_24
    const-wide v13, 0x4029d70a3d70a3d7L    # 12.92

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_25
    long-to-int v2, v2

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

    :goto_26
    mul-double v0, v0, p0

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

    :goto_27
    if-gtz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-wide v11, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_29
    mul-double v19, v19, p4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_e

    nop

    :goto_2c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2e
    const-wide v17, -0x4035e353f7ced917L    # -0.204

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-double/2addr v2, v7

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

    :goto_30
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    :goto_31
    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_32
    invoke-static {v2}, Ldtz;->f(I)I

    move-result v2

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

    :goto_33
    goto/32 :goto_2c

    nop

    nop

    :goto_34
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_37
    const-wide v9, 0x3ff0e147ae147ae1L    # 1.055

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_38
    mul-double v17, v17, p2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-double v17, v17, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3a
    mul-double/2addr v2, v4

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto :goto_3b

    nop

    :goto_3d
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    mul-double/2addr v2, v9

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3f
    const-wide v4, 0x406fe00000000000L    # 255.0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_40
    mul-double/2addr v0, v4

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

    :goto_41
    mul-double/2addr v2, v4

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

    nop

    :goto_42
    add-double/2addr v13, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_43
    add-double/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_44
    if-gtz v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_45
    mul-double v19, v19, p0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_47
    long-to-int v0, v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-wide v7, -0x4053d70a3d70a3d7L    # -0.055

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

    :goto_49
    mul-double v2, v2, p4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_31

    nop

    nop

    :goto_4c
    div-double v13, v17, v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4d
    cmpl-double v6, v0, v4

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    mul-double/2addr v13, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_50
    const-wide v19, 0x3fac84b5dcc63f14L    # 0.0557

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_51
    mul-double/2addr v13, v4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_52
    cmpl-double v4, v2, v4

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

    :goto_53
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_54
    const-wide v17, -0x4010fec56d5cfaadL    # -0.9689

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

    :goto_55
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public static c(II)I
    .locals 6

    goto/32 :goto_16

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

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

    :goto_2
    rsub-int v3, v2, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    :goto_6
    div-int/lit16 v1, v1, 0xff

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-static {v4, v2, v5, v0, v1}, Ldtz;->e(IIIII)I

    move-result v4

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-static {v4, v2, v5, v0, v1}, Ldtz;->e(IIIII)I

    move-result v3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    rsub-int v1, v1, 0xff

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, v2, p1, v0, v1}, Ldtz;->e(IIIII)I

    move-result p0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    mul-int/2addr v1, v3

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rsub-int v1, v0, 0xff

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

    :goto_12
    invoke-static {v1, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

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

    :goto_14
    const v1, 0xb

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

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

    :goto_18
    rem-int v0, v0, v1

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

    :goto_19
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1a
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public static d(II)I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    and-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    if-gez p1, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-le p1, v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->EtnoUYWUr:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xffffff

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

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    shl-int/lit8 p1, p1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    or-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method private static e(IIIII)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    mul-int/2addr p2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    mul-int/lit16 p0, p0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    mul-int/2addr p2, p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/2addr p0, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-int/lit16 p4, p4, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    add-int/2addr p0, p2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    div-int/2addr p0, p4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    rsub-int p1, p1, 0xff

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method private static f(I)I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    if-ltz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
