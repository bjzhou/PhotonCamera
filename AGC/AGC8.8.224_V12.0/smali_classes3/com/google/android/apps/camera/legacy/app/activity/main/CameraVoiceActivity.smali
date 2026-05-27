.class public Lcom/google/android/apps/camera/legacy/app/activity/main/CameraVoiceActivity;
.super Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraVoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->f(Landroid/content/Intent;)V

    invoke-super {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->onPause()V

    return-void
.end method

.method protected final q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
