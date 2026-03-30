.class public final Ljsr;
.super Lkg;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lkg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final p(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lky;)V
    .locals 8

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v6, v7

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p1, Landroid/graphics/Rect;->left:I

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

    :goto_2
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    goto/16 :goto_51

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6
    add-int/lit8 p4, p4, -0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p4}, Lky;->a()I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v5, v6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    const/4 v5, -0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    move p2, v2

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

    nop

    :goto_c
    if-eq p0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sub-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12
    invoke-virtual {p2, v4, p3}, Landroid/view/View;->measure(II)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_15
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3d

    nop

    nop

    :goto_17
    if-eqz p4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    :goto_18
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x1

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

    nop

    :goto_1a
    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1b
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1c
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    move p4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

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

    :goto_1f
    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

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

    :goto_21
    if-eqz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v0, p4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_23
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move p4, v2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz p4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_2e
    move p2, v2

    nop

    :goto_2f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

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

    :goto_32
    if-ne v1, p4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_33
    invoke-static {v4, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

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

    :goto_35
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_36
    if-lez v0, :cond_8

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    :goto_37
    goto :goto_44

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getPaddingEnd()I

    move-result v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3a
    move p3, p2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3b
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

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

    :goto_3c
    goto/32 :goto_f

    nop

    :goto_3d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3e
    const v1, 0x9

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v7

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

    :goto_40
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_41
    move v2, p2

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_43
    move p2, v3

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_45
    const/high16 v5, 0x40000000    # 2.0f

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

    :goto_46
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

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

    :goto_47
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getPaddingStart()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v4, :cond_9

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_9
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4d
    if-ne p0, v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_52
    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_53
    iput v2, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_54
    const v0, 0xc

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_55
    add-int v0, v0, v1

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

    :goto_56
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_57
    move p3, v2

    nop

    nop

    :goto_58
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_59
    add-int/2addr v6, p3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method
