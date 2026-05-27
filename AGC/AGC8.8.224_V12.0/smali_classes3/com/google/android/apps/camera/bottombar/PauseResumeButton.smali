.class public Lcom/google/android/apps/camera/bottombar/PauseResumeButton;
.super Landroid/widget/ImageButton;


# static fields
.field private static final STATE_PAUSED:[I


# instance fields
.field private final context:Landroid/content/Context;

.field private firstTimeLaunch:Z

.field private isResumeState:Z

.field private listener:Lcom/google/android/apps/camera/bottombar/PauseResumeButton$PauseResumeButtonListener;

.field private pauseResumeAnimatable:Landroid/graphics/drawable/Drawable;

.field private resumePauseAnimatable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/apps/camera/bottombar/R$attr;->state_paused:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->STATE_PAUSED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->firstTimeLaunch:Z

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isResumeState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->isResumeState:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->isResumeState:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->STATE_PAUSED:[I

    invoke-static {p1, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->mergeDrawableStates([I[I)[I

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->transitionToPauseState()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->firstTimeLaunch:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->transitionToPauseState()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->firstTimeLaunch:Z

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->isResumeState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->listener:Lcom/google/android/apps/camera/bottombar/PauseResumeButton$PauseResumeButtonListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton$PauseResumeButtonListener;->onResumeButtonClicked()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->listener:Lcom/google/android/apps/camera/bottombar/PauseResumeButton$PauseResumeButtonListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton$PauseResumeButtonListener;->onPauseButtonClicked()V

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public resetButton()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->transitionToPauseState()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->refreshDrawableState()V

    return-void
.end method

.method public setListener(Lcom/google/android/apps/camera/bottombar/PauseResumeButton$PauseResumeButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->listener:Lcom/google/android/apps/camera/bottombar/PauseResumeButton$PauseResumeButtonListener;

    return-void
.end method

.method protected transitionToPauseState()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->resumePauseAnimatable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->firstTimeLaunch:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$drawable;->ic_pause_circle_outline_24px:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->resumePauseAnimatable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->resumePauseAnimatable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$drawable;->crossfade_button_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->isResumeState:Z

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$string;->pause_video_recording:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->refreshDrawableState()V

    return-void
.end method

.method protected transitionToResumeState()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->pauseResumeAnimatable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->firstTimeLaunch:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$drawable;->resume_center_circle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->pauseResumeAnimatable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->pauseResumeAnimatable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->isResumeState:Z

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/bottombar/R$string;->resume_video_recording:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->refreshDrawableState()V

    return-void
.end method
