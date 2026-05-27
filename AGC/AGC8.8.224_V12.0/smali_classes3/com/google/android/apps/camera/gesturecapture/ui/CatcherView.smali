.class public Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;
.super Ldmt;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/graphics/Rect;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldmt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    const/4 p2, 0x4

    iput p2, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->f:I

    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Ldmt;->onFinishInflate()V

    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->d:Landroid/content/Context;

    const v2, 0x7f0600cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
