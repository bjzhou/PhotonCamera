.class public Lrho;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Landroid/animation/TimeInterpolator;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field static final f:[I

.field static final g:[I

.field static final h:[I

.field static final i:[I

.field static final j:[I

.field static final k:[I


# instance fields
.field public A:I

.field public final B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final D:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final E:Landroid/graphics/Rect;

.field private final F:Landroid/graphics/RectF;

.field private final G:Landroid/graphics/RectF;

.field private final H:Landroid/graphics/Matrix;

.field private final I:Lqau;

.field public l:Lrku;

.field public m:Lrkp;

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Lrgz;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Z

.field public r:F

.field public s:F

.field public t:F

.field public u:I

.field public v:Landroid/animation/Animator;

.field public w:Lrev;

.field public x:Lrev;

.field public y:F

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x101009e

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    filled-new-array {v1}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1010367

    nop

    nop

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x7f0404e2

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

    nop

    :goto_6
    sget-object v0, Lrer;->c:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_7
    const v0, 0x10100a7

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    filled-new-array {v0, v2, v1}, [I

    move-result-object v3

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

    nop

    :goto_a
    sput-object v3, Lrho;->g:[I

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    sput v0, Lrho;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    new-array v0, v0, [I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7f0404d4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lrho;->f:[I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    sput-object v0, Lrho;->i:[I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    sput-object v0, Lrho;->j:[I

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

    nop

    nop

    :goto_16
    sput-object v0, Lrho;->k:[I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    sput v0, Lrho;->c:I

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

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v2, Lrho;->h:[I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    sput v0, Lrho;->b:I

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

    :goto_1d
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    :goto_1f
    filled-new-array {v2, v1}, [I

    move-result-object v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x7f0404d7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    const v2, 0x101009c

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_22
    sput-object v0, Lrho;->a:Landroid/animation/TimeInterpolator;

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

    :goto_23
    sput v0, Lrho;->e:I

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

    :goto_24
    const v0, 0x7f0404e4

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
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 5

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2
    invoke-static {v0}, Lrho;->p(Lrhn;)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_5
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    const/16 v3, 0xc0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_8
    aput-object v0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lrho;->p(Lrhn;)Landroid/animation/ValueAnimator;

    move-result-object v0

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

    :goto_a
    iput-object p2, p0, Lrho;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Lrhl;-><init>(Lrho;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lrhk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Lrho;->p(Lrhn;)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lrho;->E:Landroid/graphics/Rect;

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

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_13
    iput-object v0, p0, Lrho;->G:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    :goto_15
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v3, 0xc4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    new-instance v0, Lrhj;

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

    nop

    :goto_1c
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lrho;->H:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1e
    invoke-static {v0}, Lrho;->p(Lrhn;)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Landroid/graphics/RectF;

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

    :goto_20
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x1

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

    :goto_22
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

    :goto_23
    new-instance v0, Lrhk;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2f

    nop

    nop

    :goto_26
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_28
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_29
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aput-object p0, v1, v3

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

    :goto_2b
    new-instance v0, Lrhk;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x8

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

    :goto_2d
    invoke-direct {v0, p0}, Lrhk;-><init>(Lrho;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    :goto_2f
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_30
    new-array v1, v1, [Ljava/lang/Object;

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

    :goto_31
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_32
    const/16 v3, 0xc2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    new-instance p2, Lqau;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_35
    const/16 v3, 0xc3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_36
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_37
    new-instance v0, Lrhm;

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

    :goto_38
    invoke-static {v0}, Lrho;->p(Lrhn;)Landroid/animation/ValueAnimator;

    move-result-object p0

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

    nop

    :goto_39
    const/16 v3, 0xc1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0}, Lrho;->p(Lrhn;)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3b
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aput-object v0, v1, v3

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

    :goto_3d
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_26

    nop

    :goto_3f
    rem-int v0, v0, v1

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

    :goto_40
    new-instance v0, Lrhl;

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

    :goto_41
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_42
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_43
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_44
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput-object v0, p0, Lrho;->F:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_46
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v0, p0}, Lrhj;-><init>(Lrho;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_48
    iput-object p2, p0, Lrho;->I:Lqau;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_49
    iput-object p1, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

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

    :goto_4a
    invoke-direct {p2}, Lqau;-><init>()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_4b
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/16 v3, 0xbf

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4d
    invoke-direct {v0, p0}, Lrhk;-><init>(Lrho;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4e
    const/4 v1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4f
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_50
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_25

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_53
    invoke-direct {v0, p0}, Lrhk;-><init>(Lrho;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v0, p0}, Lrhm;-><init>(Lrho;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iput v0, p0, Lrho;->A:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iput v0, p0, Lrho;->y:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private static final p(Lrhn;)Landroid/animation/ValueAnimator;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    const-wide/16 v1, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lrho;->a:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    new-instance v0, Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    const/4 p0, 0x2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    new-array p0, p0, [F

    nop

    nop

    nop

    nop

    fill-array-data p0, :array_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lrho;->r:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    div-int/lit8 v0, v0, 0x2

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

    :goto_3
    add-int v0, v0, v1

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
    if-nez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x11

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

    :goto_8
    sub-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v0, p0, Lrho;->q:Z

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Lrho;->u:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final c(Lrev;FFF)Landroid/animation/AnimatorSet;
    .locals 5

    goto/32 :goto_30

    nop

    nop

    :goto_0
    goto/32 :goto_2a

    nop

    :goto_1
    const/4 v4, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    new-instance p4, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_7
    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    const-string p2, "iconScale"

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

    :goto_a
    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "scale"

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

    :goto_c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    invoke-virtual {p3, p2}, Lrew;->b(Landroid/animation/Animator;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_f
    iget-object p2, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

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

    :goto_10
    aput p3, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p2}, Lrew;->b(Landroid/animation/Animator;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-array v1, v2, [F

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2}, Lrev;->b(Ljava/lang/String;)Lrew;

    move-result-object p1

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

    :goto_15
    new-array v3, v2, [F

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    invoke-direct {p3, p0}, Lrhh;-><init>(Lrho;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v1}, Lrev;->b(Ljava/lang/String;)Lrew;

    move-result-object p3

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

    :goto_18
    filled-new-array {p4}, [Landroid/graphics/Matrix;

    move-result-object p4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, v0}, Lrgw;->l(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    goto/32 :goto_37

    nop

    nop

    :goto_1a
    invoke-direct {p2}, Lret;-><init>()V

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    invoke-virtual {v3, p2}, Lrew;->b(Landroid/animation/Animator;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

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

    :goto_1d
    aput p3, v1, v4

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

    nop

    :goto_1e
    invoke-static {p3, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v3, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "opacity"

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    new-instance p3, Lrhh;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_25
    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, v1}, Lrev;->b(Ljava/lang/String;)Lrew;

    move-result-object v3

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

    :goto_27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p2, p0, Lrho;->H:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_38

    nop

    :goto_2a
    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    new-instance p2, Lret;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v1}, Lrev;->b(Ljava/lang/String;)Lrew;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2e
    aput p2, v3, v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2f
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x3

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

    :goto_31
    invoke-virtual {p1, p0}, Lrew;->b(Landroid/animation/Animator;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lrho;->H:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, p4, p2}, Lrho;->e(FLandroid/graphics/Matrix;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p4, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_35
    new-array v2, v2, [F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_37
    return-object p0

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_0

    nop

    nop

    :goto_39
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3a
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_25

    nop

    nop

    nop
.end method

.method public final d(FFFII)Landroid/animation/AnimatorSet;
    .locals 15

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move/from16 v2, p4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1
    return-object v11

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4
    new-instance v9, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-long v0, v0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    iget-object v0, v10, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v10, Lrho;->H:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v10, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_b
    iget v7, v10, Lrho;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    new-instance v12, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    invoke-direct/range {v0 .. v9}, Lrhi;-><init>(Lrho;FFFFFFFLandroid/graphics/Matrix;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lrer;->b:Landroid/animation/TimeInterpolator;

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

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    :goto_12
    move/from16 v8, p3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    move/from16 v3, p1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleY()F

    move-result v6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v2, v1}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleX()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_18
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_21

    nop

    nop

    :goto_19
    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move/from16 v5, p2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move/from16 v2, p5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v11, v12}, Lrgw;->l(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_25
    move-object v0, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_28
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v14, Lrhi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2a
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2b
    new-instance v11, Landroid/animation/AnimatorSet;

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

    :goto_2c
    iget-object v0, v10, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    move-object v1, p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1, v2, v0}, Lqqy;->i(Landroid/content/Context;II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2f
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getAlpha()F

    move-result v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_31
    iget-object v0, v10, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_33
    const v2, 0x7f0c007f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(FLandroid/graphics/Matrix;)V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lrho;->z:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    int-to-float v0, v0

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

    :goto_2
    const v1, 0x3

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

    :goto_3
    iget v1, p0, Lrho;->z:I

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

    :goto_4
    const v0, 0x1c

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-virtual {p2, p1, p1, p0, p0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    div-float/2addr p0, v0

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

    :goto_9
    iget-object v2, p0, Lrho;->G:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lrho;->F:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const/high16 v0, 0x40000000    # 2.0f

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_18
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    iget p0, p0, Lrho;->z:I

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

    :goto_1a
    invoke-virtual {v2, v4, v4, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public f(Landroid/graphics/Rect;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    float-to-double v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    iget p0, p0, Lrho;->t:F

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    const v0, 0x7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    mul-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    double-to-int p0, v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v2, 0x3fc00000    # 1.5f

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

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

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

    nop

    :goto_14
    double-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lrho;->a()F

    move-result v1

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
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_17
    add-float/2addr v1, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lrho;->b()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public g(FFF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

.method public final h(F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Lrho;->e(FLandroid/graphics/Matrix;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lrho;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrho;->H:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

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
    return-void

    nop

    nop

    nop
.end method

.method public final i(Lrku;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Lrkp;->d(Lrku;)V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrho;->o:Lrgz;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrho;->l:Lrku;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget-object v0, p0, Lrho;->m:Lrkp;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrgz;->invalidateSelf()V

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lrgz;->h:Lrku;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final j()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lrho;->h(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lrho;->y:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 8

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const-string v2, "Didn\'t initialize content background"

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

    :goto_1
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

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->r(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrho;->m()Z

    move-result v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

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
    add-int/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    iget v2, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    iget v6, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    const v0, 0x3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_a
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a:I

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

    :goto_c
    iget v4, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_e
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_10
    iget-object v2, p0, Lrho;->p:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    iget-object p0, p0, Lrho;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_16
    iget-object v1, p0, Lrho;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lrho;->E:Landroid/graphics/Rect;

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

    :goto_18
    invoke-static {v1, v2}, Ldvu;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setPadding(IIII)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_3

    nop

    :goto_1c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_25

    nop

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_20
    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    iget v5, v0, Landroid/graphics/Rect;->top:I

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

    :goto_23
    iget-object v1, p0, Lrho;->p:Landroid/graphics/drawable/Drawable;

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

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_11

    nop

    nop

    :goto_26
    add-int/2addr v1, v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->r(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v3, p0, Lrho;->p:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/2addr v0, v4

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

    :goto_2b
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, v0}, Lrho;->f(Landroid/graphics/Rect;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    iget-object v4, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_30
    iget-object v2, p0, Lrho;->D:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final l(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrho;->m:Lrkp;

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

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4

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

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lrkp;->m(F)V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public m()Z
    .locals 0

    goto/32 :goto_1

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
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final n()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isLaidOut()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isInEditMode()Z

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method final o()Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lrho;->u:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-ge v0, p0, :cond_0

    nop

    goto/32 :goto_5

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

    :goto_9
    iget-boolean v0, p0, Lrho;->q:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    nop
.end method
