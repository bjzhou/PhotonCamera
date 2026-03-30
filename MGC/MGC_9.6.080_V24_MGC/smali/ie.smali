.class public final Lie;
.super Landroid/widget/Spinner;
.source "PG"


# static fields
.field private static final e:[I


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lid;

.field c:I

.field final d:Landroid/graphics/Rect;

.field private final f:Lhj;

.field private g:Ljf;

.field private h:Landroid/widget/SpinnerAdapter;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10102f1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    sput-object v0, Lie;->e:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v8, p0, Lie;->c:I

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    :goto_2
    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 v9, -0x2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    invoke-direct {v6, p0}, Lhy;-><init>(Lie;)V

    goto/32 :goto_17

    nop

    nop

    :goto_6
    invoke-virtual {v7}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const p1, 0x7f0e015d

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v6, p0, Lie;->b:Lid;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_1
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_47

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    :goto_b
    iput-object v5, v6, Lib;->a:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const v6, 0x1090008

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    invoke-direct {v5, p1, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_63

    nop

    nop

    :goto_10
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    iget-object v7, p0, Lie;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_13
    new-instance v6, Lhy;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_17
    iput-object v6, p0, Lie;->b:Lid;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v5}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    invoke-static {p1, p2, v1, v0, v2}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1a
    new-instance v5, Landroid/widget/ArrayAdapter;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v5}, Landroidx/wear/ambient/AmbientDelegate;->w(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    invoke-interface {v6, v5}, Lid;->i(Ljava/lang/CharSequence;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1e
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v7, p0, Lie;->a:Landroid/content/Context;

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

    :goto_20
    invoke-virtual {v5, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_21
    move-object v4, v5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_23
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v3, 0x4

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_25
    if-nez v4, :cond_3

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

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_26
    invoke-direct {v4, p1, v3}, Lny;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_28
    iput-object v3, p0, Lie;->f:Lhj;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v5, p0, p0, v6}, Lhx;-><init>(Lie;Landroid/view/View;Lib;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_4
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lie;->f:Lhj;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p1}, Lie;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/32 :goto_5f

    nop

    nop

    :goto_2f
    sget-object v1, Lew;->u:[I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_57

    nop

    nop

    :goto_31
    invoke-static {p0, v1}, Llq;->d(Landroid/view/View;Landroid/content/Context;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v4, p0, Lie;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object p1, p0, Lie;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto :goto_36

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    :goto_36
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v5, p0, Lie;->g:Ljf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_38
    iget-object p1, p0, Lie;->h:Landroid/widget/SpinnerAdapter;

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

    :goto_39
    invoke-direct {v3, p0}, Lhj;-><init>(Landroid/view/View;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez p1, :cond_5

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v7, p2, v8, v0, v2}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v6, v8}, Lju;->f(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3d
    const v0, 0x6

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v7, v8, v9}, Landroidx/wear/ambient/AmbientDelegate;->q(II)I

    move-result v8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v5, Lhx;

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

    :goto_40
    new-instance v6, Lib;

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

    nop

    nop

    :goto_41
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    :goto_42
    invoke-virtual {p0, p2, v0}, Lhj;->b(Landroid/util/AttributeSet;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_63

    nop

    nop

    :goto_45
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v6, -0x1

    nop

    nop

    :goto_47
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-boolean v3, p0, Lie;->i:Z

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_49
    check-cast v5, Landroid/content/res/TypedArray;

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

    :goto_4a
    sget-object v8, Lew;->u:[I

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

    nop

    :goto_4b
    iput-object v1, p0, Lie;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v7, v3}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v6, p0, v7, p2}, Lib;-><init>(Lie;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Lie;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

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

    :goto_50
    invoke-virtual {v1, v3, v2}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_51
    goto/16 :goto_34

    nop

    :goto_52
    goto/32 :goto_33

    nop

    nop

    :goto_53
    if-lez v0, :cond_7

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

    :cond_7
    goto/32 :goto_14

    nop

    :goto_54
    new-instance v4, Lny;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_55
    if-nez v5, :cond_8

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_8
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_56
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v5, v1, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const v0, 0x7f040623

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5a
    if-ne v6, v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    new-instance v3, Lhj;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_5d
    throw p0

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput-object v4, p0, Lie;->h:Landroid/widget/SpinnerAdapter;

    nop

    nop

    :goto_60
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v4, 0x0

    nop

    nop

    nop

    :try_start_0
    sget-object v5, Lie;->e:[I

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2, v5, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :goto_63
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move-object v5, v4

    nop

    :catch_1
    goto/32 :goto_55

    nop

    nop

    :goto_65
    const/4 v5, 0x2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p0, v5}, Lie;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_67
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    move-object v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lie;->getMeasuredWidth()I

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lie;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_5
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lie;->getSelectedItemPosition()I

    move-result v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v7, v5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_c
    goto/16 :goto_25

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

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

    :goto_f
    move v3, v0

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    if-lt v6, v4, :cond_1

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v8, v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_17
    rsub-int/lit8 v5, v5, 0xf

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lie;->getMeasuredHeight()I

    move-result v2

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    move v6, v3

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

    :goto_1d
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    add-int/2addr p1, p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    :goto_22
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    move v9, v0

    nop

    nop

    :goto_25
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_27
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_28
    const/4 v5, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    sub-int/2addr v3, v5

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

    :goto_2a
    const/4 v8, -0x2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2c
    move v0, v9

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2d
    move v9, v8

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

    nop

    :goto_2e
    sub-int v5, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2f
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p2, :cond_4

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_32
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget p1, p0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v4, v3, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_37
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_39
    if-ne v8, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p1, p0, Lie;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v3, p1

    nop

    :goto_40
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lie;->b:Lid;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lie;->getTextAlignment()I

    move-result p0

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lie;->getTextDirection()I

    move-result v1

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

    :goto_4
    const v0, 0x7

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

    :goto_5
    invoke-interface {v0, v1, p0}, Lid;->l(II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhj;->a()V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lie;->f:Lhj;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

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

    :goto_5
    return-void

    nop

    nop
.end method

.method public final getDropDownHorizontalOffset()I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    iget-object v0, p0, Lie;->b:Lid;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-interface {v0}, Lid;->a()I

    move-result p0

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

    :goto_6
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final getDropDownVerticalOffset()I
    .locals 1

    goto/32 :goto_5

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

    nop

    :goto_1
    invoke-interface {v0}, Lid;->b()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object v0, p0, Lie;->b:Lid;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop
.end method

.method public final getDropDownWidth()I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget p0, p0, Lie;->c:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lie;->b:Lid;

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

.method public final getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lie;->b:Lid;

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

    :goto_2
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lid;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getPopupContext()Landroid/content/Context;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lie;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final getPrompt()Ljava/lang/CharSequence;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lid;->d()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lie;->b:Lid;

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

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lie;->b:Lid;

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
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lid;->k()V

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lid;->u()Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lie;->b:Lid;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lie;->b:Lid;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v0, -0x80000000

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

    :goto_5
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lie;->getMeasuredWidth()I

    move-result p2

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

    :goto_a
    if-eq p2, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0, v1}, Lie;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1, p2}, Lie;->setMeasuredDimension(II)V

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lie;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lie;->getMeasuredHeight()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    const v0, 0x16

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lie;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

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
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lic;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

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

    nop

    :goto_8
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lgn;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lie;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean p1, p1, Lic;->a:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0, v1}, Lgn;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    check-cast p1, Lic;

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

    :goto_13
    const/4 v1, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    :goto_15
    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lid;->u()Z

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    iget-object p0, p0, Lie;->b:Lid;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Lic;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lic;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v1, v0, Lic;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    goto/32 :goto_7

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

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0, p1}, Ljf;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lie;->g:Ljf;

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

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final performClick()Z
    .locals 1

    goto/32 :goto_6

    nop

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

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lie;->b()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    iget-object v0, p0, Lie;->b:Lid;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lid;->u()Z

    move-result v0

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

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p0

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

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    goto/32 :goto_1

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
    check-cast p1, Landroid/widget/SpinnerAdapter;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lie;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    goto/32 :goto_e

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lie;->a:Landroid/content/Context;

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

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lie;->b:Lid;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lie;->h:Landroid/widget/SpinnerAdapter;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, v1}, Lid;->e(Landroid/widget/ListAdapter;)V

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lhz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_13
    const v1, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    iget-boolean v0, p0, Lie;->i:Z

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

    nop

    :goto_16
    invoke-direct {v1, p1, v0}, Lhz;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lie;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lie;->b:Lid;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object p0, p0, Lie;->f:Lhj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lhj;->e()V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lhj;->c(I)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

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
    iget-object p0, p0, Lie;->f:Lhj;

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

.method public final setDropDownHorizontalOffset(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lie;->b:Lid;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lie;->b:Lid;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lid;->g(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, p1}, Lid;->h(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setDropDownVerticalOffset(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p1}, Lid;->j(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object v0, p0, Lie;->b:Lid;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final setDropDownWidth(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_1
    iget-object v0, p0, Lie;->b:Lid;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput p1, p0, Lie;->c:I

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

.method public final setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_1

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
    iget-object v0, p0, Lie;->b:Lid;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p1}, Lid;->f(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setPopupBackgroundResource(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lie;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lie;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1}, Lid;->i(Ljava/lang/CharSequence;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lie;->b:Lid;

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
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
