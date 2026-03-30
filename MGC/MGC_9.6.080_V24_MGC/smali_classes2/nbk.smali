.class public final Lnbk;
.super Lnbj;
.source "PG"


# instance fields
.field private n:I


# direct methods
.method private final 2194a702ab42f680f72c5339a0cb4214m(II)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lnbj;->c(Landroid/util/Size;)I

    move-result v0

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
    if-eq p1, v0, :cond_0

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lnbk;->j:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lnca;->b(Landroid/util/Size;)I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p2, p0, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-gt p1, p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lnbk;->j:Landroid/util/Size;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop
.end method

.method private final 5d18ca03c3a43d6510178c13595e2c12m(III)I
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_9

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v0, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnbk;->k:Landroid/util/Size;

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

    :goto_6
    invoke-virtual {p0, v0}, Lnca;->b(Landroid/util/Size;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1, p2}, Lnbj;->j(II)Landroid/util/Size;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    sub-int/2addr v0, p0

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

    :goto_c
    sub-int/2addr v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lnbr;Ldso;Landroid/content/Context;Lprb;Z)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    new-instance p2, Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    invoke-direct {p2, p1, p3}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    nop

    goto/32 :goto_22

    nop

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

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lnbk;->k:Landroid/util/Size;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, p5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

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

    :goto_6
    sget-object p4, Lnbh;->a:Lnbh;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {p0 .. p5}, Lnbj;-><init>(Lnbr;Ldso;Landroid/content/Context;Lprb;Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    invoke-virtual {p2, p4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    check-cast p3, Landroid/app/Activity;

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

    :goto_d
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p4

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

    :goto_f
    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p2, p0, Lnbk;->i:Lnbh;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget p4, p4, Landroid/graphics/Insets;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

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

    :goto_15
    iput p1, p0, Lnbk;->n:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, p4}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result p2

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

    :goto_19
    const/16 p1, 0x9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    if-gt p2, p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p2, p0, Lnbk;->k:Landroid/util/Size;

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sub-int/2addr p3, p2

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

    :goto_21
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    sub-int/2addr p3, p4

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

    :goto_23
    return-void

    nop

    nop

    nop
.end method

.method private static final ab(II)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    const/4 p0, 0x1

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

    :goto_2
    if-eq p0, p1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    mul-int/lit8 p0, p0, 0x10

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return p0

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
    return p0

    nop

    :goto_7
    mul-int/lit8 p1, p1, 0x9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final E(Landroid/view/View;)V
    .locals 11

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_1
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    iget-object p1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {v2, v9, v0}, Ldso;->k(II)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v4, 0x0

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

    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v8, v0

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x4

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_f
    iget-object v1, p0, Lnbk;->c:Ldso;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_11
    check-cast v3, Landroid/app/Activity;

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

    :goto_12
    iget-object p1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_15
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_16
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_17
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v1, p0

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_19
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

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

    :goto_1b
    invoke-virtual {p1, v9, v0}, Ldso;->k(II)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_1d
    const v4, 0x7f0b0514

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

    :goto_1e
    const/4 p1, 0x4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_9a

    nop

    :cond_1
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v9, v0}, Lnbj;->a(II)I

    move-result v10

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_21
    if-ne v3, p1, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_3
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_23
    invoke-virtual/range {v1 .. v6}, Ldso;->j(IIIII)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v1, p0, Lnbk;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_25
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_26
    move v2, v9

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_27
    const/4 v5, 0x4

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v4, 0x7f0b0514

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

    nop

    :goto_2a
    invoke-virtual {v2, v9, v0}, Ldso;->k(II)V

    goto/32 :goto_7d

    nop

    nop

    :goto_2b
    move v7, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_2c
    if-ne v3, p1, :cond_4

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b4

    nop

    nop

    :goto_2d
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_2e
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2f
    const/4 p1, 0x1

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

    :goto_30
    invoke-virtual {p1, v9, v1}, Ldso;->l(II)V

    goto/32 :goto_9

    nop

    nop

    :goto_31
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_32
    const v4, 0x7f0b0516

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    :goto_34
    move v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move v7, v10

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean v1, v1, Lprb;->o:Z

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_37
    move v7, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_39
    const v4, 0x7f0b02c9

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v3}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_3b
    sub-int/2addr v1, p1

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

    nop

    :goto_3c
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3e
    goto :goto_46

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto :goto_46

    nop

    :goto_41
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v3, 0x7f070853

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_43
    if-ne v3, p1, :cond_6

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual/range {v1 .. v6}, Ldso;->j(IIIII)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual/range {v1 .. v6}, Ldso;->j(IIIII)V

    :goto_46
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v3, p1}, Lnnr;->c(Landroid/app/Activity;Landroid/view/WindowInsets;)I

    move-result p1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    :goto_4a
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move v7, v10

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_46

    nop

    nop

    :goto_4d
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v3, p0, Lnbk;->d:Landroid/content/Context;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move v8, v0

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_50
    iget p1, p0, Lnbk;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0}, Lnbj;->N()I

    move-result v1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_53
    if-ne v3, p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_54
    const v4, 0x7f0b0514

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_55
    sget-object v5, Lnbi;->c:Lnbi;

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

    :goto_56
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_57
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 p1, 0x5

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5c
    move v2, v9

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

    :goto_5d
    iget-object p1, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5e
    iget p1, p0, Lnbk;->n:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v3, 0x4

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_60
    move v7, v10

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move v2, v9

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-ne p1, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :cond_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v3, Lnbe;->c:Lnbe;

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

    :goto_64
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_65
    move v2, v9

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_66
    const v2, 0x7f070092

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_67
    throw v2

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_bf

    nop

    nop

    :goto_69
    const v1, 0x7f070093

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_6b
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object v1, p0

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_6d
    move v2, v9

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const v1, 0x7f0701bf

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_46

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :cond_9
    goto/32 :goto_8c

    nop

    :goto_73
    if-ne v3, p1, :cond_a

    nop

    goto/32 :goto_a4

    nop

    :cond_a
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move v2, v9

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move v8, v0

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_76
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_6f

    nop

    nop

    :goto_77
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_79
    move-object v1, p0

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_46

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7c
    if-ne v3, p1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object p1, p0, Lnbk;->c:Ldso;

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

    :goto_7e
    const v3, 0x7f070091

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

    nop

    :goto_7f
    invoke-virtual {p1, v9, v1}, Ldso;->l(II)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_80
    move v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p0, v9, v10, v0}, Lnbj;->l(III)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_82
    iget-object v2, p0, Lnbk;->c:Ldso;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_85
    const/4 p1, 0x6

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0}, Lnca;->Y()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_87
    move v2, v9

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object p1, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    nop

    :goto_89
    move v2, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_8a
    iget-object p1, p0, Lnbk;->c:Ldso;

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

    :goto_8b
    if-nez p1, :cond_c

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_68

    nop

    :goto_8d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_8f
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_12

    nop

    nop

    :goto_92
    iget-object v2, p0, Lnbk;->c:Ldso;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const v4, 0x7f0b0514

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move v7, v10

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

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

    :goto_97
    const/16 p1, 0x8

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

    :goto_98
    const v4, 0x7f0b0514

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_99
    throw v2

    nop

    nop

    :goto_9a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v1, p0, Lnbk;->a:Lnbe;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    move-object v1, p0

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

    :goto_9d
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    goto/32 :goto_5d

    nop

    nop

    :goto_9f
    iget-object p1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_a1
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    move v7, v10

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_a7
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_a8
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object p1, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    move v2, v9

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const/4 v5, 0x4

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

    :goto_ad
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const v1, 0x7f070851

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {p1, v9, v1}, Ldso;->l(II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    sub-int/2addr v1, v0

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_b6
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_af

    nop

    nop

    :goto_b7
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b8
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    :cond_e
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_b9
    move v8, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object p1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object p1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    move v2, v9

    nop

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

    nop

    :goto_bd
    add-int/lit8 v3, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_be
    const v3, 0x7f07008e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_8d

    nop

    nop

    nop

    nop
.end method

.method public final L(Landroid/view/View;)V
    .locals 10

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v5, p0, Lnbk;->n:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v6, v4, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    const v1, 0x7f070adb

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

    :goto_6
    const v2, 0x7f0b00ac

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

    nop

    :goto_7
    const v5, 0x7f0b0516

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_8
    add-int/lit8 v6, v5, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_2d

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v6, v1

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x3

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

    :goto_17
    iget-object v3, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_18
    const v5, 0x7f070096

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_19
    const v2, 0x7f0b02c6

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean v2, v2, Lprb;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1, v0}, Lnbj;->a(II)I

    move-result v9

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_20
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_22
    throw p0

    nop

    nop

    :goto_23
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    :goto_26
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v2, 0x7f07008a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_29
    move v2, p1

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    :goto_2d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p1, v9, v0}, Lnbj;->l(III)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_30
    const v4, 0x7f07008b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    if-ne v6, v4, :cond_4

    nop

    nop

    goto/32 :goto_12

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

    :goto_32
    sget-object v4, Lnbe;->c:Lnbe;

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

    :goto_33
    move v2, p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    :goto_35
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    :goto_36
    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Lnbk;->a:Lnbe;

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

    :goto_38
    iget-object v2, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_39
    const/4 v4, 0x7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v4}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3b
    if-ne v6, v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v4, 0x7f070097

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_41
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_43
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_44
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4a
    move v7, v9

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_b

    nop

    :goto_4c
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4d
    move v8, v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_38

    nop

    nop

    :goto_50
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_52
    move-object v1, p0

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

    :goto_53
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_54
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_55
    iget-boolean v1, p0, Lnbk;->b:Z

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

    :goto_56
    iget-boolean v1, v1, Lprb;->o:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_57
    const v4, 0x7f0b0516

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

    :goto_58
    move v6, v1

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_59
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v4, 0x6

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

    :goto_5b
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5c
    move v4, v5

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const v7, 0x7f0b0514

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5e
    iget-object v3, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    :goto_5f
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-boolean v4, v4, Lprb;->o:Z

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_61
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_62
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_63
    iget-object v2, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_65
    if-eqz v2, :cond_9

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v4, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_67
    if-lez v0, :cond_a

    nop

    goto/32 :goto_b

    nop

    :cond_a
    goto/32 :goto_a

    nop

    :goto_68
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_69
    const v3, 0x7f070089

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6b
    iget-boolean v2, v2, Lprb;->o:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-ne v6, v4, :cond_b

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_6d
    if-nez v5, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6e
    goto :goto_71

    nop

    nop

    :goto_6f
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    move v4, v7

    nop

    nop

    :goto_71
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_72
    if-nez v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_68

    nop

    nop

    :goto_73
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_74
    move v4, v2

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_75
    goto/16 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p0}, Lnca;->X()Z

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

    nop

    nop

    :goto_78
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_79
    move v6, v1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto :goto_6f

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final M()Z
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v4

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    if-ne p0, v2, :cond_1

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Lnbk;->n:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, v0, Lprb;->o:Z

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_8
    if-nez p0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_4

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

    :cond_4
    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1c

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
    return v4

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    :goto_e
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    return v1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lnbk;->j:Landroid/util/Size;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    if-eq p0, v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_6
    :goto_16
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    if-ne p0, v2, :cond_7

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

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1b
    throw v3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    return v4

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget p0, p0, Lnbk;->n:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Lpby;->i(Landroid/util/Size;)Lpby;

    move-result-object p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Lpby;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_26
    const/4 v1, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v0, Lpby;->c:Lpby;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_29
    const/4 v2, 0x5

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

    :goto_2a
    throw v3

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final O(Landroid/view/View;)V
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

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
    const/4 v5, 0x0

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

    :goto_2
    const/4 v6, 0x0

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
    goto/32 :goto_f

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-virtual/range {v1 .. v6}, Lnca;->V(IIIII)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

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

    :goto_b
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnbk;->k:Landroid/util/Size;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x3

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
.end method

