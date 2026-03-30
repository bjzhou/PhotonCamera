.class public final Lohc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

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
.end method


# virtual methods
.method public final a()Lohd;
    .locals 2

    goto/32 :goto_18

    nop

    nop

    :goto_0
    iget-object v1, p0, Lohc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lohd;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    check-cast v1, Lolx;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    :goto_8
    iput-object v0, p0, Lohc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lohc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    invoke-direct {v0}, Lolx;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-direct {v0, v1, p0}, Lohd;-><init>(Lolx;Landroid/os/Looper;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lohc;->b:Ljava/lang/Object;

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lohc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lolx;

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

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_14
    iget-object p0, p0, Lohc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p0, Landroid/os/Looper;

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

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final b()Lmmy;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lohc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lmmy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    return-object v1

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v0, p0}, Lmmy;-><init>(Lmmw;Lmmw;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    iget-object p0, p0, Lohc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_2

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lmmw;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lmmw;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Ljava/lang/IllegalStateException;

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
.end method

.method public final c(Lmmw;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Lohc;->a:Ljava/lang/Object;

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

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d(Lmmw;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lohc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e(I)V
    .locals 8

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/view/View;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, "SmartsChipViewController is not yet initialized"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v5}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->setTag(Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v2, v4}, Lqrg;->F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-array v4, v3, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-static {p1}, Lkav;->z(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const p1, 0x7f0e00ad

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lohc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    check-cast v4, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getTag()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_13
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    iget-object v2, p0, Lohc;->b:Ljava/lang/Object;

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

    :goto_18
    iget-object v0, p0, Lohc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    if-eq p1, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lohc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v2, Landroid/view/View;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_41

    nop

    nop

    :goto_22
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v1, v6, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto/32 :goto_2f

    nop

    nop

    :goto_27
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_42

    nop

    nop

    :goto_29
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    throw v1

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1}, Lkav;->z(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

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

    nop

    :goto_2f
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

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

    :goto_30
    move-object v4, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    :goto_33
    if-nez v2, :cond_6

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_35
    iget-object v0, p0, Lohc;->a:Ljava/lang/Object;

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

    :goto_36
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_37
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_44

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v5, 0x7f0707c4

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3b
    const/16 v7, 0x50

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_3d
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v2, v0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_d

    nop

    nop

    :goto_41
    throw v1

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const p1, 0x7f0e0060

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v2, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4, p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    nop

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

    :goto_47
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_48
    const v1, 0x7f0707d5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object p1, p0, Lohc;->b:Ljava/lang/Object;

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
.end method
