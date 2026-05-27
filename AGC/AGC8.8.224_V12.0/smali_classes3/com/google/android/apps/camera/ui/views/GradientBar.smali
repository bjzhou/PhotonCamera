.class public Lcom/google/android/apps/camera/ui/views/GradientBar;
.super Landroid/view/View;


# instance fields
.field public a:Liko;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object p1, Liko;->a:Liko;

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/GradientBar;->a:Liko;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Liko;->a:Liko;

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/GradientBar;->a:Liko;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "unionBottombar2Navibar:applyOrientation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/GradientBar;->a:Liko;

    invoke-static {p0, v0}, Ljvd;->H(Landroid/view/View;Liko;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    const-string v0, "gradientBar:onLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/GradientBar;->a()V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
