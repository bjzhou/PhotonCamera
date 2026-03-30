.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "PG"


# instance fields
.field public final ac:Ljava/util/Set;

.field public final ad:Ljava/util/Set;

.field public final ae:Loat;

.field public af:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public ag:Z

.field public ah:I

.field public ai:Loaj;

.field public aj:F

.field public ak:F

.field public al:Landroid/animation/Animator;

.field private final am:Landroid/os/Handler;

.field private final an:Ljava/lang/Runnable;

.field private final ao:Landroid/animation/Animator;

.field private final ap:Landroid/animation/Animator;

.field private aq:I

.field private ar:Z

.field private as:Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

.field private final at:Lpic;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    const v1, 0x8

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xc

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_0
    sget-object v0, Loau;->a:[I

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

    :goto_1
    invoke-direct {p1, p0}, Loan;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ai:Loaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    new-instance v3, Landroid/os/Handler;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/util/ArraySet;

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

    nop

    :goto_5
    invoke-direct {p1, v2}, Loav;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->setOverScrollMode(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v3, Lpic;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_8
    iput-boolean v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ar:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Loav;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    new-instance v0, Loai;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p1}, Loai;-><init>(I)V

    goto/32 :goto_4b

    nop

    nop

    :goto_d
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aq:I

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_32

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->am:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lnue;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_15
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_1e

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->Z(Lki;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Landroid/util/ArraySet;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    :goto_1c
    new-instance p1, Loan;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p1, v3}, Loav;-><init>(I)V

    :goto_1e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p1, Loav;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    iput-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ap:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_21
    const v6, 0x7f020053

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:Loat;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_23
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ac:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ad:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p1, p2, p3, v3}, Lkl;->aw(Landroid/content/Context;Landroid/util/AttributeSet;II)Lkk;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->af:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_29
    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ak:F

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aj:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2e
    const/4 v0, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, p0, v1}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_45

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget p1, p1, Lkk;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    :goto_33
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_37
    invoke-direct {v0, p0, v1}, Lnze;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;I)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_38
    invoke-direct {v3, p1, v0}, Lpic;-><init>(Landroid/content/Context;[B)V

    goto/32 :goto_43

    nop

    nop

    :goto_39
    const/16 v1, 0xc

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    :try_start_0
    iget p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aj:F

    nop

    nop

    nop

    nop

    nop

    const/4 p3, 0x2

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    nop

    nop

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aj:F

    nop

    nop

    nop

    nop

    iget p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ak:F

    nop

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ak:F

    nop

    nop

    nop

    nop

    iget-boolean p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ar:Z

    nop

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    iput-boolean p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ar:Z

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    instance-of v0, p2, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    check-cast p2, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    nop

    nop

    nop

    nop

    iput-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->as:Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    nop

    nop

    nop

    new-instance v0, Lbp;

    nop

    const/16 v1, 0xa

    nop

    nop

    nop

    invoke-direct {v0, p0, v1}, Lbp;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setContentProvider(Ldux;)V

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->as:Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    nop

    nop

    invoke-virtual {p2, p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->as:Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    nop

    nop

    nop

    invoke-static {p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aH(Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;)Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->X(Lld;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v5, 0x7f020054

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

    :goto_40
    goto/32 :goto_2d

    nop

    :goto_41
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v0, Lnze;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_43
    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->at:Lpic;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

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

    nop

    :goto_45
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->an:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ao:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    goto/32 :goto_2a

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    goto/32 :goto_a

    nop

    nop

    :goto_4a
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->aa(Lkl;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop
.end method

.method private static aH(Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;)Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    instance-of v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

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

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const/4 p0, 0x0

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
.end method


# virtual methods
.method public final Y(Lke;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ag:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ah:I

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

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->Y(Lke;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, -0x1

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

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->af:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    nop

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

    :goto_10
    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aq:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->af:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    check-cast v0, Loap;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    :goto_1b
    goto/32 :goto_1a

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final a(Landroid/view/View;)I
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_2
    sub-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:Loat;

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

    nop

    :goto_4
    float-to-int p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:Loat;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

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

    :goto_a
    const/4 p0, 0x0

    nop

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

    :goto_b
    invoke-interface {p0, p1}, Loat;->a(Landroid/view/View;)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    const v1, 0x12

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

    :goto_d
    add-int/2addr v1, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    mul-float/2addr p1, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, p0, v1}, Lnzk;->f(Loat;Landroid/support/v7/widget/RecyclerView;Z)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_12
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, p1}, Loat;->b(Landroid/view/View;)I

    move-result v1

    nop

    goto/32 :goto_b

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    return p0

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p1

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
.end method

.method public final aC()Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aH(Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;)Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    move-result-object p0

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

    :goto_1
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->as:Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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
.end method

.method public final aD()V
    .locals 0

    goto/32 :goto_2

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

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    check-cast p0, Loap;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop
.end method

.method public final synthetic aE(Landroid/graphics/Canvas;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final aF(I)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Loap;->a()I

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    if-gez p1, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez p0, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Loap;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final aG()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lke;

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

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Loap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    nop
.end method

.method public final ac(I)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, v2, p0}, Loaq;-><init>(Landroid/content/Context;F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Loaq;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

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

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Lkl;->aY(Lkx;)V

    goto/32 :goto_c

    nop

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
    goto/32 :goto_7

    nop

    nop

    :goto_e
    const v1, 0x19

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aj:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_a

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

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    iput p1, v1, Lkx;->b:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final aj(II)Z
    .locals 2

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move p1, v0

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

    :goto_1
    if-ltz p2, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_2
    const v1, 0x17

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    if-gez p1, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aF(I)V

    goto/32 :goto_25

    nop

    nop

    :goto_b
    if-lt v1, v0, :cond_3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    :goto_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lpic;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    if-ge v1, v0, :cond_4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_4
    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->at:Lpic;

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

    :goto_1a
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    :goto_1d
    add-int/2addr p1, v1

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

    nop

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aG()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->aj(II)Z

    move-result p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, -0x1

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

    nop

    :goto_21
    const v0, 0x19

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

    :goto_22
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    move p1, v1

    nop

    :goto_24
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v0

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_6

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    :goto_28
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ar:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    goto/32 :goto_4

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

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->as:Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

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

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 0

    goto/32 :goto_2

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
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aD()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->af:Landroid/view/ViewTreeObserver$OnPreDrawListener;

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-int/2addr p4, p2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getHeight()I

    move-result p5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aq:I

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

    :goto_3
    move p1, p3

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const/4 p2, -0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_6
    iget p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aq:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getChildCount()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p5, p0}, Loat;->d(Landroid/view/View;)I

    move-result p0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ag:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getChildCount()I

    move-result p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:Loat;

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

    :goto_c
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_20

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getWidth()I

    move-result p4

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

    :goto_11
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ah:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aH(Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;)Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_13
    invoke-virtual {p1, p3, p4}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setClearArea(II)V

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aq:I

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->am:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->an:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    if-lt p1, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1a
    iget p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aq:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:Loat;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->am:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1, p0}, Loat;->d(Landroid/view/View;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_22
    if-gtz p2, :cond_3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1, p0}, Loat;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result p1

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

    :goto_24
    return-void

    nop

    nop

    :goto_25
    if-eq p1, p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_4
    :goto_26
    goto/32 :goto_6

    nop

    nop

    :goto_27
    div-int/2addr p3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p2, p0, p1}, Lnzk;->f(Loat;Landroid/support/v7/widget/RecyclerView;Z)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2a
    iget-object p4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:Loat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2b
    if-gtz p2, :cond_6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p4, p0}, Loat;->d(Landroid/view/View;)I

    move-result p4

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_14

    nop

    nop

    :goto_2e
    goto/32 :goto_3b

    nop

    nop

    :goto_2f
    add-int/2addr p4, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_30
    sub-int p3, p4, p0

    nop

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

    :goto_31
    const/4 p1, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne p2, p1, :cond_7

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    :goto_33
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:Loat;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_35
    const/4 p3, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p2

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_37
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ae:Loat;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aq:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p3, p3, p4, p5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setBounds(IIII)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->as:Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, p3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->an:Ljava/lang/Runnable;

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

    :goto_3e
    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_4

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

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

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->as:Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
