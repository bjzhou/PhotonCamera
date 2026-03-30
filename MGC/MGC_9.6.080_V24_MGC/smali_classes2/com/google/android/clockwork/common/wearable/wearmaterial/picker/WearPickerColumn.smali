.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public final a:Landroid/view/GestureDetector;

.field public final b:Lpic;

.field private final c:Loay;

.field private final d:Landroid/graphics/Rect;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

.field private final h:Lko;

.field private final i:Loaz;

.field private j:I


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()I
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-int/lit8 v0, v0, 0x2

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

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
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

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->at()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->setWillNotDraw(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v6}, Lscn;-><init>()V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_8
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->a:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v6, Lscn;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const/16 p1, 0x8

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

    :goto_e
    invoke-direct {v7}, Loax;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->al:Landroid/animation/Animator;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_11
    const v1, 0x7f15062e

    nop

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

    :goto_12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Loay;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->j:I

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->r(Lko;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    const v6, 0x7f0b0550

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_18
    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->h:Lko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v4, Loaw;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5f

    nop

    :goto_22
    iput-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->i:Loaz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Loay;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_25
    const v7, 0x7f0e0187

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0}, Loay;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_29
    const p2, 0x7f170001

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2a
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p1, v6, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v5, Loai;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_32
    invoke-virtual {v6, v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v5, v6}, Loaz;-><init>(Ldux;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    nop

    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    nop

    nop

    nop

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    iget-boolean v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    nop

    nop

    nop

    if-ne p3, v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iput-boolean p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    nop

    if-nez p3, :cond_5

    nop

    invoke-virtual {p0, v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->a(Lobf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_35
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setVignetteAlpha(I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_39
    const v6, 0x7f0b054f

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 v0, 0x1010000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, p2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    goto/32 :goto_3

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v6, p1, v2}, Lpic;-><init>(Landroid/content/Context;[B)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_41
    iput v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->j:I

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_42
    check-cast v6, Landroid/widget/TextView;

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

    nop

    :goto_43
    iput-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aC()Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_45
    new-instance p1, Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_46
    throw p0

    nop

    :catchall_1
    move-exception p0

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

    :goto_47
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_48
    iput-object v6, v5, Loai;->c:Lscn;

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->findViewById(I)Landroid/view/View;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4c
    iput-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->b:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4e
    iget-object p1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->al:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aC()Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_50
    instance-of v6, v5, Loai;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/16 v7, 0xb

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->findViewById(I)Landroid/view/View;

    move-result-object v6

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_53
    invoke-direct {v4, p0}, Loaw;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_54
    check-cast v6, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_55
    invoke-direct {v6, p0, v7}, Lbp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v6, Lbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_57
    invoke-virtual {p2, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setVignetteAlpha(I)V

    :goto_58
    goto/32 :goto_5e

    nop

    nop

    :goto_59
    sget-object v5, Loau;->c:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_5a
    const p2, 0x7f170002

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_31

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5d
    invoke-virtual {v6, v7, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_3b

    nop

    nop

    :goto_61
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_62
    new-instance v7, Loax;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_63
    if-eq p1, v3, :cond_7

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_64
    iput-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_66
    new-instance v5, Loaz;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_67
    const/16 p1, 0xff

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_68
    new-instance v6, Lpic;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop
.end method

.method public static synthetic b(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;Landroid/view/View;II)V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    move v4, p3

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

    :goto_1
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x14

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    :goto_6
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/32 :goto_8

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    move-object v0, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    move-object v1, p1

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
.end method

.method private final da190e616797844b591057d0190e7728m(Landroid/graphics/Rect;ILandroid/view/View;)V
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1
    rem-int/lit8 v3, v2, 0x2

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x5

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    sub-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_5
    sub-int/2addr v4, p1

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

    nop

    :goto_6
    iget p0, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v4, 0x50

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    and-int/lit8 v1, v1, 0x70

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v1, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_d
    iget v4, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3f

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getLayoutDirection()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11
    const/16 v4, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_14
    div-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    sub-int/2addr p1, v3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_16
    add-int/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_17
    add-int/2addr p0, v3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne p0, v3, :cond_1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p3, p0, p2, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_1d
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-int/2addr p0, v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

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

    nop

    :goto_21
    add-int/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    and-int/lit8 p0, p0, 0x7

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

    :goto_23
    add-int/2addr v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_24
    sub-int/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget p0, p1, Landroid/graphics/Rect;->right:I

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

    :goto_26
    goto :goto_2e

    nop

    :goto_27
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_28
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x800033

    nop

    nop

    :goto_2a
    goto/32 :goto_f

    nop

    nop

    :goto_2b
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget p1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2f
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_30
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_31
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_34
    iget v1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_35
    sub-int/2addr p0, v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_37
    iget v3, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_38
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

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

    :goto_39
    iget p1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3a
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3b
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sub-int/2addr v4, v3

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

    :goto_3e
    goto/32 :goto_46

    nop

    :goto_3f
    goto/32 :goto_52

    nop

    nop

    :goto_40
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int/2addr p0, v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_42
    iget p0, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_43
    goto/16 :goto_2

    nop

    nop

    :goto_44
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_47
    add-int/2addr p0, v3

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

    :goto_48
    if-ne v1, v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_49
    add-int/2addr v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4a
    add-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-int/2addr v2, p0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4c
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_4d
    if-ne p0, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_4e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    :goto_52
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sub-int/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_54
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_55
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_56
    rem-int/lit8 p1, v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_57
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop
.end method


# virtual methods
.method public final a(Lobf;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_8
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    instance-of p1, p0, Loap;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Loap;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final dispatchSetActivated(Z)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->setImportantForAccessibility(I)V

    goto/32 :goto_b

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    if-ne v1, p1, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetActivated(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

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

    :goto_11
    const/4 v0, 0x2

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x2

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

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Loai;

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

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getPaddingRight()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    iget v0, p1, Loai;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    sub-int/2addr p1, p2

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

    :goto_5
    iput p2, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getHeight()I

    move-result p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getPaddingLeft()I

    move-result p3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    div-int/lit8 p3, p5, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-int/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    sub-int/2addr p4, p2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    sub-int/2addr p5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->33f5b80483094659737b73d90f80a8a4m()I

    move-result p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-int/2addr p5, p2

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

    nop

    nop

    :goto_12
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getPaddingTop()I

    move-result p2

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

    :goto_14
    iput p3, p1, Loai;->b:I

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_15
    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getPaddingBottom()I

    move-result p2

    nop

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

    :goto_17
    div-int/lit8 p1, p1, 0x2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput p3, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    const/4 p2, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->da190e616797844b591057d0190e7728m(Landroid/graphics/Rect;ILandroid/view/View;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->da190e616797844b591057d0190e7728m(Landroid/graphics/Rect;ILandroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

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

    nop

    :goto_1e
    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    iput p4, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v0, p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sub-int/2addr p4, p2

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

    nop

    :goto_23
    invoke-virtual {p1}, Lkl;->aS()V

    :goto_24
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v0, p1, Loai;

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

    :goto_26
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v2, v0, Loay;->b:I

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

    nop

    :goto_1
    iget v1, v0, Loay;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    shl-int/lit8 v2, v1, 0x10

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

    :goto_3
    iget v1, v0, Loay;->b:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->setMeasuredDimension(II)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, v0, Loay;->b:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_7
    iget v1, v0, Loay;->b:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v1, v0, Loay;->a:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_a
    iput v1, v0, Loay;->a:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_c
    iput v1, v0, Loay;->d:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lpic;->C()Z

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_f
    const/4 v0, -0x2

    nop

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

    nop

    :goto_10
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_12
    iget v3, v0, Loay;->a:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Loay;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xc

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_15
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v1, v0, Loay;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    iput v1, v0, Loay;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Loay;

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

    :goto_19
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getSuggestedMinimumWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    nop

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

    :goto_1c
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1d
    iput v1, v0, Loay;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p0, p1, p2, v2}, Loay;->a(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;IILandroid/view/View;)I

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    const/4 v0, -0x1

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->b:Lpic;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    iget v2, v0, Loay;->b:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Loay;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_29
    add-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v3, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

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

    :goto_2b
    iget v0, v0, Loay;->b:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Loay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2e
    iput v1, v0, Loay;->b:I

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/2addr v1, v0

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

    :goto_30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getSuggestedMinimumHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_33
    iput v1, v0, Loay;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_34
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_35
    if-ne v2, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_36
    invoke-virtual {v0, p0, p1, p2, v2}, Loay;->a(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;IILandroid/view/View;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_37
    goto/32 :goto_46

    nop

    nop

    :goto_38
    add-int v1, v0, v0

    nop

    :goto_39
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3a
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3b
    if-lez v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_45

    nop

    :goto_3c
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1f

    nop

    nop

    :goto_3e
    iget v1, v0, Loay;->a:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Loay;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_41
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_42
    iget v1, v0, Loay;->e:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v1, 0x0

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

    :goto_44
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->33f5b80483094659737b73d90f80a8a4m()I

    move-result v2

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_45
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2d

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_49
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

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

    :goto_4a
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4b
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget v0, v0, Loay;->d:I

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop
.end method
