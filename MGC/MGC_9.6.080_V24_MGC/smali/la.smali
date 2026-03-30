.class public final Lla;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Landroid/widget/OverScroller;

.field b:Landroid/view/animation/Interpolator;

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lla;->f:Z

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroid/widget/OverScroller;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iput-object v0, p0, Lla;->b:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iput-object p1, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/view/animation/Interpolator;

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

    :goto_7
    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    iput-object v0, p0, Lla;->a:Landroid/widget/OverScroller;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xf

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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
    goto/32 :goto_a

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_15
    iput-boolean v0, p0, Lla;->g:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(II)V
    .locals 12

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Lla;->a:Landroid/widget/OverScroller;

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lla;->e:I

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
    iput v0, p0, Lla;->d:I

    nop

    nop

    goto/32 :goto_b

    nop

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

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    iget-object v0, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Landroid/support/v7/widget/RecyclerView;->c:Landroid/view/animation/Interpolator;

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

    :goto_9
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

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

    :goto_a
    sget-object v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lla;->b:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v5, 0x0

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

    :goto_d
    iput-object v1, p0, Lla;->b:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    goto/32 :goto_18

    nop

    nop

    :goto_10
    iget-object v3, p0, Lla;->a:Landroid/widget/OverScroller;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const v1, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v1, Landroid/widget/OverScroller;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v9, v11

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    move v6, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    move v7, p2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

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

    :goto_18
    invoke-virtual {p0}, Lla;->b()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_1a
    const v11, 0x7fffffff

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    const/high16 v10, -0x80000000

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

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    move v8, v10

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v4, 0x0

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
.end method

.method final b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lla;->f:Z

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

    :goto_1
    iput-boolean v0, p0, Lla;->g:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

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
    invoke-direct {p0}, Lla;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_6
    return-void

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(IIILandroid/view/animation/Interpolator;)V
    .locals 8

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr p3, v0

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

    :goto_2
    int-to-float p3, p3

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

    nop

    :goto_3
    iget-object p3, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    move v3, v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p3

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    int-to-float v0, v4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p3, p0, Lla;->b:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    if-eq p3, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    :goto_c
    if-gt p3, v0, :cond_2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p4, :cond_3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_e
    const/4 p4, 0x2

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

    :goto_f
    iget-object v4, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

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

    :goto_10
    const v1, 0x17

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    new-instance v0, Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    :goto_13
    const/4 v3, 0x0

    nop

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

    :goto_14
    invoke-virtual {p0}, Lla;->b()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne p3, p4, :cond_6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    :goto_18
    goto/32 :goto_3d

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v0, -0x80000000

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

    :goto_1c
    add-float/2addr p3, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lla;->a:Landroid/widget/OverScroller;

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

    :goto_1e
    move v3, v1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v0, 0x43960000    # 300.0f

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

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

    nop

    :goto_24
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_26
    iput v1, p0, Lla;->e:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_27
    sget-object p4, Landroid/support/v7/widget/RecyclerView;->c:Landroid/view/animation/Interpolator;

    nop

    nop

    :goto_28
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v0, p0, Lla;->a:Landroid/widget/OverScroller;

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_26

    nop

    nop

    :goto_2b
    iput-object p4, p0, Lla;->b:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2c
    const/16 v0, 0x7d0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2d
    goto :goto_21

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move v6, p2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, p3, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto/32 :goto_29

    nop

    nop

    :goto_31
    float-to-int p3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_32
    move p3, v0

    nop

    :goto_33
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_35
    move v7, p3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_36
    iput v1, p0, Lla;->d:I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_37
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

    nop

    :goto_38
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3b
    move v5, p1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    :goto_3d
    goto/32 :goto_25

    nop

    nop

    :goto_3e
    goto/16 :goto_1f

    nop

    :goto_3f
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_40
    iget-object p3, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v4, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

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

    :goto_42
    mul-float/2addr p3, v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_43
    invoke-virtual {p3, p4}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v1, 0x0

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
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lla;->a:Landroid/widget/OverScroller;

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
.end method

