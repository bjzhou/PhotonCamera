.class public final synthetic Lcom/google/android/apps/camera/bottombar/BottomBar$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public synthetic f$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

.field public synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBar;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iput-boolean p2, p0, Lcom/google/android/apps/camera/bottombar/BottomBar$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iget-boolean v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    check-cast p2, Lmqp;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->lambda$changeMultipleSideButtons$1$com-google-android-apps-camera-bottombar-BottomBar(ZLcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;Lmqp;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
