.class public Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Liko;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Liko;->a:Liko;

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;->a:Liko;

    return-void
.end method


# virtual methods
.method public final a(Liko;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;->a:Liko;

    invoke-static {p0, p1}, Ljvd;->H(Landroid/view/View;Liko;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;->a:Liko;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;->a(Liko;)V

    :cond_0
    return-void
.end method
