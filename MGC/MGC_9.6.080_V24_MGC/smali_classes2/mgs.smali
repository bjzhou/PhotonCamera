.class public final Lmgs;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public final a:Lj$/time/Duration;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroid/view/View;

.field public d:Landroid/graphics/drawable/GradientDrawable;

.field public e:Lmgl;

.field public f:I

.field public final g:Lfdo;

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmgs;->c:Landroid/view/View;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lmgs;->b:Ljava/util/ArrayList;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2
    int-to-long v1, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

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

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Landroid/view/View;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, v2}, Lhoh;->p(Lhmn;)Z

    move-result p2

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

    :goto_7
    check-cast p2, Lfwm;

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

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    move-object p2, p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, p2, v1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Lmgs;->f:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Lmgs;->a:Lj$/time/Duration;

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

    :goto_10
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    const/4 p2, 0x0

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

    :goto_13
    const p0, 0x106000b

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    iput-object p2, p0, Lmgs;->g:Lfdo;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_15
    new-instance p2, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x7f0c00ad

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_17
    iput-boolean p2, p0, Lmgs;->h:Z

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    const v4, 0x7f0707e1

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

    :goto_1a
    const v3, 0x7f0707e3

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1b
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

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

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x12

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    instance-of p2, p1, Lfwm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

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

    :goto_29
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2b
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    const v1, 0x7f0707e2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2f
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_30
    invoke-direct {p2, v1, v1, v1}, Lfdo;-><init>([C[B[B)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v0, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p2, Lfdo;

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

    :goto_33
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p2}, Lfwm;->b()Lhoh;

    move-result-object p2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v1, p0, Lmgs;->c:Landroid/view/View;

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

    nop

    :goto_37
    sget-object v2, Lhmq;->aR:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    invoke-virtual {p0}, Lmgs;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 1

    goto/32 :goto_2

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
    invoke-virtual {p0, v0}, Lmgs;->a(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f070759

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

.method public final c()I
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    const v1, 0x7f0707f1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v1}, Lmgs;->a(I)I

    move-result p0

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

    :goto_6
    invoke-virtual {p0, v0}, Lmgs;->a(I)I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    const v1, 0x7f0707f3

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

    :goto_8
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1}, Lmgs;->a(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    const v1, 0x7f0707e7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1}, Lmgs;->a(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_10
    const v0, 0x7f0707f2

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

    :goto_11
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x14

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final d()Landroid/animation/Animator;
    .locals 5

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    if-lt v3, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v2}, Lmgs;->a(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lmgs;->h:Z

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v3, v1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4c

    nop

    nop

    :goto_b
    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Lmgs;->h:Z

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_e
    move v3, v1

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, p0, v2}, Lmgo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Lmgo;

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

    :goto_13
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

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

    :goto_16
    new-instance v2, Lnnh;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    filled-new-array {v1, v0}, [I

    move-result-object v0

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

    :goto_19
    new-instance v1, Lmgo;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    check-cast v4, Lmgm;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_30

    nop

    nop

    :goto_20
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_22
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

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

    :goto_23
    const v2, 0x7f070759

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Lmgs;->h(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    invoke-interface {v4}, Lmgm;->d()V

    :goto_27
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lmgs;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_29
    invoke-direct {v2, v1}, Lnnh;-><init>(Ljava/util/function/Consumer;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1, p0, v2}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4b

    nop

    nop

    :goto_2c
    const v0, 0x7f0707f2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lmgs;->c()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_18

    nop

    nop

    :goto_2f
    const/4 v2, 0x6

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

    :goto_30
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v4}, Lmgm;->b()V

    :goto_33
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lmgs;->g:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v1, Lieq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, v0}, Lmgs;->a(I)I

    move-result v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_38
    check-cast v4, Lmgm;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto :goto_2e

    nop

    :goto_3b
    goto/32 :goto_2d

    nop

    nop

    :goto_3c
    if-nez v4, :cond_3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0x8

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

    nop

    :goto_3e
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v3, v1}, Lnng;-><init>(Ljava/util/function/Consumer;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v1, p0, v2}, Lmgo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lmgs;->g:Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v3, Lnng;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0, v0}, Lmgs;->setAlpha(F)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_49
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_4c
    if-lt v3, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    :goto_4e
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop
.end method

.method public final e(I)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, p1}, Lmgs;->addView(Landroid/view/View;I)V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lmgs;->removeView(Landroid/view/View;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmgs;->e:Lmgl;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iget-object v0, p0, Lmgs;->e:Lmgl;

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
.end method

.method public final f(Z)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lmgq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lmgl;->setEnabled(Z)V

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    iget-object v0, p0, Lmgs;->e:Lmgl;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    const v0, 0x11

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-direct {v0, p1, v1}, Lmgq;-><init>(ZI)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lmgs;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final g(Lrss;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmgs;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    new-instance v0, Lmgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p1, v1}, Lmgo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x7

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    return-void

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

    :goto_d
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    add-int v0, v0, v1

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
.end method

.method public final h(I)V
    .locals 10

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const v0, 0x14

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

    :goto_6
    aput v0, p1, v3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_7
    aput v0, p1, v5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput v0, p1, v6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    new-array p1, v8, [F

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    aput v0, p1, v4

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    int-to-float v0, v0

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

    :goto_13
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_14
    aput v0, p1, v3

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

    :goto_15
    aput v0, p1, v6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aput v0, p1, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    aput v0, p1, v9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x3

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

    :goto_19
    aput v0, p1, v2

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

    nop

    nop

    :goto_1a
    const/16 v8, 0x8

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

    :goto_1b
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-array p1, v8, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_20
    aput v0, p1, v1

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

    nop

    :goto_21
    aput v0, p1, v4

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

    :goto_22
    iget-object p0, p0, Lmgs;->d:Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    iput p1, p0, Lmgs;->f:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_25
    const v0, 0x7f0707ee

    nop

    nop

    goto/32 :goto_30

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

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_28
    const/4 v1, 0x7

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    aput v0, p1, v7

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lmgs;->d:Landroid/graphics/drawable/GradientDrawable;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aput v0, p1, v7

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq p1, v9, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2d
    aput v0, p1, v1

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

    :goto_2e
    aput v0, p1, v5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2f
    aput v0, p1, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v0}, Lmgs;->a(I)I

    move-result v0

    nop

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
.end method
