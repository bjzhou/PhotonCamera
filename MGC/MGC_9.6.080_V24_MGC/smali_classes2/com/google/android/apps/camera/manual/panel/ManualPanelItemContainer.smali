.class public Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field private a:Lnbh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lnbh;->a:Lnbh;

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

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->a:Lnbh;

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

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lnbh;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    int-to-float v0, v0

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

    :goto_1
    const v0, 0x1f

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

    :goto_2
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->setTranslationY(F)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->a:Lnbh;

    nop

    goto/32 :goto_18

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    sub-float/2addr p1, v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->setRotation(F)V

    goto/32 :goto_21

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    div-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->getWidth()I

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

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-static {p1}, Lnzk;->ad(Lnbh;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->setPivotX(F)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    div-float/2addr v0, v1

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

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->setPivotY(F)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->setTranslationY(F)V

    goto/32 :goto_15

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Lnbh;->d()Z

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v0, v0

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

    :goto_23
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    :goto_25
    div-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_26
    div-float/2addr v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->a(Lnbh;)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_5

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

    :goto_5
    iget-object p1, p0, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->a:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    check-cast p1, Landroid/view/View;

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

    :goto_2
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p2, p1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/manual/panel/ManualPanelItemContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
