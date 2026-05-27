.class public Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;
.super Landroid/widget/HorizontalScrollView;


# static fields
.field private static final f:Lnak;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:Landroid/widget/FrameLayout$LayoutParams;

.field public d:I

.field public e:Landroid/animation/ObjectAnimator;

.field private final g:I

.field private final h:Landroid/animation/PropertyValuesHolder;

.field private i:Landroid/view/LayoutInflater;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/rewind/RewindThumbnailScrollView"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->f:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->d:I

    iput p2, p0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->j:I

    iput-object p1, p0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->a:Landroid/content/Context;

    const v0, 0x7f0802b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070433

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->g:I

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v1, 0x53

    invoke-direct {p1, v0, p2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object p1, p0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->c:Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const-string p2, "translationY"

    invoke-static {p2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->h:Landroid/animation/PropertyValuesHolder;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3f200000    # -7.0f
    .end array-data
.end method


# virtual methods
.method protected final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->i:Landroid/view/LayoutInflater;

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/rewind/RewindThumbnailScrollView;->e:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
