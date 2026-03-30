.class public final Leit;
.super Landroid/graphics/drawable/Drawable;
.source "PG"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final d:Landroid/view/animation/Interpolator;

.field private static final e:Landroid/view/animation/Interpolator;

.field private static final f:[I


# instance fields
.field public final a:Leis;

.field public b:F

.field public c:Z

.field private g:F

.field private final h:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    sput-object v0, Leit;->f:[I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v0, -0x1000000

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

    :goto_3
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    sput-object v0, Leit;->e:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    new-instance v0, Leac;

    nop

    goto/32 :goto_7

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

    :goto_7
    invoke-direct {v0}, Leac;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Leit;->d:Landroid/view/animation/Interpolator;

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

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_21

    nop

    nop

    :goto_0
    new-instance v1, Lmsq;

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_2
    sget-object v1, Leit;->d:Landroid/view/animation/Interpolator;

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

    :goto_3
    new-array v0, v0, [F

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Leit;->c(F)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1}, Leis;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    new-instance v1, Ljnw;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    invoke-direct {v1, p0, p1, v2}, Ljnw;-><init>(Leit;Leis;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, p0, p1, v2}, Lmsq;-><init>(Leit;Leis;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Ldvu;->s(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v0, 0x40200000    # 2.5f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, -0x1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Leit;->h:Landroid/animation/Animator;

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

    :goto_1a
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Leis;->e([I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Leit;->f:[I

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

    :goto_21
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_22
    iput-object p1, p0, Leit;->a:Leis;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_23
    new-instance p1, Leis;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public static final d(FLeis;)V
    .locals 9

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, -0x40c00000    # -0.75f

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_3d

    nop

    nop

    :goto_3
    mul-float/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_5
    cmpl-float v0, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    iput p0, p1, Leis;->q:I

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

    :goto_7
    shl-int/lit8 v2, v3, 0x10

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    int-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Leis;->b()I

    move-result v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-float/2addr p0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_c
    shr-int/lit8 v3, v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/high16 v0, 0x3f400000    # 0.75f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    or-int/2addr p0, v0

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

    nop

    nop

    :goto_f
    shr-int/lit8 v4, v0, 0x8

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    and-int/lit16 v6, v6, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_11
    sub-int/2addr v7, v4

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

    :goto_12
    div-float/2addr p0, v8

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_13
    sub-int/2addr v6, v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    shr-int/lit8 v6, v1, 0x10

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

    nop

    :goto_15
    add-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    const/high16 v8, 0x3e800000    # 0.25f

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    float-to-int v1, v1

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

    :goto_18
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    and-int/lit16 v7, v7, 0xff

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v2, p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    shl-int/lit8 p0, v2, 0x18

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    mul-float/2addr v6, p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    or-int/2addr p0, v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_32

    nop

    nop

    :goto_20
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    float-to-int v6, v6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v5, v5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    and-int/lit16 v4, v4, 0xff

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    shr-int/lit8 v5, v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_27
    or-int/2addr p0, v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_29
    and-int/lit16 v5, v5, 0xff

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

    :goto_2a
    shr-int/lit8 v7, v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2b
    sub-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    :goto_2d
    const v1, 0x6

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2e
    iget-object v1, p1, Leis;->i:[I

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

    :goto_2f
    mul-float/2addr v7, p0

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

    :goto_30
    and-int/lit16 v3, v3, 0xff

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_31
    aget v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Leis;->b()I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    add-int/2addr v4, v7

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_34
    add-int/2addr v0, v1

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

    :goto_35
    const v0, 0x6

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Leis;->a()I

    move-result v2

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

    :goto_37
    and-int/lit16 v1, v1, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_38
    float-to-int p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_39
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    shl-int/lit8 v2, v4, 0x8

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3c
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3d
    goto/32 :goto_3a

    nop

    nop

    :goto_3e
    float-to-int v7, v7

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

    :goto_3f
    iput p0, p1, Leis;->q:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_40
    shr-int/lit8 v2, v0, 0x18

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sub-int/2addr v5, v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method


# virtual methods
.method public final a(FLeis;Z)V
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    add-float/2addr p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    mul-float/2addr p1, p2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Leit;->d(FLeis;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4
    mul-float/2addr v0, v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v3, 0x3c23d70a    # 0.01f

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

    :goto_8
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_9
    add-float/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-float/2addr v2, p3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v2, -0x41000000    # -0.5f

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_c
    const v4, 0x3f4a3d71    # 0.79f

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p2, Leis;->k:F

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_e
    iput p0, p2, Leis;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    :goto_10
    iget p3, p2, Leis;->m:F

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

    :goto_11
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_13
    sub-float/2addr p3, p0

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

    :goto_14
    if-ltz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    div-float v0, p1, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_17
    iget v1, p2, Leis;->k:F

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_18
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_19
    sget-object v5, Leit;->e:Landroid/view/animation/Interpolator;

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

    :goto_1a
    add-float/2addr p0, p3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    sub-float/2addr v2, p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1e
    iget p3, p2, Leis;->l:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1f
    float-to-double v0, p0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_20
    goto :goto_1c

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    cmpl-float v1, p1, v0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_23
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_8

    nop

    nop

    :goto_26
    add-float/2addr p3, v2

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

    nop

    nop

    :goto_27
    mul-float/2addr p3, p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2a
    goto :goto_36

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2c
    add-float/2addr p1, v2

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sub-float/2addr v0, v2

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

    :goto_2e
    iput p0, p2, Leis;->g:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2f
    mul-float/2addr v2, p1

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

    :goto_30
    iput p3, p2, Leis;->g:F

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget p0, p2, Leis;->k:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_32
    iget p0, p2, Leis;->m:F

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_33
    const/high16 v1, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    iget v2, p0, Leit;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_35
    move v0, v6

    nop

    nop

    :goto_36
    goto/32 :goto_4b

    nop

    nop

    :goto_37
    cmpg-float v2, p1, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput v0, p2, Leis;->f:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput p3, p2, Leis;->f:F

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

    nop

    :goto_3a
    sub-float v0, v1, v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-float/2addr v0, v1

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
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    :goto_3e
    const/high16 p2, 0x43580000    # 216.0f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-boolean v0, p0, Leit;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_40
    add-float/2addr v2, p1

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

    :goto_41
    move v6, v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_42
    div-float/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_45
    iget p0, p2, Leis;->m:F

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_46
    const p3, 0x3f4ccccd    # 0.8f

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const v2, -0x43dc28f6    # -0.01f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_48
    double-to-float p3, v0

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

    :goto_49
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_2

    nop

    nop

    :goto_4a
    div-float/2addr p0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4b
    const v2, 0x3e570a3c    # 0.20999998f

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4c
    add-double/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

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

    :goto_4e
    sget-object v2, Leit;->e:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4f
    add-float/2addr v1, v4

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

    :goto_50
    iput p1, p0, Leit;->g:F

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

    nop

    nop

    :goto_51
    mul-float/2addr v0, v4

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

    :goto_52
    mul-float/2addr v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput v1, p2, Leis;->e:F

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(F)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Leit;->invalidateSelf()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Leit;->a:Leis;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, v0, Leis;->o:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final c(F)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Leis;->b:Landroid/graphics/Paint;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, v0, Leis;->h:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Leit;->invalidateSelf()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Leit;->a:Leis;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    goto/32 :goto_43

    nop

    nop

    :goto_0
    iget-object v3, p0, Leis;->d:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    iget v2, p0, Leis;->f:F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-float/2addr v2, p0

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
    iget v1, p0, Leis;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Leit;->g:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_39

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_d
    mul-float v6, v0, p0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_e
    iget v4, p0, Leis;->q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Leit;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_10
    iget-object p0, p0, Leit;->a:Leis;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    add-float/2addr v2, v1

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

    :goto_12
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Leis;->o:F

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_15
    iget-object v9, p0, Leis;->b:Landroid/graphics/Paint;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    iget v4, p0, Leis;->p:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_26

    nop

    nop

    :goto_1a
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1c
    add-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1d
    sub-float/2addr v4, v2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1e
    move-object v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    add-float/2addr v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    sub-float v2, v1, v2

    nop

    nop

    :goto_21
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_23
    iget v2, p0, Leis;->n:F

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_25
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3a

    nop

    :goto_27
    const/high16 p0, 0x43b40000    # 360.0f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_28
    int-to-float v6, v6

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_29
    iget v2, p0, Leis;->h:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    div-float/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2d
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2e
    add-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2f
    div-float/2addr v1, v3

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Leis;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_34
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v5, p0, Leis;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_37
    add-float/2addr v6, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v0, p0, Leis;->e:F

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_19

    nop

    nop

    :goto_3a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v5, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    goto/32 :goto_2d

    nop

    nop

    :goto_3c
    cmpg-float v1, v1, v4

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3f
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_40
    neg-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_44
    sub-float v7, v2, v6

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

    :goto_45
    invoke-virtual {v5, v1, v4, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, p0, Leis;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_49
    iget v1, p0, Leis;->g:F

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

    :goto_4a
    if-lez v1, :cond_1

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

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v2, p0, Leis;->h:F

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

    :goto_4c
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4d
    sub-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1, v4, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_40

    nop

    nop

    :goto_4f
    div-float/2addr v7, v3

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

    :goto_50
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final getAlpha()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Leis;->p:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Leit;->a:Leis;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final getOpacity()I
    .locals 0

    goto/32 :goto_1

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
    const/4 p0, -0x3

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final isRunning()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-object p0, p0, Leit;->h:Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Leit;->a:Leis;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput p1, v0, Leis;->p:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Leit;->invalidateSelf()V

    goto/32 :goto_3

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
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Leit;->a:Leis;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Leis;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Leit;->invalidateSelf()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final start()V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Leis;->f()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Leit;->h:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, v0, Leis;->e:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

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

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    const-wide/16 v1, 0x534

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_c
    iget-object v0, p0, Leit;->a:Leis;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Leis;->c()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, v0, Leis;->f:F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    iget-object v0, p0, Leit;->a:Leis;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v0, p0, Leit;->c:Z

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

    :goto_13
    invoke-virtual {v0, v1}, Leis;->d(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    const-wide/16 v1, 0x29a

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Leit;->a:Leis;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    const v0, 0x2

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

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Leit;->h:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Leit;->h:Landroid/animation/Animator;

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

    :goto_21
    iget-object v0, p0, Leit;->h:Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Leit;->h:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    cmpl-float v1, v1, v2

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final stop()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Leis;->c()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Leit;->invalidateSelf()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Leit;->h:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Leis;->d(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    iget-object v0, p0, Leit;->a:Leis;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x8

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

    :goto_a
    const v0, 0xa

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

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Leit;->g:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Leit;->a:Leis;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method
