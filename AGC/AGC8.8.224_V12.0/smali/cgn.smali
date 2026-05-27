.class public final Lcgn;
.super Landroid/widget/FrameLayout;


# instance fields
.field public final a:Landroid/view/SurfaceView;

.field public final b:Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcgn;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0e00d5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcgn;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcgn;->c:Landroid/view/View;

    const v0, 0x7f0b02a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcgn;->a:Landroid/view/SurfaceView;

    const v0, 0x7f0b02a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;

    iput-object v0, p0, Lcgn;->b:Lcom/google/android/apps/camera/aizoom/previewpanel/PolyView;

    invoke-virtual {p0, p1}, Lcgn;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcgn;->getVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcgn;->setVisibility(I)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcgn;->a:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestLayout()V

    return-void

    :cond_0
    iget-object p1, p0, Lcgn;->a:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/view/SurfaceView;->layout(IIII)V

    return-void
.end method
