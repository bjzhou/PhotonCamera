.class public final Lnzu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final i:Lnzs;


# instance fields
.field public final a:F

.field public final b:F

.field protected final c:Landroid/view/ViewGroup;

.field protected final d:Landroid/graphics/Rect;

.field public e:Z

.field public final f:Landroid/database/ContentObserver;

.field public g:Z

.field final h:Landroid/view/View$OnAttachStateChangeListener;

.field private final j:Landroid/graphics/Rect;

.field private final k:Lnzs;

.field private l:F

.field private m:F

.field private final n:Landroid/view/animation/BaseInterpolator;

.field private final o:Landroid/view/animation/BaseInterpolator;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Landroid/view/ViewGroup;Z)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, 0x1

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

    :goto_1
    goto/16 :goto_11

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v1}, Lnzu;->b(Landroid/view/View;)V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_9
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v2, v3}, Lnzu;->19e596a3e324281407eb5c11093c0152m(Landroid/view/ViewGroup;Z)V

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    const v1, 0x5

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

    :goto_14
    check-cast v2, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    move-object v2, v1

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

    :goto_16
    instance-of v3, v1, Lnzm;

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

    :goto_17
    instance-of v2, v1, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    if-nez v2, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    :goto_1e
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_1f
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

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
    sput-object v0, Lnzu;->i:Lnzs;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lnzr;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lnzr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lnzs;)V
    .locals 5

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lnzu;->j:Landroid/graphics/Rect;

    nop

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

    nop

    :goto_1
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 p2, 0x42400000    # 48.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3f

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lnzu;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1

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

    nop

    nop

    :goto_a
    const p2, -0x41e66664    # -0.15000004f

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lnzu;->c:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p2, p0, v1}, Lnzt;-><init>(Lnzu;Landroid/os/Handler;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_d
    add-float/2addr p2, v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Lnzu;->g(Landroid/content/Context;)Z

    move-result p1

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

    :goto_f
    iput-object p2, p0, Lnzu;->k:Lnzs;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_10
    add-float/2addr v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    int-to-float v1, v1

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

    :goto_12
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p2, Lnzt;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    const/high16 p2, -0x3cc00000    # -192.0f

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lnzu;->o:Landroid/view/animation/BaseInterpolator;

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

    :goto_16
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_17
    iput v1, p0, Lnzu;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_19
    new-instance v0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    div-float/2addr v1, p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Landroid/view/animation/PathInterpolator;

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

    :goto_1d
    new-instance v0, Lfp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Lnzu;->h:Landroid/view/View$OnAttachStateChangeListener;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr v1, p2

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

    :goto_22
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lnzu;->n:Landroid/view/animation/BaseInterpolator;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v3, 0x3f333333    # 0.7f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    const p2, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_0
    goto/32 :goto_38

    nop

    :goto_29
    add-float/2addr v1, p2

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

    :goto_2a
    iput-object p2, p0, Lnzu;->f:Landroid/database/ContentObserver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr v1, p2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

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

    nop

    :goto_2d
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2f
    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_30
    iput p2, p0, Lnzu;->a:F

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

    :goto_31
    mul-float/2addr p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_32
    const v2, 0x3f19999a    # 0.6f

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

    :goto_33
    const v1, 0x3e99999a    # 0.3f

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

    nop

    :goto_34
    const v0, 0x10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

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

    nop

    :goto_36
    iget v2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

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

    :goto_37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3a
    const p2, -0x42b33334    # -0.049999997f

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3c
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v0, p0, v1}, Lfp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3e
    iput-boolean p1, p0, Lnzu;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3f
    goto/32 :goto_39

    nop

    nop

    nop

    nop
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    return v1

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    const-string v0, "reduce_motion"

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 10

    goto/32 :goto_4

    nop

    nop

    :goto_0
    neg-int v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    const v3, 0x3eb33333    # 0.35f

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

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

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

    :goto_4
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_5
    const v4, 0x3e4cccce    # 0.20000002f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_6
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_82

    nop

    nop

    nop

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

    :goto_9
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

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

    :goto_a
    add-float/2addr v3, v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float v2, v2

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

    :goto_d
    mul-float/2addr v7, v9

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-gtz v2, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_10
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_11
    div-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_12
    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    goto/32 :goto_24

    nop

    nop

    :goto_13
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_15
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    iget-object v0, p0, Lnzu;->k:Lnzs;

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_1a
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1c
    iget-boolean v0, p0, Lnzu;->e:Z

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_1e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return v7

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v2, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    const/high16 v9, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    int-to-float v0, v2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_24
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_26
    iget v5, p0, Lnzu;->l:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_27
    return v7

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v1, v1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    cmpg-float v2, v2, v3

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

    :goto_2b
    sub-int/2addr p0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v4, p0, Lnzu;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_2d
    int-to-float p0, p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2f
    sub-int/2addr v1, p0

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

    :goto_30
    iget-object v0, p0, Lnzu;->j:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_31
    div-float/2addr v2, v5

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

    :goto_32
    mul-float/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_33
    if-lt v4, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    cmpl-float p0, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_38
    iget-object v7, p0, Lnzu;->c:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3b
    sub-float/2addr v2, v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3c
    if-ltz v2, :cond_2

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

    :cond_2
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_28

    nop

    nop

    :goto_3e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, p0}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v7

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sub-float/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_42
    if-ltz v2, :cond_4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_44
    sget-object v0, Lnzu;->i:Lnzs;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_70

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v3, 0x2

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

    nop

    :goto_48
    iget-object v3, p0, Lnzu;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v1, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    cmpg-float v2, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :cond_5
    :goto_4c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4d
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    int-to-float p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_50
    sub-int/2addr v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_70

    nop

    nop

    :goto_52
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_54
    cmpl-float v2, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_55
    iget v4, p0, Lnzu;->m:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_56
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_57
    sub-float/2addr v5, v4

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_58
    if-gt v8, v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    :goto_59
    iget v8, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_5a
    float-to-int v2, v2

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5c
    if-ne v2, v3, :cond_7

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    :goto_5d
    goto/16 :goto_17

    nop

    :goto_5e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

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

    :goto_60
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

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

    :goto_61
    int-to-float v0, v2

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v0}, Lnzs;->c()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    mul-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v1, p0, Lnzu;->c:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_66
    iget-object p0, p0, Lnzu;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v0, p1}, Lnzs;->a(Landroid/view/View;)Z

    move-result v3

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

    nop

    :goto_6a
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_6b
    int-to-float v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_6c
    iget v3, v3, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_6d
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_6e
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_6f
    const v3, 0x3f0ccccd    # 0.55f

    nop

    nop

    :goto_70
    goto/32 :goto_78

    nop

    nop

    :goto_71
    return v7

    nop

    nop

    :goto_72
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget v3, p0, Lnzu;->l:F

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_88

    nop

    :goto_76
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_77
    iget v2, v2, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v2, p0, Lnzu;->d:Landroid/graphics/Rect;

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

    :goto_79
    int-to-float v2, v2

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_7a
    iget v4, p0, Lnzu;->m:F

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_7b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_7d
    iget v4, p0, Lnzu;->m:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object p1, p0, Lnzu;->n:Landroid/view/animation/BaseInterpolator;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_7f
    div-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_80
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_82
    if-lez v0, :cond_9

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

    :cond_9
    goto/32 :goto_3d

    nop

    :goto_83
    iget-object p1, p0, Lnzu;->o:Landroid/view/animation/BaseInterpolator;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_84
    add-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_85
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-eqz p0, :cond_a

    nop

    goto/32 :goto_72

    nop

    :cond_a
    :goto_88
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_8a
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_8c
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object p0, p0, Lnzu;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8e
    invoke-interface {v0, p1}, Lnzs;->b(Landroid/view/View;)Z

    move-result v4

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_8f
    if-nez v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_90
    goto :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p1, p0}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v7

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v1, p0, Lnzu;->j:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_94
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lnzu;->c(Landroid/view/View;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x7f0b006d

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1, v0}, Lnzu;->d(Landroid/view/View;F)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lnzu;->a(Landroid/view/View;)F

    move-result v0

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

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    iget-boolean v1, p0, Lnzu;->e:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lnzu;->f(Landroid/view/View;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    :goto_13
    const v0, 0x1d

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
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_16
    if-nez v1, :cond_4

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    goto :goto_1d

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    :goto_1e
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_19

    nop

    nop
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/view/View;F)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    goto/32 :goto_5

    nop

    nop

    :goto_3
    mul-float v0, p2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const p0, 0x3e99999a    # 0.3f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const p0, 0x3f333333    # 0.7f

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

    :goto_8
    mul-float/2addr p2, p0

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
    const/high16 p0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    add-float/2addr p2, p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lnzu;->m:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iget v1, p0, Lnzu;->a:F

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

    :goto_2
    int-to-float v0, v0

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

    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnzu;->d:Landroid/graphics/Rect;

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

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnzu;->c:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x0

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

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lnzu;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Lnzu;->b:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v0, v1

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

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    int-to-float v0, v0

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

    :goto_19
    iput v0, p0, Lnzu;->l:F

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

    :goto_1a
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lnzu;->c:Landroid/view/ViewGroup;

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

    :goto_1c
    const v0, 0x6

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

    :goto_1d
    invoke-direct {p0, v0, v1}, Lnzu;->19e596a3e324281407eb5c11093c0152m(Landroid/view/ViewGroup;Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lnzu;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop
.end method

.method public final f(Landroid/view/View;)Z
    .locals 1

    goto/32 :goto_c

    nop

    nop

    :goto_0
    check-cast p1, Landroid/view/View;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnzu;->c:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    instance-of v0, p1, Landroid/view/View;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

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

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p1, v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    return p0

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

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lnzu;->f(Landroid/view/View;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