.method protected final g(II)I
    .locals 6

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lnbk;->5d18ca03c3a43d6510178c13595e2c12m(III)I

    move-result p0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const p1, 0x7f0708d1

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Lnbk;->ab(II)Z

    move-result v0

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_3
    const v1, 0x7f0708c6

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p2}, Lnbk;->ab(II)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_5
    const p1, 0x7f0708d2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_7
    mul-int/lit8 v0, p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lnca;->b(Landroid/util/Size;)I

    move-result p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p2}, Lnbk;->2194a702ab42f680f72c5339a0cb4214m(II)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5c

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

    goto/32 :goto_74

    nop

    :cond_0
    goto/32 :goto_73

    nop

    :goto_b
    if-gez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_1
    goto/32 :goto_a4

    nop

    nop

    :goto_c
    iget-object p0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_d
    const p1, 0x7f0708cf

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_3

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9b

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnbk;->k:Landroid/util/Size;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_7e

    nop

    nop

    :goto_13
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1, p2}, Lnbk;->2194a702ab42f680f72c5339a0cb4214m(II)Z

    move-result v0

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    const v1, 0x7f0708c5

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_88

    nop

    nop

    :goto_18
    invoke-direct {p0, p1, p2, v0}, Lnbk;->5d18ca03c3a43d6510178c13595e2c12m(III)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_6
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x9

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_7

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_6a

    nop

    nop

    :goto_25
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x7f0708c3

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_61

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, p1, p2}, Lnbk;->2194a702ab42f680f72c5339a0cb4214m(II)Z

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_29
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_2a
    return p0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x400ccccd    # 2.2f

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_61

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_31
    const p1, 0x7f0708d0

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_32
    return p0

    nop

    nop

    :pswitch_2
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_33
    float-to-int p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v1, v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_55

    nop

    nop

    :goto_35
    invoke-direct {p0, p1, p2}, Lnbk;->2194a702ab42f680f72c5339a0cb4214m(II)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_36
    invoke-virtual {p0, v0}, Lnbj;->c(Landroid/util/Size;)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const p2, 0x7f0708d4

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v0, p0, Lnbk;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v5, 0x3

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

    :goto_3a
    invoke-direct {p0, p1, p2, v0}, Lnbk;->5d18ca03c3a43d6510178c13595e2c12m(III)I

    move-result v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3b
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_9
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x7f0708c4

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p0, p1, p2, v0}, Lnbk;->5d18ca03c3a43d6510178c13595e2c12m(III)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_3e
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_40
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

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
    return v2

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_61

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_a6

    nop

    nop

    :goto_47
    mul-int/lit8 v1, p2, 0x3

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    packed-switch v1, :pswitch_data_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget v0, p0, Lnbk;->n:I

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_4b
    return p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {p0, p1, p2, v0}, Lnbk;->5d18ca03c3a43d6510178c13595e2c12m(III)I

    move-result p0

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

    :goto_4d
    invoke-super {p0, p1, p2}, Lnbj;->g(II)I

    move-result p0

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

    :goto_4e
    const v1, 0x7f0708c1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0, p1, p2, v0}, Lnbk;->5d18ca03c3a43d6510178c13595e2c12m(III)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_50
    invoke-super {p0, p1, p2}, Lnbj;->g(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_61

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_53
    if-ne v1, v3, :cond_c

    nop

    nop

    goto/32 :goto_94

    nop

    :cond_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

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

    :goto_55
    const/4 v3, 0x6

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

    nop

    :goto_56
    goto/16 :goto_61

    nop

    :goto_57
    goto/32 :goto_a3

    nop

    nop

    :goto_58
    invoke-direct {p0, p1, p2, v2}, Lnbk;->5d18ca03c3a43d6510178c13595e2c12m(III)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_59
    return p0

    nop

    :goto_5a
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_5c
    if-nez v0, :cond_d

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5d
    return v2

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_5f
    const p1, 0x7f0708ce

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_60
    return p0

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_63
    const/4 v4, 0x4

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

    :goto_64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_65
    div-float p2, p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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

    :goto_67
    cmpl-float p2, p2, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_68
    if-nez v0, :cond_e

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_6b
    if-ne v1, v5, :cond_f

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_f
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0}, Lnca;->Y()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    throw v3

    nop

    :goto_6f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_70
    if-eqz v0, :cond_10

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

    :cond_10
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v0, :cond_11

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_11
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {p1, p2}, Lnbk;->ab(II)Z

    move-result p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_90

    nop

    :goto_74
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    throw v3

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {p1, p2}, Lnbk;->ab(II)Z

    move-result v0

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

    :goto_78
    if-ne v1, v3, :cond_12

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const v1, 0x7f0708c2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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

    :goto_7b
    goto/16 :goto_61

    nop

    :goto_7c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {p0, p1, p2}, Lnbk;->2194a702ab42f680f72c5339a0cb4214m(II)Z

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_80
    invoke-direct {p0, p1, p2, v2}, Lnbk;->5d18ca03c3a43d6510178c13595e2c12m(III)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const v0, 0x7f0708d3

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_82
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_83
    goto/32 :goto_74

    nop

    :goto_84
    invoke-direct {p0, v5, v4, v2}, Lnbk;->5d18ca03c3a43d6510178c13595e2c12m(III)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-eq v0, v1, :cond_13

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

    :cond_13
    goto/32 :goto_40

    nop

    nop

    :goto_86
    iget-boolean v0, v0, Lprb;->o:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    :goto_89
    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    add-int/lit8 v1, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_8b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_8c
    int-to-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_8d
    return p0

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    return p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_90
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_61

    nop

    :goto_92
    goto/32 :goto_58

    nop

    nop

    :goto_93
    goto/16 :goto_6a

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v0, p0, Lnbk;->e:Lprb;

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

    nop

    nop

    :goto_96
    if-nez p1, :cond_15

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_97
    add-int/lit8 v1, v0, -0x1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object p0, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    nop

    :goto_99
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_9a
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_9c
    if-eqz v0, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    if-nez v1, :cond_17

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {p1, p2}, Lnbk;->ab(II)Z

    move-result p1

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_a0
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-direct {p0, p1, p2}, Lnbk;->2194a702ab42f680f72c5339a0cb4214m(II)Z

    move-result v0

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object p0, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    :goto_a4
    iget-object p0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_a5
    if-nez p1, :cond_18

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a6
    iget-object p0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-boolean v1, v1, Lprb;->o:Z

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_ac
    mul-float/2addr v2, p1

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

    :goto_ad
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop
.end method

