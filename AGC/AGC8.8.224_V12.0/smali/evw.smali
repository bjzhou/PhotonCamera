.class public final Levw;
.super Lpn;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Levw;->a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lpn;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Levw;->a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Levw;->a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->setResult(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpn;->d(Z)V

    iget-object v0, p0, Levw;->a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-virtual {v0}, Lpl;->onBackPressed()V

    return-void
.end method
