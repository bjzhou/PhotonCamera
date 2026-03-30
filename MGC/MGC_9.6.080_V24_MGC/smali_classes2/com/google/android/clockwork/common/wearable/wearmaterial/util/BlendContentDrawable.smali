.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "PG"


# instance fields
.field private blendMode:Lobs;

.field private final contentPaint:Landroid/graphics/Paint;

.field private contentProvider:Ldux;

.field private final drawablePaint:Landroid/graphics/Paint;

.field private final tmpRectF:Landroid/graphics/RectF;


# direct methods
.method private 1693c98453356883a9e021b4913d8a8cm(Landroid/graphics/Canvas;Ldux;)V
    .locals 2

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

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2, p1}, Ldux;->accept(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->drawablePaint:Landroid/graphics/Paint;

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

    :goto_8
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->tmpRectF:Landroid/graphics/RectF;

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
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    :goto_d
    const v0, 0x16

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->tmpRectF:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->tmpRectF:Landroid/graphics/RectF;

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

    :goto_13
    const v1, 0x4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 54f6240622507376c60e6c228795bd03m(Landroid/graphics/drawable/Drawable;Lobs;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setBlendMode(Lobs;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method private 68d4e82f584e6c0f0f137777cb194718m(Landroid/graphics/Canvas;Ldux;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->a518f490c0651d3192a86a472b145702m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->1693c98453356883a9e021b4913d8a8cm(Landroid/graphics/Canvas;Ldux;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2, p1}, Ldux;->accept(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->drawablePaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v2, Lobs;->a:Lobs;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    const v0, 0x15

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_8
    invoke-direct {p0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->tmpRectF:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_f
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->blendMode:Lobs;

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

    :goto_18
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private a518f490c0651d3192a86a472b145702m()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->blendMode:Lobs;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lobs;->a:Lobs;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static create(Landroid/graphics/drawable/Drawable;)Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->create(Landroid/graphics/drawable/Drawable;Lobs;)Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    :goto_2
    sget-object v0, Lobs;->a:Lobs;

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
.end method

.method public static create(Landroid/graphics/drawable/Drawable;Lobs;)Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->54f6240622507376c60e6c228795bd03m(Landroid/graphics/drawable/Drawable;Lobs;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    goto/32 :goto_6

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
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

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
    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->68d4e82f584e6c0f0f137777cb194718m(Landroid/graphics/Canvas;Ldux;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

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

    :goto_6
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentProvider:Ldux;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public getOpacity()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->a518f490c0651d3192a86a472b145702m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 p0, -0x3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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
    goto/32 :goto_1

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
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getOpacity()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p3, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    if-ne p2, p3, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    sget-object p4, Lobv;->a:[I

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

    :goto_6
    sget-object p2, Lobs;->b:Lobs;

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p2, p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    if-nez p4, :cond_2

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

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lobv;->a:[I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p2, Lobs;->c:Lobs;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p3, 0x2

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

    :goto_18
    sget-object p2, Lobs;->a:Lobs;

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

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

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

    :goto_1b
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setBlendMode(Lobs;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public setBlendMode(Lobs;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->blendMode:Lobs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_b

    nop

    nop

    :goto_9
    sget-object v1, Lobs;->a:Lobs;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->drawablePaint:Landroid/graphics/Paint;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget-object p1, p1, Lobs;->d:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_f
    const v1, 0x4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public setContentProvider(Ldux;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentProvider:Ldux;

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_3
    return-void

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentProvider:Ldux;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