.method protected final k()Lpby;
    .locals 5

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-int/2addr p0, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1b

    nop

    :pswitch_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    :goto_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1b

    nop

    nop

    :goto_7
    :pswitch_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lpby;->c:Lpby;

    nop

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

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    :goto_c
    invoke-virtual {p0, v4}, Lnbj;->f(Z)I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    sub-int/2addr p0, v3

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

    :goto_e
    goto :goto_7

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_10
    iget v1, p0, Lnbk;->n:I

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

    :goto_11
    sub-int/2addr p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lnbj;->e()I

    move-result v3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :goto_17
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, p0}, Lpby;->k(II)Lpby;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1e

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

    :goto_1d
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    invoke-virtual {p0}, Lnca;->X()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    move v2, v1

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

    :goto_23
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    const v3, 0x7f0701c5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_1b

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    const v3, 0x7f0701c6

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_8

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    :goto_29
    iget-object v2, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2a
    iget-boolean v1, v1, Lprb;->o:Z

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    :goto_2c
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v2, v1, -0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v0}, Lnbj;->c(Landroid/util/Size;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_30
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_32
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v3, 0x7f0701c3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_34
    iget-object v0, p0, Lnbk;->k:Landroid/util/Size;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_35
    const v3, 0x7f0701c4

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

    :goto_36
    const/4 v1, 0x0

    nop

    nop

    packed-switch v2, :pswitch_data_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_38
    const v1, 0x20

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v3, 0x7f070597

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

    :goto_3a
    iget-object v2, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    :goto_3b
    throw p0

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_a

    nop

    nop
.end method

.method public final n()V
    .locals 6

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

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

    :goto_1
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

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

    :goto_4
    iget-object v0, p0, Lnbk;->i:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    const v5, 0x7f0701c2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lnbk;->i:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_f
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_10
    const/16 v1, 0x8

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

    :goto_11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x2

    nop

    :goto_13
    goto/32 :goto_36

    nop

    nop

    :goto_14
    if-gt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

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

    nop

    :goto_16
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v2, v0, :cond_1

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnbk;->i:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v2, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lnbk;->a:Lnbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lnbk;->i:Lnbh;

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

    :goto_1f
    if-lt v3, v1, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lnbk;->d:Landroid/content/Context;

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_21
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gt v3, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    :goto_24
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lnbk;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_28
    sget-object v3, Lnbe;->c:Lnbe;

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
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v3}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

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

    :goto_2c
    if-lez v0, :cond_7

    nop

    goto/32 :goto_6

    nop

    :cond_7
    goto/32 :goto_5

    nop

    :goto_2d
    goto/16 :goto_13

    nop

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_13

    nop

    :goto_30
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-super {p0}, Lnbj;->n()V

    goto/32 :goto_4f

    nop

    nop

    :goto_32
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    iput v1, p0, Lnbk;->n:I

    nop

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

    :goto_37
    goto/16 :goto_13

    nop

    :goto_38
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, Lnbk;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lnbk;->k:Landroid/util/Size;

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

    :goto_3d
    const v5, 0x7f0708aa

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

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

    :goto_3f
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_41
    move v1, v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_43
    if-ne v2, v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_44
    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v1, v0}, Lnnr;->l(Landroid/content/Context;Landroid/util/Size;)Z

    move-result v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_13

    nop

    :goto_47
    goto/32 :goto_12

    nop

    nop

    :goto_48
    if-ne v2, v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_b
    goto/32 :goto_4e

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lnca;->Y()Z

    move-result v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

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

    nop

    :goto_4c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

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

    :goto_4e
    const/4 v1, 0x7

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final o(Landroid/view/View;)V
    .locals 11

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    nop

    nop

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
    move-object v1, p0

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_4
    if-nez v4, :cond_0

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v2, p1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    move v2, p1

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    goto/32 :goto_7e

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
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_e
    move v6, v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_11
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v1, v1, Lprb;->o:Z

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_16
    sget-object v3, Lnbe;->c:Lnbe;

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_dd

    nop

    nop

    :goto_18
    goto/32 :goto_5b

    nop

    nop

    :goto_19
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1, v9, v0}, Lnbj;->l(III)V

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_21
    move v8, v0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_22
    sget-object v3, Lnbi;->d:Lnbi;

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

    :goto_23
    move v6, v1

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x7f0700b3

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lnbk;->a:Lnbe;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_49

    nop

    nop

    :goto_27
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v5, Lnbe;->c:Lnbe;

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_29
    const v4, 0x7f0b0516

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_2
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

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

    :goto_2c
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2d
    iget-object v4, p0, Lnbk;->a:Lnbe;

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

    nop

    :goto_2e
    if-nez v1, :cond_3

    nop

    goto/32 :goto_a9

    nop

    nop

    :cond_3
    goto/32 :goto_69

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_30
    const v4, 0x7f0b02c9

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

    :goto_31
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_32
    const v4, 0x7f0b0516

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_49

    nop

    :goto_34
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v4, 0x7f0b0514

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_36
    const v4, 0x7f0b0516

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    :goto_38
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v2, 0x7f0b0514

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_49

    nop

    :goto_3b
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3c
    const v4, 0x7f070086

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3d
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v4, 0x7f0b02c9

    nop

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

    :goto_3f
    if-eq v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_40
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move v8, v0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move v7, v9

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_45
    move v4, v10

    nop

    :goto_46
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_47
    const v2, 0x7f070811

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    :goto_49
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4a
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_ae

    nop

    :goto_4b
    move v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_4c
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_4d
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_4f
    const v4, 0x7f0b0514

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_38

    nop

    :goto_53
    goto/32 :goto_1b

    nop

    nop

    :goto_54
    iget-boolean v4, p0, Lnbk;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v7, v9

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_56
    move v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_58
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_5b
    const v1, 0x7f0b0516

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    :goto_5d
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_5e
    move v7, v9

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_5f
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_61
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_62
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_63
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_60

    nop

    nop

    :goto_65
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_67
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-boolean v1, p0, Lnbk;->b:Z

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_66

    nop

    nop

    :goto_6c
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_6d
    sget-object v3, Lnbi;->d:Lnbi;

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

    :goto_6e
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v6, 0x0

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

    :goto_70
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_71
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_72
    sget-object v5, Lnbi;->d:Lnbi;

    nop

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

    :goto_73
    move v7, v9

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_75
    move v7, v9

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_6a

    nop

    nop

    :goto_77
    move v10, v2

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move-object v1, p0

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7d
    move v7, v9

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_7e
    iget-boolean v1, v1, Lprb;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    move v7, v9

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

    :goto_81
    const v4, 0x7f0b0516

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_82
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_83
    move-object v1, p0

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_84
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_85
    const v2, 0x7f070083

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_86
    move v2, p1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_87
    move v2, p1

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_88
    move-object v1, p0

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_89
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_8a
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_8b
    iget-boolean v1, v1, Lprb;->v:Z

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v4, v5}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v4

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

    :goto_8d
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_8e
    const v0, 0x10

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget v1, p0, Lnbk;->n:I

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_90
    if-nez v1, :cond_a

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_91
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_92
    if-ne v1, v2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :cond_b
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_94
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_95
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

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

    :goto_98
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-nez v1, :cond_c

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    move v8, v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9c
    const v3, 0x7f070084

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_9d
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const v2, 0x7f070090

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-eq v1, v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a2
    const v4, 0x7f0b0514

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_a3
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_3a

    nop

    nop

    :goto_a6
    invoke-virtual {p0}, Lnca;->Y()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_a7
    move v2, p1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_ac
    goto/16 :goto_46

    nop

    nop

    :goto_ad
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_ae
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_2c

    nop

    nop

    :goto_b0
    move-object v1, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    if-eq v1, v2, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :cond_e
    :goto_b2
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_b3
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_b4
    move v2, p1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_b5
    move v7, v9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_b7
    if-eq v1, v2, :cond_f

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_b8
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :cond_10
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    move v7, v9

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

    :goto_bb
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_bc
    move v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    move-object v1, p0

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

    :goto_be
    iget-boolean v1, v1, Lprb;->o:Z

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_bf
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c0
    move v2, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-eq v1, v2, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    :cond_11
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    const v4, 0x7f0b02c9

    nop

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

    :goto_c3
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    if-nez v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c5
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/16 :goto_dd

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_a6

    nop

    nop

    :goto_c8
    iget-boolean v1, v1, Lprb;->o:Z

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

    :goto_c9
    move v4, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_cb
    move v2, p1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {p0, p1, v0}, Lnbj;->a(II)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    throw p0

    nop

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_26

    nop

    nop

    :goto_d0
    move-object v1, p0

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    const v4, 0x7f0b0516

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_d2
    iget-boolean v1, v1, Lprb;->v:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_d3
    move v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_d4
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d5
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_33

    nop

    nop

    :goto_d6
    sget-object v3, Lnbi;->c:Lnbi;

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

    :goto_d7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v1, v3}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_db
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    move v10, v1

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_e0
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_e3
    const v10, 0x7f0b02c9

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop
.end method

