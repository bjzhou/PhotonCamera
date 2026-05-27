.class public final Lgfo;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;)V
    .locals 0

    iput-object p1, p0, Lgfo;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lgfo;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getScrollY()I

    move-result p1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    const/4 p1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lgfo;->b:Z

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Liko;->a:Liko;

    iget-object v1, p0, Lgfo;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    iget-object v1, v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->e:Liko;

    invoke-virtual {v1}, Liko;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float p2, p1, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float p2, p1, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :goto_0
    const/high16 p3, 0x42a00000    # 80.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    const/high16 p2, 0x43960000    # 300.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    sget-object p1, Liko;->a:Liko;

    iget-object p2, p0, Lgfo;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    iget-object p2, p2, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->e:Liko;

    invoke-virtual {p1, p2}, Liko;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lgfo;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lgfo;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    const p2, 0x7f0b0272

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getPaddingTop()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->getPaddingBottom()I

    move-result p1

    add-int/2addr p2, p1

    if-ge p3, p2, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lgfo;->b:Z

    iget-object p1, p0, Lgfo;->a:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    iget-object p1, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->h:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lgeh;->M()V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