.method public final run()V
    .locals 19

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_0
    aget v7, v6, v2

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v7, :cond_0

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_0
    goto/32 :goto_b7

    nop

    nop

    :goto_4
    if-ltz v4, :cond_1

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10f

    nop

    nop

    :goto_5
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_8
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_9
    if-gtz v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v6, v0, Lla;->d:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    neg-int v8, v6

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_a2

    nop

    nop

    :goto_d
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v11, v11, Lkx;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_f
    iget-object v6, v5, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_10
    invoke-virtual/range {v11 .. v18}, Landroid/support/v7/widget/RecyclerView;->A(IIII[II[I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-int v6, v4, v6

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct/range {p0 .. p0}, Lla;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sub-int v7, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_15
    neg-int v8, v4

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

    :goto_16
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_18
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v4, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_1a
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move v8, v2

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_1c
    aget v9, v8, v2

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1d
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v10, v9, v8}, Lkx;->e(II)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1f
    if-nez v6, :cond_5

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :cond_5
    :goto_20
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->C()V

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget v10, v10, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_23
    iget-object v10, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

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

    nop

    :goto_24
    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->ah(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aget v11, v10, v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v8, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    :cond_6
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v9, v8

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_28
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v10, v6, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_2a
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_2b
    move v13, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_2c
    if-ltz v5, :cond_8

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_8
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v11, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v8, v5, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_2f
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_30
    if-ne v6, v7, :cond_9

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_32
    iget-object v1, v1, Lkl;->t:Lkx;

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_33
    goto/16 :goto_f4

    nop

    nop

    :goto_34
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_35
    sub-int/2addr v4, v11

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_ed

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual/range {p0 .. p0}, Lla;->d()V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_39
    if-nez v8, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_3c
    move v15, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_3d
    aput v2, v12, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v6, :cond_b

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_b
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_3f
    if-gtz v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :cond_c
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v4, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v8, v6, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_42
    iget-object v1, v0, Lla;->a:Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_43
    iput-boolean v2, v0, Lla;->f:Z

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->ab(I)V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v6, v4, v5}, Landroid/support/v7/widget/RecyclerView;->v(II)V

    :goto_46
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_48
    float-to-int v6, v6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v4, v1}, Lkg;->k(Landroid/view/View;F)V

    :goto_4a
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v7, v5, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-boolean v1, v0, Lla;->g:Z

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_4e
    iget-object v12, v9, Landroid/support/v7/widget/RecyclerView;->S:[I

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_4f
    move v6, v5

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_50
    iget-object v8, v6, Landroid/support/v7/widget/RecyclerView;->S:[I

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

    :goto_51
    goto :goto_55

    nop

    nop

    :goto_52
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_53
    if-ltz v6, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_f0

    nop

    nop

    :goto_55
    goto/32 :goto_ef

    nop

    nop

    :goto_56
    const/4 v7, 0x2

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_57
    iput-boolean v2, v0, Lla;->g:Z

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_58
    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/32 :goto_99

    nop

    nop

    :goto_59
    aget v8, v8, v3

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v10, v6, Landroid/support/v7/widget/RecyclerView;->S:[I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    aput v2, v12, v2

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

    nop

    :goto_5c
    invoke-virtual/range {v9 .. v14}, Landroid/support/v7/widget/RecyclerView;->ai(II[I[II)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_5d
    aget v6, v6, v3

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_b6

    nop

    :goto_5f
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->w()V

    goto/32 :goto_42

    nop

    nop

    :goto_61
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v11, :cond_e

    nop

    goto/32 :goto_f4

    nop

    nop

    :cond_e
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_63
    sub-int/2addr v5, v10

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

    :goto_64
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->D()V

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_a2

    nop

    nop

    :goto_67
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput v4, v0, Lla;->d:I

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_69
    move v10, v4

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_6a
    if-nez v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_6b
    iget-boolean v11, v10, Lkx;->e:Z

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sub-int/2addr v5, v6

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-eqz v9, :cond_10

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :cond_10
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6f
    aput v2, v6, v2

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_70
    if-nez v5, :cond_11

    nop

    goto/32 :goto_98

    nop

    nop

    :cond_11
    goto/32 :goto_97

    nop

    nop

    :goto_71
    iget v7, v0, Lla;->e:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_72
    invoke-virtual {v10}, Lkx;->f()V

    goto/32 :goto_ad

    nop

    nop

    :goto_73
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->N:Lky;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v8, v4, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_1b

    nop

    nop

    :goto_77
    iget-object v0, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v6

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    aput v2, v8, v2

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_7b
    goto :goto_81

    nop

    :goto_7c
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v1, v2, v2}, Lkx;->e(II)V

    :goto_7e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez v5, :cond_12

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_80
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v7, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_83
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v11, v11, Lkl;->t:Lkx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_85
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v13

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v7, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_87
    goto/32 :goto_53

    nop

    nop

    :goto_88
    if-nez v6, :cond_13

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_89
    if-eqz v2, :cond_14

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_8a
    if-ltz v4, :cond_15

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_8b
    if-nez v4, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_8c
    if-ge v11, v6, :cond_17

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    return-void

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_2f

    nop

    nop

    :goto_8f
    iget-boolean v11, v10, Lkx;->f:Z

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iput-boolean v3, v0, Lla;->f:Z

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/16 v16, 0x0

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_92
    iget-boolean v4, v1, Lkx;->e:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_93
    if-ne v6, v10, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_8b

    nop

    nop

    :goto_94
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_95
    iget-object v10, v10, Lkl;->t:Lkx;

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v5, v4, v9, v8}, Lji;->a(Landroid/support/v7/widget/RecyclerView;II)V

    :goto_98
    goto/32 :goto_bb

    nop

    nop

    :goto_99
    goto/16 :goto_87

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_9b
    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v6}, Lky;->a()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_9d
    return-void

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-nez v7, :cond_19

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    :cond_19
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v9, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_a1
    move v6, v2

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    sub-int/2addr v4, v7

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    move-object/from16 v18, v6

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

    :goto_a7
    iget-object v6, v11, Landroid/support/v7/widget/RecyclerView;->S:[I

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v10, v9, v8}, Lkx;->e(II)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    move v11, v5

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_aa
    aput v2, v6, v3

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    move v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    move v6, v4

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    goto/16 :goto_f4

    nop

    nop

    nop

    nop

    :goto_ae
    goto/32 :goto_fa

    nop

    nop

    :goto_af
    iget-object v7, v5, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_b0
    iput v6, v10, Lkx;->b:I

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

    :goto_b1
    if-eqz v13, :cond_1a

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_103

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_102

    nop

    nop

    nop

    :goto_b4
    add-int/lit8 v6, v6, -0x1

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    goto/16 :goto_f0

    nop

    nop

    :goto_b6
    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_b7
    iget-object v7, v5, Landroid/support/v7/widget/RecyclerView;->A:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_b9
    if-nez v7, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    if-nez v10, :cond_1c

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v4, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_bc
    iget-object v7, v5, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_bd
    aput v2, v8, v3

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v1, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v1, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_c1
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c2
    sub-int/2addr v5, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_c3
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_c4
    move v14, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_c5
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView;->L:Lji;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_c6
    iget-object v5, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object v7, v5, Landroid/support/v7/widget/RecyclerView;->C:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-static {v6, v5, v8, v4}, Landroid/support/v7/widget/RecyclerView;->ap(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_c9
    goto/16 :goto_81

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->af(I)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    move v12, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_ce
    if-nez v7, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_1d
    goto/32 :goto_117

    nop

    nop

    nop

    :goto_cf
    if-nez v11, :cond_1e

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_d1
    if-eqz v11, :cond_1f

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :cond_1f
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_d2
    if-lez v0, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_ea

    nop

    :goto_d3
    if-nez v11, :cond_21

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d4
    invoke-virtual/range {p0 .. p0}, Lla;->b()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-eqz v6, :cond_22

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_d6
    if-nez v1, :cond_23

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    add-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_da
    goto/16 :goto_b3

    nop

    :goto_db
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_dd
    if-eqz v6, :cond_24

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

    :cond_24
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

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

    :goto_df
    if-nez v1, :cond_25

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_e0
    iget-object v7, v5, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    neg-int v6, v6

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->M:Ljg;

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :goto_e4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const/4 v13, 0x0

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->postInvalidateOnAnimation()V

    :goto_e7
    goto/32 :goto_e9

    nop

    nop

    :goto_e8
    if-gtz v5, :cond_26

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

    nop

    :cond_26
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    sget-boolean v4, Landroid/support/v7/widget/RecyclerView;->b:Z

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_8e

    nop

    nop

    :goto_eb
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_98

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_ef
    move v6, v3

    nop

    nop

    nop

    :goto_f0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f1
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->S:[I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f2
    move v4, v2

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    move v9, v8

    nop

    nop

    nop

    nop

    :goto_f4
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget-object v5, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

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

    :goto_f6
    invoke-virtual {v4}, Ljg;->b()V

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->E()V

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_f8
    move v9, v2

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_f9
    if-ne v6, v7, :cond_27

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_27
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    iget v11, v10, Lkx;->b:I

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_fb
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_fc
    iget-object v4, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_fd
    if-ne v11, v12, :cond_28

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_28
    goto/32 :goto_7f

    nop

    nop

    :goto_fe
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->F()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v6

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

    :goto_101
    sub-int/2addr v4, v9

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v6, v9, v8}, Landroid/support/v7/widget/RecyclerView;->B(II)V

    :goto_103
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_104
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_105
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_106
    invoke-static {v7, v6, v8, v5}, Landroid/support/v7/widget/RecyclerView;->ap(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_107
    iput v5, v0, Lla;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_108
    goto/16 :goto_83

    nop

    nop

    nop

    nop

    :goto_109
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v6

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_10d
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    iget-object v7, v5, Landroid/support/v7/widget/RecyclerView;->B:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_10f
    neg-int v4, v6

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_110
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_111
    iget-object v8, v6, Landroid/support/v7/widget/RecyclerView;->S:[I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v6, v4, v5, v8}, Landroid/support/v7/widget/RecyclerView;->V(II[I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_113
    iget-object v1, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_114
    const/16 v17, 0x1

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_115
    if-gtz v4, :cond_29

    nop

    nop

    goto/32 :goto_ca

    nop

    :cond_29
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_116
    if-eqz v6, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iget-object v7, v5, Landroid/support/v7/widget/RecyclerView;->z:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_118
    move v5, v2

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

    nop

    nop

    :goto_119
    iget-object v6, v0, Lla;->c:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_45

    nop

    nop
.end method
