.class public final synthetic Lcom/google/android/apps/camera/bottombar/BottomBarController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$$ExternalSyntheticLambda10;->f$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$$ExternalSyntheticLambda10;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$$ExternalSyntheticLambda10;->f$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-boolean v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$$ExternalSyntheticLambda10;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->lambda$setSideButtonsClickable$2$com-google-android-apps-camera-bottombar-BottomBarController(Z)V

    return-void
.end method
