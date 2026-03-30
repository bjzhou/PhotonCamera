.class final Lfed;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

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

    nop

    :goto_1
    const-string v0, "x"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const-string v1, "y"

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
    invoke-static {v0}, Liof;->Z([Ljava/lang/String;)Liof;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

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

    :goto_8
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lfed;->a:Liof;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static a(Lfew;)F
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfew;->n()Z

    move-result v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfew;->m()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const-string v1, "Unknown value for token of type "

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    :goto_b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lfew;->a()D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    const v1, 0x10

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
    add-int/lit8 v1, v0, -0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_11
    double-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    :goto_13
    const v0, 0x12

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

    :goto_14
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lfew;->g()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, La;->ax(I)Ljava/lang/String;

    move-result-object p0

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

    :goto_17
    return p0

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lfew;->i()V

    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lfew;->p()I

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    double-to-float p0, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lfew;->a()D

    move-result-wide v0

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

    :goto_21
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method static b(Lfew;)I
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    double-to-int v0, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfew;->a()D

    move-result-wide v6

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 p0, 0xff

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lfew;->m()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lfew;->i()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const-wide v2, 0x406fe00000000000L    # 255.0

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
    mul-double/2addr v0, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    double-to-int v3, v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    double-to-int v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-static {p0, v0, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

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

    :goto_d
    goto/32 :goto_15

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lfew;->a()D

    move-result-wide v4

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

    nop

    :goto_10
    invoke-virtual {p0}, Lfew;->n()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lfew;->a()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    mul-double/2addr v6, v2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    mul-double/2addr v4, v2

    nop

    goto/32 :goto_2

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lfew;->g()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static c(Lfew;F)Landroid/graphics/PointF;
    .locals 4

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    double-to-float v0, v2

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

    :goto_2
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4
    new-instance p0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lfew;->a()D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lfew;->p()I

    move-result v3

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

    :goto_a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lfew;->l()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_10
    mul-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_14
    const/4 v1, 0x6

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

    nop

    :goto_15
    if-eq v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    double-to-float v2, v2

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-float/2addr v1, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "Unknown point starts with "

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_1c
    invoke-static {p0}, Lfed;->a(Lfew;)F

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    move v1, v0

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Landroid/graphics/PointF;

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

    :goto_20
    invoke-virtual {p0}, Lfew;->g()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_21
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v2, Lfed;->a:Liof;

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

    nop

    :goto_23
    goto/16 :goto_30

    nop

    :goto_24
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v2, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lfew;->a()D

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v2}, Lfew;->q(Liof;)I

    move-result v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_28
    if-ne v3, v1, :cond_6

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

    :cond_6
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_29
    invoke-static {p0}, La;->ax(I)Ljava/lang/String;

    move-result-object p0

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

    :goto_2a
    invoke-virtual {p0}, Lfew;->p()I

    move-result p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2b
    invoke-static {p0}, Lfed;->a(Lfew;)F

    move-result v0

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

    :goto_2c
    throw p1

    nop

    nop

    :goto_2d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lfew;->n()Z

    move-result v2

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

    :goto_2f
    double-to-float v1, v1

    nop

    :goto_30
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lfew;->j()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_33
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lfew;->m()V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lfew;->a()D

    move-result-wide v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lfew;->m()V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_38
    const/4 v1, 0x2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    :goto_3a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_50

    nop

    :goto_3c
    new-instance p0, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lfew;->n()Z

    move-result v2

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

    :goto_3e
    invoke-virtual {p0}, Lfew;->m()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lfew;->i()V

    goto/32 :goto_41

    nop

    nop

    :goto_41
    mul-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_42
    mul-float/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lfew;->h()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_44
    mul-float/2addr v2, p1

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

    :goto_45
    invoke-virtual {p0}, Lfew;->p()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Lfew;->a()D

    move-result-wide v0

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_47
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_49
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_40

    nop

    nop

    :goto_4c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4e
    double-to-float v0, v0

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

    :goto_4f
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_50
    goto/32 :goto_4d

    nop

    :goto_51
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v3, 0x1

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

    :goto_53
    goto/16 :goto_1e

    nop

    :goto_54
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop
.end method

.method static d(Lfew;F)Ljava/util/List;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfew;->i()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfew;->i()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x12

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

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

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Lfed;->c(Lfew;F)Landroid/graphics/PointF;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lfew;->p()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_e
    const/4 v2, 0x1

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
    return-object v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lfew;->g()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lfew;->g()V

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    const v0, 0x15

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

    :goto_15
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
