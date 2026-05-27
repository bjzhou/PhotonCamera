.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;


# instance fields
.field private blendMode:Liye;

.field private final contentPaint:Landroid/graphics/Paint;

.field private contentProvider:Laea;

.field private final drawablePaint:Landroid/graphics/Paint;

.field private final tmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->drawablePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->tmpRectF:Landroid/graphics/RectF;

    sget-object v2, Liye;->a:Liye;

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->blendMode:Liye;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public static create(Landroid/graphics/drawable/Drawable;)Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;
    .locals 1

    sget-object v0, Liye;->a:Liye;

    invoke-static {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->create(Landroid/graphics/drawable/Drawable;Liye;)Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/graphics/drawable/Drawable;Liye;)Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;
    .locals 1

    new-instance v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;

    invoke-direct {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;-><init>()V

    invoke-direct {v0, p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->initialize(Landroid/graphics/drawable/Drawable;Liye;)V

    return-object v0
.end method

.method private draw(Landroid/graphics/Canvas;Laea;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->useAlphaChannelBlending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->drawWithAlphaBlending(Landroid/graphics/Canvas;Laea;)V

    return-void

    :cond_0
    invoke-interface {p2, p1}, Laea;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawWithAlphaBlending(Landroid/graphics/Canvas;Laea;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->tmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->tmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v0

    invoke-interface {p2, p1}, Laea;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->tmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->drawablePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p2

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private initialize(Landroid/graphics/drawable/Drawable;Liye;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setBlendMode(Liye;)V

    return-void
.end method

.method private useAlphaChannelBlending()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->blendMode:Liye;

    sget-object v1, Liye;->a:Liye;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentProvider:Laea;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->draw(Landroid/graphics/Canvas;Laea;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->useAlphaChannelBlending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getOpacity()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    sget-object p1, Liyh;->a:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p4, Liyh;->a:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    sget-object p2, Liye;->a:Liye;

    goto :goto_1

    :pswitch_0
    sget-object p2, Liye;->c:Liye;

    goto :goto_1

    :pswitch_1
    sget-object p2, Liye;->b:Liye;

    :goto_1
    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->setBlendMode(Liye;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBlendMode(Liye;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->blendMode:Liye;

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->drawablePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Liye;->a:Liye;

    iget-object p1, p1, Liye;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setContentProvider(Laea;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentProvider:Laea;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/util/BlendContentDrawable;->contentProvider:Laea;

    :cond_0
    return-void
.end method
