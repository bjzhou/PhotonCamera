.class public final Lezm;
.super Landroid/graphics/drawable/Drawable;
.source "PG"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/Matrix;

.field private C:Landroid/graphics/Matrix;

.field private D:Ljaj;

.field public a:Lezb;

.field public final b:Lffc;

.field public c:Z

.field public d:Z

.field public final e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public f:Lfbq;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Lfdd;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field private final q:Ljava/util/ArrayList;

.field private final r:Landroid/graphics/Matrix;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Canvas;

.field private u:Landroid/graphics/Rect;

.field private v:Landroid/graphics/RectF;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/Rect;

.field private y:Landroid/graphics/Rect;

.field private z:Landroid/graphics/RectF;


# direct methods
.method private final 6a76c551e4658c5f4308c862164e4dd9m()Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_8

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

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lezm;->c:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    iget-boolean p0, p0, Lezm;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    :goto_8
    goto/32 :goto_3

    nop

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

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iput-object v1, p0, Lezm;->r:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    iput-boolean v1, p0, Lezm;->j:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x4

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

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    new-instance v1, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    :goto_7
    iput v1, p0, Lezm;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

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

    goto/32 :goto_18

    nop

    nop

    :goto_b
    iput v4, p0, Lezm;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v3, p0, Lezm;->q:Ljava/util/ArrayList;

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

    :goto_11
    new-instance v3, Ldwi;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    iput-boolean v2, p0, Lezm;->n:Z

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v3}, Lfez;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_e

    nop

    nop

    :goto_14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Lffc;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_19
    iput-object v0, p0, Lezm;->b:Lffc;

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

    :goto_1a
    iput-boolean v2, p0, Lezm;->m:Z

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

    :goto_1b
    invoke-direct {v3, p0, v4}, Ldwi;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-boolean v2, p0, Lezm;->d:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v3, p0, Lezm;->e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v1, p0, Lezm;->p:I

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

    :goto_1f
    const/16 v4, 0xff

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

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    iput-boolean v1, p0, Lezm;->c:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    new-instance v0, Lffc;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method private static final y(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

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
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

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

    :goto_5
    iget v2, p0, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_9
    float-to-double v3, p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

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

    :goto_b
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    float-to-double v2, v2

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

    :goto_d
    const v0, 0x14

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

    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1d

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

    :goto_11
    double-to-int v2, v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    float-to-double v1, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    float-to-double v0, v0

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

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    double-to-int p0, v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    double-to-int v1, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    double-to-int v0, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lezm;->b:Lffc;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lffc;->d()F

    move-result p0

    nop

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

.method public final b()F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lffc;->e()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lezm;->b:Lffc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final c()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lffc;->c()F

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lezm;->b:Lffc;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final d()F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lffc;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lezm;->b:Lffc;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iget-object v1, v1, Lezb;->g:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lezm;->k:Lfdd;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    int-to-float v2, v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lezm;->r:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4
    iget v2, v2, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lezm;->r:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lezm;->m:Z

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    if-eqz v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lezm;->r:Landroid/graphics/Matrix;

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

    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean p1, p0, Lezm;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    int-to-float v5, v5

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

    :goto_16
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    :goto_17
    invoke-virtual {p0, p1, v0}, Lezm;->p(Landroid/graphics/Canvas;Lfdd;)V

    goto/32 :goto_32

    nop

    nop

    :goto_18
    iget v3, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    iget-object v0, p0, Lezm;->k:Lfdd;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v6, v3, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

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

    nop

    nop

    :goto_1c
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    int-to-float v4, v4

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

    :goto_1e
    iget-object v4, v1, Lezb;->g:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    div-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_6

    nop

    nop

    :goto_22
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

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

    :goto_23
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v6, p0, Lezm;->r:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lezm;->a:Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    div-float/2addr v5, v1

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

    :goto_28
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    invoke-virtual {v0, p1, v1, v2}, Lfdc;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :goto_2a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x14

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-float v1, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lezm;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :goto_2f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_33

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

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    goto :goto_2a

    nop

    nop

    :goto_33
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_34
    iget v2, p0, Lezm;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop
.end method

.method public final e()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lezm;->b:Lffc;

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
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lffc;->getRepeatCount()I

    move-result p0

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
.end method

.method public final f(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfez;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lezm;->b:Lffc;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g(Lfbv;Ljava/lang/Object;Lffl;)V
    .locals 5

    goto/32 :goto_18

    nop

    nop

    :goto_0
    check-cast v0, Lfbv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object v0, v0, Lfbv;->b:Lfbw;

    nop

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3
    iget-object v2, p0, Lezm;->k:Lfdd;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lfbv;->a:Lfbv;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lezm;->c()F

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lezm;->invalidateSelf()V

    goto/32 :goto_f

    nop

    nop

    :goto_9
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lezm;->s(F)V

    :goto_c
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lezm;->k:Lfdd;

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

    nop

    :goto_e
    iget-object p1, p0, Lezm;->k:Lfdd;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p1, Lezr;->E:Ljava/lang/Float;

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

    :goto_10
    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    iget-object v0, p1, Lfbv;->b:Lfbw;

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

    :goto_13
    invoke-virtual {v2, p1, v1, v0, v3}, Lfdc;->e(Lfbv;ILjava/util/List;Lfbv;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, p0, p1, p2, p3}, Lezh;-><init>(Lezm;Lfbv;Ljava/lang/Object;Lffl;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-array v4, v1, [Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1d

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

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    invoke-interface {v0, p2, p3}, Lfbw;->a(Ljava/lang/Object;Lffl;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, p2, p3}, Lfbw;->a(Ljava/lang/Object;Lffl;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Lffb;->a(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lezm;->k:Lfdd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_20
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_25
    move-object p1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v3, v4}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v1, Lezh;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, p2, p3}, Lfdc;->a(Ljava/lang/Object;Lffl;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_26

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    :goto_30
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

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

    :goto_33
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lezm;->q:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_12

    nop

    nop

    :goto_38
    const v1, 0x20

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

    :goto_39
    return-void

    nop

    nop

    :goto_3a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v3, Lfbv;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3c
    if-eq p2, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_7
    goto/32 :goto_2a

    nop
.end method

.method public final getAlpha()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lezm;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, -0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lezm;->a:Lezb;

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

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lezb;->g:Landroid/graphics/Rect;

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lezm;->a:Lezb;

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

    :goto_3
    return p0

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lezb;->g:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_5

    nop

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

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, -0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final h()V
    .locals 31

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v1, Lezb;->f:Ljava/util/List;

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    new-instance v16, Lfcj;

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

    nop

    :goto_3
    const/4 v10, 0x0

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

    :goto_4
    const/16 v18, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_5
    iput-object v3, v0, Lezm;->k:Lfdd;

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

    nop

    :goto_6
    const/16 v20, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_39

    nop

    :goto_8
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v1 .. v27}, Lfdf;-><init>(Ljava/util/List;Lezb;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lfcj;IIIFFFFLfci;Lgvb;Ljava/util/List;ILfca;ZLfdn;Lhwy;)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    invoke-direct {v3, v0, v4, v2, v1}, Lfdd;-><init>(Lezm;Lfdf;Ljava/util/List;Lezb;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v4, v28

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

    :goto_d
    move/from16 v18, v5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_e
    const/16 v25, 0x0

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

    :goto_f
    move-wide v5, v8

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10
    const/16 v24, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    iget-object v4, v3, Lezb;->g:Landroid/graphics/Rect;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    move/from16 v14, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/16 v8, -0x1

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_15
    const/4 v13, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    const/16 v16, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v3, :cond_1

    nop

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

    nop

    nop

    nop

    :goto_19
    const/16 v17, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v3, v29

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

    :goto_1b
    int-to-float v4, v4

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

    nop

    :goto_1c
    const/16 v26, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v28, v14

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

    :goto_1e
    iget-object v3, v0, Lezm;->a:Lezb;

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

    :goto_1f
    const/16 v23, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    move-object v1, v14

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    iput-boolean v0, v3, Lfdd;->j:Z

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

    :goto_22
    invoke-direct/range {v16 .. v25}, Lfcj;-><init>(Lfcd;Lfck;Lfcf;Lfca;Lfcc;Lfca;Lfca;Lfca;Lfca;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    move/from16 v19, v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_27
    const/16 v25, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_28
    const/16 v19, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v16, 0x0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move/from16 v15, v16

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v14, Lfdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2d
    const/4 v7, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
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

    nop

    :goto_2f
    iget-boolean v0, v0, Lezm;->j:Z

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_30
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_31
    const v0, 0x5

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

    nop

    :goto_32
    sget v1, Lfeg;->a:I

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

    :goto_33
    const/16 v17, 0x0

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

    :goto_34
    const/16 v27, 0x0

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

    :goto_35
    const-string v4, "__container"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    :goto_37
    goto/32 :goto_41

    nop

    nop

    :goto_38
    return-void

    nop

    :goto_39
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v30, v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3b
    const/16 v23, 0x1

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

    :goto_3c
    move-object/from16 v29, v15

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v1, 0x6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object/from16 v12, v16

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3f
    const/16 v22, 0x0

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

    :goto_40
    move-object/from16 v1, v30

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

    :goto_41
    new-instance v15, Lfdd;

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

    :goto_42
    const/16 v21, 0x0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v0, p0

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
.end method

.method public final i()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lezm;->o:I

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lezm;->isVisible()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iget-object v0, p0, Lezm;->b:Lffc;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    iget-object v0, p0, Lezm;->q:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lffc;->cancel()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lezm;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
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

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final invalidateSelf()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lezm;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lezm;->n:Z

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

    :goto_5
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lezm;->n:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isRunning()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lezm;->u()Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public final j()V
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const/high16 v0, -0x31000000

    nop

    goto/32 :goto_16

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
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lezm;->f:Lfbq;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object v0, v1, Lffc;->j:Lezb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lezm;->b:Lffc;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lezm;->a:Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lezm;->b:Lffc;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Lezm;->o:I

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_e
    invoke-virtual {p0}, Lezm;->isVisible()Z

    move-result v0

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

    :goto_f
    iput-object v0, p0, Lezm;->k:Lfdd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v0, 0x4f000000

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lezm;->invalidateSelf()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lffc;->cancel()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v0, v1, Lffc;->h:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean v1, v0, Lffc;->k:Z

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

    :goto_1b
    const v0, 0xe

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

    :goto_1c
    iput v0, v1, Lffc;->i:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

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

.method public final k()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    if-ne v1, v3, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    if-ne v1, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    if-gt v0, v1, :cond_2

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

    :cond_2
    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x4

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

    :goto_f
    iput-boolean v2, p0, Lezm;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    iget v0, v0, Lezb;->k:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    iget v1, p0, Lezm;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lezm;->a:Lezb;

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

    :goto_1a
    const/4 v3, 0x1

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

    :goto_1b
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop
.end method

.method public final l()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lezm;->q:Ljava/util/ArrayList;

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

    :goto_1
    invoke-virtual {p0}, Lezm;->isVisible()Z

    move-result v0

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
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lezm;->b:Lffc;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lezm;->o:I

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_3

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
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lffc;->f()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v2, v0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    goto/32 :goto_18

    nop

    nop

    :goto_8
    const v1, 0x1d

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

    :goto_9
    check-cast v2, Landroid/animation/Animator$AnimatorPauseListener;

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

    :goto_a
    iput v0, p0, Lezm;->o:I

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lffc;->h()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Lfez;->b:Ljava/util/Set;

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

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_13
    goto/32 :goto_f

    nop

    :goto_14
    iget-object v0, p0, Lezm;->b:Lffc;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lezm;->q:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_6

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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

    :goto_1c
    invoke-virtual {p0}, Lezm;->isVisible()Z

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 6

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    float-to-int v3, v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v5, v0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_0
    goto/32 :goto_45

    nop

    :goto_5
    invoke-direct {v2, p0, v1}, Lezi;-><init>(Lezm;I)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    iput-boolean v2, v0, Lffc;->k:Z

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lezm;->6a76c551e4658c5f4308c862164e4dd9m()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_41

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lezm;->a()F

    move-result v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lezm;->k:Lfdd;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lezm;->e()I

    move-result v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_27

    nop

    nop

    :goto_15
    const/4 v0, 0x2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lezm;->b()F

    move-result v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x14

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

    :goto_18
    iget-object v0, p0, Lezm;->b:Lffc;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lezm;->isVisible()Z

    move-result v0

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

    :goto_1a
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lffc;->m()Z

    move-result v4

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Lezm;->o:I

    nop

    :goto_1d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lezm;->isVisible()Z

    move-result v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_21
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_22
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_25
    new-instance v2, Lezi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_26
    iput v1, v0, Lffc;->g:I

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

    nop

    :goto_27
    invoke-virtual {p0}, Lezm;->k()V

    goto/32 :goto_8

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lffc;->g()V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lffc;->f()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lezm;->q:Ljava/util/ArrayList;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lffc;->d()F

    move-result v3

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

    :goto_2d
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lezm;->b:Lffc;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v0}, Lezm;->r(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v3}, Lffc;->k(F)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_36
    const-wide/16 v3, 0x0

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

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    if-ltz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lezm;->d()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3a
    iget-object v3, v0, Lfez;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3b
    iput v2, p0, Lezm;->o:I

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Lffc;->m()Z

    move-result v3

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

    :goto_3e
    if-nez v0, :cond_7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0}, Lezm;->6a76c551e4658c5f4308c862164e4dd9m()Z

    move-result v0

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

    :goto_40
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Lffc;->e()F

    move-result v3

    nop

    nop

    :goto_42
    goto/32 :goto_0

    nop

    nop

    :goto_43
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_8
    :goto_44
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_48
    iput-wide v3, v0, Lffc;->d:J

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    :goto_4a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_4c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4d
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iput v2, p0, Lezm;->o:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final o()V
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
    invoke-virtual {p0}, Lfez;->removeAllListeners()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lezm;->b:Lffc;

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

.method public final p(Landroid/graphics/Canvas;Lfdd;)V
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_1
    iget v4, v0, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    nop

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

    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_5
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v5, p0, Lezm;->u:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lezy;

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lezm;->y:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroid/graphics/RectF;

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

    :goto_f
    iget-object v2, p0, Lezm;->r:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_12
    int-to-float v3, v3

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_13
    iget-object v0, p0, Lezm;->u:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_14
    new-instance v0, Landroid/graphics/RectF;

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

    :goto_15
    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v7, v5, Landroid/graphics/RectF;->bottom:F

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

    :goto_17
    mul-float/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_18
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    :goto_1a
    iget v6, v5, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1c
    goto/32 :goto_71

    nop

    nop

    :goto_1d
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1e
    if-ge v5, v3, :cond_2

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_1f
    iget v6, v6, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_20
    mul-float/2addr v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_22
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_24
    int-to-float v2, v2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Lezm;->y:Landroid/graphics/Rect;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_26
    iget-object v7, p0, Lezm;->t:Landroid/graphics/Canvas;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_28
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p2, v0}, Lezm;->y(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    :goto_2a
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v4, :cond_3

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lezm;->v:Landroid/graphics/RectF;

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v4, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_2f
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_30
    iput-object v0, p0, Lezm;->B:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lezm;->u:Landroid/graphics/Rect;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_32
    iget-object v2, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_33
    iget-object v0, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lezm;->t:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_35
    iput-object v0, p0, Lezm;->w:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_36
    iget-object v3, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-boolean v5, p0, Lezm;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput-object v0, p0, Lezm;->z:Landroid/graphics/RectF;

    nop

    :goto_3a
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    double-to-int v3, v3

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v3, Landroid/view/ViewGroup;

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

    :goto_3e
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c9

    nop

    nop

    :goto_40
    if-nez v3, :cond_5

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_41
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_43
    invoke-virtual {p2, v0, v2, v5}, Lfdc;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_44
    iget-object v5, p0, Lezm;->s:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_45
    instance-of v4, v3, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_46
    iput-boolean v6, p0, Lezm;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v3, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lezm;->getIntrinsicWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4a
    new-instance v0, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_4b
    if-gt v5, v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :cond_6
    :goto_4c
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lezm;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    :goto_4f
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Lezm;->v:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_51
    iput-object v0, p0, Lezm;->x:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_52
    mul-float/2addr v7, v0

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_53
    const/4 v1, 0x0

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

    :goto_54
    iget-object v5, p0, Lezm;->s:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_55
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    :goto_56
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p2, p0, Lezm;->C:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-le v5, v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5a
    double-to-int v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v7, p0, Lezm;->t:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_5c
    iget-boolean v0, p0, Lezm;->j:Z

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

    nop

    :goto_5d
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Lezm;->w:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5f
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v0, p0, Lezm;->B:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_61
    invoke-virtual {p2, v0, v2, v1}, Lfdc;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_62
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_63
    iget-object v1, p0, Lezm;->u:Landroid/graphics/Rect;

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_64
    iget-object v2, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_65
    int-to-float v3, v3

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

    :goto_66
    iget v3, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v5, p0, Lezm;->A:Landroid/graphics/RectF;

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

    :goto_68
    iget-object v0, p0, Lezm;->C:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Lezm;->B:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6a
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_6b
    iget-object v0, p0, Lezm;->r:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_6c
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_6d
    float-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v0, v1}, Lezm;->y(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v0, p0, Lezm;->t:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v1, p0, Lezm;->v:Landroid/graphics/RectF;

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_71
    return-void

    nop

    :goto_72
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_73
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_74
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_75
    if-lt v5, v4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_76
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

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

    :goto_77
    mul-float/2addr v4, v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v0, p0, Lezm;->a:Lezb;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_79
    div-float/2addr v0, v4

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

    :goto_7a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7b
    iget-object p2, p0, Lezm;->B:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/32 :goto_46

    nop

    nop

    :goto_7d
    new-instance v0, Landroid/graphics/Canvas;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_7e
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_31

    nop

    nop

    :goto_80
    iget v4, v5, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_81
    iget-object v0, p0, Lezm;->s:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_82
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p0}, Lezm;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    nop

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

    nop

    :goto_84
    iget-object v0, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_85
    neg-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_86
    goto :goto_8c

    nop

    :goto_87
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_88
    if-gtz v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_a
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_89
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v5, p0, Lezm;->s:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_d9

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_8d
    iput-object v0, p0, Lezm;->C:Landroid/graphics/Matrix;

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

    :goto_8e
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-gtz v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_93

    nop

    nop

    :goto_90
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v5, v6, v3, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_92
    iget v5, v5, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_93
    iget-object v5, p0, Lezm;->s:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_97
    iget v5, v5, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget v4, v4, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    neg-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p0}, Lezm;->getIntrinsicWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_9c
    iget-object v0, p0, Lezm;->x:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_9d
    int-to-float v6, v6

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_9e
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    float-to-double v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a0
    iget v3, v5, Landroid/graphics/RectF;->top:F

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

    :goto_a1
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_c
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_a5
    if-nez v5, :cond_d

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-direct {v0}, Lezy;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_a7
    iput-object v0, p0, Lezm;->u:Landroid/graphics/Rect;

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

    :goto_a8
    iget-object v1, p0, Lezm;->y:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_a9
    iget-object v5, p0, Lezm;->s:Landroid/graphics/Bitmap;

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

    :goto_aa
    iget-object v5, p0, Lezm;->r:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_ac
    iget v2, v2, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v5, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_ae
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_af
    iget-object v5, p0, Lezm;->r:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b0
    iget-object v7, p0, Lezm;->u:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_b1
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_b2
    iget-object v6, p0, Lezm;->u:Landroid/graphics/Rect;

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

    :goto_b3
    invoke-virtual {p0}, Lezm;->getIntrinsicHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    goto/16 :goto_62

    nop

    nop

    :goto_b7
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_25

    nop

    nop

    :goto_b9
    iget-object v4, p0, Lezm;->u:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_ba
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    div-float/2addr v2, v3

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

    :goto_bd
    iget-object p2, p0, Lezm;->x:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_c0
    iput-object v0, p0, Lezm;->t:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c1
    iput-object v5, p0, Lezm;->s:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_c2
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_c3
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_c4
    invoke-static {v5, v1, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_c5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

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

    :goto_c6
    iget-object v0, p0, Lezm;->B:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_c7
    iget v5, p0, Lezm;->l:I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    if-nez v5, :cond_e

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_c9
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_cb
    iget-object v6, p0, Lezm;->B:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object p2, p0, Lezm;->s:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object v0, p0, Lezm;->z:Landroid/graphics/RectF;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {p0}, Lezm;->getIntrinsicHeight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_cf
    iget v2, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_d0
    instance-of v4, v3, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_51

    nop

    nop

    :goto_d2
    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_cc

    nop

    nop

    :goto_d3
    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object p2, p0, Lezm;->z:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_d6
    iput-object v0, p0, Lezm;->A:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_d7
    if-nez v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_f
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_d8
    iput-boolean v6, p0, Lezm;->n:Z

    nop

    nop

    :goto_d9
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iput-object v5, p0, Lezm;->s:Landroid/graphics/Bitmap;

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

    :goto_db
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_dc
    iput-object v0, p0, Lezm;->v:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final q()V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Lffc;->k(F)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lffc;->m()Z

    move-result v2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lffc;->d()F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    const v0, 0x9

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    if-ltz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

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

    :goto_5
    invoke-virtual {p0}, Lezm;->d()F

    move-result v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lezm;->b()F

    move-result v0

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

    :goto_7
    iget-object v0, p0, Lezm;->b:Lffc;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lezm;->k()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lffc;->d()F

    move-result v2

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

    :goto_a
    iget-object v0, p0, Lezm;->k:Lfdd;

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

    :goto_b
    iput v0, p0, Lezm;->o:I

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_d
    iput-wide v2, v0, Lffc;->d:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lffc;->m()Z

    move-result v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_12
    const v1, 0xf

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

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_14
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lezm;->isVisible()Z

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lezm;->q:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    :goto_19
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v0}, Lezm;->r(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1d
    cmpl-float v2, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1e
    cmpl-float v2, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lezm;->e()I

    move-result v0

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

    :goto_20
    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

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

    :goto_21
    invoke-virtual {v0}, Lffc;->f()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3b

    nop

    nop

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

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

    :goto_25
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    invoke-direct {v2, p0, v1}, Lezi;-><init>(Lezm;I)V

    goto/32 :goto_48

    nop

    nop

    :goto_27
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    cmpg-float v0, v0, v2

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

    :goto_29
    invoke-virtual {v0}, Lffc;->e()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v3, v0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v2, Lezi;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_a

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Lffc;->e()F

    move-result v3

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

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lezm;->isVisible()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, v0, Lfez;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-boolean v1, v0, Lffc;->k:Z

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_33
    iput v1, p0, Lezm;->o:I

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_4a

    nop

    nop

    :goto_35
    iget-object v0, p0, Lezm;->b:Lffc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_36
    invoke-direct {p0}, Lezm;->6a76c551e4658c5f4308c862164e4dd9m()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v2, :cond_5

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x3

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

    :goto_3c
    const/4 v2, 0x0

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

    :goto_3d
    invoke-virtual {v0}, Lffc;->g()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3e
    iget v2, v0, Lffc;->f:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0}, Lezm;->6a76c551e4658c5f4308c862164e4dd9m()Z

    move-result v0

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

    :goto_40
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    :goto_42
    invoke-virtual {p0}, Lezm;->a()F

    move-result v0

    nop

    nop

    :goto_43
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_45
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_47
    const/4 v1, 0x1

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v2, v0, Lffc;->f:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4a
    return-void

    nop

    :goto_4b
    goto/32 :goto_1a

    nop

    nop

    :goto_4c
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_34

    nop

    :cond_9
    goto/32 :goto_5

    nop

    nop

    :goto_4d
    if-eqz v2, :cond_a

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

    :cond_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v2}, Lffc;->k(F)V

    :goto_4f
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_50
    if-nez v2, :cond_b

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput v1, p0, Lezm;->o:I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_53
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_42

    nop

    nop
.end method

.method public final r(I)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_3
    new-instance v1, Lezk;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lezm;->a:Lezb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lffc;->k(F)V

    goto/32 :goto_13

    nop

    nop

    :goto_9
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lezm;->b:Lffc;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float p1, p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    :goto_10
    iget-object v0, p0, Lezm;->q:Ljava/util/ArrayList;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x9

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, p0, p1}, Lezk;-><init>(Lezm;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final s(F)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-float/2addr v1, p1

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

    :goto_1
    sub-float/2addr v0, v1

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

    :goto_2
    iget-object v0, p0, Lezm;->a:Lezb;

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

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p0, p1}, Lezj;-><init>(Lezm;F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_e

    nop

    nop

    :goto_c
    mul-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    iget v0, v0, Lezb;->i:F

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Lffc;->k(F)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v1, Lezj;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lezm;->b:Lffc;

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

    :goto_15
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lezm;->q:Ljava/util/ArrayList;

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

    :goto_17
    sget-object v2, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    iget v1, v0, Lezb;->h:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lezm;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto/32 :goto_2

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lezm;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lezm;->invalidateSelf()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0}, Lffb;->a(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, "Use addColorFilter instead."

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
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1f

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p1, v1, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    :goto_5
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lezm;->b:Lffc;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_1f

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

    nop

    :goto_9
    const v0, 0x5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean p1, p1, Lffc;->k:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lezm;->q()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    iput v1, p0, Lezm;->o:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    :goto_f
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_1f

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lezm;->isVisible()Z

    move-result v0

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

    :goto_17
    invoke-virtual {p0}, Lezm;->m()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    :goto_1b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    return p2

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput p1, p0, Lezm;->o:I

    nop

    nop

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_21
    iget p1, p0, Lezm;->o:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lezm;->n()V

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final start()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

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

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lezm;->n()V

    goto/32 :goto_8

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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
    goto/32 :goto_b

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

    goto/32 :goto_11

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lezm;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    instance-of v1, v0, Landroid/view/View;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    :goto_12
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final stop()V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0}, Lezm;->l()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final t(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lffc;->setRepeatCount(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lezm;->b:Lffc;

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

.method public final u()Z
    .locals 0

    goto/32 :goto_6

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
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_5
    iget-boolean p0, p0, Lffc;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lezm;->b:Lffc;

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lezm;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

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
    if-eqz p1, :cond_0

    nop

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
.end method

.method public final v(Lezb;)Z
    .locals 5

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    goto/32 :goto_38

    nop

    nop

    :goto_2
    iget-object p1, p1, Lezb;->l:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_4
    float-to-int v2, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Lffc;->getAnimatedFraction()F

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    float-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_41

    nop

    nop

    :goto_a
    int-to-float v2, v2

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

    :goto_b
    int-to-float v3, v3

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

    :goto_c
    iget v3, p1, Lezb;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_e
    iget v2, v1, Lffc;->h:F

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

    :goto_f
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1}, Lezm;->s(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lezm;->q:Ljava/util/ArrayList;

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

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2}, Lffc;->k(F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Lfez;->b()V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_17
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    float-to-int v3, v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    iget v3, v1, Lffc;->i:F

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lezm;->j()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2, v3}, Lffc;->l(FF)V

    :goto_1d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v3, v1, Lffc;->f:F

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

    :goto_20
    invoke-virtual {v1, v2, v3}, Lffc;->l(FF)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v2, p1, Lezb;->h:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    iget v2, v1, Lffc;->f:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object p1, p0, Lezm;->a:Lezb;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lezm;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p1, Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x11

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_30
    if-eq v0, p1, :cond_1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_31
    iget v3, p1, Lezb;->i:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lezm;->k()V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_34
    new-instance v2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lezm;->h()V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_36
    iput-object p1, v1, Lffc;->j:Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    :goto_38
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lezm;->a:Lezb;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v2, Lezl;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3d
    iput v3, v1, Lffc;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3e
    iget v4, p1, Lezb;->i:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p0, Lezm;->b:Lffc;

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

    :goto_40
    iget-object v1, p0, Lezm;->b:Lffc;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_41
    iget-object v1, p0, Lezm;->q:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_42
    iput-boolean v0, p0, Lezm;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v2, v1, Lffc;->j:Lezb;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_45
    instance-of v1, p1, Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_46
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_48
    if-eqz v2, :cond_5

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v2}, Lezl;->a()V

    :goto_4a
    goto/32 :goto_3a

    nop

    nop

    :goto_4b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return p0

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final w()Ljaj;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lezm;->h:Ljava/lang/String;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lezm;->D:Ljaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lezm;->D:Ljaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljaj;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lezm;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

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

    :goto_6
    const v0, 0x1f

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

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

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iget-object v0, p0, Lezm;->D:Ljaj;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, v0, Ljaj;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lezm;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
