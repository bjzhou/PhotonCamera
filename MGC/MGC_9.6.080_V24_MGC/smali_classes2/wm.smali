.class public final Lwm;
.super Landroid/graphics/drawable/Drawable;
.source "PG"


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public d:Z

.field public final e:Landroid/content/res/ColorStateList;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/RectF;

.field private final h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/PorterDuffColorFilter;

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v1, p0, Lwm;->d:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object v1, p0, Lwm;->k:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_18

    nop

    nop

    :goto_4
    iput p2, p0, Lwm;->a:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

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
    new-instance p2, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lwm;->g:Landroid/graphics/RectF;

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

    :goto_9
    new-instance p1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lwm;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p1, :cond_0

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

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

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
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_12
    const v0, 0x10

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p2, p0, Lwm;->f:Landroid/graphics/Paint;

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

    nop

    :goto_19
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1f
    new-instance p1, Landroid/graphics/Rect;

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

    :goto_20
    iput-object p1, p0, Lwm;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    iput-object p1, p0, Lwm;->h:Landroid/graphics/Rect;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lwm;->getState()[I

    move-result-object v0

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

    :goto_23
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_21

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    if-eqz p2, :cond_0

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

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_9

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lwm;->getState()[I

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 5

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    float-to-double v2, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    const v1, 0x1f

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

    :goto_2
    invoke-static {p1, v0, v1}, Lwn;->b(FFZ)F

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    float-to-double v2, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    iget-object v1, p0, Lwm;->h:Landroid/graphics/Rect;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v3, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v1, p0, Lwm;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float v1, v1

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

    :goto_d
    iget-object v0, p0, Lwm;->h:Landroid/graphics/Rect;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    iget p1, p0, Lwm;->b:F

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

    :goto_f
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1, v2}, Lwn;->a(FFZ)F

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Lwm;->a:F

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

    :goto_13
    int-to-float v4, v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    iget-boolean v2, p0, Lwm;->d:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Lwm;->a:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lwm;->g:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lwm;->b:F

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v2, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lwm;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lwm;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean p1, p0, Lwm;->c:Z

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :goto_23
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_24
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_28
    goto/32 :goto_b

    nop

    nop

    :goto_29
    iget-object p1, p0, Lwm;->g:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_2c
    double-to-int p1, v2

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

    nop

    :goto_2d
    double-to-int v0, v2

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
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_f

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

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lwm;->i:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lwm;->f:Landroid/graphics/Paint;

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_b
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    :goto_10
    const v0, 0x1c

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    const v1, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v1, p0, p0, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lwm;->i:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    :goto_18
    if-nez v2, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_19
    iget p0, p0, Lwm;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lwm;->g:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getOpacity()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, -0x3

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
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget p0, p0, Lwm;->a:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iget-object v0, p0, Lwm;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final isStateful()Z
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

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

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object v0, p0, Lwm;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

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
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_2

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

    :cond_2
    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    iget-object v0, p0, Lwm;->j:Landroid/content/res/ColorStateList;

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

    :goto_f
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lwm;->a(Landroid/graphics/Rect;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method protected final onStateChange([I)Z
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lwm;->k:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

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

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_2
    move v0, v1

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

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    nop

    goto/32 :goto_16

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

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Lwm;->j:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_3

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

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lwm;->i:Landroid/graphics/PorterDuffColorFilter;

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

    :goto_15
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    const/4 v1, 0x1

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

    :goto_17
    const v0, 0x19

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Lwm;->f:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_6

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1, v2}, Lwm;->f875135777c17da3cef2ea6eeff5be29m(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lwm;->e:Landroid/content/res/ColorStateList;

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

    :goto_1d
    const v1, 0x12

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

    :goto_1e
    if-ne p1, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lwm;->f:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lwm;->f:Landroid/graphics/Paint;

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
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lwm;->f:Landroid/graphics/Paint;

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

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_1

    nop

    nop
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    goto/32 :goto_5

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
    invoke-virtual {p0}, Lwm;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lwm;->k:Landroid/graphics/PorterDuff$Mode;

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
    invoke-direct {p0, p1, v0}, Lwm;->f875135777c17da3cef2ea6eeff5be29m(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lwm;->i:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lwm;->j:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lwm;->k:Landroid/graphics/PorterDuff$Mode;

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
    iget-object v0, p0, Lwm;->j:Landroid/content/res/ColorStateList;

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

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0}, Lwm;->invalidateSelf()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lwm;->i:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, p1}, Lwm;->f875135777c17da3cef2ea6eeff5be29m(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
