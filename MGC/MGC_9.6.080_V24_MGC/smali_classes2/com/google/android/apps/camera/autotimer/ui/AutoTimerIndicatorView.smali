.class public final Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;
.super Landroid/view/View;
.source "PG"


# static fields
.field public static final a:Lj$/time/Duration;

.field static final b:Lj$/time/Duration;


# instance fields
.field public final c:Landroid/view/View$OnLayoutChangeListener;

.field final d:Landroid/graphics/Paint;

.field final e:Landroid/animation/ValueAnimator;

.field public f:Landroid/view/ViewPropertyAnimator;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:F

.field private final m:F

.field private final n:F

.field private final o:Landroid/graphics/Matrix;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/RectF;

.field private final s:Landroid/graphics/RectF;

.field private final t:Landroid/graphics/RectF;

.field private final u:Landroid/graphics/RectF;

.field private v:I

.field private w:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

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
    goto/32 :goto_b

    nop

    nop

    :goto_6
    const-wide/16 v0, 0xfa

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

    :goto_7
    sput-object v0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->b:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    sput-object v0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->a:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v0, 0x64

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    const v1, 0x13

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0, v1}, Lgle;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->n:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const v1, 0x7f070099

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->u:Landroid/graphics/RectF;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_6
    iput-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->q:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    iput-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->p:Landroid/graphics/Paint;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_9
    new-instance v2, Ldwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    const/4 v3, 0x3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    const v0, 0x7f07009c

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

    :goto_c
    int-to-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_e
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_f
    new-instance p1, Lgle;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_11
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-float/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->h:I

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

    :goto_14
    const v1, 0x5

    nop

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

    nop

    :goto_15
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->o:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_17
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_18
    new-array v0, v0, [F

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

    :goto_19
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x7f0c000a

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_16

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_20
    const v0, 0x7f07009d

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_21
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->m:F

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    const v0, 0x7f07009b

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_26
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_5a

    nop

    nop

    :goto_27
    new-instance v2, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v2, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v2, p0, v3, p2}, Ldwi;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->g:I

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

    :goto_2c
    const/4 v1, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float v1, v1

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

    :goto_2e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_4e

    nop

    nop

    :goto_31
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    :goto_33
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_35
    iput v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->i:I

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x7f07009a

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v2, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v2, Landroid/graphics/Paint;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->setLayerType(ILandroid/graphics/Paint;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_42
    new-instance v2, Landroid/graphics/RectF;

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

    :goto_43
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->l:F

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

    :goto_45
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

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

    :goto_4a
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->e:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_30

    nop

    nop

    :goto_4d
    iput-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->t:Landroid/graphics/RectF;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_51
    const v0, 0x11

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

    nop

    :goto_52
    iput v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->j:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_53
    aput v2, v0, v1

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

    :goto_54
    iput-object p1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->c:Landroid/view/View$OnLayoutChangeListener;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const v0, 0x7f060027

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_56
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const v3, 0x7f060025

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_59
    sub-float p2, p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5a
    iput-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->s:Landroid/graphics/RectF;

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

    :goto_5b
    const/4 v0, 0x1

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

    :goto_5c
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_62

    nop

    nop

    :goto_5d
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

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

    :goto_5f
    iput-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->d:Landroid/graphics/Paint;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_61
    const p2, 0x7f0c000b

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const v3, 0x7f060026

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_63
    div-float v0, p2, p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method private static c(IIIII)Landroid/graphics/RectF;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float p0, p0

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

    :goto_1
    invoke-direct {p4, p1, p0, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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

    :goto_3
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-object p4

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x3

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

    :goto_6
    new-instance p4, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p4, v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

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
    new-instance p4, Landroid/graphics/RectF;

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

    :goto_b
    if-ne p4, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_8

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-direct {p4, p0, p1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_7

    nop

    nop

    :goto_f
    int-to-float p2, p2

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
    int-to-float p3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_2
    iput p1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->w:F

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

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->e:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->e:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_25

    nop

    :goto_7
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->e:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput p1, v2, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->b:Lj$/time/Duration;

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

    :goto_13
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_21

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    iget-object p1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->e:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->e:Landroid/animation/ValueAnimator;

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

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    aput v0, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    const v0, 0x10

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->e:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_20

    nop

    nop

    :goto_25
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(IIII)V
    .locals 5

    goto/32 :goto_15

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
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2
    int-to-float p3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    neg-float p2, p2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4
    neg-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_5
    iput v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->v:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_6
    iput p4, p2, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    iget-object p2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->t:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_43

    nop

    nop

    :goto_9
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p3, p2, Landroid/graphics/RectF;->top:F

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

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    mul-float/2addr v1, v4

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

    :goto_e
    iget-object p0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->t:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_f
    iput p2, p1, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_11
    int-to-float v0, v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->t:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget p2, p1, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput p1, p2, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_15
    const v0, 0x17

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

    nop

    :goto_16
    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->c(IIIII)Landroid/graphics/RectF;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-float/2addr p4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    iget p2, p2, Landroid/graphics/RectF;->top:F

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

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1c
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

    :goto_1d
    iget p4, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->i:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    iget-object p2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->t:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->o:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    iget v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->v:I

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    add-float/2addr p1, p3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_23
    mul-float/2addr v2, v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget p3, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->h:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_25
    mul-float/2addr p3, v4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3, v0, v4, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_27
    iput p2, p1, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->o:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2b
    mul-int/lit8 v0, v0, 0x5a

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-float v1, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float p4, p4

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

    :goto_2e
    iget-object p2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->t:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    neg-float p3, p3

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

    :goto_30
    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    iget p3, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->i:I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

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

    :goto_34
    sub-int v1, p3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->o:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_36
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->s:Landroid/graphics/RectF;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_38
    sub-int v2, p4, p2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_39
    mul-float/2addr p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->t:Landroid/graphics/RectF;

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

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3c
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    int-to-float p3, p3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/high16 v4, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget p4, p2, Landroid/graphics/RectF;->top:F

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

    :goto_41
    add-float/2addr p3, p4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v0, 0x0

    nop

    nop

    :goto_43
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->s:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_45
    neg-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    goto/32 :goto_30

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getTop()I

    move-result v1

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
    invoke-virtual {p0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getRight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float v8, v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getLeft()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    add-float/2addr v0, v1

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

    :goto_7
    iget-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->t:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->r:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    nop

    :goto_b
    mul-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->j:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-float v5, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, v0, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_13
    mul-float/2addr v0, v1

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

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->r:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_16
    iget v0, v0, Landroid/graphics/RectF;->left:F

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

    :goto_17
    move v7, v8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->s:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->e:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    neg-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1b
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->k:I

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    neg-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    const/high16 v1, 0x437f0000    # 255.0f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_5

    nop

    :goto_21
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->o:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_22
    and-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->l:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    shl-int/lit8 v0, v0, 0x18

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->p:Landroid/graphics/Paint;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_27
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->m:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->s:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->k:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v2, 0xffffff

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

    :goto_2c
    float-to-int v0, v0

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

    nop

    :goto_2d
    add-int/2addr v2, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-float v0, v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2f
    iget-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_31
    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_14

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_33
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->u:Landroid/graphics/RectF;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_35
    const/high16 v2, 0x3f000000    # 0.5f

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

    :goto_36
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getBottom()I

    move-result v3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->o:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3a
    add-float v6, v0, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v2, p1

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

    :goto_3c
    sub-float v4, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3d
    iget v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->w:F

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
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3f
    iput v0, v1, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_40
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_41
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->l:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_42
    iget v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->k:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_43
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->l:F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_44
    iget v0, v0, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->d:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->d:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_48
    iget-object v9, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->q:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_49
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->c(IIIII)Landroid/graphics/RectF;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4a
    sub-float/2addr v0, v2

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

    nop

    :goto_4b
    or-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    :goto_4d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->s:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v2, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_50
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget v0, v0, Landroid/graphics/RectF;->right:F

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

    :goto_52
    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

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

    nop

    :goto_54
    iget-object v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->r:Landroid/graphics/RectF;

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

    :goto_55
    check-cast v1, Ljava/lang/Float;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    sub-float v3, v0, v1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_57
    int-to-float v1, v1

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

    nop

    :goto_58
    iget-object p0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->u:Landroid/graphics/RectF;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_59
    int-to-float v1, v1

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

    :goto_5a
    iget-object v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->s:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5b
    iget-object v0, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->r:Landroid/graphics/RectF;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget v1, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->l:F

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_5d
    iget v4, p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->v:I

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_5e
    iput v0, v1, Landroid/graphics/RectF;->right:F

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
.end method
