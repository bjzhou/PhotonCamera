.class public Landroidx/percentlayout/widget/PercentRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Leei;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Leei;

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

    :goto_1
    new-instance p1, Leei;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p0}, Leei;-><init>(Landroid/view/ViewGroup;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

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

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p0}, Leei;-><init>(Landroid/view/ViewGroup;)V

    goto/32 :goto_4

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
    new-instance p1, Leei;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Leei;

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_4

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
    new-instance p1, Leei;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p0}, Leei;-><init>(Landroid/view/ViewGroup;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Leei;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)Leej;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1}, Leej;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Leej;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/percentlayout/widget/PercentRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance p0, Leej;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Leej;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-virtual {p0, p1}, Landroidx/percentlayout/widget/PercentRelativeLayout;->a(Landroid/util/AttributeSet;)Leej;

    move-result-object p0

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
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/percentlayout/widget/PercentRelativeLayout;->a(Landroid/util/AttributeSet;)Leej;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p4}, Leej;->a()Leeg;

    move-result-object p4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Leei;->a:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p5, p4, Leeg;->j:Leeh;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    iget p5, p5, Leeh;->leftMargin:I

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

    :goto_5
    add-int/lit8 p2, p2, 0x1

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

    :goto_6
    iget p5, p5, Leeh;->bottomMargin:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_8
    check-cast p4, Leej;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p4, p3}, Leeg;->b(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p5, p5, Leeh;->topMargin:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    iput p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    iget-object p5, p4, Leeg;->j:Leeh;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p5, p4, Leeg;->j:Leeh;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p3, p0, Leei;->a:Landroid/view/ViewGroup;

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

    :goto_10
    instance-of p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;

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

    :goto_11
    goto :goto_18

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    :goto_13
    iput p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    iput p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_15
    move-object p4, p3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    iget p5, p5, Leeh;->rightMargin:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    invoke-virtual {p4, p3}, Leeg;->b(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    iget-object p5, p4, Leeg;->j:Leeh;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    if-nez p4, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p3, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Leei;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

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

    :goto_21
    goto :goto_2a

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p5

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

    :goto_24
    instance-of p4, p3, Leej;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_25
    if-lt p2, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    :goto_26
    invoke-virtual {p4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p4

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

    :goto_27
    iget-object p5, p4, Leeg;->j:Leeh;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_29
    const/4 p2, 0x0

    nop

    :goto_2a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p4, p4, Leeg;->j:Leeh;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 13

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v12, -0x2

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_1
    if-gez v12, :cond_0

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3
    invoke-virtual {v10}, Leej;->a()Leeg;

    move-result-object v10

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_7
    if-gez v12, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    :goto_8
    sub-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_9
    iget v9, v9, Leeh;->width:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v11, v10, Leeg;->j:Leeh;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Leei;

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

    :goto_c
    sub-int/2addr v2, v1

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    cmpl-float v7, v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

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

    :goto_f
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

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

    :goto_10
    invoke-virtual {v8}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

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
    and-int/2addr v9, v10

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_12
    if-nez v8, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_13
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_16
    iput v12, v11, Leeh;->leftMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, v0, Leei;->a:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-gez v3, :cond_3

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

    :cond_3
    goto/32 :goto_72

    nop

    nop

    :goto_19
    iget-object v3, v0, Leei;->a:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    mul-float/2addr v12, v11

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

    :goto_1b
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_1c
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9e

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

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v11, v10, Leeg;->j:Leeh;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmpl-float v3, v3, v7

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v8}, Leej;->a()Leeg;

    move-result-object v8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_5

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    :goto_23
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v11, v10, Leeg;->j:Leeh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_25
    mul-float/2addr v6, v10

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_26
    iget-object v1, v0, Leei;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    goto/32 :goto_a6

    nop

    nop

    :goto_28
    sub-int/2addr v3, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_29
    int-to-float v12, v3

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

    :goto_2a
    goto/32 :goto_1e

    nop

    :goto_2b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2d
    sub-int/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Landroidx/percentlayout/widget/PercentRelativeLayout;->a:Leei;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_30
    mul-float/2addr v12, v11

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-gez v7, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    :goto_32
    int-to-float v12, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_33
    if-nez v6, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_7
    :goto_34
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_35
    iget v9, v8, Leeg;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_83

    nop

    :goto_37
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_38
    int-to-float v12, v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_39
    const/4 v4, 0x0

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_3a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3b
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v12

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

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

    :goto_3e
    if-gez v12, :cond_8

    nop

    goto/32 :goto_ae

    nop

    nop

    :cond_8
    goto/32 :goto_59

    nop

    nop

    :goto_3f
    if-nez v10, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    instance-of v10, v9, Leej;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v3

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

    :goto_42
    const/high16 v10, -0x1000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_43
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_44
    if-eq v3, v11, :cond_a

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_a
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-gez v12, :cond_b

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v11, :cond_c

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_8b

    nop

    :goto_49
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    cmpl-float v12, v11, v7

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4c
    move v2, v6

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/high16 v11, 0x1000000

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4f
    int-to-float v12, v3

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_50
    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    :goto_51
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget v11, v10, Leeg;->g:F

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_53
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-gez v12, :cond_d

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_d
    goto/32 :goto_4f

    nop

    nop

    :goto_55
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_56
    iget-object v1, v0, Leei;->a:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

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

    :goto_58
    move-object v8, v5

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    int-to-float v12, v2

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

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

    :goto_5b
    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v10, v9, v2, v3}, Leeg;->a(Landroid/view/ViewGroup$LayoutParams;II)V

    :goto_5e
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_60
    iput v12, v11, Leeh;->bottomMargin:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v8, :cond_e

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v8, Leej;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v1, v0, Leei;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v9, v8, Leeg;->j:Leeh;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v10, v9, v2, v3}, Leeg;->a(Landroid/view/ViewGroup$LayoutParams;II)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_68
    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_6a
    iget-object v11, v10, Leeg;->j:Leeh;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_6b
    iget v11, v10, Leeg;->f:F

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v10, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_f
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_6d
    iget-object v8, v0, Leei;->a:Landroid/view/ViewGroup;

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

    nop

    nop

    :goto_6e
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

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

    :goto_6f
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_70
    iget v11, v10, Leeg;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_72
    iget-object v3, v8, Leeg;->j:Leeh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_73
    move v6, v4

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_89

    nop

    nop

    :goto_75
    if-eq v3, v12, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_10
    goto/32 :goto_7a

    nop

    nop

    :goto_76
    move-object v10, v9

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_77
    iput v12, v11, Leeh;->topMargin:I

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    mul-float/2addr v12, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v7, 0x0

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_7a
    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

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

    nop

    :goto_7b
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

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

    :goto_7c
    if-lt v4, v1, :cond_11

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_11
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7d
    add-int/lit8 v5, v5, 0x1

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

    :goto_7e
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_7f
    iget v3, v8, Leeg;->b:F

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

    :goto_80
    if-nez v8, :cond_12

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_81
    cmpl-float v12, v11, v7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_82
    move v2, v4

    nop

    :goto_83
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget v3, v3, Leeh;->height:I

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_86
    mul-float/2addr v12, v11

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_87
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_88
    if-eq v9, v12, :cond_13

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

    :cond_13
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_89
    iget v10, v10, Leeg;->h:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8a
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_1b

    nop

    nop

    :goto_8c
    if-eq v9, v11, :cond_14

    nop

    nop

    goto/32 :goto_91

    nop

    :cond_14
    goto/32 :goto_35

    nop

    nop

    :goto_8d
    iget-object v1, v0, Leei;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_8e
    iget-object v11, v10, Leeg;->j:Leeh;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_8f
    iput v12, v11, Leeh;->rightMargin:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_90
    move v2, v6

    nop

    nop

    :goto_91
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_94
    and-int/2addr v3, v10

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

    :goto_95
    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    cmpl-float v12, v11, v7

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_97
    cmpl-float v9, v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    instance-of v8, v5, Leej;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    cmpl-float v12, v11, v7

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v1, v0, Leei;->a:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget v11, v10, Leeg;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_9c
    if-lt v5, v1, :cond_15

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_9d
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_9f
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a1
    iget v11, v10, Leeg;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_a2
    instance-of v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_a4
    if-gez v9, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_a5
    mul-float/2addr v12, v11

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

    nop

    :goto_a6
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast v10, Leej;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_aa
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v11, v10, Leeg;->j:Leeh;

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

    :goto_ac
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_ad
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_b0
    cmpl-float v12, v11, v7

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
