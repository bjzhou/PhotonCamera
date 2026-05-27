.class public final synthetic Lcom/google/android/apps/camera/bottombar/BottomBar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public synthetic f$0:Lcom/google/android/apps/camera/bottombar/BottomBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    check-cast p1, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    check-cast p2, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->$r8$lambda$VWWSDjzukKus7NM_pIvaqXLRu4s(Lcom/google/android/apps/camera/bottombar/BottomBar;Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;Lcom/google/android/apps/camera/bottombar/SideButtonCombineListener;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
