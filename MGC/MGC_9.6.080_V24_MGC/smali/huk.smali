.class public final synthetic Lhuk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p2, p0, Lhuk;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhuk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    goto/32 :goto_4a

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/32 :goto_28

    nop

    nop

    :goto_2
    return v2

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhkm;->P:Lbob;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lhuk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_b
    return v3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

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

    :goto_e
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->b:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_10
    return v2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0}, Lbob;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    return v3

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lhul;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_19
    if-nez p0, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return v3

    nop

    :goto_1b
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lhuk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;

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

    :goto_1f
    iget-object p0, p0, Lhuk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    const-string p2, "accessibility"

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

    nop

    :goto_21
    iget-object p0, p0, Lhuk;->a:Ljava/lang/Object;

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

    :goto_22
    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_23
    return v2

    nop

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_26
    return v3

    nop

    nop

    :goto_27
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3b

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lhul;->a:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Lnkn;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_44

    nop

    nop

    :goto_31
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v0, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/32 :goto_5e

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    :goto_36
    check-cast p0, Lklo;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_38
    iget v0, p0, Lhuk;->b:I

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

    :goto_39
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_3b
    return v2

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-ne v0, v4, :cond_6

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_6
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lhuk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/32 :goto_b

    nop

    nop

    :goto_40
    const/4 v3, 0x1

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

    :goto_41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_45
    if-ne v0, v4, :cond_7

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_47
    if-nez p0, :cond_9

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

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_48
    const/4 v4, 0x3

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

    :goto_49
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4a
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_4d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lklo;->a:Landroid/content/Context;

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

    :goto_4f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lhuk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/creativebutton/CreativeButton;->a:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_41

    nop

    nop

    :goto_53
    return v2

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_57
    const v1, 0xe

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

    :goto_58
    const/4 v4, 0x4

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

    :goto_59
    iget-object p0, p0, Lnkn;->k:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast p0, Lcom/google/android/apps/camera/composezoom/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/composezoom/ZoomUi;->e()Lhkm;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5c
    if-nez p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez p0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_b
    goto/32 :goto_1

    nop

    nop

    :goto_5e
    return v3

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_67

    nop

    nop

    :goto_60
    iget-object p0, p0, Lhuk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_61
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_62
    check-cast p0, Lcom/google/android/apps/camera/ui/creativebutton/CreativeButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-nez p0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-lez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_43

    nop

    :goto_65
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_66
    if-ne v0, v3, :cond_e

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_e
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_67
    return v2

    nop

    :goto_68
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_69
    return v2

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_50

    nop

    nop
.end method
