.class final Ljbw;
.super Landroid/view/View$AccessibilityDelegate;
.source "PG"


# instance fields
.field final synthetic a:Ljbx;


# direct methods
.method public constructor <init>(Ljbx;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljbw;->a:Ljbx;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljbx;->h(I)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x8000

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

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

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x2710

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x14

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    :goto_10
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    iget-object v0, p0, Ljbw;->a:Ljbx;

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    iget-object v1, v1, Ljbx;->c:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a
    iget-boolean v1, v1, Ljbx;->v:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Ljbx;->u:Ljbh;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    iget-object v1, p0, Ljbw;->a:Ljbx;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Ljbw;->a:Ljbx;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Ljbw;->a:Ljbx;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_17
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Ljbx;->d(Ljbh;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x10

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d
    iget-object v1, v1, Ljbx;->d:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

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

    :goto_1e
    iget-object v1, p0, Ljbw;->a:Ljbx;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Ljbw;->a:Ljbx;

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

    :goto_20
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/32 :goto_f

    nop

    nop

    :goto_22
    iget-object v0, p0, Ljbw;->a:Ljbx;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Ljbx;->c:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Ljbx;->d:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_5

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method
