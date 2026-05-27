.class public final Liia;
.super Ljava/lang/Object;

# interfaces
.implements Lhyi;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;)V
    .locals 0

    iput-object p1, p0, Liia;->a:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onLayoutUpdated(Lhyn;Liko;)V
    .locals 0

    return-void
.end method

.method public final onLayoutUpdated(Liko;)V
    .locals 2

    iget-object v0, p0, Liia;->a:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    const v1, 0x7f0b0482

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Ljvd;->H(Landroid/view/View;Liko;)V

    return-void
.end method
