.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "PG"

# interfaces
.implements Ldvl;
.implements Ldvm;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:[Ljava/lang/Class;

.field public static final c:Ljava/lang/ThreadLocal;

.field static final d:Ljava/util/Comparator;

.field private static final i:Lduz;


# instance fields
.field public e:Ldwy;

.field public f:Z

.field public g:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public final h:Lts;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/List;

.field private final l:[I

.field private final m:[I

.field private final n:[I

.field private o:Z

.field private p:Z

.field private q:[I

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Z

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Ldvo;

.field private final w:Ldvn;

.field private x:Lnze;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    float-to-int p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    mul-float/2addr p0, v0

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

.method private final 175bafa759041016accb75ef876de5d9m(Ldsw;Landroid/view/View;Landroid/view/MotionEvent;I)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Ldsw;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0, p2, p3}, Ldsw;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

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

    :goto_3
    if-nez p4, :cond_0

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 1a36313b7ed15ba14e0acb4da569b8b7m()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a74c8a79bf0ef0e20983317119c87838m()I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sub-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7521e341d48b08f214d1dac0738f16d0m(Landroid/view/MotionEvent;I)Z
    .locals 11

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v9, v7, v4, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->175bafa759041016accb75ef876de5d9m(Ldsw;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v7, v8, Ldsz;->m:Z

    nop

    :goto_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v10, v9, v4, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->175bafa759041016accb75ef876de5d9m(Ldsw;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    :goto_4
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4f

    nop

    :goto_6
    goto/32 :goto_55

    nop

    nop

    :goto_7
    if-ne v0, v7, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v7, v8, Ldsz;->a:Ldsw;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    :goto_a
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v6, :cond_3

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_3
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v4, v4, -0x1

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

    :goto_e
    if-nez v10, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:Ljava/util/Comparator;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_11
    if-lt v5, v2, :cond_5

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_5
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_12
    iput-boolean v3, v8, Ldsz;->m:Z

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v6, :cond_6

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v4, :cond_7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->E(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_8

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

    :cond_8
    goto/32 :goto_5

    nop

    :goto_1d
    goto/16 :goto_38

    nop

    :goto_1e
    goto/32 :goto_44

    nop

    nop

    :goto_1f
    if-eqz v7, :cond_9

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v2, :cond_a

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_15

    nop

    nop

    :goto_21
    const/4 v3, 0x0

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

    :goto_22
    if-eqz v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v9, v7, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->175bafa759041016accb75ef876de5d9m(Ldsw;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v4, 0x0

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

    :goto_25
    check-cast v10, Ldsz;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x12

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v7, v3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v7, 0x3

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

    :goto_2a
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    move v5, v4

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    :goto_32
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->E(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_3

    nop

    nop

    :goto_35
    check-cast v9, Landroid/view/View;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v5, v5, 0x1

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

    :goto_37
    move v6, v5

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v9, :cond_c

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    nop

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

    nop

    :goto_3d
    if-ne v0, v7, :cond_d

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :goto_3f
    goto/32 :goto_4e

    nop

    nop

    :goto_40
    if-nez v2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_57

    nop

    nop

    :goto_41
    check-cast v8, Ldsz;

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

    nop

    :goto_42
    if-lt v7, v5, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_44
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_32

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v6, :cond_10

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4a
    iget-object v10, v10, Ldsz;->a:Ldsw;

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

    :goto_4b
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4d
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_4e
    return v6

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const v0, 0x11

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v9, :cond_11

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_11
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

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

    :goto_56
    if-gez v4, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_12
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_58
    goto/32 :goto_5d

    nop

    nop

    :goto_59
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5a
    iget-object v9, v8, Ldsz;->a:Ldsw;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_6

    nop

    nop

    :goto_5d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v7, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method private final 7dd154808b1c676d3d63f3a63e9edabfm()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    const/16 v0, 0x500

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lrey;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    const/4 v1, 0x1

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

    :goto_9
    goto/32 :goto_17

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0}, Ldvw;->j(Landroid/view/View;Ldvo;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Ldwd;->a:[I

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

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    const v0, 0x15

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

    :goto_10
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Ldvo;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Ldvo;

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, v0}, Ldvw;->j(Landroid/view/View;Ldvo;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Ldvo;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, p0, v1}, Lrey;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 86d5c0c77e4f72baec1b0d5a6810921fm(Ldsz;Landroid/graphics/Rect;II)V
    .locals 5

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v2, v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    sub-int/2addr v0, v4

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    iget p0, p1, Ldsz;->bottomMargin:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    add-int/2addr v2, v3

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

    :goto_6
    sub-int/2addr v1, p4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget v3, p1, Ldsz;->leftMargin:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    sub-int/2addr v1, p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    iget v3, p1, Ldsz;->topMargin:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    add-int/2addr p3, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    add-int/2addr p4, p0

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

    :goto_f
    goto/32 :goto_1a

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2, v0, p0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    iget v4, p1, Ldsz;->rightMargin:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    iget v3, p2, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    sub-int/2addr v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-int/2addr v1, p0

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

    :goto_1d
    iget v3, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    const v0, 0xa

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

    nop

    :goto_20
    sub-int/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_22
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0xb

    nop

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

    nop

    :goto_24
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 92ebcae27b5395a18af07a7e07265cf7m(I)Z
    .locals 11

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v6, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    return v9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-virtual/range {v1 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f(Landroid/view/View;IIIII[I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

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

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/view/ViewGroup;

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

    :goto_a
    goto/16 :goto_19

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    aput v10, v8, v10

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_26

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x0

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

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    instance-of v2, v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    goto :goto_19

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v0, p0

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

    :goto_1a
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:[I

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1e
    if-nez v2, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x19

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

    :goto_20
    const/4 v3, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v8, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:[I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-gtz p0, :cond_2

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(Landroid/view/View;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_3
    goto/32 :goto_11

    nop

    :goto_25
    return v10

    nop

    nop

    :goto_26
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    if-eqz v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aget p0, p0, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_29
    invoke-virtual {p0, p0, v0, v1, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->cD(Landroid/view/View;Landroid/view/View;II)Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aput v10, v8, v9

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2b
    move-object v2, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x19

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_12

    nop

    nop

    :goto_2f
    move-object v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ldqy;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-class v0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lduz;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ldvb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    new-instance v0, Ldqy;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const v1, 0x6

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

    :goto_11
    if-nez v0, :cond_0

    nop

    goto/32 :goto_15

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

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_20

    nop

    nop

    :goto_18
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Ljava/lang/ThreadLocal;

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

    :goto_19
    invoke-direct {v0, v1}, Ldvb;-><init>(I)V

    goto/32 :goto_8

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

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:[Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:Ljava/util/Comparator;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_20
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-class v1, Landroid/util/AttributeSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x7f040200

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_0
    aget v2, p3, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1
    const v2, 0x7f150933

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p2, Ldsy;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_5
    if-nez p2, :cond_0

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_26

    nop

    nop

    :goto_8
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:[I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    new-array v0, v0, [I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    move-object v2, p0

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

    nop

    :goto_d
    sget-object v4, Ldsu;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setImportantForAccessibility(I)V

    :goto_f
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_54

    nop

    :goto_11
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v8, 0x7f150933

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getImportantForAccessibility()I

    move-result p2

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

    :goto_15
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_16
    new-array v1, v0, [I

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
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v5, p2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    move-object v5, p2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1a
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v1, Ldsu;->a:[I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p2, p0}, Ldsy;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    if-lt v0, p2, :cond_3

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

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_21
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    aput v2, p3, v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_23
    new-instance v0, Ldvn;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_24
    if-eqz p3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    :goto_25
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:[I

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_26
    sget-object v1, Ldsu;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_27
    move-object v6, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v2, p1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_55

    nop

    nop

    :goto_2b
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v4, Ldsu;->a:[I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2d
    new-array v1, v0, [I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-super {p0, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_3a

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_32
    move-object v3, p1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_33
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:[I

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

    :goto_34
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    :goto_36
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v0, Lts;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static/range {v2 .. v8}, Ldwb;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :goto_3a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3c
    iget-object p3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3f
    goto/32 :goto_b

    nop

    nop

    :goto_40
    move-object v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_41
    invoke-direct {v0}, Lts;-><init>()V

    goto/32 :goto_4a

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

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

    :goto_43
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_44
    invoke-static/range {v2 .. v8}, Ldwb;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz p3, :cond_5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move-object v6, v1

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

    :goto_48
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_49
    float-to-int v2, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_4b
    const v0, 0x18

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v2, p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

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

    :goto_4e
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move v7, p3

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

    :goto_50
    return-void

    nop

    :goto_51
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_52
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    array-length p2, p2

    nop

    nop

    :goto_54
    goto/32 :goto_1f

    nop

    nop

    :goto_55
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->7dd154808b1c676d3d63f3a63e9edabfm()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v0}, Ldvn;-><init>()V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_59
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5a
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Ldvn;

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

    nop
.end method

.method private static final D(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ldsz;II)V
    .locals 6

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    sub-int/2addr p0, p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v5, 0x10

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr p0, p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3d

    nop

    nop

    :goto_5
    goto/32 :goto_41

    nop

    nop

    :goto_6
    goto/32 :goto_23

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p3, v3, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    :goto_a
    iget p3, p3, Ldsz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_b
    goto :goto_12

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v0, v5, :cond_2

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

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    and-int/lit8 v0, v0, 0x70

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_f
    sub-int/2addr p0, p5

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

    :goto_10
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    sub-int/2addr p3, p1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_14
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr p4, p3

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

    :goto_17
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_19
    iget p3, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3f

    nop

    nop

    :goto_1c
    const/16 v4, 0x50

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

    :goto_1d
    if-ne p0, v5, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1e
    const/16 v0, 0x11

    nop

    :goto_1f
    goto/32 :goto_24

    nop

    nop

    :goto_20
    and-int/lit8 p0, p0, 0x70

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    and-int/lit8 p3, p0, 0x7

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_22
    if-ne p3, v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_23
    iget v0, p3, Ldsz;->c:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

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

    nop

    :goto_25
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p3, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

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

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget p0, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2b
    if-ne v0, v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2c
    goto :goto_35

    nop

    nop

    :goto_2d
    goto/32 :goto_38

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

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

    :goto_2f
    if-ne p0, v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2, p3, p0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sub-int/2addr p3, p4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_32
    add-int/2addr p5, p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    iget p3, p1, Landroid/graphics/Rect;->right:I

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

    :goto_34
    add-int/2addr p3, v4

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s(I)I

    move-result p3

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_37
    div-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_38
    iget p3, p1, Landroid/graphics/Rect;->left:I

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

    :goto_39
    div-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_10

    nop

    nop

    :goto_3c
    and-int/lit8 v1, v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3d
    if-ne v1, v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_6

    nop

    :goto_3f
    iget p0, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v3, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_44
    div-int/lit8 p1, p4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_45
    div-int/lit8 p1, p5, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_9
    goto/32 :goto_5

    nop
.end method

.method private static final E(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

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
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method private static final F(Landroid/view/View;I)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    sget-object v2, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput p1, v0, Ldsz;->i:I

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    sub-int v1, p1, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_8
    iget v1, v0, Ldsz;->i:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    if-ne v1, p1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_d
    invoke-virtual {p0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    check-cast v0, Ldsz;

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

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method private static final G(Landroid/view/View;I)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Ldwd;->a:[I

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

    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    const v1, 0x1b

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

    :goto_6
    if-ne v1, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_9
    iput p1, v0, Ldsz;->j:I

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Ldsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    iget v1, v0, Ldsz;->j:I

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

    :goto_11
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_12
    sub-int v1, p1, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m()I
    .locals 5

    goto/32 :goto_b

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

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

    :goto_8
    return v1

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v0, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_b
    const v0, 0x4

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

    :goto_c
    iget v4, v3, Ldsz;->topMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

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

    :goto_11
    check-cast v3, Ldsz;

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

    :goto_12
    iget v3, v3, Ldsz;->bottomMargin:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    add-int/2addr v2, v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_18
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x17

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    neg-int p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a74c8a79bf0ef0e20983317119c87838m()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m(I)I
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    array-length v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-ge p1, v3, :cond_0

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

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    :goto_6
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    const-string p0, " - attempted index lookup "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_b
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
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

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    :goto_13
    aget p0, v0, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v3, "No keylines defined for "

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:[I

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

    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    const v1, 0xa

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x12

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-gez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v1

    nop

    :goto_1e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1d

    nop

    nop

    :goto_20
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_21
    return v1

    nop

    :goto_22
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string p1, " out of range for "

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v2, "CoordinatorLayout"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    const-string v3, "Keyline index "

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_21

    nop

    nop

    :goto_28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d543f409229584e2e064495967092514m()V
    .locals 9

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_4
    const/4 v8, 0x0

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

    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v3, Ldsz;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Ldsz;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    if-lt v2, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v6, 0x0

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

    :goto_11
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_12
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    move-wide v1, v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :goto_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    :goto_1b
    const v1, 0xa

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    nop

    :goto_1d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Ldsz;->a:Ldsw;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    iput-boolean v1, v3, Ldsz;->m:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, p0, v2, v1}, Ldsw;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

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

    :goto_23
    move v2, v1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

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

    :goto_26
    const/4 v5, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_28
    const/4 v7, 0x0

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

    :goto_29
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2a
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_19

    nop
.end method

.method static final l(Landroid/view/View;)Ldsz;
    .locals 6

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

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

    nop

    nop

    nop

    :goto_1
    const-string v2, "CoordinatorLayout"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    :goto_3
    invoke-interface {v4}, Ldsx;->a()Ljava/lang/Class;

    move-result-object v4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    goto/32 :goto_21

    nop

    nop

    :goto_6
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v4, Ldsx;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_11

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    check-cast v0, Ldsz;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    iput-boolean v3, v0, Ldsz;->b:Z

    nop

    nop

    :goto_11
    goto/32 :goto_2d

    nop

    nop

    :goto_12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v1, v0, Ldsz;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14
    const-string v5, "Default behavior class "

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    invoke-virtual {p0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v4, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-interface {v4}, Ldsx;->a()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Ldsw;

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Ldsz;->b(Ldsw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Ldsv;->a()Ldsw;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-class v4, Ldsx;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

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

    :goto_20
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, p0}, Ldsz;->b(Ldsw;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_23
    iput-boolean v3, v0, Ldsz;->b:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    :goto_25
    const-string v1, "Attached behavior class is null"

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    if-eqz p0, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_28
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    goto/32 :goto_20

    nop

    nop

    :goto_2b
    move-object v4, v1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2d
    return-object v0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_30
    instance-of v1, p0, Ldsv;

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

    :goto_31
    const/4 v3, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_32
    check-cast p0, Ldsv;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_33
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_34
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_35
    const-string v4, " could not be instantiated. Did you forget a default constructor?"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private static s(I)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    and-int/lit8 v0, p0, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    const v0, 0x800003

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    and-int/lit8 v0, p0, 0x70

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

    :goto_5
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    or-int/2addr p0, v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    or-int/lit8 p0, p0, 0x30

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method private static u(I)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p0, 0x800035

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static v()Landroid/graphics/Rect;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lduz;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    check-cast v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lduz;

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
.end method

.method private static x(Landroid/graphics/Rect;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p0}, Lduz;->b(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    goto/32 :goto_3

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

    nop

    :goto_3
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lduz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/util/List;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    :goto_0
    check-cast v3, Lyo;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lyo;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v3, Lyo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    check-cast v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_c
    iget-object v3, p0, Lts;->d:Ljava/lang/Object;

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

    :goto_d
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    const v0, 0x3

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    invoke-virtual {v3, v1}, Lyo;->d(I)Ljava/lang/Object;

    move-result-object v3

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

    :goto_10
    iget-object v0, p0, Lts;->d:Ljava/lang/Object;

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

    :goto_11
    return-object v2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    :goto_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_17
    if-lt v1, v0, :cond_3

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

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1a
    goto/32 :goto_28

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    iget v0, v0, Lyo;->d:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3, v1}, Lyo;->g(I)Ljava/lang/Object;

    move-result-object v3

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

    :goto_23
    const v1, 0x11

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

    :goto_24
    if-nez v3, :cond_5

    nop

    goto/32 :goto_5

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Lts;->d:Ljava/lang/Object;

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
.end method

.method public final b(Landroid/view/View;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v2, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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

    nop

    nop

    nop

    :goto_9
    const v1, 0xf

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

    :goto_a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1}, Lts;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    goto :goto_7

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

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

    :goto_10
    check-cast v3, Ldsz;

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

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v1, v1, 0x1

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

    :goto_15
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, v3, Ldsz;->a:Ldsw;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    if-lt v1, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3, p0, v2, p1}, Ldsw;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method final c(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    goto/16 :goto_17

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    nop

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

    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x8

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

    nop

    :goto_e
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_f
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_1b

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3, p0, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_16

    nop

    nop

    :goto_13
    if-eq v0, v1, :cond_3

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

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1a

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    invoke-static {p0, p1, p3}, Ldtb;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop
.end method

.method public cD(Landroid/view/View;Landroid/view/View;II)Z
    .locals 10

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v3, v4, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p2

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

    :goto_3
    move-object v9, v3

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

    :goto_4
    move v7, p3

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

    :goto_5
    const v1, 0xa

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    iget-object v3, v9, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    move v8, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_8
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    move v2, v1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    const v0, 0x14

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

    :goto_f
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    :goto_11
    const/16 v4, 0x8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    move-object v4, p0

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

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    move-object v6, p1

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

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_16
    check-cast v9, Ldsz;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v9, p4, v3}, Ldsz;->c(IZ)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

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

    :goto_1a
    invoke-virtual {v9, p4, v0}, Ldsz;->c(IZ)V

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move v1, v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lt v1, p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual/range {v3 .. v8}, Ldsw;->q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_a

    nop

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    instance-of v0, p1, Ldsz;

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
.end method

.method public final d(Landroid/view/View;II[II)V
    .locals 15

    goto/32 :goto_38

    nop

    nop

    :goto_0
    if-gtz p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_1
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

    :goto_2
    if-nez v3, :cond_1

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    :goto_3
    aput v11, p4, v9

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v7, p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_6
    invoke-virtual {p0, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

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

    :goto_7
    const/4 v13, 0x1

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

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    :goto_9
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    :goto_a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move/from16 v14, p5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput v9, v5, v13

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v5, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

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

    :goto_10
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_43

    nop

    nop

    :goto_13
    const/16 v3, 0x8

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aget v0, v0, v13

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_16
    aput v12, p4, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    :goto_19
    aget v0, v0, v9

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget v0, v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    :goto_1c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

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

    :goto_20
    move v0, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move/from16 v4, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_23
    if-gtz p2, :cond_3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    :goto_24
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move/from16 v14, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_26
    move v12, v11

    nop

    :goto_27
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_28
    move v11, v10

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

    :goto_29
    iget-object v1, v1, Ldsz;->a:Ldsw;

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

    :goto_2a
    aput v9, v5, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2b
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lt v10, v8, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne v1, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x1a

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_2c

    nop

    :goto_34
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

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

    :goto_35
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v0, v9

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_38
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_39
    aget v0, v0, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3a
    goto/16 :goto_1c

    nop

    nop

    :goto_3b
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3c
    move v12, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3d
    move/from16 v6, p5

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3e
    move v10, v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_42
    check-cast v1, Ldsz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move v11, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_45
    invoke-virtual/range {v0 .. v6}, Ldsw;->m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I[II)V

    goto/32 :goto_23

    nop

    nop

    :goto_46
    invoke-virtual {v1, v14}, Ldsz;->d(I)Z

    move-result v3

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

    :goto_47
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    :goto_48
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(I)V

    :goto_4a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    goto/32 :goto_3c

    nop

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

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0x3e

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ccb4c19b7dbd16be9d2a43125797659dm()I

    move-result p1

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    neg-int p1, p1

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

    :goto_a
    goto/16 :goto_45

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    :goto_c
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->1a36313b7ed15ba14e0acb4da569b8b7m()I

    move-result p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    const/16 v2, 0x13

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 p1, 0x5c

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_45

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

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

    :goto_14
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result p0

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

    nop

    :goto_15
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    const/16 p1, 0x7a

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_18
    const/16 p1, 0x5d

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->132cd3b981019b59dc42653eea0b34b4m()I

    move-result p1

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

    :goto_1b
    neg-int p1, p1

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

    :goto_1c
    if-ne v1, v2, :cond_2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->132cd3b981019b59dc42653eea0b34b4m()I

    move-result p1

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

    :goto_1f
    if-ne v1, p1, :cond_3

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

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v1, p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_23
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2b

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2a
    return v0

    nop

    nop

    :goto_2b
    goto/32 :goto_15

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v1, v2, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    :goto_2e
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ccb4c19b7dbd16be9d2a43125797659dm()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2f
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_31

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

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

    :goto_32
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->1a36313b7ed15ba14e0acb4da569b8b7m()I

    move-result p1

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

    :goto_33
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_36
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

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

    :goto_39
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result p0

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

    :goto_3a
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_6
    goto/32 :goto_25

    nop

    :goto_3b
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez p1, :cond_8

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

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3e
    if-ne v1, p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-ne v1, v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_42
    if-ne v1, p1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result v0

    nop

    nop

    :goto_45
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez p1, :cond_c

    nop

    goto/32 :goto_4a

    nop

    :cond_c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/16 p1, 0x7b

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_48
    neg-int p1, p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_49
    goto :goto_45

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4b
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

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

    :goto_4d
    return p0

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object v0, v0, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast v0, Ldsz;

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

    :goto_4
    return p0

    nop

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1d

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
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v0

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->invalidate()V

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final e(Landroid/view/View;IIIII)V
    .locals 8

    goto/32 :goto_e

    nop

    nop

    :goto_0
    move v2, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p1

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

    :goto_4
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    move v5, p5

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f(Landroid/view/View;IIIII[I)V

    goto/32 :goto_1

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    move-object v0, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v4, p4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v3, p3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    :goto_11
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:[I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
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
.end method

.method public final f(Landroid/view/View;IIIII[I)V
    .locals 15

    goto/32 :goto_23

    nop

    nop

    :goto_0
    if-gtz p5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_1
    iget-object v1, v1, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2
    aput v1, p7, v13

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

    :goto_3
    move-object v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v14}, Ldsz;->d(I)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_5
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_9
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v12, v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_c
    aput v9, v6, v9

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_e
    if-gtz p4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_f
    aget v1, p7, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_10
    aget v1, p7, v9

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_11
    move v10, v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    move/from16 v14, p6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    move v12, v11

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_16
    move/from16 v5, p5

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    move-object v7, p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v1, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_44

    nop

    nop

    :goto_1a
    aget v0, v0, v9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v14, p6

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1e
    check-cast v1, Ldsz;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    :goto_20
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_22
    invoke-virtual/range {v0 .. v6}, Ldsw;->n(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V

    goto/32 :goto_e

    nop

    nop

    :goto_23
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    aget v0, v0, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2a
    aget v0, v0, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    iget-object v6, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2c
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_2d
    move v0, v9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2e
    move v11, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2f
    move v11, v10

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_30
    aput v9, v6, v13

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aget v0, v0, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_1c

    nop

    :goto_34
    goto/32 :goto_1b

    nop

    nop

    :goto_35
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    add-int/2addr v1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_38
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_5

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_38

    nop

    nop

    :goto_3d
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move/from16 v4, p4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(I)V

    :goto_40
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move v0, v13

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_42
    if-lt v10, v8, :cond_6

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v13, 0x1

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_44
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    aput v1, p7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_46
    move/from16 v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_47
    add-int/2addr v1, v12

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_36

    nop

    :goto_49
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_10

    nop

    nop

    :goto_4d
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4e
    iget-object v0, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:[I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p3, Ldsz;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p3, p4}, Ldvn;->b(II)V

    goto/32 :goto_d

    nop

    nop

    :goto_3
    if-lt p2, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p3, p3, Ldsz;->a:Ldsw;

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Ldvn;

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

    :goto_7
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

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

    :goto_8
    goto :goto_10

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

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

    :goto_b
    add-int/lit8 p2, p2, 0x1

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

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Landroid/view/View;

    nop

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

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p2, 0x0

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p3, p4}, Ldsz;->d(I)Z

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
.end method

.method protected final synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldsz;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ldsz;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ldsz;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1}, Ldsz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ldsz;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ldsz;-><init>(Ldsz;)V

    goto/32 :goto_10

    nop

    nop

    :goto_3
    new-instance p0, Ldsz;

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

    :goto_4
    new-instance p0, Ldsz;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Ldsz;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    instance-of p0, p1, Ldsz;

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

    :goto_9
    goto :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ldsz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Ldsz;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_f

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop
.end method

.method public final getNestedScrollAxes()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0}, Ldvn;->a()I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Ldvn;

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

.method protected final getSuggestedMinimumHeight()I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    add-int/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result p0

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

    nop

    :goto_d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final getSuggestedMinimumWidth()I
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xe

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

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

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

    :goto_7
    const v1, 0x1e

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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
    goto/32 :goto_2

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop
.end method

.method public final h(Landroid/view/View;I)V
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v5, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {v0, p2}, Ldvn;->c(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xa

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
    const/4 v1, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_22

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    invoke-virtual {v5, p0, v3, p1, p2}, Ldsw;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    add-int/lit8 v2, v2, 0x1

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

    :goto_d
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v5, v4, Ldsz;->a:Ldsw;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v4, p2}, Ldsz;->d(I)Z

    move-result v5

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

    :goto_13
    if-nez v5, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_14
    check-cast v4, Ldsz;

    nop

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

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_18
    if-lt v2, v0, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move v2, v1

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4, p2, v1}, Ldsz;->c(IZ)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Ldvn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v4}, Ldsz;->a()V

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method public final i(I)V
    .locals 24

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    goto/32 :goto_8a

    nop

    :cond_0
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v2

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

    :goto_2
    move/from16 v18, v9

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x3

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->D(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ldsz;II)V

    goto/32 :goto_14d

    nop

    nop

    nop

    :goto_7
    move/from16 v1, v17

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_8
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v5, :cond_1

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

    :cond_1
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_b
    move/from16 v6, v17

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_2

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_2
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_e
    check-cast v6, Ldsz;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_f
    move-object/from16 v23, v7

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_10
    move/from16 v1, p1

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_b4

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_171

    nop

    nop

    :goto_14
    iput v3, v10, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_168

    nop

    nop

    :goto_16
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_17
    invoke-static {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    if-nez v5, :cond_4

    nop

    nop

    goto/32 :goto_174

    nop

    :cond_4
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5a

    nop

    nop

    :goto_1b
    const/4 v5, 0x1

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_1c
    invoke-static {v15, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->F(Landroid/view/View;I)V

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, v2, Ldsz;->h:I

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLayoutDirection()I

    move-result v8

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_20
    const/4 v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_22
    sub-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_24
    invoke-static {v15, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->G(Landroid/view/View;I)V

    :goto_25
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_26
    move-object/from16 v19, v12

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

    :goto_27
    iget v4, v2, Ldsz;->bottomMargin:I

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v9, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_29
    iget v13, v11, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v13

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v3

    nop

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

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v7, v2

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sub-int/2addr v4, v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_31
    move v6, v9

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_32
    if-lt v1, v2, :cond_6

    nop

    goto/32 :goto_162

    nop

    :cond_6
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_34
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v9

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

    :goto_35
    if-ne v9, v7, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int/2addr v1, v2

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_37
    invoke-static {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v3, v2, Ldsz;->a:Ldsw;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move v5, v1

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v19, v12

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eq v2, v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move-object/from16 v2, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v12, Ldsz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_40
    invoke-static {v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v6, :cond_9

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_7e

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

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_8f

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_e4

    nop

    nop

    :goto_47
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v15, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->F(Landroid/view/View;I)V

    goto/32 :goto_44

    nop

    nop

    :goto_49
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_4a
    if-gtz v2, :cond_a

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_166

    nop

    nop

    :goto_4b
    iget v4, v2, Ldsz;->leftMargin:I

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_4c
    iget v3, v2, Ldsz;->rightMargin:I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4d
    iget v4, v10, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_4e
    iget v3, v10, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_4f
    const/4 v1, 0x0

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eq v4, v5, :cond_b

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

    :cond_b
    goto/32 :goto_73

    nop

    nop

    :goto_51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v15, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_53
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_b1

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_de

    nop

    nop

    :goto_56
    if-eq v2, v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :cond_c
    goto/32 :goto_133

    nop

    nop

    nop

    :goto_57
    invoke-direct {v0, v2, v13, v1, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->86d5c0c77e4f72baec1b0d5a6810921fm(Ldsz;Landroid/graphics/Rect;II)V

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move-object/from16 v5, v21

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v1, :cond_d

    nop

    goto/32 :goto_159

    nop

    :cond_d
    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v2, v2, Ldsz;->k:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    :goto_5b
    sub-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_5d
    iget v9, v11, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_5e
    iget v3, v9, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v3, v15, v9}, Ldsw;->r(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_60
    move/from16 v22, v6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_61
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-lt v3, v4, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :cond_e
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v2, Ldsz;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_65
    move-object/from16 v7, v23

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v6, 0x50

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_67
    move/from16 v6, v18

    nop

    nop

    :goto_68
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_69
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_6a
    if-nez v3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast v2, Landroid/view/View;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_6c
    iget v3, v12, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_6d
    iget v4, v12, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_6e
    if-eqz v2, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_10
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    sub-int/2addr v3, v4

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

    nop

    :goto_70
    invoke-virtual {v13, v0, v9, v15}, Ldsw;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_71
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    :goto_73
    iput-boolean v1, v12, Ldsz;->o:Z

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v3, v7, Ldsz;->l:Landroid/view/View;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_76
    move/from16 v1, v17

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_d0

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget v9, v10, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_17

    nop

    nop

    :goto_7b
    sub-int/2addr v9, v12

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_7c
    const/4 v5, 0x0

    nop

    :goto_7d
    goto/32 :goto_a1

    nop

    nop

    :goto_7e
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 v14, 0x0

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-lt v2, v6, :cond_12

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v1, v2, Ldsz;->a:Ldsw;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_83
    goto/16 :goto_179

    nop

    nop

    :goto_84
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget v3, v13, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    move/from16 v9, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_87
    if-nez v16, :cond_13

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_88
    iget-boolean v1, v12, Ldsz;->o:Z

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_89
    throw v0

    nop

    :goto_8a
    goto/32 :goto_9e

    nop

    nop

    :goto_8b
    iget v3, v12, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v1

    nop

    goto/32 :goto_17d

    nop

    nop

    :goto_8d
    invoke-static {v15, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->G(Landroid/view/View;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8e
    move-object/from16 v19, v12

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_90
    move v2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget v1, v2, Ldsz;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_144

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget v3, v9, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    and-int/lit8 v3, v1, 0x3

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

    nop

    :goto_96
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v9

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_98
    if-ne v2, v3, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_77

    nop

    nop

    :goto_99
    iget v4, v10, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_9a
    goto/16 :goto_25

    nop

    nop

    :goto_9b
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_ef

    nop

    nop

    :goto_9e
    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_9f
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_a0
    move-object/from16 v7, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_a1
    and-int/lit8 v1, v1, 0x5

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

    :goto_a2
    const v0, 0xf

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_ec

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_a5
    move/from16 v4, p1

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_a6
    invoke-static {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a8
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_ab
    move-object v12, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_ac
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-static {v15, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->F(Landroid/view/View;I)V

    :goto_ae
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_b0
    iput v3, v10, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_1d

    nop

    nop

    :goto_b2
    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    move-object/from16 v7, v19

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_b5
    if-lt v3, v4, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :cond_15
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

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

    nop

    :goto_b7
    goto/16 :goto_7d

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_7c

    nop

    nop

    :goto_b9
    check-cast v15, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    move-object v4, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_bc
    iget v4, v10, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_bd
    if-eq v3, v6, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :cond_16
    goto/32 :goto_2b

    nop

    nop

    :goto_be
    if-ne v3, v4, :cond_17

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_bf
    if-nez v1, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :cond_18
    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    if-eq v3, v7, :cond_19

    nop

    goto/32 :goto_fb

    nop

    nop

    :cond_19
    goto/32 :goto_94

    nop

    nop

    :goto_c1
    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_c2
    sub-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    goto/16 :goto_74

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    and-int/lit8 v3, v1, 0x50

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_c6
    iget-object v6, v6, Ldsz;->p:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-static {v3, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_c8
    const v1, 0x11

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_ca
    move-object v12, v7

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_cb
    move-object/from16 v12, v19

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    :goto_cd
    iget-object v6, v6, Ldsz;->p:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v13, v12, Ldsz;->a:Ldsw;

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_cf
    goto/16 :goto_146

    nop

    :goto_d0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    move-object v15, v2

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v12}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v12, v13, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    if-lt v14, v9, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_d5
    move-object v4, v2

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    move-object v7, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-static {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_37

    nop

    nop

    :goto_d8
    check-cast v4, Ldsz;

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_d9
    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    move-object/from16 v21, v4

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_db
    sub-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_dc
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v13, v15}, Ldsw;->h(Landroid/view/View;)Z

    move-result v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_de
    iget v3, v10, Landroid/graphics/Rect;->right:I

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

    :goto_df
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_e1
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e2
    move-object/from16 v23, v7

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_e3
    move v1, v4

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_e4
    move/from16 v22, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    :goto_e5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    sub-int/2addr v1, v2

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

    :goto_e7
    iget v2, v10, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_e8
    if-eqz v3, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_1b
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_9d

    nop

    :goto_ea
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iput v9, v10, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_f2

    nop

    nop

    :goto_ed
    invoke-virtual {v13, v0, v15}, Ldsw;->j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_ef
    if-lt v6, v14, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    :cond_1c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v15}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    and-int/lit8 v3, v3, 0x7

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v13, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_dd

    nop

    nop

    :goto_f4
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    :goto_f6
    if-eq v3, v2, :cond_1e

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

    :cond_1e
    goto/32 :goto_23

    nop

    nop

    :goto_f7
    invoke-virtual {v0, v15, v5, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;ZLandroid/graphics/Rect;)V

    goto/32 :goto_175

    nop

    nop

    :goto_f8
    const-string v2, "Rect should be within the child\'s bounds. Rect:"

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

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

    :goto_fa
    goto/16 :goto_a9

    nop

    nop

    :goto_fb
    goto/32 :goto_a8

    nop

    nop

    :goto_fc
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v2

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_fd
    if-nez v1, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    :cond_1f
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iget v3, v12, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_100
    invoke-static {v0, v5, v3}, Ldtb;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    if-eqz v4, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v6, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_12

    nop

    nop

    :goto_103
    invoke-virtual {v7, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_104
    sub-int/2addr v4, v3

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_105
    if-eqz v5, :cond_21

    nop

    goto/32 :goto_25

    nop

    :cond_21
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_106
    move v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_107
    sget-object v1, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_108
    const/4 v1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v12}, Ldsz;->a()V

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_10a
    add-int/lit8 v2, v14, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16c

    nop

    nop

    :goto_10c
    move-object v7, v12

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_10d
    iget v12, v11, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_10e
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    if-eq v1, v3, :cond_22

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    goto/16 :goto_144

    nop

    nop

    nop

    nop

    :goto_111
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_113
    iget v3, v9, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_10c

    nop

    nop

    :goto_116
    if-nez v3, :cond_23

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    if-ne v3, v5, :cond_24

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_118
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_119
    invoke-static {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11b
    if-lez v0, :cond_25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_124

    nop

    :goto_11c
    const/16 v7, 0x30

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_11d
    move-object/from16 v20, v3

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_11e
    iget v3, v2, Ldsz;->g:I

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    iget v4, v2, Ldsz;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_120
    iget v4, v2, Ldsz;->i:I

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_121
    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_122
    move/from16 v1, p1

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

    :goto_123
    sub-int/2addr v12, v13

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    goto/32 :goto_43

    nop

    nop

    :goto_125
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_126
    move v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_127
    move/from16 v18, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_128
    invoke-static {v1, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_129
    check-cast v6, Ldsz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_12a
    invoke-virtual {v15, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_12b
    goto/32 :goto_116

    nop

    nop

    nop

    :goto_12c
    goto/16 :goto_179

    nop

    nop

    nop

    nop

    :goto_12d
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    if-eqz v2, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_130
    goto/16 :goto_b1

    nop

    nop

    :goto_131
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    sub-int/2addr v1, v3

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_133
    iget v2, v13, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_134
    if-ne v4, v3, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_135
    move/from16 v17, v5

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_138
    check-cast v7, Ldsz;

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

    :goto_139
    iget v4, v2, Ldsz;->j:I

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_13a
    if-ne v9, v6, :cond_28

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_13b
    iget v3, v2, Ldsz;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_13c
    move-object/from16 v2, v21

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

    :goto_13d
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_13f
    invoke-virtual {v0, v15, v1, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;ZLandroid/graphics/Rect;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_140
    move v1, v5

    nop

    :goto_141
    goto/32 :goto_50

    nop

    nop

    :goto_142
    add-int/2addr v3, v4

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    goto/16 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_144
    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_145
    move-object/from16 v2, v21

    nop

    nop

    nop

    :goto_146
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_147
    iget-object v2, v4, Ldsz;->k:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_148
    if-nez v2, :cond_29

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    const/4 v4, 0x5

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

    :goto_14a
    add-int/lit8 v6, v22, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    if-gtz v2, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_14c
    sget-object v4, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iget v2, v13, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_14e
    invoke-static {v15, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->G(Landroid/view/View;I)V

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_14f
    iget v4, v2, Ldsz;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_150
    goto/16 :goto_141

    nop

    nop

    nop

    :goto_151
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_152
    if-nez v2, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_136

    nop

    nop

    nop

    :goto_153
    if-eq v3, v4, :cond_2c

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_113

    nop

    nop

    :goto_154
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v12

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

    nop

    :goto_155
    iget v4, v10, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_156
    iget v2, v10, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_157
    check-cast v9, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_158
    goto/16 :goto_9f

    nop

    nop

    nop

    :goto_159
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    move/from16 v18, v9

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

    :goto_15b
    invoke-static/range {v20 .. v20}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_15c
    and-int/lit8 v3, v1, 0x30

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_15d
    goto/16 :goto_ec

    nop

    :goto_15e
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    move-object/from16 v23, v7

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

    :goto_160
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_161
    goto/16 :goto_ae

    nop

    :goto_162
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_163
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_164
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_165
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_166
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_167
    and-int/lit8 v9, v3, 0x70

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_168
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_169
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    if-ne v4, v3, :cond_2d

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_16b
    iget v1, v13, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    const-string v2, " | Bounds:"

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

    nop

    :goto_16d
    if-lt v3, v4, :cond_2e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :cond_2e
    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_16e
    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    iget-object v5, v4, Ldsz;->k:Landroid/view/View;

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_170
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_171
    move/from16 v6, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_172
    iget v2, v2, Ldsz;->i:I

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

    :goto_173
    invoke-virtual {v1, v0, v15, v2}, Ldsw;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    :goto_174
    goto/32 :goto_15b

    nop

    nop

    :goto_175
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_176
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_177
    move v9, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    goto/16 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_179
    goto/32 :goto_164

    nop

    nop

    nop

    :goto_17a
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v11

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_17b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

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

    :goto_17c
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v4

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
.end method

.method public final j(Landroid/view/View;I)V
    .locals 11

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int/2addr v5, v7

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    and-int/lit8 v3, v2, 0x7

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

    :goto_6
    check-cast v0, Ldsz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Ldsz;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_c
    sub-int/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_9c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_13
    if-ne v3, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d116db4599d9ddc8c35e61366a4f4967m(I)I

    move-result p2

    nop

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

    :goto_15
    iget v4, v0, Ldsz;->rightMargin:I

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, v7, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_18
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_19
    iget v1, p0, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    iget p0, v1, Ldsz;->bottomMargin:I

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    invoke-static {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_58

    nop

    nop

    :goto_1f
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Ldsz;->k:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v1, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sub-int v0, v4, v0

    nop

    nop

    :goto_24
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_27
    const-string p1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    :goto_29
    check-cast v1, Ldsz;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v2, v1, Ldsz;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

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

    :goto_2c
    iget p2, p0, Landroid/graphics/Rect;->left:I

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

    :goto_2d
    and-int/lit8 v2, v2, 0x70

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

    :goto_2e
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_31
    iget v5, v0, Ldsz;->bottomMargin:I

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_34
    goto/16 :goto_a4

    nop

    :goto_35
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ne v2, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result p0

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_39
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_3a
    sub-int/2addr v4, v3

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

    :goto_3b
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Ldwy;->c()I

    move-result v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3d
    sub-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

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

    :goto_3f
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_41
    const/16 v0, 0x50

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_42
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x6

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sub-int/2addr v5, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_47
    sub-int/2addr v4, v3

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

    :goto_48
    invoke-virtual {p1, p2, p0, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4a
    sub-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v1, v7, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_4c
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4d
    iget v0, v0, Ldsz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v2, v0, Ldsz;->leftMargin:I

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

    nop

    :goto_4f
    sub-int/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sub-int/2addr p2, v6

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

    :goto_51
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_54
    add-int/2addr v7, p0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

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

    nop

    :goto_56
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_57
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_a4

    nop

    nop

    :goto_5a
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v3, v0, Ldsz;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v2}, Ldwy;->d()I

    move-result v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5e
    if-ne v2, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_60
    goto/32 :goto_45

    nop

    :goto_61
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_62
    move v6, p2

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_63
    iput v1, v7, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_65
    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    :goto_66
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_67
    if-gez v0, :cond_6

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_68
    iget v3, v1, Ldsz;->rightMargin:I

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_69
    iget v3, v1, Ldsz;->topMargin:I

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object v4, v7

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_6c
    const/4 v0, 0x5

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

    :goto_6d
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

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

    nop

    :goto_6e
    iget v3, v1, Ldsz;->leftMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6f
    add-int/2addr p2, v6

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_70
    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_0

    nop

    nop

    :goto_71
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_44

    nop

    :goto_72
    move v0, v7

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_74
    invoke-static {v2, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

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

    :goto_76
    const/4 v8, 0x1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

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

    nop

    nop

    :goto_78
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v1, :cond_8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8c

    nop

    nop

    :goto_7c
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_7d
    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_7e
    move-object v5, p0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_80
    if-eq p2, v8, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

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

    :goto_82
    iget v1, v7, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_83
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_85
    iget v0, v0, Ldsz;->e:I

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

    :goto_86
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_87
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_88
    const/16 v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iput v1, v7, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8b
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8c
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_8d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

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

    nop

    :goto_8e
    goto/16 :goto_9c

    nop

    :goto_8f
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iput v1, v7, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-ne v3, v8, :cond_a

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_92
    if-eq v2, v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p0}, Ldwy;->a()I

    move-result p0

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

    :goto_94
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_95
    add-int/2addr v6, p2

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

    :goto_96
    iget v2, v0, Ldsz;->f:I

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

    :goto_97
    sub-int/2addr v5, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-nez v1, :cond_c

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_5d

    nop

    nop

    :goto_99
    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    add-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_9b
    div-int/lit8 v0, v7, 0x2

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_53

    nop

    nop

    :goto_9d
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    div-int/lit8 v0, v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v2}, Ldwy;->b()I

    move-result v2

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0, v1, v6}, Ldtb;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    nop

    check-cast v8, Ldsz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    move v0, p2

    nop

    nop

    move-object v1, v6

    nop

    nop

    move-object v2, v7

    nop

    nop

    move-object v3, v8

    nop

    nop

    nop

    nop

    move v4, v9

    nop

    nop

    nop

    move v5, v10

    nop

    nop

    invoke-static/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->D(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ldsz;II)V

    invoke-direct {p0, v8, v7, v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->86d5c0c77e4f72baec1b0d5a6810921fm(Ldsz;Landroid/graphics/Rect;II)V

    iget p0, v7, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    iget p2, v7, Landroid/graphics/Rect;->top:I

    nop

    iget v0, v7, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    return-void

    nop

    :goto_a2
    goto/32 :goto_60

    nop

    nop

    :goto_a3
    add-int/2addr p2, v0

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_88

    nop

    nop
.end method

.method public k(Landroid/view/View;II)Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x(Landroid/graphics/Rect;)V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-static {p0, p1, v0}, Ldtb;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop
.end method

.method public final m(Landroid/view/View;III)V
    .locals 6

    goto/32 :goto_e

    nop

    nop

    :goto_0
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    move v4, p4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

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
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v2, p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    move v3, p3

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

    :goto_c
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    move-object v0, p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop
.end method

.method public final onAttachedToWindow()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ldvu;->l(Landroid/view/View;)V

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

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

    :goto_12
    sget-object v0, Ldwd;->a:[I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lnze;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Z

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

    :goto_17
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, p0, v1}, Lnze;-><init>(Landroid/view/ViewGroup;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d543f409229584e2e064495967092514m()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_3
    goto/32 :goto_b

    nop

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

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Landroid/view/View;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d543f409229584e2e064495967092514m()V

    goto/32 :goto_6

    nop

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
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_3
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v0, v1

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    :goto_d
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    const v0, 0x17

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_15
    invoke-virtual {v0}, Ldwy;->d()I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    :goto_1a
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d543f409229584e2e064495967092514m()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return p1

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

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

    :goto_8
    const/4 v1, 0x3

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

    :goto_9
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    :goto_b
    const v0, 0xc

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

    :goto_c
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_1

    nop

    :cond_2
    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

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

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d543f409229584e2e064495967092514m()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->7521e341d48b08f214d1dac0738f16d0m(Landroid/view/MotionEvent;I)Z

    move-result p1

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

    :goto_16
    goto/32 :goto_3

    nop

    :goto_17
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-lt p3, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p3, p3, 0x1

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

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLayoutDirection()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto :goto_12

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    :goto_8
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    check-cast p5, Ldsz;

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

    :goto_a
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p5, :cond_1

    nop

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

    :cond_1
    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

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
    check-cast p4, Landroid/view/View;

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

    :goto_f
    iget-object p5, p5, Ldsz;->a:Ldsw;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p5, p0, p4, p1}, Ldsw;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;I)V

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

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

    :goto_14
    goto :goto_18

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    :goto_16
    if-eq p5, v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p3, 0x0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    :goto_19
    if-nez p5, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v0, 0x8

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
.end method

.method protected final onMeasure(II)V
    .locals 30

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_0
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_196

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ldwy;->a()I

    move-result v0

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_6
    check-cast v8, Lyo;

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    :goto_7
    move/from16 v21, v1

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v4, v5, :cond_1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_9
    if-gez v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    :cond_2
    goto/32 :goto_167

    nop

    nop

    :goto_a
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    check-cast v7, Ldsz;

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v5, -0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_188

    nop

    :goto_e
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :goto_f
    and-int/lit8 v1, v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v11, v1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v6, p0

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

    :goto_14
    check-cast v4, Lyo;

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    :goto_16
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v4

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

    :goto_19
    invoke-virtual {v6, v0, v1, v8, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m(Landroid/view/View;III)V

    :goto_1a
    goto/32 :goto_1a4

    nop

    nop

    :goto_1b
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_1d
    and-int/2addr v0, v9

    nop

    goto/32 :goto_157

    nop

    nop

    :goto_1e
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_1f
    check-cast v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    :goto_20
    move v10, v3

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v2, :cond_4

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_202

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v6, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_23
    add-int v18, v0, v1

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

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

    :goto_25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v5, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    :cond_5
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v24, v23

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq v5, v2, :cond_6

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    :goto_2a
    if-lt v3, v2, :cond_7

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

    :cond_7
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_66

    nop

    :goto_2c
    goto/32 :goto_13

    nop

    nop

    :goto_2d
    invoke-virtual {v9, v5}, Lyo;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_2e
    goto/16 :goto_194

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_30
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v8, v5}, Ldsw;->h(Landroid/view/View;)Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    :goto_32
    if-nez v3, :cond_8

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_33
    move/from16 v28, v5

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_34
    iget v1, v1, Lyo;->d:I

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    :goto_35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_37
    if-ne v5, v6, :cond_9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move v3, v2

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v5, v1, Lts;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v8, v3, Ldsz;->k:Landroid/view/View;

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_183

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v4, v3}, Lyo;->d(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3d
    iget-object v2, v1, Lts;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_3e
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_9f

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v8, v8, Lts;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move/from16 v23, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_184

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move v10, v3

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    :goto_47
    iget v3, v7, Ldsz;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_48
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_49
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    :cond_a
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4b
    const-string v1, "Anchor must not be a descendant of the anchored view"

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_54

    nop

    nop

    :goto_4e
    add-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_50
    if-lt v2, v5, :cond_b

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

    :cond_b
    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v0, Lnze;

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move v12, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_53
    if-nez v4, :cond_c

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1f8

    nop

    nop

    nop

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

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_55
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    :cond_d
    goto/32 :goto_1b

    nop

    nop

    :goto_56
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move v8, v2

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_8a

    nop

    nop

    :goto_59
    iget-object v8, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :cond_e
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_5b
    move/from16 v1, v29

    nop

    nop

    :goto_5c
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v9}, Lduz;->a()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5f
    move/from16 v9, v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v2}, Ldwy;->d()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eqz v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :cond_f
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_178

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_103

    nop

    nop

    nop

    :goto_65
    return-void

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_67
    move v9, v1

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_68
    check-cast v9, Lyo;

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

    :goto_69
    invoke-static {v10, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    :goto_6a
    if-nez v4, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_3b

    nop

    nop

    :goto_6c
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_1ec

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_70
    check-cast v9, Ljava/util/ArrayList;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_72
    add-int v1, v17, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_73
    iput-boolean v8, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    :goto_74
    move/from16 v9, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_75
    goto/32 :goto_2c

    nop

    :goto_76
    add-int v0, v0, v1

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_78
    move/from16 v19, v7

    nop

    :goto_79
    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v4, v3, Lts;->d:Ljava/lang/Object;

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

    :goto_7b
    const v1, 0x9

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move-object/from16 v2, v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    :goto_7d
    if-eq v1, v2, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    :cond_11
    goto/32 :goto_1a7

    nop

    nop

    :goto_7e
    move-object v4, v5

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v4, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_145

    nop

    nop

    :goto_81
    goto/32 :goto_199

    nop

    nop

    :goto_82
    iget-object v4, v1, Lts;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :goto_83
    move-object/from16 v0, v24

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-lt v4, v0, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_85
    const/16 v25, 0x0

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v3, Lyo;

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_1fa

    nop

    nop

    :goto_88
    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual/range {v0 .. v5}, Ldsw;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-nez v19, :cond_13

    nop

    goto/32 :goto_9c

    nop

    :cond_13
    goto/32 :goto_1bf

    nop

    nop

    nop

    :goto_8b
    invoke-static {v10, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    :goto_8c
    move-object/from16 v0, v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iput-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    :goto_8f
    move/from16 v5, v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_90
    move/from16 v20, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_91
    if-nez v4, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    :goto_92
    if-nez v9, :cond_15

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const-string v1, "All nodes must be present in the graph before being added as an edge"

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_95
    check-cast v4, Landroid/view/View;

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_97
    iget-object v9, v8, Lts;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_98
    invoke-virtual {v0}, Lyo;->clear()V

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-nez v0, :cond_16

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    :cond_16
    goto/32 :goto_f1

    nop

    nop

    :goto_9b
    goto/16 :goto_fd

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :goto_9d
    move/from16 v20, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    move v0, v7

    nop

    nop

    :goto_9f
    goto/32 :goto_1e4

    nop

    nop

    :goto_a0
    add-int/lit8 v2, v20, 0x1

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_a1
    if-eq v1, v2, :cond_17

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :cond_17
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    sget-object v2, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_a3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a4
    if-eq v1, v2, :cond_18

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_a6
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_a8
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iput-object v8, v3, Ldsz;->l:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    :goto_aa
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    move/from16 v11, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget v10, v3, Ldsz;->h:I

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    :goto_ae
    if-eq v4, v1, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iput-object v4, v3, Ldsz;->k:Landroid/view/View;

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    :goto_b0
    move/from16 v9, v21

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object v9, v3, Lts;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_207

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_208

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    throw v0

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_b6
    check-cast v9, Lyo;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_b7
    if-ne v5, v8, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-nez v12, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :cond_1b
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iput-boolean v7, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    nop

    :goto_ba
    goto/32 :goto_62

    nop

    nop

    :goto_bb
    move/from16 v3, v22

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-eqz v9, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    check-cast v2, Lyo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_c3
    if-nez v2, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v8, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_c5
    if-eq v4, v6, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c6
    check-cast v8, Lyo;

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    :goto_c7
    iput-object v8, v3, Ldsz;->k:Landroid/view/View;

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    if-nez v23, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_1f
    :goto_c9
    goto/32 :goto_1ce

    nop

    nop

    nop

    :goto_ca
    iput-object v8, v3, Ldsz;->l:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    move v4, v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_cc
    move v10, v3

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    move-object/from16 v1, p0

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

    :goto_ce
    invoke-virtual {v9, v2}, Lyo;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_cf
    check-cast v9, Ldsz;

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_d0
    add-int v17, v9, v10

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    goto/16 :goto_139

    nop

    :goto_d2
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    move/from16 v2, v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    :goto_d5
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_d6
    iget v2, v7, Ldsz;->leftMargin:I

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d8
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_d9
    move/from16 v10, v26

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_da
    const/16 v25, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_db
    iget-object v1, v0, Lts;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_dc
    if-eqz v0, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :cond_20
    goto/32 :goto_d4

    nop

    nop

    :goto_dd
    check-cast v9, Lyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v0, v7, Ldsz;->a:Ldsw;

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_e0
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_83

    nop

    nop

    :goto_e2
    move/from16 v7, v25

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    move/from16 v23, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_e4
    move v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_e5
    move/from16 v29, v2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_e6
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_e7
    move v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    :goto_e8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    if-nez v9, :cond_21

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-eq v8, v9, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :cond_22
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v4, v2}, Lts;->b(Ljava/lang/Object;)V

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-static {v1, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    move v12, v7

    nop

    nop

    nop

    :goto_ef
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    move/from16 v20, v2

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    :goto_f1
    iget-boolean v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Z

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    sub-int/2addr v1, v8

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    :goto_f3
    check-cast v2, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f4
    move/from16 v22, v2

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

    :goto_f5
    move/from16 v26, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    :goto_f6
    check-cast v4, Landroid/view/View;

    nop

    nop

    nop

    nop

    :goto_f7
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    if-ne v8, v7, :cond_23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v6, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v3, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_fb
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_fc
    move/from16 v1, p2

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    check-cast v1, Lyo;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_ff
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_100
    add-int/2addr v1, v2

    nop

    goto/32 :goto_1b2

    nop

    nop

    :goto_101
    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    :goto_102
    move-object/from16 v24, v23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_103
    iget-object v0, v0, Lts;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_104
    if-nez v8, :cond_24

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    :cond_24
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_105
    if-eqz v8, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_106
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_107
    move/from16 v27, v11

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_108
    invoke-virtual {v8, v5}, Lts;->b(Ljava/lang/Object;)V

    :goto_109
    goto/32 :goto_159

    nop

    nop

    nop

    :goto_10a
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10b
    iget-object v2, v1, Lts;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_10c
    add-int/2addr v2, v0

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    :goto_10e
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    :goto_10f
    iget-object v8, v8, Lts;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_110
    sub-int v1, v16, v2

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v1, v4, v5, v8}, Lts;->c(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto/32 :goto_116

    nop

    nop

    :goto_112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1ba

    nop

    nop

    :goto_113
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v1

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

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

    :goto_116
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    const/16 v23, 0x0

    nop

    :goto_118
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_119
    if-nez v5, :cond_26

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    :cond_26
    goto/32 :goto_1db

    nop

    nop

    nop

    :goto_11a
    move v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lnze;

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    :goto_11c
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    check-cast v2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_11e
    if-nez v4, :cond_27

    nop

    goto/32 :goto_196

    nop

    :cond_27
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11f
    if-nez v9, :cond_28

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :cond_28
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_120
    iget-object v8, v1, Lts;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :goto_122
    if-nez v9, :cond_29

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    :cond_29
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_123
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_124
    goto/16 :goto_ef

    nop

    nop

    :goto_125
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_126
    const/16 v25, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_127
    const/16 v23, 0x1

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_129
    iget-object v9, v8, Lts;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-static {v9, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v9

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_12b
    const-string v4, "Could not find CoordinatorLayout descendant view with id "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    iget-object v4, v0, Lts;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_12d
    iget-object v9, v8, Lts;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_12e
    iget v9, v9, Ldsz;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_12f
    if-lt v2, v1, :cond_2a

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_2a
    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    nop

    :goto_130
    throw v0

    nop

    nop

    :goto_131
    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_132
    move v10, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_133
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_134
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_135
    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_136
    if-eqz v0, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_2b
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_137
    move/from16 v22, v2

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_139
    goto/32 :goto_50

    nop

    nop

    :goto_13a
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_13b
    iput-object v8, v3, Ldsz;->k:Landroid/view/View;

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

    :goto_13c
    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    move/from16 v27, v11

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

    nop

    nop

    :goto_13e
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l(Landroid/view/View;)Ldsz;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    goto/16 :goto_1a

    nop

    nop

    :goto_140
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_141
    goto/16 :goto_10e

    nop

    nop

    :goto_142
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_143
    move/from16 v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_144
    move v3, v7

    nop

    :goto_145
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    :goto_147
    if-nez v9, :cond_2c

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_173

    nop

    nop

    nop

    :goto_148
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    :goto_149
    const-string v3, " to anchor view "

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_14b
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    goto/16 :goto_186

    nop

    nop

    :goto_14d
    goto/32 :goto_185

    nop

    nop

    :goto_14e
    iput-object v4, v3, Ldsz;->l:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    :goto_14f
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_150
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_151
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_152
    invoke-interface {v4, v3}, Lduz;->b(Ljava/lang/Object;)Z

    :goto_153
    goto/32 :goto_36

    nop

    nop

    :goto_154
    move v3, v1

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    :goto_155
    if-lt v1, v0, :cond_2d

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_157
    move/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_158
    move v2, v0

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_159
    iget-object v8, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Lts;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_15a
    move/from16 v22, v2

    nop

    nop

    nop

    :goto_15b
    goto/32 :goto_1e0

    nop

    nop

    nop

    :goto_15c
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_15d
    iput-object v8, v3, Ldsz;->k:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    :goto_15e
    check-cast v0, Landroid/view/View;

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    invoke-direct {v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d116db4599d9ddc8c35e61366a4f4967m(I)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    :goto_160
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    :goto_161
    goto/16 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    :goto_162
    goto/32 :goto_203

    nop

    nop

    :goto_163
    instance-of v9, v5, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_164
    iget v2, v2, Lyo;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_165
    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    goto/32 :goto_1f7

    nop

    nop

    :goto_166
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_167
    if-nez v13, :cond_2e

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_168
    iget v4, v4, Lyo;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    :goto_169
    goto/16 :goto_205

    nop

    :goto_16a
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_16b
    move/from16 v26, v10

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    :goto_16c
    goto/16 :goto_196

    nop

    nop

    :goto_16d
    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    move/from16 v5, v28

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    :goto_170
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_171
    if-nez v0, :cond_2f

    nop

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_172
    move v11, v4

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    :goto_173
    iget-object v9, v8, Lts;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_174
    check-cast v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    :goto_175
    move-object/from16 v23, v0

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_176
    move/from16 v28, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_177
    move v2, v7

    nop

    :goto_178
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_179
    move v11, v4

    nop

    nop

    nop

    nop

    :goto_17a
    goto/32 :goto_a0

    nop

    nop

    :goto_17b
    const/high16 v0, -0x1000000

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17c
    instance-of v9, v5, Landroid/view/View;

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_17d
    goto :goto_17a

    nop

    nop

    :goto_17e
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    nop

    :goto_180
    iget v4, v3, Ldsz;->f:I

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_181
    iget-boolean v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Z

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    :goto_182
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_183
    iget-object v4, v3, Ldsz;->k:Landroid/view/View;

    nop

    nop

    :goto_184
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_185
    move/from16 v23, v12

    nop

    nop

    nop

    nop

    :goto_186
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_187
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    nop

    nop

    nop

    :goto_188
    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    :goto_189
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    if-ne v0, v1, :cond_30

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_18b
    if-lt v1, v0, :cond_31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18c
    if-ne v4, v5, :cond_32

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    check-cast v9, Lyo;

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLayoutDirection()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    :goto_18f
    iget-object v8, v3, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_190
    iget v5, v3, Ldsz;->f:I

    nop

    goto/32 :goto_18c

    nop

    nop

    :goto_191
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_192
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_193
    move v1, v7

    nop

    nop

    nop

    nop

    :goto_194
    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    :goto_195
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :goto_196
    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    iget-object v8, v3, Ldsz;->l:Landroid/view/View;

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_198
    if-eq v11, v8, :cond_33

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_199
    iget-object v1, v1, Lts;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    :goto_19a
    throw v0

    nop

    nop

    :goto_19b
    goto/32 :goto_15c

    nop

    nop

    :goto_19c
    move/from16 v1, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    move/from16 v2, p1

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    move-object/from16 v0, v24

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_19f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    :goto_1a0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    iput-object v8, v3, Ldsz;->l:Landroid/view/View;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    const/4 v7, 0x0

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_1a3
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

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

    nop

    :goto_1a5
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_1a6
    if-nez v4, :cond_34

    nop

    nop

    goto/32 :goto_6c

    nop

    :cond_34
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    if-nez v23, :cond_35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :cond_35
    :goto_1a8
    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    :goto_1a9
    move v1, v7

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    goto/16 :goto_1cd

    nop

    nop

    :goto_1ab
    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    if-eq v1, v2, :cond_36

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_1ad
    if-eqz v9, :cond_37

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    move v8, v1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1af
    invoke-virtual {v9, v5}, Lyo;->g(I)Ljava/lang/Object;

    move-result-object v9

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

    :goto_1b0
    iget-object v4, v3, Ldsz;->k:Landroid/view/View;

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    :goto_1b1
    move v11, v4

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_1b2
    iget v2, v7, Ldsz;->rightMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b3
    iget v8, v7, Ldsz;->e:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b4
    invoke-virtual {v3, v2}, Lyo;->g(I)Ljava/lang/Object;

    move-result-object v3

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

    :goto_1b5
    check-cast v4, Lyo;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1b6
    goto/16 :goto_79

    nop

    :goto_1b7
    goto/32 :goto_78

    nop

    nop

    :goto_1b8
    sub-int/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_1ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    const/16 v7, 0x8

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_1bd
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1be
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    sget-object v1, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_1c0
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_1c2
    if-nez v9, :cond_38

    nop

    goto/32 :goto_b3

    nop

    :cond_38
    goto/32 :goto_129

    nop

    nop

    :goto_1c3
    iget-object v4, v3, Ldsz;->k:Landroid/view/View;

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_1c4
    move/from16 v21, v1

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    :goto_1c5
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    move v4, v8

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    if-nez v23, :cond_39

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :cond_39
    :goto_1c8
    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1ca
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    iget v4, v3, Ldsz;->f:I

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

    :goto_1cc
    move v5, v7

    nop

    :goto_1cd
    goto/32 :goto_27

    nop

    nop

    :goto_1ce
    sub-int v1, v14, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_1cf
    const/4 v8, 0x1

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_1d0
    move/from16 v23, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d1
    move v0, v8

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1d2
    iput-object v4, v3, Ldsz;->l:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_1d3
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_1d4
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_1d5
    check-cast v8, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    invoke-virtual {v6, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    move/from16 v21, v1

    nop

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

    :goto_1d8
    move-object/from16 v23, v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    sub-int v0, v14, v1

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    iget v3, v3, Ldsz;->f:I

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1db
    if-eq v5, v2, :cond_3a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_6e

    nop

    nop

    :goto_1dc
    goto/16 :goto_3b

    nop

    nop

    :goto_1dd
    goto/32 :goto_30

    nop

    nop

    :goto_1de
    throw v0

    nop

    nop

    nop

    nop

    :goto_1df
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    goto/16 :goto_ba

    nop

    :goto_1e2
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    :goto_1e3
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_1e4
    iget-boolean v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    :goto_1e5
    invoke-virtual {v8, v5}, Lyo;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_1e6
    check-cast v5, Ljava/util/ArrayList;

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    iput-object v8, v3, Ldsz;->k:Landroid/view/View;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1e8
    iput-object v8, v3, Ldsz;->l:Landroid/view/View;

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_1e9
    iget v3, v7, Ldsz;->bottomMargin:I

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    and-int/2addr v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_1eb
    goto/16 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    :goto_1ec
    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    :goto_1ed
    if-ne v5, v6, :cond_3b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_3b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    move/from16 v26, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_1ef
    move/from16 v28, v5

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f0
    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f1
    iget-object v2, v1, Lts;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_1f2
    move-object v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_1f3
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    goto/32 :goto_1da

    nop

    nop

    :goto_1f4
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f5
    invoke-virtual {v1}, Ldwy;->b()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_1f6
    if-nez v9, :cond_3c

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f7
    invoke-virtual {v2}, Ldwy;->c()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    :goto_1f8
    iput-object v8, v3, Ldsz;->l:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    if-nez v8, :cond_3d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    :cond_3d
    :goto_1fa
    goto/32 :goto_59

    nop

    nop

    :goto_1fb
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    nop

    nop

    nop

    :goto_1fc
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    iget-object v4, v3, Ldsz;->k:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_1fe
    iget v1, v7, Ldsz;->c:I

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    shl-int/lit8 v1, v9, 0x10

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    :goto_200
    invoke-virtual {v9, v5}, Lyo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_201
    add-int v2, v18, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_202
    move/from16 v19, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_203
    invoke-virtual {v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_204
    move v1, v7

    nop

    nop

    :goto_205
    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_206
    move v4, v7

    nop

    nop

    nop

    :goto_207
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_209
    invoke-virtual {v8, v5, v9}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20a
    goto/32 :goto_1c9

    nop

    nop

    nop

    :goto_20b
    move/from16 v27, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_20c
    invoke-direct {v0, v6, v8}, Lnze;-><init>(Landroid/view/ViewGroup;I)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    iget-object v3, v0, Lts;->d:Ljava/lang/Object;

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

    :goto_20e
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20f
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLayoutDirection()I

    move-result v8

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p4, Ldsz;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

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

    :goto_5
    invoke-virtual {p0, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    if-lt p3, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x0

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

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    return p2

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    iget-boolean v0, p4, Ldsz;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    goto :goto_13

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p4, p4, Ldsz;->a:Ldsw;

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    :goto_16
    const/16 v1, 0x8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move p3, p2

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

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

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_2
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    :goto_5
    const/4 p3, 0x0

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

    :goto_6
    const v1, 0x4

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

    :goto_7
    move v0, p3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    :goto_9
    check-cast v1, Ldsz;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-virtual {v1, p1}, Ldsw;->l(Landroid/view/View;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v2, v1, Ldsz;->n:Z

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

    :goto_13
    if-lez v0, :cond_3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    :goto_14
    const v0, 0x9

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

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    iget-object v1, v1, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    or-int/2addr v0, v1

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
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

    :goto_1d
    if-lt p3, p2, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    move-object v1, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

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

    :goto_2
    move v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
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

    :goto_4
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;II[II)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    move v3, p3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    move-object v4, p4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xa

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    :goto_8
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e(Landroid/view/View;IIIII)V

    goto/32 :goto_1

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

    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    move v2, p2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    move v5, p5

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

    :goto_f
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    move v4, p4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g(Landroid/view/View;Landroid/view/View;II)V

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

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v3, v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ldta;

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

    :goto_4
    invoke-virtual {v4, v2, v3}, Ldsw;->o(Landroid/view/View;Landroid/os/Parcelable;)V

    :goto_5
    goto/32 :goto_23

    nop

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
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_9
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    iget-object v4, v4, Ldsz;->a:Ldsw;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v3, Landroid/os/Parcelable;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    const/4 v5, -0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l(Landroid/view/View;)Ldsz;

    move-result-object v4

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

    nop

    :goto_11
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p1, Ldta;->a:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0xe

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

    :goto_19
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_21

    nop

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

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

    :goto_21
    instance-of v0, p1, Ldta;

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

    :goto_22
    if-lt v1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    :goto_23
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p1, Ldxv;->d:Landroid/os/Parcelable;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    goto/32 :goto_20

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v6, v6, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    if-lt v3, v2, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-ne v5, v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Ldta;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_b

    nop

    nop

    :goto_6
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    new-instance v1, Landroid/util/SparseArray;

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

    :goto_c
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    iput-object v1, v0, Ldta;->a:Landroid/util/SparseArray;

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

    :goto_14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ldta;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v6, v4}, Ldsw;->p(Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v4

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v6, Ldsz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

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

    :cond_3
    goto/32 :goto_11

    nop

    :goto_1b
    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v7, -0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x16

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->cD(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(Landroid/view/View;I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    goto/32 :goto_31

    nop

    nop

    :goto_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->E(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d543f409229584e2e064495967092514m()V

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v0, v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v1, Ldsz;

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

    :goto_a
    or-int/2addr v1, p1

    nop

    nop

    :goto_b
    goto/32 :goto_25

    nop

    nop

    :goto_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_30

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v1

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    :goto_15
    iget-object v1, v1, Ldsz;->a:Ldsw;

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

    :goto_16
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

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

    :goto_17
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_6

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, p0, v4, p1}, Ldsw;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p1, 0x0

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

    :goto_1d
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    :goto_1e
    move v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1f
    goto :goto_22

    nop

    nop

    :goto_20
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_b

    nop

    :goto_22
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq v0, v5, :cond_8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_24
    goto/32 :goto_1c

    nop

    nop

    :goto_25
    if-ne v0, v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_30

    nop

    :goto_27
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_28
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2b
    const v1, 0x8

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_12

    nop

    :goto_2e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2f
    move v3, v2

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_28

    nop

    nop

    :goto_31
    const v0, 0xf

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_32
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

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

    :goto_33
    rem-int v0, v0, v1

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

    :goto_34
    invoke-direct {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->7521e341d48b08f214d1dac0738f16d0m(Landroid/view/MotionEvent;I)Z

    move-result v1

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
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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
    check-cast v0, Ldsz;

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
    const/4 p0, 0x1

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

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0, p1, p2, p3}, Ldsw;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 12

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3, p0, v2, v1}, Ldsw;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v3, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :goto_6
    goto/32 :goto_2b

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_8
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    const/4 v8, 0x3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_b
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    :goto_e
    const/4 v9, 0x0

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

    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

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

    :goto_11
    check-cast v3, Ldsz;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    if-nez v3, :cond_1

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

    :cond_1
    goto/32 :goto_19

    nop

    nop

    :goto_15
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0xa

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

    :goto_1c
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-wide v4, v6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_24
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    if-eqz p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    if-lt v0, p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1f

    nop

    :goto_29
    goto/32 :goto_2d

    nop

    nop

    :goto_2a
    const v0, 0x9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d543f409229584e2e064495967092514m()V

    goto/32 :goto_2

    nop

    nop

    :goto_2c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final setFitsSystemWindows(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->7dd154808b1c676d3d63f3a63e9edabfm()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:Landroid/view/ViewGroup$OnHierarchyChangeListener;

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
.end method

.method public final setVisibility(I)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

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

    :goto_5
    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

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

    :goto_8
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

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

    :goto_e
    const v0, 0xa

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
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

    :goto_14
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

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

    :goto_15
    const v1, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    move p1, v1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    :goto_18
    if-eqz p1, :cond_3

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

    :cond_3
    goto/32 :goto_0

    nop

    nop
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Landroid/graphics/drawable/Drawable;

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

    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

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

    :goto_3
    if-eq p1, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

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
.end method
