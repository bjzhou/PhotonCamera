.class public Lmgl;
.super Landroid/widget/ImageButton;
.source "PG"

# interfaces
.implements Lmgm;


# instance fields
.field public a:Landroid/graphics/drawable/TransitionDrawable;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Landroid/view/View$OnClickListener;

.field public d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private e:I

.field private final f:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lmgl;->e:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lmgl;->f:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Lmgk;-><init>(Lmgl;)V

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const v0, 0x7f0707e6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lmgk;

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lmgl;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lmgl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_3
    iget-object v0, p0, Lmgl;->f:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

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
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lmgl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lmgl;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    const v1, 0xe

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

    :goto_f
    invoke-virtual {p0}, Lmgl;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lmgl;->e:I

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

    :goto_11
    const v0, 0xf

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v2, 0x7f0707f1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x7f0707f2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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

    nop

    :goto_18
    invoke-virtual {p0, v0}, Lmgl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const v1, 0x7f0707e6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lmgl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lmgl;->e:I

    nop

    nop

    goto/32 :goto_14

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

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lmgl;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto/32 :goto_12

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lmgl;->getContext()Landroid/content/Context;

    move-result-object v0

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
    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

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

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x5

    nop

    goto/32 :goto_7

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
    goto/32 :goto_2

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lmgl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

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
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmgl;->getContext()Landroid/content/Context;

    move-result-object v0

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

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmgl;->f:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Lmgl;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    const v0, 0x1b

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    const v1, 0x7f0707f2

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

    :goto_10
    invoke-virtual {p0, v0}, Lmgl;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lmgl;->setMeasuredDimension(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget p2, p0, Lmgl;->e:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
