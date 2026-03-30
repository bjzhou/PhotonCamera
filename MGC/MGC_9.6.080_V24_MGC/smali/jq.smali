.class public Ljq;
.super Lkn;
.source "PG"


# instance fields
.field private b:Lka;

.field private c:Lka;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Lkl;Lka;II)I
    .locals 10

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v8, v5, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    nop

    :goto_1
    int-to-float p2, v4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_12

    nop

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
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_7
    if-eq v8, v9, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/16 :goto_29

    nop

    nop

    :goto_b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_c
    cmpg-float p1, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    move v5, v4

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, v3}, Lka;->a(Landroid/view/View;)I

    move-result p2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    const v1, 0x4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    if-lez p1, :cond_2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    :goto_11
    move v5, v9

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    move-object v3, v7

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_14
    div-float v0, p1, p2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v7}, Lkl;->bh(Landroid/view/View;)I

    move-result v8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p3, p4}, Lkn;->h(II)[I

    move-result-object p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    int-to-float p1, p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    aget p0, p0, p4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lkl;->am()I

    move-result p3

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

    :goto_1b
    aget p2, p0, p4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    div-float/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    move-object v3, v2

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_21
    if-eqz p3, :cond_3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_23
    if-gt p1, p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sub-int/2addr p2, p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_5
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p4, 0x1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_28
    move v9, v5

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lt v8, v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    move p4, v1

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz p2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_31
    sub-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return v1

    nop

    :goto_33
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_34
    const v4, 0x7fffffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_35
    invoke-virtual {p2, v2}, Lka;->a(Landroid/view/View;)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_36
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v6}, Lkl;->ay(I)Landroid/view/View;

    move-result-object v7

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

    :goto_38
    if-gt v8, v4, :cond_8

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    :goto_39
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    :goto_3a
    if-lt v6, p3, :cond_a

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0x18

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

    :goto_3c
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_b
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_48

    nop

    nop

    :goto_3e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v2, v7

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_41
    aget p1, p0, v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_1f

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_44
    move v4, v8

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_47
    return p0

    nop

    :goto_48
    goto/32 :goto_27

    nop

    nop

    :goto_49
    move v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4a
    move v4, v3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_15

    nop

    nop

    :goto_4c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move v9, v8

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

    :goto_4e
    const/high16 v3, -0x80000000

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

    :goto_4f
    const/4 v1, 0x0

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

    :goto_50
    invoke-virtual {p2, v2}, Lka;->d(Landroid/view/View;)I

    move-result p1

    nop

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

    :goto_51
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

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

    :goto_52
    invoke-virtual {p2, v3}, Lka;->d(Landroid/view/View;)I

    move-result p3

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_54
    add-int/2addr v4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_55
    goto/16 :goto_15

    nop

    nop

    :goto_56
    goto/32 :goto_50

    nop

    nop

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Lkl;)Lka;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljq;->b:Lka;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    iput-object v0, p0, Ljq;->b:Lka;

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
    iget-object v0, p0, Ljq;->b:Lka;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    iget-object v0, v0, Lka;->a:Lkl;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p1}, Ljz;-><init>(Lkl;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    new-instance v0, Ljz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Lkl;)Lka;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object v0, v0, Lka;->a:Lkl;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Ljy;-><init>(Lkl;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ljq;->c:Lka;

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

    :goto_4
    new-instance v0, Ljy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Ljq;->c:Lka;

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ljq;->c:Lka;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_9
    if-ne v0, p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Lkn;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final l(Landroid/view/View;Lka;)I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lka;->j()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    div-int/lit8 p0, p0, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    div-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    add-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Lka;->b(Landroid/view/View;)I

    move-result p0

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

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sub-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p0}, Lka;->d(Landroid/view/View;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lka;->k()I

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public a(Lkl;II)I
    .locals 8

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lkl;->X()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1
    if-ltz v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v7

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq v2, v1, :cond_2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Ljq;->51550bab6b6440a4fd45f825c221b363m(Lkl;)Lka;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Ljq;->b(Lkl;)Landroid/view/View;

    move-result-object v2

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

    :goto_a
    if-ltz v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b
    iget p3, v3, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move p2, v7

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    return v1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_1a

    nop

    :goto_12
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    if-eq p3, p1, :cond_6

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    move v7, v2

    nop

    nop

    :goto_15
    goto/32 :goto_37

    nop

    nop

    :goto_16
    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_17
    neg-int p2, p2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_18
    iget v5, v3, Landroid/graphics/PointF;->x:F

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

    :goto_19
    const/4 v7, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, -0x1

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

    :goto_1d
    if-nez v5, :cond_8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lkl;->ao()I

    move-result v0

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    if-ltz p3, :cond_9

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_48

    nop

    nop

    :goto_21
    move p2, p0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3f

    nop

    nop

    :goto_23
    invoke-direct {p0, p1, v5, p2, v7}, Ljq;->1478a1c7833aac5e360e0ba4b0c0c568m(Lkl;Lka;II)I

    move-result p2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    if-eqz v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_e

    nop

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return v1

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    :goto_29
    cmpg-float v5, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2a
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v3, v4}, Lkw;->K(I)Landroid/graphics/PointF;

    move-result-object v3

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

    :goto_2d
    add-int/2addr v2, p2

    nop

    goto/32 :goto_a

    nop

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

    nop

    :goto_2f
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v5, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_b
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Lkl;->X()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_34
    invoke-static {v2}, Lkl;->bh(Landroid/view/View;)I

    move-result v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    cmpg-float p3, p3, v6

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_37
    if-ge v7, v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_38
    return v4

    nop

    :goto_39
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 p3, 0x1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_34

    nop

    nop

    :goto_3d
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz p2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Lkl;->W()Z

    move-result v5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_41
    return v1

    nop

    nop

    :goto_42
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {p0, p1, v5, v7, p3}, Ljq;->1478a1c7833aac5e360e0ba4b0c0c568m(Lkl;Lka;II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_44
    check-cast v3, Lkw;

    nop

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

    :goto_45
    move-object v3, p1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move p0, v7

    nop

    :goto_47
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    neg-int p0, p0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v6, 0x0

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

    :goto_4a
    instance-of v0, p1, Lkw;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4b
    add-int/lit8 v4, v0, -0x1

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

    :goto_4c
    invoke-direct {p0, p1}, Ljq;->3fd9578e124c68aa49885b22b61b4ec8m(Lkl;)Lka;

    move-result-object v5

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lkl;)Landroid/view/View;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p0}, Le;->d(Lkl;Lka;)Landroid/view/View;

    move-result-object p0

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

    :goto_3
    invoke-direct {p0, p1}, Ljq;->3fd9578e124c68aa49885b22b61b4ec8m(Lkl;)Lka;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lkl;->W()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lkl;->X()Z

    move-result v0

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

    :goto_b
    invoke-static {p1, p0}, Le;->d(Lkl;Lka;)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ljq;->51550bab6b6440a4fd45f825c221b363m(Lkl;)Lka;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public c(Lkl;Landroid/view/View;)[I
    .locals 4

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-static {p2, v1}, Ljq;->l(Landroid/view/View;Lka;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    invoke-direct {p0, p1}, Ljq;->3fd9578e124c68aa49885b22b61b4ec8m(Lkl;)Lka;

    move-result-object p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_4
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lkl;->W()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    aput v2, v0, v2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-array v0, v0, [I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    aput p0, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lkl;->X()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aput v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p2, p0}, Ljq;->l(Landroid/view/View;Lka;)I

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    aput v2, v0, v3

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0, p1}, Ljq;->51550bab6b6440a4fd45f825c221b363m(Lkl;)Lka;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
