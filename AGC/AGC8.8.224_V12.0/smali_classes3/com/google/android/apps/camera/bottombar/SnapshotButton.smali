.class public Lcom/google/android/apps/camera/bottombar/SnapshotButton;
.super Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getDefaultScale()F
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/SnapshotButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/camera/bottombar/R$dimen;->snapshot_button_scale:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    return v0
.end method

.method protected getOuterCircleStrokeWidth()F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public setClickEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setClickEnabled(Z)V

    return-void
.end method

.method public setMode(Liem;Life;)V
    .locals 1

    sget-object v0, Liem;->b:Liem;

    invoke-virtual {p1, v0}, Liem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Liem;->b:Liem;

    invoke-super {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setMode(Liem;Life;)V

    return-void

    :cond_0
    sget-object p1, Liem;->a:Liem;

    invoke-super {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setMode(Liem;Life;)V

    return-void
.end method

.method public wirePressedStateAnimationListener()V
    .locals 2

    new-instance v0, Life;

    invoke-direct {v0, p0}, Life;-><init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;)V

    new-instance v1, Lcom/google/android/apps/camera/bottombar/SnapshotButton$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/camera/bottombar/SnapshotButton$1;-><init>(Lcom/google/android/apps/camera/bottombar/SnapshotButton;Life;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setListener(Lifj;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setClickEnabled(Z)V

    return-void
.end method
