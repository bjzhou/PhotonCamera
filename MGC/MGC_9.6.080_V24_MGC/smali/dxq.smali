.class public final Ldxq;
.super Ldvd;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ldvd;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p0

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

    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-gtz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2}, Ldvd;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const-class p0, Landroid/widget/ScrollView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    goto :goto_15

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Landroid/view/View;Ldxb;)V
    .locals 5

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2}, Ldvd;->c(Landroid/view/View;Ldxb;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_3
    const v1, 0x1d

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

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

    :goto_9
    const/16 v3, 0x3fc

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Ldxa;->A:Ldxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    aput-object p0, v1, v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_f
    sget-object v0, Ldxa;->n:Ldxa;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

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

    :goto_11
    const/4 v0, 0x1

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

    :goto_12
    if-lt p1, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    const/16 v3, 0x400

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    sget-object p0, Ldxa;->m:Ldxa;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    nop

    :goto_17
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1a
    const/16 v3, 0x3ff

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v3, 0x3fe

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1c
    check-cast p1, Landroidx/core/widget/NestedScrollView;

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

    :goto_1d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

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

    :goto_1f
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v3, 0x0

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

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    :goto_23
    const/16 v3, 0x3fd

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

    :goto_24
    goto/32 :goto_e

    nop

    nop

    :goto_25
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-gtz p0, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2a
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    aput-object v2, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x1

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

    :goto_2d
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2e
    const/4 v1, 0x1

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

    :goto_2f
    aput-object p0, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_30
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_31
    const/4 v3, 0x0

    nop

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

    :goto_32
    aput-object p0, v1, v3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_33
    if-gtz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

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

    :goto_34
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v3, 0x0

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

    :goto_36
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_38
    const/16 v3, 0x401

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-class p0, Landroid/widget/ScrollView;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3e
    aput-object v0, v1, v3

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

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

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

    nop

    :goto_41
    sget-object v0, Ldxa;->y:Ldxa;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x102003a

    nop

    nop

    goto/32 :goto_43

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

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2
    return p3

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_23

    nop

    nop

    :goto_6
    if-ne p2, v1, :cond_0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_7
    add-int/2addr p2, p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    sub-int/2addr p0, p2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x2000

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->c()I

    move-result p0

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

    :goto_d
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_10
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result p2

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

    nop

    :goto_12
    if-ne p0, p2, :cond_2

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
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return p3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v1}, Landroidx/core/widget/NestedScrollView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_18
    sub-int/2addr p0, p2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Landroidx/core/widget/NestedScrollView;

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

    nop

    :goto_1b
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p0}, Landroidx/core/widget/NestedScrollView;->v(I)V

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    return v0

    nop

    :goto_1e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p3, 0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v1, 0x1000

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_23
    invoke-super {p0, p1, p2, p3}, Ldvd;->i(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1020038

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return p3

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    :goto_2a
    if-ne p2, v1, :cond_4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result p0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result p2

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

    :goto_2e
    if-nez p0, :cond_5

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

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1, p0}, Landroidx/core/widget/NestedScrollView;->v(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return v0

    nop

    :goto_31
    goto/32 :goto_41

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-ne p2, v1, :cond_6

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_39
    sub-int/2addr p0, p2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_8
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3e
    sub-int/2addr p2, p0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-ne p0, p2, :cond_9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_40
    sub-int/2addr p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result p2

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

    :goto_42
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_43
    if-ne p2, v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_a
    goto/32 :goto_30

    nop

    nop

    nop

    nop
.end method
