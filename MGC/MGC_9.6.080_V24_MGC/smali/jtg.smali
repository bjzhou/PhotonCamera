.class public final Ljtg;
.super Lkg;
.source "PG"


# instance fields
.field public a:Lnbh;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lnbh;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljtg;->b:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

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

    :goto_3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljtg;->d:Landroid/content/res/Resources;

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

    :goto_6
    iput-object p2, p0, Ljtg;->a:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iput-object v0, p0, Ljtg;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const p2, 0x7f08034a

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lkg;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final p(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lky;)V
    .locals 4

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-int/2addr v2, p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p4}, Lnbh;->d()Z

    move-result p4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljtd;->a()I

    move-result p2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_3b

    nop

    nop

    :goto_d
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move p3, v1

    nop

    nop

    :goto_10
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_11
    invoke-super {p0, p1, p2, p3, p4}, Lkg;->p(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lky;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr p3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_16
    if-eqz p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    :goto_17
    move p4, p3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p4, p0, Ljtg;->a:Lnbh;

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

    :goto_19
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1a
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 p2, p2, -0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v2, v1, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Ljtg;->a:Lnbh;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const p4, 0x7f07037e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_20
    const p2, 0x7f070065

    nop

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

    :goto_21
    if-eq p4, p2, :cond_3

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

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v3, Lnbh;->b:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    sub-int/2addr v2, p2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    sget-object v3, Lnbh;->c:Lnbh;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_26
    move p4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_27
    invoke-virtual {v2, v3}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_28
    move p4, v1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_7

    nop

    :goto_2c
    const v0, 0x1c

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez p4, :cond_4

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

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_6
    goto/32 :goto_37

    nop

    nop

    :goto_30
    iget-object v0, p3, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_31
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result p3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_33
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_34
    add-int/2addr v2, p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p0, p0, Ljtg;->d:Landroid/content/res/Resources;

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

    :goto_36
    iget-object v2, p0, Ljtg;->a:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v0, Ljtd;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3a
    iget-object p3, p0, Ljtg;->d:Landroid/content/res/Resources;

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

    :goto_3b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/2addr p3, p0

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3f
    if-eqz p3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v2, v3}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_41
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_42
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

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
.end method

.method public final q(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v3, p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    sub-int/2addr v4, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3
    iget-object v4, p0, Ljtg;->c:Landroid/graphics/Rect;

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

    :goto_4
    iget-object v0, p0, Ljtg;->d:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_1f

    nop

    nop

    :goto_6
    const v4, 0x7f070139

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    div-int/lit8 p2, p2, 0x2

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v4, v4, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_a
    iget-object v1, p0, Ljtg;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

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

    :goto_c
    invoke-static {v1, v4}, Landroid/support/v7/widget/RecyclerView;->H(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, p0, Ljtg;->c:Landroid/graphics/Rect;

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
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

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

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_14
    goto/32 :goto_e

    nop

    nop

    :goto_15
    if-nez v4, :cond_1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_17
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v4, p0, Ljtg;->a:Lnbh;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr v4, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

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

    :goto_1e
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

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

    :goto_1f
    iget-object v2, p0, Ljtg;->b:Landroid/graphics/drawable/Drawable;

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

    :goto_20
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    :goto_23
    invoke-virtual {v4}, Lnbh;->d()Z

    move-result v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_25
    iget-object p2, p0, Ljtg;->d:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v4, p0, Ljtg;->a:Lnbh;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v4}, Lnbh;->d()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v0, p2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_3

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

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_8

    nop

    nop

    :goto_2c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    div-int/lit8 v1, v2, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1c

    nop

    :goto_2f
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    :goto_30
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_31
    sub-int/2addr p2, v3

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

    :goto_32
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_33
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Ljtg;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_35
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v4, 0x7f07037e

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_14

    nop

    nop

    :goto_39
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x3

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

    :goto_3b
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3d
    sub-int v0, v4, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
