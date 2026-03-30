.class public Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;
.super Lil;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:I

.field public c:Z

.field public d:Lneg;

.field public e:Lnbe;

.field public f:J

.field public g:Ljava/lang/Runnable;

.field public final h:Lohc;

.field private i:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->h:Lohc;

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

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Lil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p2}, Lohc;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Lohc;

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


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->g:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_58

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

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    :goto_5
    if-eq v0, v3, :cond_2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v0, v3, :cond_3

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

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_9
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_4
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_38

    nop

    nop

    :goto_d
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_f
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->e:Lnbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_14
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_55

    nop

    :goto_16
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

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

    :goto_19
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1b
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

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

    nop

    :goto_1f
    invoke-static {v0, v1}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object v0

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

    nop

    nop

    :goto_20
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_21
    if-ne v1, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_5
    :goto_22
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_24
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_25
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_26
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    :goto_28
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v3, 0x7f070697

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

    :goto_2a
    move-object v0, v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2b
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_55

    nop

    nop

    :goto_2e
    goto/32 :goto_54

    nop

    nop

    :goto_2f
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_32
    if-eq v2, v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    :goto_34
    goto/32 :goto_25

    nop

    nop

    :goto_35
    goto/32 :goto_4d

    nop

    :goto_36
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_37
    sget-object v3, Lnbh;->c:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3a
    invoke-static {v3}, Lnzk;->aQ(Lnbe;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3b
    goto :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3e
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq v2, v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_36

    nop

    nop

    :goto_41
    const v4, 0x7f070696

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_43
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_44
    const/16 v2, 0x51

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v3, Lnbh;->b:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_46
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_48
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_49
    const v0, 0x7f070694

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

    nop

    nop

    :goto_4a
    goto :goto_55

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    :goto_4d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object v3, Lnbh;->a:Lnbh;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-eq v0, v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_a
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_51
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_53
    check-cast v0, Landroid/app/Activity;

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_54
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    nop

    :goto_55
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_56
    const v0, 0x7f070695

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

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

    :goto_58
    const v0, 0x9

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_6

    nop

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

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const v1, 0x16

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

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->g:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-long v1, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final onAttachedToWindow()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->i:Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-super {p0}, Lil;->onAttachedToWindow()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
