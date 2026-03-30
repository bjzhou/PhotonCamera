.class public final Lnze;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lnze;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnze;->a:Landroid/view/ViewGroup;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Lnze;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnze;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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

    nop
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    goto/32 :goto_25

    nop

    nop

    :goto_0
    return v2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getRootView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    :goto_5
    goto/32 :goto_26

    nop

    nop

    :goto_6
    iget-boolean v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ag:Z

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x18

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

    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->getChildCount()I

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getRootView()Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ag:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

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

    :goto_10
    iget-object p0, p0, Lnze;->a:Landroid/view/ViewGroup;

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

    :goto_11
    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v1

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lnze;->b:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1a
    invoke-interface {v1, p0}, Loat;->c(Landroid/view/View;)I

    move-result p0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    :goto_1c
    iget-object v0, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->af:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-gtz v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    :goto_1e
    return v1

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lnze;->a:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->aD()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lnze;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lnze;->a:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_27
    if-eq p0, v1, :cond_3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-boolean v3, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->ag:Z

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lnze;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/32 :goto_35

    nop

    nop

    :goto_2c
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_2e
    if-ne v0, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    return v2

    nop

    nop

    :goto_30
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lnze;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_32
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_35
    iget-object p0, p0, Lnze;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_39
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_6
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3b
    iget v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ah:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne v0, v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:Loat;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

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
.end method
