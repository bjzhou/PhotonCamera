.class public final Lkot;
.super Ljava/lang/Object;

# interfaces
.implements Lkou;


# instance fields
.field private final a:Lkoq;


# direct methods
.method public constructor <init>(Lkoq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkot;->a:Lkoq;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lkot;->a:Lkoq;

    invoke-interface {v0}, Lkoq;->a()I

    move-result v0

    return v0
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lkot;->a:Lkoq;

    invoke-interface {v0}, Lkoq;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Lkop;
    .locals 1

    iget-object v0, p0, Lkot;->a:Lkoq;

    invoke-interface {v0}, Lkoq;->c()Lkop;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkot;->a:Lkoq;

    invoke-interface {v0, p1}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkot;->a:Lkoq;

    invoke-interface {v0}, Lkoq;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkot;->a:Lkoq;

    invoke-interface {v0}, Lkoq;->f()Ljava/util/List;

    move-result-object v0

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
