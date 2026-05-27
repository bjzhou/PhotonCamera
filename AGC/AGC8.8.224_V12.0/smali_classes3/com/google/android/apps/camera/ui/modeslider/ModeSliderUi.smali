.class public Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

.field private b:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

.field private c:Liko;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Liko;->a:Liko;

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->c:Liko;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->a:Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final c(Liko;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->c:Liko;

    invoke-static {p0, p1}, Ljvd;->H(Landroid/view/View;Liko;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e008e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0232

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->a:Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    const v0, 0x7f0b02b7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->getMeasuredWidth()I

    move-result p2

    iput p2, p1, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->g()V

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->c:Liko;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->c(Liko;)V

    :cond_0
    return-void
.end method
