.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field a:Loyb;

.field b:Lpcn;

.field c:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field d:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final e:Lobw;

.field private final f:Lobw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    return-void

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7f070a42

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    goto/32 :goto_40

    nop

    nop

    :goto_2
    const v5, 0x7f0e015b

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->e:Lobw;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 p3, 0x8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lnzk;->c(Landroid/view/View;)Lobw;

    move-result-object v0

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

    :goto_c
    invoke-direct {p1, p2}, Loyb;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->e:Lobw;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lnzk;->c(Landroid/view/View;)Lobw;

    move-result-object v0

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

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Lnzk;->c(Landroid/view/View;)Lobw;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Lnzk;->c(Landroid/view/View;)Lobw;

    move-result-object v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1a
    const v1, 0x7f0b055c

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->a:Loyb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p3, 0x0

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

    :goto_1e
    invoke-direct {p1, p0, p2}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_5

    nop

    nop

    :goto_20
    invoke-virtual {p0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    const v2, 0x7f0b055b

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_25
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Lnzk;->c(Landroid/view/View;)Lobw;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->f:Lobw;

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v1, "\u00b7"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    invoke-direct {p1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->f:Lobw;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_2f
    invoke-interface {v0, v1}, Lobw;->b(Ljava/lang/CharSequence;)V

    goto/32 :goto_10

    nop

    nop

    :goto_30
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->e:Lobw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_31
    const v3, 0x7f0b055a

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    nop

    :goto_33
    invoke-virtual {p0, v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_34
    invoke-interface {v0, p2}, Lobw;->c(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_35
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_36
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_38
    const/4 p2, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_39
    check-cast v0, Landroidx/wear/widget/CurvedTextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3a
    goto/16 :goto_29

    nop

    :goto_3b
    goto/32 :goto_37

    nop

    nop

    :goto_3c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0, p2}, Lobw;->c(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v1, p2}, Lobw;->b(Ljava/lang/CharSequence;)V

    goto/32 :goto_59

    nop

    nop

    :goto_40
    sget-object v0, Lobp;->a:[I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_41
    invoke-interface {p2}, Lobw;->a()Landroid/view/View;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_43
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->f:Lobw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_44
    invoke-interface {p2}, Lobw;->a()Landroid/view/View;

    move-result-object p2

    nop

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

    :goto_45
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_46
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

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

    nop

    :goto_48
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->e:Lobw;

    nop

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

    :goto_49
    if-ne v4, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_0
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0}, Lnzk;->c(Landroid/view/View;)Lobw;

    move-result-object v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4d
    check-cast v0, Landroidx/wear/widget/CurvedTextView;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->f:Lobw;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance p1, Loyb;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_50
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_51
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->e:Lobw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_52
    check-cast v0, Landroidx/wear/widget/CurvedTextView;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_54
    const/4 p2, -0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_55
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_53

    nop

    nop

    :goto_58
    invoke-virtual {v0, v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->f:Lobw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_9

    nop

    nop

    :goto_5c
    const v5, 0x7f0e005c

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getContext()Landroid/content/Context;

    move-result-object p0

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
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final onAttachedToWindow()V
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->a:Loyb;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getHandler()Landroid/os/Handler;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v2, Landroid/content/BroadcastReceiver;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iget-object v2, v0, Loyb;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v2, v0, Loyb;->a:Z

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_c
    iget-boolean v1, v0, Lpcn;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    check-cast v2, Landroid/database/ContentObserver;

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

    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    invoke-virtual {p0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lpcn;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v3, v0, Loyb;->a:Z

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v2, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v4, v0, Loyb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v3, v0, Lpcn;->a:Z

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, v0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v4, Landroid/content/IntentFilter;

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

    :goto_1f
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->b:Lpcn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_23
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, v1, v2}, Lpcn;-><init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    const-string v1, "time_12_24"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_27
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    iget-object v3, v1, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

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

    :goto_8
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->b:Lpcn;

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v3, Landroid/database/ContentObserver;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v3, v1, Lpcn;->a:Z

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    iput-boolean v0, v1, Lpcn;->a:Z

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->a:Loyb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    iget-boolean v3, v1, Loyb;->a:Z

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    iget-object v3, v1, Loyb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/content/BroadcastReceiver;

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, v1, Loyb;->a:Z

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    const v0, 0x10

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

    :goto_16
    const v1, 0x1f

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

    nop

    :goto_17
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->b:Lpcn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    div-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->setPivotX(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f070a44

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr p1, p2

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

    nop

    nop

    :goto_4
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getResources()Landroid/content/res/Resources;

    move-result-object p2

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

    :goto_6
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->setPivotY(F)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getPaddingTop()I

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/time/WearTimeText;->getMeasuredWidth()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    const/high16 p2, 0x40000000    # 2.0f

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
.end method
