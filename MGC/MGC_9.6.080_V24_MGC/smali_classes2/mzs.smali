.class public final Lmzs;
.super Landroid/view/View$AccessibilityDelegate;
.source "PG"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotController;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_3

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
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmzs;->b:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmzs;->a:Ljava/util/List;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x8000

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 v2, 0x10000

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

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

    :goto_b
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    :goto_d
    iget-object v0, p0, Lmzs;->b:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xd

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    if-eq v0, v2, :cond_4

    nop

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

    :cond_4
    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->q(Ljava/util/List;)V

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    iget-object v1, p0, Lmzs;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->a:Lsdb;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
