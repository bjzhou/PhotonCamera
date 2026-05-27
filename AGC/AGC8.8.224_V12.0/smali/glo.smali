.class public final Lglo;
.super Ljava/lang/Object;

# interfaces
.implements Lkou;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c()Lkop;
    .locals 1

    new-instance v0, Lgln;

    invoke-direct {v0}, Lgln;-><init>()V

    return-object v0
.end method

.method public final d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1

    sget-object v0, Lmyz;->a:Lmwa;

    return-object v0
.end method

.method public final j()Lkgd;
    .locals 1

    invoke-static {}, Lkgd;->x()Lkgd;

    move-result-object v0

    return-object v0
.end method
