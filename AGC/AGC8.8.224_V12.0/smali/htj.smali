.class Lhtj;
.super Lhir;


# direct methods
.method public constructor <init>(Lhtl;)V
    .locals 3

    invoke-direct {p0}, Lhir;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lhiz;

    const-string v1, "CameraUi.Photos"

    invoke-static {v1}, Ljcb;->j(Ljava/lang/String;)Lhiz;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p1, p1, Lhtl;->i:Lebj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lhth;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lhth;-><init>(Lebj;I)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lhir;->a([Lhiz;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method
