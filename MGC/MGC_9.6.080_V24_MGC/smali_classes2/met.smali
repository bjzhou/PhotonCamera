.class public final Lmet;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldt;

.field protected final b:Lrtm;

.field protected final c:I

.field public final d:Landroid/graphics/Rect;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroid/view/ViewGroup;

.field public g:Landroid/view/View;

.field private h:Lggk;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmet;->d:Landroid/graphics/Rect;

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

    :goto_1
    sub-int/2addr v4, v5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    const v1, 0x20

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
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

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

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, v0, Lnca;->j:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_d
    iget-object v0, p0, Lmet;->b:Lrtm;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iget v5, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_1

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
    iget-object v1, v0, Lnca;->k:Landroid/util/Size;

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

    :goto_11
    check-cast v0, Lnbs;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    :goto_13
    iget-object v0, v0, Lnbs;->d:Lnca;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, v2}, Lnca;->h(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Lnca;->k:Landroid/util/Size;

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

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v3, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    iget v2, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public constructor <init>(Ldt;Lrtm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lmet;->b:Lrtm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmet;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p1, p0, Lmet;->a:Ldt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const p2, 0x7f0c00ad

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lmet;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ldt;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmet;->d:Landroid/graphics/Rect;

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
    iget-object v0, p0, Lmet;->g:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :goto_b
    iget v2, p0, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget v3, p0, Landroid/graphics/Rect;->right:I

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

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const-string v0, "VIDEO_PLAYER_TAG"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lbr;->dq()Lcj;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x13

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, p0}, Lai;-><init>(Lcj;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmet;->a:Ldt;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Lai;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v0}, Lcp;->j(Lbo;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lcj;->d(Ljava/lang/String;)Lbo;

    move-result-object v0

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Lcp;->b()V

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 6

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

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

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2
    cmpl-float v2, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

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

    :goto_6
    invoke-direct {v1, p0, p1, v2, v3}, Lfgu;-><init>(Ljava/lang/Object;ZI[C)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v5, 0x8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lmet;->e:Landroid/widget/FrameLayout;

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
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_27

    nop

    nop

    :goto_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    const/16 v4, 0x11

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x19

    nop

    goto/32 :goto_25

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
    goto/32 :goto_1f

    nop

    nop

    :goto_14
    const/16 v2, 0x12

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
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

    :goto_16
    invoke-virtual {p0}, Lmet;->a()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    if-ne v2, v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_2
    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    mul-float/2addr p1, v2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    :goto_20
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v2, Llwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_23
    invoke-direct {v2, v0, v1, v4}, Llwv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_24
    new-instance v1, Lfgu;

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

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_27
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget p1, p0, Lmet;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

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

    :goto_2b
    iput-object v3, p0, Lmet;->h:Lggk;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-long v4, p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

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

    :goto_2e
    float-to-int p1, p1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2f
    if-lez v0, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_19

    nop

    :goto_30
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    nop

    :goto_1
    const v0, 0x7f0b0438

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    check-cast p1, Landroid/view/ViewGroup;

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    check-cast p1, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    const v0, 0x6

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    const v1, 0x7f0b0433

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lmet;->f:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    const v1, 0xc

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x7f0b0434

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    iput-object p1, p0, Lmet;->e:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    const v0, 0x7f0b0436

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public final d(Lnbh;)V
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    iget-object v5, v0, Lnbr;->b:Landroid/util/Size;

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

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    iget-object p1, v0, Lnbr;->d:Landroid/util/Size;

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

    nop

    nop

    :goto_5
    iget-object v0, p0, Lmet;->h:Lggk;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "VIDEO_PLAYER_TAG"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_9
    invoke-virtual {p1}, Lbr;->dq()Lcj;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lmet;->a:Ldt;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v2, v1, Lnca;->k:Landroid/util/Size;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v0, Lnbs;->d:Lnca;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Lmet;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_28

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

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lnqc;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    const v0, 0x17

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_13
    iget-object v2, v1, Lnca;->k:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    iput-object v4, v1, Lnca;->j:Landroid/util/Size;

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v5, v1, Lnca;->k:Landroid/util/Size;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_17
    invoke-virtual {p1, p0}, Lnra;->b(Landroid/graphics/Rect;)V

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, v1, Lnca;->j:Landroid/util/Size;

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

    :goto_1b
    iget-object p0, p0, Lmet;->d:Landroid/graphics/Rect;

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

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, v1, Lnca;->i:Lnbh;

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

    :goto_1f
    invoke-virtual {p1, v0}, Lcj;->d(Ljava/lang/String;)Lbo;

    move-result-object p1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    instance-of v0, p1, Lnqc;

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

    :goto_21
    iget-object p1, p1, Lnqc;->a:Lnra;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v3, v1, Lnca;->i:Lnbh;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lmet;->b:Lrtm;

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

    :goto_24
    check-cast v0, Lnbs;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, v0, Lnbs;->a:Lnbr;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v4, v1, Lnca;->j:Landroid/util/Size;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    iput-object p1, v1, Lnca;->i:Lnbh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Lmet;->d5484163cd8d335e6b17663474ff5f2bm()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x12

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2a
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final e(Landroid/view/View$OnTouchListener;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmet;->e:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lggk;)V
    .locals 5

    goto/32 :goto_16

    nop

    nop

    :goto_0
    iget-object v3, p0, Lmet;->g:Landroid/view/View;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lmet;->g:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_38

    nop

    nop

    :goto_7
    iget-object v0, p0, Lmet;->b:Lrtm;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lmet;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    new-instance v3, Llwv;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    move-object v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lmet;->g:Landroid/view/View;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    instance-of v0, p1, Lhpk;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1d

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Lnbs;->d:Lnca;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1a
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lnbs;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lmet;->g:Landroid/view/View;

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

    :goto_1d
    invoke-direct {v3, p0, p1, v4, v1}, Llwv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    float-to-int p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

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

    :goto_23
    invoke-direct {p0}, Lmet;->d5484163cd8d335e6b17663474ff5f2bm()V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lmet;->e:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

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

    :goto_2b
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

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

    :goto_2d
    const/16 v4, 0x13

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    cmpl-float p1, p1, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lmet;->h:Lggk;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_33
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_56

    nop

    nop

    :goto_34
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_37
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v1}, Lrrf;->x(Z)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    mul-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3b
    new-instance p1, Llwv;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p1, v0, v3, v1}, Llwv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget p0, p0, Lmet;->c:I

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

    :goto_3f
    iget-object v3, v0, Lnca;->k:Landroid/util/Size;

    nop

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

    :goto_40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_42
    int-to-long p0, p0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_43
    const v4, 0x38d1b717    # 1.0E-4f

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz v3, :cond_6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_46
    iget-object v4, v0, Lnca;->j:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_47
    iget-object v0, p0, Lmet;->g:Landroid/view/View;

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

    :goto_48
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_67

    nop

    :goto_49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4b
    iput-object p1, p0, Lmet;->h:Lggk;

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

    :goto_4c
    iput-object v3, v0, Lhpk;->g:Lrss;

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4e
    move-object v0, p1

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

    :goto_4f
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Lmet;->e:Landroid/widget/FrameLayout;

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

    :goto_51
    iget-object v0, p0, Lmet;->h:Lggk;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v0, Lhpk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_53
    invoke-static {v3}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_54
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_56
    goto :goto_55

    nop

    :goto_57
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v1, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_59
    iget-object v3, p0, Lmet;->h:Lggk;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5a
    invoke-interface {p1, v0, v3}, Lggk;->a(Lrss;Landroid/view/ViewGroup;)Landroid/view/View;

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

    :goto_5b
    if-nez v0, :cond_8

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5c
    iget-object v3, v3, Lhoy;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v3, v4, v0}, Lggk;->h(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v3}, Lhpk;->k(Landroid/view/View;)Lhoy;

    move-result-object v3

    nop

    nop

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

    :goto_60
    const/16 v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0, v3, v4}, Lnca;->h(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_65
    iget-object v3, p0, Lmet;->e:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_66
    sub-float p1, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

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

    nop

    nop
.end method
