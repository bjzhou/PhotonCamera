.class final Lmgk;
.super Landroid/view/View$AccessibilityDelegate;
.source "PG"


# instance fields
.field final synthetic a:Lmgl;


# direct methods
.method public constructor <init>(Lmgl;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmgk;->a:Lmgl;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    goto/32 :goto_1a

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

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lmgl;->d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Lmfh;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    check-cast v1, Lmfx;

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

    :goto_5
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    const/16 v1, 0x80

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_b
    iget-object v0, v0, Lmfh;->c:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    const v1, 0x8000

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2, v3}, Lmfx;->p(J)V

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    :goto_15
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    check-cast v0, Lmfh;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    int-to-long v2, v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
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

    :goto_1d
    iget-object v0, p0, Lmgk;->a:Lmgl;

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

    :goto_1e
    iget-object v1, v1, Lmfh;->d:Ltxm;

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

    :goto_1f
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

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

    :goto_20
    const v2, 0x7f0c0002

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    const v1, 0x18

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method