.method public final t(Landroid/view/View;)V
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    iget-boolean v0, v0, Lprb;->o:Z

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

    :goto_2
    invoke-virtual/range {v1 .. v6}, Ldso;->j(IIIII)V

    goto/32 :goto_12

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    const/4 v0, 0x3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lnbk;->c:Ldso;

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

    :goto_6
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v2, v1, v0, v1}, Ldso;->i(IIII)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    const v4, 0x7f0b02c9

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

    :goto_9
    invoke-virtual {p1, v2, v0}, Ldso;->l(II)V

    goto/32 :goto_5

    nop

    nop

    :goto_a
    const v0, 0x13

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

    :goto_b
    goto/32 :goto_25

    nop

    nop

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
    iget p1, p0, Lnbk;->n:I

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

    :goto_e
    iget-object p0, p0, Lnbk;->c:Ldso;

    nop

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

    nop

    :goto_f
    invoke-super {p0, p1}, Lnbj;->t(Landroid/view/View;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_11
    invoke-virtual {p0, v2, v0, p1, v0}, Ldso;->i(IIII)V

    goto/32 :goto_2e

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
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    iget-object p1, p0, Lnbk;->c:Ldso;

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

    :goto_16
    iget-object p1, p0, Lnbk;->c:Ldso;

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

    :goto_17
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v2, v1, v0, v1}, Ldso;->i(IIII)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v5, 0x3

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

    :goto_1a
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lnbk;->e:Lprb;

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

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const p1, 0x7f0b02c9

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

    :goto_20
    iget-object p1, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

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

    :goto_22
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    :goto_24
    throw p0

    nop

    nop

    :goto_25
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_26
    if-eq p1, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

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

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_29
    invoke-virtual {p1, v2, v1, v0, v1}, Ldso;->i(IIII)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2b
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_2d
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_30
    iget-object p1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lnbk;->c:Ldso;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, v2, v0}, Ldso;->k(II)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const p0, 0x7f070683

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    iget-object p1, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_36
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method

