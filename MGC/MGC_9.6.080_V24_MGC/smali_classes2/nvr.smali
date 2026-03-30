.class final Lnvr;
.super Landroid/view/View$AccessibilityDelegate;
.source "PG"


# instance fields
.field final synthetic a:Lnvu;


# direct methods
.method public constructor <init>(Lnvu;)V
    .locals 0

    goto/32 :goto_2

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
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnvr;->a:Lnvu;

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    :goto_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

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

    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

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

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

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

    :goto_8
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lnvr;->a:Lnvu;

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

    :goto_a
    const-class p1, Landroid/widget/SeekBar;

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

    :goto_b
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnvu;->Z()V

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_10

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

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    const/16 v0, 0x2000

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_b

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lnvu;->aa()V

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x1000

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    iget-object p0, p0, Lnvr;->a:Lnvu;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p2, v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne p2, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_13
    iget-object p0, p0, Lnvr;->a:Lnvu;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
