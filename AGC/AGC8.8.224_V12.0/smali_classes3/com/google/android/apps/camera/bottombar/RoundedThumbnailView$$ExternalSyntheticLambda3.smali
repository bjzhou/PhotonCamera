.class public final synthetic Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public synthetic f$0:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->lambda$runPendingRequestAnimation$2$com-google-android-apps-camera-bottombar-RoundedThumbnailView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
