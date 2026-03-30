.class final Lenj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lenc;

.field public final b:I

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Z

.field public final e:Landroid/graphics/Paint;

.field public f:Landroid/view/VelocityTracker;

.field public g:Z

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Ldys;

.field public m:Ldys;

.field public n:Landroid/graphics/drawable/Drawable;

.field private final o:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lenc;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lenj;->n:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/util/SparseArray;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isScreenRound()Z

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

    :goto_8
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

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

    :goto_9
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    const v1, 0x20

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lenj;->a:Lenc;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    iput-boolean p1, p0, Lenj;->d:Z

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

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    goto/32 :goto_18

    nop

    nop

    :goto_17
    iput p1, p0, Lenj;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lenj;->e:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v1, p0, Lenj;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

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

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

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

    :goto_22
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    const/high16 v0, -0x1000000

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Lenj;->o:Landroid/util/SparseArray;

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

    :goto_25
    invoke-virtual {p1}, Lenc;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    :goto_27
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lenj;->a:Lenc;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lenc;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lenj;->a:Lenc;

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
    instance-of v0, v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lenc;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final b(FFFLdyn;Ldym;)Ldys;
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p5}, Ldyp;->h(Ldym;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ldyt;

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

    :goto_3
    invoke-virtual {p1, p2}, Ldyt;->c(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2}, Ldyt;->e(F)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 p2, 0x44160000    # 600.0f

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

    :goto_8
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lenj;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Ldys;-><init>(Lltd;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    invoke-direct {p1}, Ldyt;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    iput p2, v0, Ldyp;->o:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p1}, Ldyp;->k(F)V

    goto/32 :goto_11

    nop

    nop

    :goto_f
    iput p0, v0, Ldyp;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1

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

    :goto_11
    const/high16 p1, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p2}, Ldyt;->d(F)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v1, Lltd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_15
    new-instance v0, Ldys;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    iput p3, v0, Ldyp;->h:F

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

    :goto_19
    iput-object p1, v0, Ldys;->p:Ldyt;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ldyp;->f()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Ldyp;->j(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p4}, Ldyp;->i(Ldyn;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1}, Lltd;-><init>()V

    goto/32 :goto_a

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
    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public final c(F)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lenj;->h:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    div-float/2addr p1, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lenj;->e()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lenj;->a:Lenc;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const v0, 0x3e99999a    # 0.3f

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

    :goto_5
    invoke-virtual {v0}, Lenc;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    div-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lenj;->j:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-float/2addr p1, v0

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

    :goto_e
    iput p1, p0, Lenj;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_10
    const v0, -0x41666666    # -0.3f

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

    :goto_11
    div-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    move p1, v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmpl-float v1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    sub-float p1, v0, p1

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

    :goto_18
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    iput p1, p0, Lenj;->k:F

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

    :goto_1c
    const v0, 0x3f333333    # 0.7f

    nop

    nop

    goto/32 :goto_20

    nop

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

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1e
    add-float/2addr p1, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Lenj;->j:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput p1, p0, Lenj;->i:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    if-gtz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_1

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_26
    const/high16 v0, 0x40000000    # 2.0f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    const/high16 v0, -0x40800000    # -1.0f

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
.end method

.method public final d()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lenj;->n:Landroid/graphics/drawable/Drawable;

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

    :goto_5
    invoke-virtual {v1, v2}, Lenc;->setScaleX(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Lenc;->setScaleY(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Lenj;->j:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lenj;->a:Lenc;

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

    :goto_b
    invoke-virtual {p0}, Lenj;->a()Landroid/view/ViewGroup;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lenj;->a:Lenc;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    iget-object v1, p0, Lenj;->a:Lenc;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0, v2}, Lenc;->setLayerType(ILandroid/graphics/Paint;)V

    goto/32 :goto_a

    nop

    nop

    :goto_f
    iget-object v1, p0, Lenj;->a:Lenc;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    iput-object v2, p0, Lenj;->n:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lenj;->e:Landroid/graphics/Paint;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    invoke-virtual {v1, v0}, Lenc;->setClipToOutline(Z)V

    goto/32 :goto_b

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    iget-object v3, p0, Lenj;->a:Lenc;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    iput v2, p0, Lenj;->i:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lenj;->a:Lenc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-boolean v0, p0, Lenj;->g:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lenj;->c:Landroid/graphics/drawable/Drawable;

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

    :goto_22
    invoke-virtual {v1, v2}, Lenc;->setAlpha(F)V

    goto/32 :goto_21

    nop

    nop

    :goto_23
    const v1, 0xd

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

    :goto_24
    invoke-virtual {v3, v1}, Lenc;->setTranslationX(F)V

    goto/32 :goto_d

    nop

    nop

    :goto_25
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_26
    iput v1, p0, Lenj;->h:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 6

    goto/32 :goto_25

    nop

    nop

    :goto_0
    sub-float/2addr v1, v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lenj;->a:Lenc;

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

    :goto_3
    iget v1, p0, Lenj;->i:F

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

    :goto_4
    const/high16 v2, 0x437f0000    # 255.0f

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    float-to-int v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    check-cast v3, Landroid/graphics/ColorFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Lenc;->setScaleX(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Lenc;->setScaleY(F)V

    goto/32 :goto_2e

    nop

    nop

    :goto_d
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lenj;->a:Lenc;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lenj;->a:Lenc;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_30

    nop

    :goto_12
    iget-object v4, p0, Lenj;->o:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_13
    goto/16 :goto_27

    nop

    :goto_14
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_15
    mul-float/2addr v1, v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x0

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

    :goto_17
    invoke-virtual {v0, v1}, Lenc;->setTranslationX(F)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Lenj;->k:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v3}, Lenc;->setLayerPaint(Landroid/graphics/Paint;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lenj;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    iget-object v3, p0, Lenj;->o:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lenj;->e:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

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

    :goto_21
    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_24
    mul-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x1b

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

    :goto_26
    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_27
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Lenj;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_29
    float-to-int v0, v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr v1, v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2c
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lenj;->a:Lenc;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, p0, Lenj;->i:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_33

    nop

    nop

    :goto_31
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    :goto_33
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v1, p0, Lenj;->h:F

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

    :goto_35
    iget-object p0, p0, Lenj;->c:Landroid/graphics/drawable/Drawable;

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
.end method
