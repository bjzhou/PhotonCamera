.class public final Loaj;
.super Ljq;
.source "PG"


# instance fields
.field b:Z

.field public c:I

.field private final d:F

.field private final e:F

.field private f:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Loaj;->c:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljq;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Loaj;->b:Z

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

    :goto_5
    iput p1, p0, Loaj;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iput p2, p0, Loaj;->e:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lkl;II)I
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lkl;->ao()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    sub-int p3, p2, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_18

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Ljq;->b(Lkl;)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    if-nez p3, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Lkl;->bh(Landroid/view/View;)I

    move-result v1

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

    :goto_d
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

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

    nop

    :goto_e
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    mul-int/2addr p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    return p2

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    :goto_15
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

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

    :goto_17
    iput p1, p0, Loaj;->c:I

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lkl;->W()Z

    move-result p1

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

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    :goto_1c
    div-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    :goto_1f
    const/4 v2, -0x1

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

    :goto_20
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    if-ne v1, v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    :goto_23
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Lkl;->X()Z

    move-result v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_26
    invoke-super {p0, p1, p2, p3}, Ljq;->a(Lkl;II)I

    move-result p2

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

    :goto_27
    iget-object p3, p0, Loaj;->f:Landroid/support/v7/widget/RecyclerView;

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
.end method

.method public final c(Lkl;Landroid/view/View;)[I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-static {p1, p2}, Lnzk;->e(Lkl;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    aget v0, p0, p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x13

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    iget v1, p1, Landroid/graphics/Point;->x:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget p1, p1, Landroid/graphics/Point;->y:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    aput v0, p0, p2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    aget v0, p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/2addr v0, p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0, p1, p2}, Ljq;->c(Lkl;Landroid/view/View;)[I

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aput v0, p0, p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    const v1, 0x9

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

    :goto_14
    goto/32 :goto_c

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected final d(Lkl;)Lkx;
    .locals 9

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    new-instance v8, Loar;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    const/16 p1, 0xb

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    invoke-direct {v7, p0, p1}, Lhdh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v6, Ligz;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v5, p0, Loaj;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const/16 v0, 0xc

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_a
    new-instance v7, Lhdh;

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

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    move-object v2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

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

    :goto_11
    invoke-direct/range {v2 .. v7}, Loar;-><init>(Landroid/content/Context;FFLrsk;Lrtm;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object v8

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    invoke-direct {v6, p0, p1, v0, v1}, Ligz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Loaj;->f:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v4, p0, Loaj;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Ljq;->e(Landroid/support/v7/widget/RecyclerView;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Loaj;->f:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(II)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    iput-boolean v0, p0, Loaj;->b:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1, p2}, Ljq;->g(II)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(II)[I
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v2, v3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v2, v2, -0xa

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    aput p2, p1, v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_e

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    neg-int v3, p2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

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

    nop

    :goto_a
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_b
    invoke-static {v3, v4, v2}, Ldvu;->z(III)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    float-to-int v2, v2

    nop

    :goto_e
    goto/32 :goto_1d

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

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v3, 0x64

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView;->l:Lke;

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

    :goto_14
    aput v2, p1, v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    div-float/2addr v2, v3

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

    :goto_16
    aget p2, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_17
    const/4 v2, 0x4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v3, 0xa

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v3, 0x42b40000    # 90.0f

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1b
    move v4, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1c
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    div-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ge v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1f
    const/high16 v3, 0x40800000    # 4.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_24
    invoke-super {p0, p1, p2}, Ljq;->h(II)[I

    move-result-object p1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_25
    neg-int v4, v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_37

    nop

    :goto_28
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_42

    nop

    :goto_2a
    add-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/2addr v4, v3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_31
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_34
    iput p2, p0, Loaj;->c:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_35
    invoke-static {v2, v3, p2}, Ldvu;->z(III)I

    move-result p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_36
    mul-int/2addr v4, v2

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p2, p0, Loaj;->f:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_39
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    :goto_3a
    aget v3, p1, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v2}, Lke;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3c
    aget v0, p1, v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3d
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-le v2, v3, :cond_4

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_40
    aget v2, p1, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_33

    nop

    :goto_42
    goto/32 :goto_24

    nop

    nop
.end method
