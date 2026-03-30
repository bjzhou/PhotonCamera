.class public Lrlo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Landroid/os/Handler;

.field public static final b:Ljava/lang/String;

.field private static final t:Landroid/animation/TimeInterpolator;

.field private static final u:Landroid/animation/TimeInterpolator;

.field private static final v:Landroid/animation/TimeInterpolator;

.field private static final w:[I


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Landroid/animation/TimeInterpolator;

.field public final g:Landroid/animation/TimeInterpolator;

.field public final h:Landroid/view/ViewGroup;

.field public final i:Landroid/content/Context;

.field public final j:Lrln;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public final r:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public final s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final x:Landroid/animation/TimeInterpolator;

.field private final y:Ljava/lang/Runnable;

.field private final z:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lrer;->d:Landroid/animation/TimeInterpolator;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    sput-object v0, Lrlo;->w:[I

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

    :goto_5
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lrer;->a:Landroid/animation/TimeInterpolator;

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

    :goto_7
    sput-object v0, Lrlo;->a:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    filled-new-array {v0}, [I

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

    :goto_b
    sput-object v0, Lrlo;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2}, Lrli;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lrlo;->t:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const v0, 0x7f040618

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lrlo;->v:Landroid/animation/TimeInterpolator;

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

    nop

    nop

    :goto_12
    const-string v0, "rlo"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    new-instance v2, Lrli;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sput-object v0, Lrlo;->u:Landroid/animation/TimeInterpolator;

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

    :goto_17
    sget-object v0, Lrer;->b:Landroid/animation/TimeInterpolator;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x7

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 4

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    invoke-direct {p3, p0, v1}, Lrlj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2e

    nop

    nop

    :goto_1
    iput-object p0, p2, Lrln;->a:Lrlo;

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

    :goto_2
    iget p4, p2, Lrln;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lqxb;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v3, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_0
    goto/32 :goto_64

    nop

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
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_7
    if-nez p4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_67

    nop

    nop

    :goto_8
    invoke-static {p1, p3, p2}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p3, p2}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_a
    iput p2, p0, Lrlo;->c:I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p2, Lrlo;->u:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    cmpl-float v0, p4, v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, p3}, Lrln;->setImportantForAccessibility(I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lrlo;->y:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lrlo;->w:[I

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_11
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v1, 0xb

    nop

    nop

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
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    const-string p1, "Transient bottom bar must have non-null callback"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    invoke-static {v3, v2, p4}, Lrgw;->h(IIF)I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_16
    invoke-static {p1, p3, p2}, Lqqy;->i(Landroid/content/Context;II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lrlo;->f:Landroid/animation/TimeInterpolator;

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

    :goto_18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_19
    new-instance p3, Lrlj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2, p3}, Lrln;->setAccessibilityLiveRegion(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4a

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    const/16 p2, 0xfa

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    const p3, 0x7f0404d4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const p3, 0x7f0404e4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_23
    const/16 p2, 0x96

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_27
    iput-object p2, p0, Lrlo;->z:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Lrlo;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_29
    sget-object p2, Lrlo;->t:Landroid/animation/TimeInterpolator;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x17

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

    :goto_2b
    const/16 p3, 0x4b

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p2, p3}, Ldvw;->j(Landroid/view/View;Ldvo;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_30
    iput-object p2, p0, Lrlo;->j:Lrln;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_32
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setTextColor(I)V

    :goto_33
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_34
    new-instance p3, Lrlk;

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

    :goto_35
    const-string p2, "accessibility"

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_37
    sget-object p2, Lrlo;->v:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2, p3}, Lrln;->addView(Landroid/view/View;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 p3, 0x1

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

    :goto_3a
    invoke-direct {p3, p0}, Lrlk;-><init>(Lrlo;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_3d
    invoke-virtual {p2, p3}, Lrln;->setFitsSystemWindows(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget p4, p2, Lrln;->e:I

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_3f
    invoke-direct {v0, p0, v1, v2}, Lqxb;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_f

    nop

    nop

    :goto_40
    if-nez p3, :cond_2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_41
    const v1, 0x15

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object v0, p3

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_43
    invoke-static {p1, p2, p3}, Lqqy;->i(Landroid/content/Context;II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_2f

    nop

    nop

    :goto_46
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v2, -0x1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

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

    :goto_49
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const p2, 0x7f0404d7

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

    :goto_4c
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4d
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4e
    iput p2, p0, Lrlo;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {p3, v3}, Lrgw;->f(Landroid/view/View;I)I

    move-result v3

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

    :goto_50
    iput-object p4, p0, Lrlo;->r:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_52
    invoke-static {p2, p3}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    goto/32 :goto_35

    nop

    nop

    :goto_53
    iput-object p2, p0, Lrlo;->x:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_54
    invoke-static {p1, p3, p2}, Lqqy;->i(Landroid/content/Context;II)I

    move-result p2

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_49

    nop

    :goto_56
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_57
    iput p2, p0, Lrlo;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_58
    invoke-static {p1}, Lric;->b(Landroid/content/Context;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-object p1, p0, Lrlo;->i:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5a
    invoke-virtual {p4, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_5b
    move-object v0, p3

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const v0, 0x7f0e0063

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto :goto_5d

    nop

    :goto_5f
    goto/32 :goto_5c

    nop

    nop

    :goto_60
    check-cast p2, Lrln;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput p4, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_62
    const-string p1, "Transient bottom bar must have non-null content"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {p1, p3, p2}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const v0, 0x7f0e00d3

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_66
    iget-object v2, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_67
    iput-object p2, p0, Lrlo;->h:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const v3, 0x7f0401c5

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_69
    iput-object p2, p0, Lrlo;->g:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_29

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrln;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x9

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

    :goto_c
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

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

    :goto_d
    iget-object p0, p0, Lrlo;->j:Lrln;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    if-nez v1, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lrln;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final varargs b([F)Landroid/animation/ValueAnimator;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

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

    :goto_2
    invoke-direct {v0, p0, v1}, Lrfp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    iget-object v0, p0, Lrlo;->x:Landroid/animation/TimeInterpolator;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_d

    nop

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

    :goto_7
    const v1, 0x19

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lrfp;

    nop

    goto/32 :goto_f

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

    goto/32 :goto_a

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    return-object p1

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x2

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

    :goto_10
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrlo;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, v0, Lrlt;->a:Ljava/lang/Object;

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

    :goto_a
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lrlt;->a()Lrlt;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v0, 0x3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    monitor-enter v1

    nop

    :try_start_0
    invoke-virtual {v0, p0}, Lrlt;->g(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    iget-object p0, v0, Lrlt;->c:Lrls;

    nop

    nop

    invoke-virtual {v0, p0, p1}, Lrlt;->d(Lrls;I)Z

    goto :goto_e

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v0, p0}, Lrlt;->h(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Z

    move-result p0

    nop

    nop

    nop

    if-eqz p0, :cond_2

    nop

    iget-object p0, v0, Lrlt;->d:Lrls;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0, p1}, Lrlt;->d(Lrls;I)Z

    :cond_2
    :goto_e
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final d()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    monitor-enter v1

    nop

    :try_start_0
    invoke-virtual {v0, p0}, Lrlt;->g(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Z

    move-result p0

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    iget-object p0, v0, Lrlt;->c:Lrls;

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Lrlt;->b(Lrls;)V

    :cond_0
    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iget-object v1, v0, Lrlt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v0, 0x1f

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

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Lrlt;->a()Lrlt;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_9

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

    :goto_d
    iget-object p0, p0, Lrlo;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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
.end method

.method public final e()V
    .locals 4

    goto/32 :goto_20

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

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ldwa;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

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

    :goto_9
    invoke-virtual {v0, v1}, Lrln;->setVisibility(I)V

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, p0, v2, v3}, Lqxb;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_23

    nop

    nop

    :goto_c
    new-instance v1, Lqxb;

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

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lrln;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lrlo;->d()V

    goto/32 :goto_21

    nop

    nop

    :goto_10
    iget-object v0, p0, Lrlo;->j:Lrln;

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

    nop

    :goto_11
    iget-object v0, p0, Lrlo;->j:Lrln;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lrlo;->i:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lrlo;->g()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v1}, Ldwd;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    const v2, 0x7f140641

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x19

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

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Lrln;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    const/16 v2, 0xd

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 6

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ldsz;

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

    :goto_1
    iget-object v0, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lrlo;->j:Lrln;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Lrln;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lrln;->requestLayout()V

    :goto_6
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v4, v4, Lrln;->f:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_8
    add-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_a
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_f

    nop

    nop

    :goto_b
    iget-object v2, v2, Lrln;->f:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_d
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Lrlo;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_11
    iget-object v4, p0, Lrlo;->j:Lrln;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lrln;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_16
    instance-of v1, v0, Ldsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Lrln;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    :goto_19
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1a
    instance-of v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    sget-object p0, Lrlo;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Lrlo;->b:Ljava/lang/String;

    nop

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

    :goto_1d
    iget v3, v3, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, v1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1f
    iget-object v2, v1, Lrln;->f:Landroid/graphics/Rect;

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

    :goto_20
    const-string v0, "Unable to update margins because layout params are not MarginLayoutParams"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    iget v1, p0, Lrlo;->o:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lrlo;->j:Lrln;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lrlo;->j:Lrln;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, p0}, Lrln;->post(Ljava/lang/Runnable;)Z

    :goto_26
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-gtz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    :goto_28
    if-ne v5, v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_6
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_29
    add-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2a
    iget v3, p0, Lrlo;->m:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2b
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq v5, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lrlo;->y:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2e
    if-eqz v2, :cond_8

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1c

    nop

    nop

    :goto_2f
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

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

    :goto_32
    if-eq v5, v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, p0, Lrlo;->j:Lrln;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, v1, Lrln;->f:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_36
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Lrlo;->y:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_38
    iget-object v1, p0, Lrlo;->j:Lrln;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Lrln;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lrlo;->j:Lrln;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3e
    iget v4, p0, Lrlo;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3f
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_40
    iget-object v3, p0, Lrlo;->j:Lrln;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v4, v4, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_42
    iget v1, p0, Lrlo;->l:I

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

    :goto_43
    iget-object v3, v3, Lrln;->f:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_47
    if-eq v5, v2, :cond_a

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_48
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_49
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2f

    nop

    :goto_4a
    goto/16 :goto_6

    nop

    :goto_4b
    goto/32 :goto_3f

    nop

    nop

    :goto_4c
    goto :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_51
    iget v0, p0, Lrlo;->o:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_52
    const-string v0, "Unable to update margins because original view margins are not set"

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    :goto_54
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_42

    nop

    nop

    :goto_57
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    add-int/2addr v3, v4

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
.end method

.method final g()Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

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

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lrlo;->z:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

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

    :goto_1
    invoke-virtual {v0}, Lrln;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0, v2}, Lrlt;->g(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v2, v0, Lrlt;->c:Lrls;

    nop

    nop

    iget-object v2, v0, Lrlt;->d:Lrls;

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    invoke-virtual {v0}, Lrlt;->c()V

    :cond_0
    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrlo;->j:Lrln;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lrlt;->a()Lrlt;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, v0, Lrlt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lrlo;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    throw p0

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
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    const v0, 0x13

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lrlo;->j:Lrln;

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

    :goto_12
    if-nez v1, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    instance-of v1, v0, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
