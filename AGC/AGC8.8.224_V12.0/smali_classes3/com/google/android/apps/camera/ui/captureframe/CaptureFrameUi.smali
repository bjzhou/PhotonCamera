.class public Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;
.super Landroid/view/View;


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/Paint;

.field private final c:Ljava/util/List;

.field private final d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07015e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070082

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->d:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    new-instance v1, Lhsf;

    invoke-direct {v1, p0, p2, v0, p1}, Lhsf;-><init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Paint;IF)V

    new-instance v0, Lhsf;

    const/4 v2, 0x2

    invoke-direct {v0, p0, p2, v2, p1}, Lhsf;-><init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Paint;IF)V

    new-instance v2, Lhsf;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p2, v3, p1}, Lhsf;-><init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Paint;IF)V

    new-instance v3, Lhsf;

    const/4 v4, 0x4

    invoke-direct {v3, p0, p2, v4, p1}, Lhsf;-><init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Paint;IF)V

    invoke-static {v1, v0, v2, v3}, Lmvv;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->c:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgdt;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lgdt;-><init>(Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;Landroid/graphics/Canvas;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->a:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget v0, p0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->d:F

    add-float/2addr p2, v0

    int-to-float p3, p3

    add-float/2addr p3, v0

    int-to-float p4, p4

    sub-float/2addr p4, v0

    int-to-float p5, p5

    sub-float/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
