.class public final Lhkd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhkd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Lhkd;->a:Lhkd;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lhkd;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Lhkd;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic a(FFLandroid/content/res/Resources;Lhkc;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x3

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

    :goto_1
    invoke-static {p0, p1, p2, p3, v0}, Lhkd;->c(FFLandroid/content/res/Resources;Lhkc;I)Ljava/lang/String;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    nop
.end method

.method public static final b(Lpog;)Lhlp;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lpog;->ordinal()I

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lhlp;->d:Lhlp;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Lhlp;->c:Lhlp;

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ltxt;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_a
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ltxt;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    sget-object p0, Lhlp;->b:Lhlp;

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

    :goto_11
    if-eq p0, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x2

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
.end method

.method public static final c(FFLandroid/content/res/Resources;Lhkc;I)Ljava/lang/String;
    .locals 2

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p4, p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    :goto_1
    new-array p2, v0, [C

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
    goto/16 :goto_19

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-char v1, p2, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p3}, Lhkd;->h(FLhkc;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_9
    goto/16 :goto_19

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p2}, Luch;->o(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, p1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    :goto_10
    const p1, 0x7f1407fd

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

    :goto_11
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_12
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xb

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
    if-ne p4, v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    goto :goto_19

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p2}, Luch;->o(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    const/16 v1, 0x30

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

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

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

    :goto_23
    aput-char v1, p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_24
    const v0, 0x11

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

    :goto_25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_26
    float-to-int p0, p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p3, 0x2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    :goto_29
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2a
    if-ne p4, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2b
    if-ne p4, p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    :goto_2c
    add-int/lit8 p4, p4, -0x1

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

    :goto_2d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2f
    const p1, 0x7f1407f8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    :goto_31
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_32
    const p3, 0x7f1407fc

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_33
    invoke-virtual {p2, p1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_34
    invoke-static {p0, p3}, Lhkd;->d(FLhkc;)F

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_35
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2, p3, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_37
    new-array p2, v0, [C

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const p1, 0x7f1407f7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p2, p1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3e
    div-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop
.end method

.method public static final d(FLhkc;)F
    .locals 9

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, p1}, Lhkd;->h(FLhkc;)Z

    move-result p1

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

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_6
    const/high16 v0, 0x41200000    # 10.0f

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a
    goto :goto_4

    nop

    :goto_b
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    iget-boolean v4, p1, Lhkc;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_e
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    float-to-double v1, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    const/high16 v6, 0x40a00000    # 5.0f

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    float-to-double p0, p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v3, :cond_2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

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

    :goto_17
    move-object v8, v2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1a
    double-to-float v1, v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-gez v4, :cond_4

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v8, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    mul-float v1, p0, v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    cmpg-float v5, v5, v7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    :goto_25
    const v1, 0x14

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

    :goto_26
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

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

    nop

    :goto_27
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_29
    double-to-float p0, p0

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

    :goto_2a
    double-to-float v2, v2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2b
    div-float/2addr p0, v0

    nop

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

    :goto_2c
    double-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2e
    return v1

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    nop

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

    :goto_33
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_36
    move-object v4, v8

    nop

    :goto_37
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_38
    double-to-float v4, v4

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_39
    rem-float/2addr v3, v6

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3a
    rem-float/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_1e

    nop

    nop

    :goto_3c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3d
    float-to-double v2, v1

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

    :goto_3e
    cmpg-float v3, v3, v7

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

    :goto_3f
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    div-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop
.end method

.method public static final e(Ljava/util/List;FLhkc;)I
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x16

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

    :goto_3
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_4
    const/4 p2, 0x0

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    :goto_7
    check-cast v1, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    const v1, 0x13

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

    :goto_9
    invoke-static {v0}, Lrkm;->ah(Ljava/util/Collection;)Ludl;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    cmpg-float v1, p1, v1

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

    :goto_c
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_5

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_33

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, p2}, Lhkd;->d(FLhkc;)F

    move-result p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_25

    nop

    nop

    :goto_18
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v2

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

    nop

    :goto_1b
    check-cast v1, Ljava/lang/Number;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-boolean p2, p0, Ltzb;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1e
    if-ne v1, v2, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_22
    move-object v1, p2

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

    :goto_23
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Lrkm;->ad(Ljava/util/List;)I

    move-result p0

    nop

    nop

    :goto_25
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_26
    if-ltz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ludk;->a()Ltzb;

    move-result-object p0

    nop

    nop

    :goto_28
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_13

    nop

    nop

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

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

    :goto_2c
    return p0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p2, :cond_5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    :goto_30
    invoke-static {v1, p2}, Lhkd;->d(FLhkc;)F

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_31
    new-instance v0, Ljava/util/ArrayList;

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
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method public static final f(FLfdo;)Ljava/lang/Float;
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

    goto/32 :goto_2

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    :goto_3
    const v1, 0x13

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

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    iget-object p0, p1, Lfdo;->a:Ljava/lang/Object;

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

    :goto_8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    float-to-double v0, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    check-cast p0, Lryb;

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

    :goto_f
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1, v0}, Lucd;->g(FFF)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1, p0, p1}, Lfdo;->q(DLryb;Z)D

    move-result-wide p0

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

    :goto_15
    double-to-float p0, p0

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

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public static final g(FFFLfdo;)Ljava/lang/Float;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lryb;

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

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_7
    invoke-static {p0, p1, p2}, Lucd;->g(FFF)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    double-to-float p0, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p3, Lfdo;->a:Ljava/lang/Object;

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

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p0, p3}, Lfdo;->q(DLryb;Z)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    float-to-double v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private static final h(FLhkc;)Z
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    cmpg-float p0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    rem-float v0, p0, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    return v1

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_14

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_14

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    move v1, v2

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

    :goto_10
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

    nop

    :goto_11
    const v0, 0x1e

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, p1, Lhkc;->c:F

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

    :goto_13
    if-gez p0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    :goto_14
    goto/32 :goto_6

    nop

    nop

    :goto_15
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v2

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p1, Lhkc;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    :goto_1d
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
