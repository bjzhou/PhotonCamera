.class public abstract Lkn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:Landroid/support/v7/widget/RecyclerView;

.field private b:Landroid/widget/Scroller;

.field private final c:Lkg;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object v0, p0, Lkn;->c:Lkg;

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

    :goto_2
    invoke-direct {v0, p0}, Lli;-><init>(Lkn;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    new-instance v0, Lli;

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
.end method


# virtual methods
.method public abstract a(Lkl;II)I
.end method

.method public abstract b(Lkl;)Landroid/view/View;
.end method

.method public abstract c(Lkl;Landroid/view/View;)[I
.end method

.method protected d(Lkl;)Lkx;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkn;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, v0}, Llj;-><init>(Lkn;Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Llj;

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
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of p1, p1, Lkw;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop
.end method

.method public e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lkn;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lkn;->f()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lkn;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->aA(Lkg;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lkn;->c:Lkg;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    :goto_c
    const v1, 0xc

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
    iget-object v1, p0, Lkn;->c:Lkg;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/widget/Scroller;

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

    :goto_15
    if-eq v0, p1, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_17
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lkn;

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Lkn;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p0, p1, Landroid/support/v7/widget/RecyclerView;->G:Lkn;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    :goto_23
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->G:Lkn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->aB(Lkg;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Lkn;->b:Landroid/widget/Scroller;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string p1, "An instance of OnFlingListener already set."

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_28
    iget-object v0, p0, Lkn;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_13

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_1
    aget v0, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

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

    :goto_4
    aget v2, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    move v1, v2

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    goto/16 :goto_1f

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

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

    :goto_b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1}, Lkn;->c(Lkl;Landroid/view/View;)[I

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lkn;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lkn;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    :goto_15
    aget v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1f

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
    add-int v0, v0, v1

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

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0}, Lkn;->b(Lkl;)Landroid/view/View;

    move-result-object v1

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

    :goto_1d
    if-nez v2, :cond_5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->au(II)V

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method

.method public g(II)Z
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_14

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

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-gt v2, v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Lkl;->aY(Lkx;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->l:Lke;

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

    :goto_a
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    iput p0, v0, Lkx;->b:I

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

    :goto_c
    if-nez v2, :cond_3

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
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    :goto_f
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    invoke-virtual {p0, v1, p1, p2}, Lkn;->a(Lkl;II)I

    move-result p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    :goto_16
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    iget-object v0, p0, Lkn;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_d

    nop

    :goto_1b
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v1}, Lkn;->d(Lkl;)Lkx;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    instance-of v0, v1, Lkw;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    goto :goto_14

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->H:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    if-le v2, v0, :cond_7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public h(II)[I
    .locals 9

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkn;->b:Landroid/widget/Scroller;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    move v5, v7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const v8, 0x7fffffff

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

    :goto_8
    const v1, 0x13

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    move v6, v8

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

    :goto_a
    move v4, p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalY()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    const/high16 v7, -0x80000000

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    move v3, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    filled-new-array {p1, p0}, [I

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lkn;->b:Landroid/widget/Scroller;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lkn;->b:Landroid/widget/Scroller;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
