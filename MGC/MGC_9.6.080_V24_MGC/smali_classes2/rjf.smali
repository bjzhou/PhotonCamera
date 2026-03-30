.class public final Lrjf;
.super Lrjj;
.source "PG"


# static fields
.field public static final synthetic h:I

.field private static final p:Ldyr;


# instance fields
.field public final a:Lrjl;

.field public final b:Lrjk;

.field public c:F

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/animation/TimeInterpolator;

.field public f:Landroid/animation/TimeInterpolator;

.field public g:Landroid/animation/TimeInterpolator;

.field private final q:Ldyt;

.field private final r:Ldys;

.field private s:Z

.field private final t:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Lrjf;->p:Ldyr;

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

    :goto_1
    invoke-direct {v0}, Lrje;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Lrje;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lrir;Lrjl;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    iput-object p1, p0, Lrjf;->b:Lrjk;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

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

    :goto_5
    iput-boolean p1, p0, Lrjf;->s:Z

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, p2}, Lrjj;-><init>(Landroid/content/Context;Lrir;)V

    goto/32 :goto_d

    nop

    nop

    :goto_7
    if-nez p3, :cond_1

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

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_9
    new-instance p1, Lrjk;

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

    :goto_a
    iput-boolean p3, p1, Lrjk;->h:Z

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2, p3}, Lrir;->b(Z)Z

    move-result p3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/32 :goto_2d

    nop

    nop

    :goto_d
    const/4 p1, 0x0

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

    :goto_e
    invoke-direct {v1, p0, v2}, Ldys;-><init>(Ljava/lang/Object;Ldyr;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1}, Lrjk;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lmsq;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_12
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/16 v1, 0x3e8

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, v1, Ldys;->p:Ldyt;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p3, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v1}, Ldyt;->e(F)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0xa

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, p0, p2, v2}, Lmsq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Ldys;

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

    :goto_1f
    new-instance p1, Ldyt;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    iput-object v1, p0, Lrjf;->r:Ldys;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Lrjj;->i(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    iput-object p1, p0, Lrjf;->q:Ldyt;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v1, 0x42480000    # 50.0f

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

    :goto_24
    iput-object p3, p0, Lrjf;->a:Lrjl;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-array v1, v1, [F

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_28
    iget p2, p2, Lrir;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_29
    invoke-direct {p1}, Ldyt;-><init>()V

    goto/32 :goto_22

    nop

    nop

    :goto_2a
    const/4 v2, 0x5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v0}, Ldyt;->c(F)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2c
    iput-object p1, p0, Lrjf;->t:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, -0x1

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

    :goto_2e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2f
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_32
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v2, Lrjf;->p:Ldyr;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    return p0

    nop

    :goto_3
    const/high16 p1, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-lez p0, :cond_0

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpg-float p0, p0, p1

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

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float p0, p1

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

    :goto_a
    const p1, 0x460ca000    # 9000.0f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    cmpl-float p1, p0, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lrjk;->b:F

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
    iget-object p0, p0, Lrjf;->b:Lrjk;

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

    :goto_2
    return p0

    nop
.end method

.method public final c(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrjf;->b:Lrjk;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrjf;->invalidateSelf()V

    goto/32 :goto_2

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
    iput p1, v0, Lrjk;->e:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(F)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrjf;->invalidateSelf()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrjf;->b:Lrjk;

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

    :goto_3
    iput p1, v0, Lrjk;->b:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lrjf;->m:Landroid/graphics/Paint;

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

    nop

    nop

    :goto_1
    iget v7, p0, Lrjj;->n:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lrjj;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, v2, Lrir;->g:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lrjf;->a:Lrjl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_8
    move v8, v1

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

    :goto_9
    iget-object v3, p0, Lrjf;->m:Landroid/graphics/Paint;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lrjf;->j:Lrir;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v7, p0, Lrjj;->n:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_38

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    goto/16 :goto_42

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lrjf;->a:Lrjl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_13
    iget-object v3, v3, Lrir;->c:[I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    :goto_15
    iget-object v1, p0, Lrjf;->a:Lrjl;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_17
    iget-object v1, p0, Lrjf;->m:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_19
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, v2, Lrir;->c:[I

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, p0, Lrjf;->m:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1c
    const v4, 0x3c23d70a    # 0.01f

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lrjf;->b:Lrjk;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1e
    div-float/2addr v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1f
    if-gtz v1, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lrjf;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_22
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, p0, Lrjf;->j:Lrir;

    nop

    nop

    goto/32 :goto_13

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

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

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

    :goto_27
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_28
    iput v2, v1, Lrjk;->f:F

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_29
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2a
    iput v3, v1, Lrjk;->c:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lrjf;->a:Lrjl;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2c
    iget v6, v2, Lrir;->d:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_45

    nop

    nop

    :goto_2e
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_3

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

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lrjf;->b:Lrjk;

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

    :goto_31
    iget-object v1, p0, Lrjf;->m:Landroid/graphics/Paint;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aget v3, v3, v9

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_33
    iget-object v2, p0, Lrjf;->j:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_34
    iget v6, v2, Lrir;->d:I

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

    :goto_35
    rem-int v0, v0, v1

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

    :goto_36
    invoke-virtual {p0}, Lrjj;->g()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_25

    nop

    :goto_38
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lrjj;->k()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lrjf;->m:Landroid/graphics/Paint;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3b
    const/4 v3, 0x0

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

    :goto_3c
    invoke-virtual/range {v1 .. v6}, Lrjl;->h(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3d
    aget v3, v3, v9

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

    :goto_3e
    invoke-virtual {p0}, Lrjf;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

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

    nop

    :goto_3f
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_37

    nop

    :goto_40
    invoke-virtual {p0}, Lrjf;->isVisible()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_41
    invoke-virtual/range {v1 .. v8}, Lrjl;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :goto_42
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lrjf;->b()F

    move-result v2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_44
    float-to-int v1, v1

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_8

    nop

    nop

    :goto_46
    iget-object v1, p0, Lrjf;->a:Lrjl;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_47
    invoke-static {v2, v3, v4}, Ldvu;->y(FFF)F

    move-result v2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_48
    iget v4, p0, Lrjj;->n:I

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_49
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v4, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4b
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v2, p1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4d
    instance-of v2, v2, Lrjo;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1, p1, v2, v3, v4}, Lrjl;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lrjk;I)V

    goto/32 :goto_12

    nop

    nop

    :goto_4f
    move-object v2, p1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_51
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0}, Lrjf;->b()F

    move-result v4

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, p1, v2, v3, v0}, Lrjl;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Lrjj;->f()F

    move-result v4

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

    :goto_58
    iget-object v3, p0, Lrjf;->b:Lrjk;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_59
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move-object v2, p1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Lrjj;->j()Z

    move-result v6

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_5c
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5d
    invoke-virtual/range {v1 .. v8}, Lrjl;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v2, p0, Lrjf;->a:Lrjl;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5f
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop
.end method

.method public final e(ZZZ)Z
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrjf;->q:Ldyt;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2, p3}, Lrjj;->e(ZZZ)Z

    move-result p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    cmpl-float p3, p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    iput-boolean p2, p0, Lrjf;->s:Z

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
    iput-boolean p3, p0, Lrjf;->s:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p2}, Lqqy;->m(Landroid/content/ContentResolver;)F

    move-result p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 p3, 0x42480000    # 50.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto :goto_12

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lrjf;->i:Landroid/content/Context;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    div-float/2addr p3, p2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return p1

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

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

    :goto_10
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p3}, Ldyt;->e(F)V

    :goto_12
    goto/32 :goto_e

    nop

    nop
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrjf;->a:Lrjl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrjl;->a()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final getIntrinsicWidth()I
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

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrjf;->a:Lrjl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrjl;->b()I

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
.end method

.method public final bridge synthetic getOpacity()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

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

.method public final jumpToCurrentState()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v0, 0x1c

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ldys;->m()V

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v1, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lrjf;->d(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x461c4000    # 10000.0f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lrjf;->getLevel()I

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lrjf;->r:Ldys;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLevelChange(I)Z
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrjf;->r:Ldys;

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

    :goto_1
    invoke-virtual {p0}, Lrjf;->b()F

    move-result v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v0, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-boolean v1, p0, Lrjf;->s:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lrjf;->r:Ldys;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_b

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Ldys;->l(F)V

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    const v2, 0x461c4000    # 10000.0f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x4

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

    :goto_e
    goto/32 :goto_17

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Lrjf;->d(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Lrjf;->c(F)V

    goto/32 :goto_8

    nop

    nop

    :goto_13
    mul-float/2addr v1, v2

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

    :goto_14
    div-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lrjf;->r:Ldys;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v1}, Ldyp;->k(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Lrjf;->a(I)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    const v0, 0xf

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ldys;->m()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method
