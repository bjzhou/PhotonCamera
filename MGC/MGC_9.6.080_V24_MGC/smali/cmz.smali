.class public final Lcmz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lcmy;

.field private final b:I

.field private final c:[Lcmw;

.field private d:I

.field private final e:[F

.field private final f:[F

.field private final g:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1}, Lcmz;-><init>(Lcmy;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
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

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x3

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

.method public synthetic constructor <init>(Lcmy;I)V
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcmz;->f:[F

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

    :goto_1
    new-array p1, p1, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lcmy;->ordinal()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltxt;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ltxt;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p2, Lcmy;->a:Lcmy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const/16 p1, 0x14

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

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

    nop

    :goto_8
    and-int/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-array p1, p2, [F

    nop

    nop

    goto/32 :goto_17

    nop

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

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_b
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lcmz;->c:[Lcmw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq p1, v1, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Lcmz;->b:I

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

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    new-array v0, p1, [F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lcmz;->g:[F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    new-array v0, p1, [Lcmw;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    sget-object p1, Lcmy;->a:Lcmy;

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_1e
    const v0, 0x16

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lcmz;->e:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    iput-object p1, p0, Lcmz;->a:Lcmy;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_26

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_25
    move v0, p2

    nop

    nop

    :goto_26
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_28
    const v1, 0x10

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(F)F
    .locals 19

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_1
    const/high16 v12, 0x42200000    # 40.0f

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-float/2addr v12, v12

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_3
    if-lez v12, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_5
    sub-float v0, v10, v11

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lucd;->f(FF)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_7
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_9
    if-lez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_1
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_a
    move v5, v9

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v5, v0, Lcmz;->a:Lcmy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_10
    if-ne v8, v13, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_2
    goto/32 :goto_9c

    nop

    nop

    :goto_11
    move v6, v2

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

    :goto_12
    if-ge v9, v5, :cond_3

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    float-to-double v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v5, v9, :cond_4

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_15
    neg-float v7, v11

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    :goto_17
    move v0, v8

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_18
    if-eq v5, v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v7, v10, Lcmw;->b:F

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v7, v8, Lcmw;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

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

    nop

    :goto_1c
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7c

    nop

    nop

    :goto_1f
    iget-object v6, v0, Lcmz;->c:[Lcmw;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move v5, v7

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_23
    if-eqz v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_58

    nop

    nop

    :goto_24
    add-float/2addr v3, v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    cmpl-float v12, v11, v12

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    cmpg-float v10, v0, v8

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v0, Ltxt;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_2a
    cmpl-float v2, v0, v2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_2b
    sget-object v6, Lcmy;->a:Lcmy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v4, "maximumVelocity should be a positive value. You specified="

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2d
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_6c

    nop

    nop

    :goto_2e
    move v5, v7

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_30
    sub-float/2addr v10, v11

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_31
    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aget v8, v4, v7

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sub-float/2addr v0, v8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x0

    nop

    nop

    :goto_35
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_36
    iget-object v4, v0, Lcmz;->f:[F

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_38
    iget-object v8, v0, Lcmz;->a:Lcmy;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_39
    invoke-static {v0, v1}, Lucd;->e(FF)F

    move-result v2

    nop

    nop

    :goto_3a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3b
    iget v5, v0, Lcmz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3c
    iget-wide v11, v6, Lcmw;->a:J

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3d
    iget-wide v13, v10, Lcmw;->a:J

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    :cond_8
    goto/32 :goto_8d

    nop

    nop

    :goto_3f
    invoke-static {v3}, Lcnf;->b(Ljava/lang/String;)V

    :goto_40
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_41
    aget-object v10, v10, v5

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_60

    nop

    nop

    :goto_45
    const v1, 0x6

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_46
    if-ge v9, v7, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_9
    :goto_47
    goto/32 :goto_3b

    nop

    nop

    :goto_48
    throw v0

    nop

    nop

    nop

    nop

    :goto_49
    :try_start_0
    iget-object v0, v0, Lcmz;->g:[F

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    if-gt v9, v5, :cond_a

    nop

    nop

    nop

    move v5, v6

    nop

    nop

    :cond_a
    add-int/lit8 v7, v5, 0x1

    nop

    new-array v8, v7, [[F

    nop

    nop

    const/4 v10, 0x0

    nop

    :goto_4a
    if-ge v10, v7, :cond_b

    nop

    nop

    nop

    nop

    nop

    new-array v11, v9, [F

    nop

    nop

    nop

    nop

    aput-object v11, v8, v10

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto :goto_4a

    nop

    nop

    :cond_b
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_4b
    const/high16 v11, 0x3f800000    # 1.0f

    nop

    if-ge v10, v9, :cond_d

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    aget-object v13, v8, v12

    nop

    nop

    nop

    aput v11, v13, v10

    nop

    nop

    nop

    move v11, v6

    nop

    nop

    :goto_4c
    if-ge v11, v7, :cond_c

    nop

    nop

    nop

    add-int/lit8 v13, v11, -0x1

    nop

    nop

    nop

    nop

    nop

    aget-object v13, v8, v13

    nop

    nop

    aget v13, v13, v10

    nop

    nop

    nop

    nop

    nop

    aget v14, v4, v10

    nop

    nop

    nop

    nop

    mul-float/2addr v13, v14

    nop

    nop

    nop

    nop

    aget-object v14, v8, v11

    nop

    nop

    nop

    nop

    aput v13, v14, v10

    nop

    nop

    nop

    nop

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto :goto_4c

    nop

    nop

    nop

    nop

    :cond_c
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    new-array v4, v7, [[F

    nop

    nop

    nop

    nop

    move v10, v12

    nop

    nop

    nop

    nop

    :goto_4d
    if-ge v10, v7, :cond_e

    nop

    nop

    new-array v13, v9, [F

    nop

    nop

    nop

    aput-object v13, v4, v10

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    goto :goto_4d

    nop

    nop

    nop

    nop

    :cond_e
    new-array v10, v7, [[F

    nop

    move v13, v12

    nop

    nop

    nop

    nop

    :goto_4e
    if-ge v13, v7, :cond_f

    nop

    nop

    nop

    nop

    new-array v14, v7, [F

    nop

    aput-object v14, v10, v13

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    nop

    goto :goto_4e

    nop

    :cond_f
    move v13, v12

    nop

    nop

    nop

    :goto_4f
    if-ge v13, v7, :cond_16

    nop

    nop

    nop

    nop

    nop

    aget-object v14, v4, v13

    nop

    nop

    nop

    nop

    nop

    aget-object v15, v8, v13

    nop

    nop

    nop

    invoke-static {v15, v14, v9}, Lrkm;->bf([F[FI)V

    move v15, v12

    nop

    :goto_50
    if-ge v15, v13, :cond_11

    nop

    nop

    nop

    nop

    aget-object v12, v4, v15

    nop

    nop

    nop

    nop

    nop

    invoke-static {v14, v12}, Lcnb;->a([F[F)F

    move-result v16

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-ge v2, v9, :cond_10

    nop

    nop

    nop

    nop

    aget v17, v14, v2

    nop

    nop

    aget v18, v12, v2

    nop

    nop

    nop

    mul-float v18, v18, v16

    nop

    nop

    nop

    sub-float v17, v17, v18

    nop

    nop

    nop

    nop

    aput v17, v14, v2

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto :goto_51

    nop

    nop

    nop

    :cond_10
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    goto :goto_50

    nop

    nop

    nop

    :cond_11
    invoke-static {v14, v14}, Lcnb;->a([F[F)F

    move-result v2

    nop

    nop

    nop

    move v15, v7

    nop

    nop

    nop

    nop

    float-to-double v6, v2

    nop

    nop

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    nop

    nop

    double-to-float v2, v6

    nop

    nop

    nop

    nop

    const v6, 0x358637bd    # 1.0E-6f

    nop

    nop

    nop

    nop

    nop

    cmpg-float v7, v2, v6

    nop

    nop

    nop

    nop

    if-gez v7, :cond_12

    nop

    nop

    move v2, v6

    nop

    :cond_12
    div-float v2, v11, v2

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    :goto_52
    if-ge v6, v9, :cond_13

    nop

    nop

    nop

    nop

    aget v7, v14, v6

    nop

    nop

    nop

    nop

    mul-float/2addr v7, v2

    nop

    aput v7, v14, v6

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto :goto_52

    nop

    :cond_13
    aget-object v2, v10, v13

    nop

    nop

    nop

    nop

    move v6, v15

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_53
    if-ge v7, v6, :cond_15

    nop

    if-ge v7, v13, :cond_14

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    goto :goto_54

    nop

    nop

    nop

    :cond_14
    aget-object v15, v8, v7

    nop

    invoke-static {v14, v15}, Lcnb;->a([F[F)F

    move-result v15

    nop

    nop

    nop

    nop

    :goto_54
    aput v15, v2, v7

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v7, v7, 0x1

    nop

    goto :goto_53

    nop

    :cond_15
    add-int/lit8 v13, v13, 0x1

    nop

    move v7, v6

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :cond_16
    move v2, v5

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-ltz v2, :cond_18

    nop

    nop

    nop

    aget-object v6, v4, v2

    nop

    invoke-static {v6, v3}, Lcnb;->a([F[F)F

    move-result v6

    nop

    nop

    nop

    nop

    aget-object v7, v10, v2

    nop

    add-int/lit8 v8, v2, 0x1

    nop

    nop

    if-gt v8, v5, :cond_17

    nop

    nop

    move v9, v5

    nop

    nop

    nop

    nop

    nop

    :goto_56
    aget v11, v7, v9

    nop

    nop

    aget v13, v0, v9

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v11, v13

    nop

    nop

    nop

    nop

    sub-float/2addr v6, v11

    nop

    nop

    nop

    nop

    if-eq v9, v8, :cond_17

    nop

    nop

    nop

    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    goto :goto_56

    nop

    nop

    nop

    :cond_17
    aget v7, v7, v2

    nop

    nop

    nop

    div-float/2addr v6, v7

    nop

    aput v6, v0, v2

    nop

    nop

    nop

    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto :goto_55

    nop

    nop

    nop

    :cond_18
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    aget v0, v0, v2

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v3, v0, Lcmz;->e:[F

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_58
    move v0, v2

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_59
    div-float/2addr v10, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5a
    cmpl-float v7, v7, v12

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_5b
    aget-object v6, v6, v5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5c
    const/16 v7, 0x14

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_5d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-eqz v3, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_5f
    if-gtz v2, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object v8, v10

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_62
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_63
    sget-object v13, Lcmy;->a:Lcmy;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    rem-int v0, v0, v1

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

    nop

    :goto_65
    iget-object v10, v0, Lcmz;->c:[Lcmw;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_66
    neg-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_67
    mul-float/2addr v11, v12

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_3a

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    sub-long/2addr v11, v13

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6c
    const/4 v0, 0x0

    nop

    :goto_6d
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_6e
    aput v7, v3, v9

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6f
    iget v5, v0, Lcmz;->d:I

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

    :goto_70
    goto/32 :goto_28

    nop

    :goto_71
    add-int/lit8 v7, v5, -0x1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_72
    cmpl-float v3, v1, v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_73
    double-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_74
    float-to-double v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_75
    invoke-direct {v0}, Ltxt;-><init>()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-nez v10, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_77
    aget v11, v3, v7

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_78
    long-to-float v11, v11

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_7a
    add-int/lit8 v5, v5, -0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7b
    move-object v8, v6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7c
    cmpg-float v3, v0, v2

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

    :goto_7d
    long-to-float v7, v7

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

    :goto_7e
    mul-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v12

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_80
    add-float/2addr v6, v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_82
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-lez v7, :cond_1c

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_1c
    goto/32 :goto_19

    nop

    nop

    :goto_84
    aput v7, v4, v9

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const/high16 v12, 0x42c80000    # 100.0f

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_86
    sub-long/2addr v13, v7

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v5}, Lcmy;->ordinal()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_88
    mul-float/2addr v0, v3

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_89
    if-lez v0, :cond_1d

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_27

    nop

    :goto_8a
    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_8b
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8c
    mul-float/2addr v0, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_3a

    nop

    nop

    :goto_8e
    goto/32 :goto_2a

    nop

    nop

    :goto_8f
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_91
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    mul-float/2addr v6, v0

    nop

    :goto_95
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_96
    double-to-float v12, v12

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_97
    if-nez v10, :cond_1e

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_3c

    nop

    nop

    :goto_98
    aget v0, v4, v9

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-gtz v5, :cond_1f

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_9a
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_9c
    move-object v8, v6

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

    :goto_9d
    goto/16 :goto_3a

    nop

    nop

    :goto_9e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_29

    nop

    nop

    :goto_a1
    aget v10, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_a2
    move/from16 v1, p1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_a3
    if-eqz v5, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_20
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a4
    add-int v0, v0, v1

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const/high16 v2, 0x447a0000    # 1000.0f

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(JF)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_1
    const v1, 0x18

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
    iput-wide p1, v1, Lcmw;->a:J

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x15

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

    :goto_4
    iget v0, p0, Lcmz;->d:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aput-object v1, p0, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

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
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    iget-object p0, p0, Lcmz;->c:[Lcmw;

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

    :goto_c
    rem-int/lit8 v0, v0, 0x14

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Lcmz;->d:I

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

    :goto_e
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    aget-object v1, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    iput p3, v1, Lcmw;->b:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1, p1, p2, p3}, Lcmw;-><init>(JF)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Lcmw;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x4

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcmz;->c:[Lcmw;

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_e

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

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lcmz;->d:I

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

    :goto_d
    invoke-static {v0, v1}, Lrkm;->bo([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
