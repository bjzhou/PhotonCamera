.class Lcyj;
.super Lcys;


# instance fields
.field final synthetic b:Lcyl;


# direct methods
.method public constructor <init>(Lcyl;)V
    .locals 0

    iput-object p1, p0, Lcyj;->b:Lcyl;

    invoke-direct {p0}, Lcys;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v1, v0, Lcyl;->i:Ldfa;

    iget-object v1, v1, Ldfa;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v1, v0, Lcyl;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->switchToVideoIntentReview()V

    iget-object v0, v0, Lcyl;->f:Liff;

    invoke-interface {v0}, Liff;->aj()V

    return-void
.end method

.method public final bx()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcyj;->b:Lcyl;

    iput-object p0, v0, Lcyl;->h:Lcys;

    return-void
.end method
