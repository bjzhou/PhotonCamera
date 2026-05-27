.class Lhti;
.super Lhir;


# direct methods
.method public constructor <init>(Lhtl;)V
    .locals 4

    invoke-direct {p0}, Lhir;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lhiz;

    const-string v1, "CameraUi.Capture"

    invoke-static {v1}, Ljcb;->j(Ljava/lang/String;)Lhiz;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lhtl;->h:Liff;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lhth;

    invoke-direct {v3, v1, v2}, Lhth;-><init>(Liff;I)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    iget-object v1, p1, Lhtl;->b:Leoa;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lhth;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lhth;-><init>(Leoa;I)V

    aput-object v2, v0, v3

    iget-object p1, p1, Lhtl;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lhth;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lhth;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;I)V

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lhir;->a([Lhiz;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method