.method public final v(I)V
    .locals 11

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    const/4 v2, 0x4

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

    :goto_2
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v3, 0x7f0b0515

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

    :goto_4
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, p1, v9}, Ldso;->l(II)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v4, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    move v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lnbk;->c:Ldso;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v8, 0x0

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

    :goto_a
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    invoke-virtual {v3, p1, v9}, Ldso;->l(II)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v0 .. v5}, Ldso;->j(IIIII)V

    goto/32 :goto_4a

    nop

    nop

    :goto_10
    const/4 v7, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    if-ne v4, v7, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    iget-boolean v2, v2, Lprb;->o:Z

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v4, v6, :cond_3

    nop

    goto/32 :goto_12

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

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

    :goto_17
    if-ne v4, v6, :cond_4

    nop

    goto/32 :goto_41

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnbk;->c:Ldso;

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

    :goto_19
    const v3, 0x7f0b0515

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    const v4, 0x7f070586

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1, v9, v3, v3}, Lnca;->S(IIII)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    const v3, 0x7f0b0515

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

    :goto_1f
    invoke-super {p0, p1}, Lnbj;->v(I)V

    goto/32 :goto_11

    nop

    nop

    :goto_20
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v4, v2, -0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    invoke-virtual/range {v0 .. v5}, Ldso;->j(IIIII)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1, v9, v3, v3}, Lnca;->S(IIII)V

    goto/32 :goto_18

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_68

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1, v9, v3, v3}, Lnca;->S(IIII)V

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, p1, v9, v3, v3}, Lnca;->S(IIII)V

    goto/32 :goto_1d

    nop

    nop

    :goto_2a
    const/4 v2, 0x3

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

    nop

    :goto_2b
    if-nez v4, :cond_5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    :goto_2c
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2d
    if-ne v4, v2, :cond_6

    nop

    goto/32 :goto_58

    nop

    :cond_6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    throw v8

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual/range {v0 .. v5}, Ldso;->j(IIIII)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_31
    const v3, 0x7f0b0515

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v3, 0x7f0b0515

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

    :goto_33
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual/range {v0 .. v5}, Ldso;->j(IIIII)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_36
    move v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_66

    nop

    :goto_3a
    invoke-virtual {p0, p1, v9, v2, v2}, Lnca;->S(IIII)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_65

    nop

    :goto_3c
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3d
    invoke-virtual {v2, p1, v9}, Ldso;->l(II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3e
    if-nez v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_8
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v4, :cond_9

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_44
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_45
    const/4 v2, 0x7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v4, v2, -0x1

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

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_48
    invoke-virtual {v2, p1, v9}, Ldso;->l(II)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move v5, v10

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    :goto_4d
    goto/32 :goto_2e

    nop

    nop

    :goto_4e
    invoke-virtual {v2, p1, v9}, Ldso;->l(II)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v2, p0, Lnbk;->n:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_50
    iget-object v0, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_51
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_52
    const v3, 0x7f070583

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_53
    move v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_54
    const/4 v4, 0x4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_55
    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_56
    if-ne v4, v2, :cond_b

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5a
    const v4, 0x7f070584

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5b
    invoke-virtual/range {v0 .. v5}, Ldso;->j(IIIII)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v4, 0x3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5d
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5e
    if-ne v4, v7, :cond_c

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    throw v8

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_61
    move v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v2, p0, Lnbk;->n:I

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

    :goto_65
    goto/32 :goto_60

    nop

    nop

    :goto_66
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_67
    iget-object v0, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v2, p0, Lnbk;->c:Ldso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_69
    move v1, p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop
.end method

.method public final w(Landroid/view/View;)V
    .locals 10

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Lnbk;->e:Lprb;

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

    nop

    nop

    :goto_1
    move v7, v9

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

    :goto_2
    move v6, v2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v2, v2, Lprb;->o:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
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
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    const v1, 0x7f0b0514

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    iget-boolean v3, v3, Lprb;->o:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    move v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    move v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_22

    nop

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1f

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x7f070597

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v4, 0x7f0b0516

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lnca;->X()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x0

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

    :goto_1e
    goto/16 :goto_36

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move v6, v1

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_25
    iget-object v3, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_27
    if-ne v3, v6, :cond_4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_28
    add-int/lit8 v3, v2, -0x1

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

    :goto_29
    const v5, 0x7f0b00ac

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, p0, Lnbk;->e:Lprb;

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

    nop

    :goto_2b
    goto/32 :goto_3d

    nop

    :goto_2c
    move v4, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v2, 0x7f07008d

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p1, v0}, Lnbj;->a(II)I

    move-result v9

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

    :goto_2f
    const v0, 0xd

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_30
    goto/16 :goto_22

    nop

    :goto_31
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

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

    nop

    :goto_33
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_34
    const v2, 0x7f070087

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

    :goto_35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v6, 0x4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_38
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_39
    move v2, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_6
    goto/32 :goto_3c

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, p1, v9, v0}, Lnbj;->l(III)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_43
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v2, p0, Lnbk;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_45
    iget-boolean v3, v3, Lprb;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public final x(Landroid/view/View;)V
    .locals 11

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_1
    const v1, 0x7f07008f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2
    move v2, p1

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_b1

    nop

    :goto_4
    goto/32 :goto_76

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_b1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    move v8, v0

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_9
    move v2, p1

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_a
    move v8, v0

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_d
    move-object v1, p0

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_f
    const v4, 0x7f0b0476

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_10
    const v4, 0x7f0b0516

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_c6

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_13
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_14
    goto/16 :goto_b1

    nop

    :goto_15
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_0

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_18
    move v2, p1

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

    :goto_19
    move v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_1c
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_20
    move-object v1, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v5, v1, -0x1

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v6, v10

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_26
    move v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v4, 0x7f0b00ac

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_2c
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_2d
    move v8, v0

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_b1

    nop

    :goto_30
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_31
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_32
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v3, Lnbi;->d:Lnbi;

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

    :goto_34
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x13

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1, v9, v0}, Lnbj;->l(III)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

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

    nop

    :goto_38
    const v4, 0x7f0b0514

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_b5

    nop

    nop

    :goto_3c
    const v4, 0x7f0b0476

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lnca;->Y()Z

    move-result v1

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_41
    iget-boolean v1, v1, Lprb;->o:Z

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_42
    throw v4

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_45
    move v8, v0

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_46
    move v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_49
    sget-object v5, Lnbi;->c:Lnbi;

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

    :goto_4a
    move v2, p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4b
    const v4, 0x7f0b00ac

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4c
    const v4, 0x7f0b0516

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object v3, Lnbi;->d:Lnbi;

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

    :goto_4e
    if-ne v5, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_50
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_b1

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1a

    nop

    nop

    :goto_55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_57
    move v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_58
    const v4, 0x7f0b0516

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_3
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5a
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_5c
    move v6, v10

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_5d
    move v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move v8, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_62
    iget v1, p0, Lnbk;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_63
    move v8, v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const v2, 0x7f070088

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_65
    iget-boolean v1, v1, Lprb;->o:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move v7, v9

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v1, 0x4

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_b1

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_b

    nop

    nop

    :goto_6a
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-ne v5, v3, :cond_4

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_6c
    sget-object v3, Lnbi;->c:Lnbi;

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

    :goto_6d
    iget v1, p0, Lnbk;->n:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6e
    move v8, v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6f
    if-ne v5, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v5, Lnbi;->d:Lnbi;

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

    :goto_71
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_72
    move v2, p1

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

    nop

    nop

    :goto_73
    move v2, p1

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

    :goto_74
    move v7, v9

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_76
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_78
    goto/16 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_7a
    const v4, 0x7f0b0475

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_7c
    invoke-virtual {p0, p1, v0}, Lnbj;->a(II)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_7d
    iget-object v1, p0, Lnbk;->e:Lprb;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_7f
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_80
    move v2, p1

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

    :goto_81
    move v7, v9

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

    nop

    nop

    :goto_82
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_83
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-ne v5, v1, :cond_7

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

    :cond_7
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_2f

    nop

    nop

    :goto_87
    move v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const v4, 0x7f0b0476

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_89
    move v2, p1

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_8a
    if-ne v5, v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const v4, 0x7f0b0516

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_8c
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8d
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_8e
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_6

    nop

    nop

    :goto_8f
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const v2, 0x7f070816

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

    :goto_91
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_92
    const v2, 0x7f070854

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_93
    if-ne v5, v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_94
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v6, 0x0

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

    :goto_96
    if-nez v5, :cond_a

    nop

    goto/32 :goto_a2

    nop

    nop

    :cond_a
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_97
    if-ne v5, v1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_ab

    nop

    nop

    :goto_98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const v4, 0x7f0b0514

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_9a
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_9c
    move-object v1, p0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_9d
    sget-object v5, Lnbi;->d:Lnbi;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const v4, 0x7f0b0476

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_9f
    if-ne v5, v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_a0
    sget-object v3, Lnbi;->c:Lnbi;

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

    :goto_a1
    goto/16 :goto_b1

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-nez v5, :cond_d

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

    :cond_d
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    add-int/lit8 v5, v1, -0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    move v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a6
    move v2, p1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_a9
    sget-object v3, Lnbi;->c:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_aa
    move v2, p1

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_ab
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_ad
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_e
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    :goto_b1
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_b2
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    const v4, 0x7f0b0514

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b4
    move v6, v10

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

    :goto_b5
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_b6
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    move v2, p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b8
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b9
    sget-object v5, Lnbi;->c:Lnbi;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_ba
    const v3, 0x7f070093

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_bb
    invoke-virtual/range {v1 .. v8}, Lnbj;->m(ILnbi;ILnbi;III)V

    goto/32 :goto_3

    nop

    nop

    :goto_bc
    move v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    move v7, v9

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_be
    sget-object v3, Lnbi;->c:Lnbi;

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

    :goto_bf
    move v2, p1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    move v7, v9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c1
    const v4, 0x7f0b0476

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_c2
    const v4, 0x7f0b00ac

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_c3
    if-lez v0, :cond_f

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_c9

    nop

    :goto_c4
    move-object v1, p0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_c5
    move v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_c6
    goto/16 :goto_b1

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_8d

    nop

    nop

    :goto_c8
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_d1

    nop

    :goto_ca
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_cb
    iget-object v0, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_cc
    sget-object v3, Lnbi;->d:Lnbi;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_cd
    const v2, 0x7f07008e

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const v2, 0x7f070684

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    move v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    return-void

    nop

    nop

    nop

    nop

    :goto_d1
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    const/4 v2, 0x5

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

    :goto_d3
    iget-object v1, p0, Lnbk;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_d4
    move v7, v9

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_b1

    nop

    nop

    :goto_d6
    goto/32 :goto_cc

    nop

    nop

    nop
.end method
