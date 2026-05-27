.class public final Lgnz;
.super Ljava/lang/Object;

# interfaces
.implements Lfvh;


# instance fields
.field private final a:Landroid/hardware/camera2/CaptureResult$Key;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult$Key;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnz;->a:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method


# virtual methods
.method public final a(Lkou;)Z
    .locals 3

    invoke-static {}, Lagc/Agc;->skipCaptureResult()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lgoa;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v1, "Missing metadata."

    const/16 v2, 0xc33

    invoke-static {p1, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return v0

    :cond_0
    iget-object v1, p0, Lgnz;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lgoa;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0xc32

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v1, p0, Lgnz;->a:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "Missing expected metadata value for key %s."

    invoke-interface {p1, v2, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
