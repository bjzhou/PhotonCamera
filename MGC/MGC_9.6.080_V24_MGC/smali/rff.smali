.class public Lrff;
.super Lrfi;
.source "PG"


# instance fields
.field private a:Ljava/lang/Runnable;

.field b:Landroid/widget/OverScroller;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lrff;->d:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lrfi;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lrff;->f:I

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lrff;->f:I

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
    return-void

    nop

    nop

    :goto_2
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Lrfi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lrff;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public ad(Landroid/view/View;)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public ae(Landroid/view/View;)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public af()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop
.end method

.method public ag(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public ai(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p0

    nop
.end method

.method public ak(Landroid/view/View;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final an(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v3, p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    move v6, p5

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    move v5, p4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrff;->af()I

    move-result v0

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

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    sub-int v4, v0, p3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual/range {v1 .. v6}, Lrff;->ag(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    move-object v2, p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    const v0, 0x11

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final ao(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    move-object v2, p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1b

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v4, -0x80000000

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v5, 0x7fffffff

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
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

    :goto_5
    invoke-virtual/range {v0 .. v5}, Lrff;->ag(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    move v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    iget v5, p0, Lrff;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_6
    move p1, v2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    float-to-int v0, v0

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

    :goto_9
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_29

    nop

    nop

    :goto_b
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_27

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_f
    goto/32 :goto_16

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

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_27

    nop

    nop

    :goto_13
    goto/32 :goto_40

    nop

    nop

    :goto_14
    if-nez p1, :cond_3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_15
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    return v4

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2c

    nop

    nop

    :goto_1a
    if-le v1, v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Lrff;->g:Landroid/view/VelocityTracker;

    nop

    :goto_1c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_5

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

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x4

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    :goto_21
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sub-int v1, v0, v1

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

    :goto_23
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lrff;->g:Landroid/view/VelocityTracker;

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

    nop

    :goto_25
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_26
    return v2

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_7

    nop

    nop

    :goto_28
    return v2

    nop

    :goto_29
    goto/32 :goto_24

    nop

    nop

    :goto_2a
    iput p1, p0, Lrff;->d:I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2b
    iput v3, p0, Lrff;->d:I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2c
    iget v0, p0, Lrff;->f:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput v0, p0, Lrff;->f:I

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2f
    if-ltz v0, :cond_9

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

    :cond_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;II)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p0, Lrff;->b:Landroid/widget/OverScroller;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_33
    if-nez p1, :cond_b

    nop

    goto/32 :goto_37

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_34
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

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

    :goto_35
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_36
    goto :goto_3d

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3b
    iget v1, p0, Lrff;->e:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move p1, v4

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz p1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_c
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_18

    nop

    :goto_40
    iput v0, p0, Lrff;->e:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_41
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput v1, p0, Lrff;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

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

    :goto_45
    iget v0, p0, Lrff;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_46
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_47
    float-to-int v1, v1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_48
    iget-object p1, p0, Lrff;->g:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_41

    nop

    nop

    :goto_4b
    goto/32 :goto_19

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lrff;->b:Landroid/widget/OverScroller;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4d
    iget-boolean v0, p0, Lrff;->c:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4f
    const v1, 0x13

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, p2}, Lrff;->ak(Landroid/view/View;)Z

    move-result v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-boolean p1, p0, Lrff;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_52
    if-eq v0, v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {p0 .. p2}, Lrff;->ai(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :goto_3
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4
    move v0, v9

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    :goto_6
    const/high16 v1, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_7
    iget-object v2, v6, Lrff;->g:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_8
    if-ne v0, v8, :cond_0

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

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9
    move v0, v9

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

    nop

    :goto_a
    return v9

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_31

    nop

    nop

    :goto_c
    if-ne v0, v4, :cond_1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_71

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v0, v8

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

    :goto_10
    sub-int v3, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, v6, Lrff;->e:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v1, v6, Lrff;->c:Z

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

    :goto_15
    neg-int v4, v4

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

    :goto_16
    const/4 v3, -0x1

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

    :goto_17
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_19
    iput v0, v6, Lrff;->e:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_1d
    iput-object v1, v6, Lrff;->g:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_29

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v1, v6, Lrff;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v2, p2

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    move-object/from16 v1, p1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, v6, Lrff;->g:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_29
    iget-object v1, v6, Lrff;->g:Landroid/view/VelocityTracker;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v6, Lrff;->g:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_2b
    add-float/2addr v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2c
    if-ne v0, v1, :cond_7

    nop

    goto/32 :goto_82

    nop

    :cond_7
    :goto_2d
    goto/32 :goto_61

    nop

    nop

    :goto_2e
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_2f
    move-object/from16 v6, p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v8, 0x1

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

    nop

    nop

    :goto_31
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v5, v6, Lrff;->a:Ljava/lang/Runnable;

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

    :goto_33
    if-eq v0, v3, :cond_8

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    :goto_34
    iget-object v0, v6, Lrff;->b:Landroid/widget/OverScroller;

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

    :goto_35
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v15, 0x0

    nop

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

    :goto_37
    move-object/from16 v4, p1

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

    :goto_38
    const/16 v4, 0x3e8

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v0, v6, v4, v2}, Lrfe;-><init>(Lrff;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v4, p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return v9

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_6e

    nop

    nop

    :goto_3f
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_40
    if-ne v0, v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_a
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move v0, v8

    nop

    :goto_45
    goto/32 :goto_69

    nop

    nop

    :goto_46
    float-to-int v0, v0

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

    nop

    nop

    :goto_47
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_49
    invoke-virtual/range {v10 .. v18}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object v0, v6, Lrff;->a:Ljava/lang/Runnable;

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

    :goto_4b
    invoke-direct {v5, v10}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    goto/32 :goto_52

    nop

    nop

    :goto_4c
    invoke-virtual/range {p0 .. p0}, Lrfi;->ap()I

    move-result v12

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

    :goto_4d
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_50
    const/16 v18, 0x0

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

    :goto_51
    iget-object v5, v6, Lrff;->b:Landroid/widget/OverScroller;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_52
    iput-object v5, v6, Lrff;->b:Landroid/widget/OverScroller;

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, v6, Lrff;->g:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_55
    iget v4, v6, Lrff;->d:I

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

    nop

    :goto_56
    const/4 v2, 0x3

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

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iput v1, v6, Lrff;->d:I

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

    :goto_59
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_5c
    new-instance v0, Lrfe;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_5e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5f
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_b
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-nez v0, :cond_c

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

    :cond_c
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_61
    move v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_62
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_63
    move-object/from16 v0, p0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v6, v2}, Lrff;->ae(Landroid/view/View;)I

    move-result v4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_66
    if-eqz v5, :cond_d

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_67
    move-object/from16 v7, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_68
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_69
    iput-boolean v9, v6, Lrff;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

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

    :goto_6b
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    goto/32 :goto_1d

    nop

    nop

    :goto_6c
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v14

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    return v8

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_6f

    nop

    :goto_72
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iput v0, v6, Lrff;->e:I

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput v3, v6, Lrff;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_77
    const/4 v5, 0x0

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

    :goto_78
    iget-object v10, v6, Lrff;->b:Landroid/widget/OverScroller;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_79
    move/from16 v17, v4

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

    :goto_7a
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_7c
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget v0, v6, Lrff;->d:I

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_7f
    new-instance v5, Landroid/widget/OverScroller;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_80
    invoke-virtual/range {v0 .. v5}, Lrff;->an(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v6, v2}, Lrff;->ad(Landroid/view/View;)I

    move-result v4

    nop

    goto/32 :goto_77

    nop

    nop

    nop
.end method
