.class Lhvx;
.super Lhvu;


# instance fields
.field final synthetic b:Lhvz;


# direct methods
.method public constructor <init>(Lhvz;)V
    .locals 0

    iput-object p1, p0, Lhvx;->b:Lhvz;

    invoke-direct {p0}, Lhvu;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lhvx;->b:Lhvz;

    iget-object v0, v0, Lhvz;->a:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->startPanoramaCalibration()V

    iget-object v0, p0, Lhvx;->b:Lhvz;

    iget-object v0, v0, Lhvz;->b:Liff;

    invoke-interface {v0}, Liff;->R()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lhvx;->b:Lhvz;

    iget-object v0, v0, Lhvz;->j:Ldqx;

    invoke-virtual {v0}, Ldqx;->f()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method
