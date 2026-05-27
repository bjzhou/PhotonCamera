.class public final Lgnx;
.super Ljava/lang/Object;

# interfaces
.implements Lfvh;


# instance fields
.field private final a:Landroid/hardware/camera2/CaptureResult$Key;

.field private final b:J


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult$Key;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnx;->a:Landroid/hardware/camera2/CaptureResult$Key;

    iput-wide p2, p0, Lgnx;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lkou;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lgoa;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v1, "Missing metadata."

    const/16 v2, 0xc2f

    invoke-static {p1, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return v0

    :cond_0
    iget-object v1, p0, Lgnx;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    sget-object p1, Lgoa;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0xc2e

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v1, p0, Lgnx;->a:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "Missing value for key %s."

    invoke-interface {p1, v2, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lgnx;->b:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    sget-object v1, Lgoa;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xc2d

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    iget-object v2, p0, Lgnx;->a:Landroid/hardware/camera2/CaptureResult$Key;

    iget-wide v3, p0, Lgnx;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Unexpected value for key %s. Expected: greater than %s, got: %s."

    invoke-interface {v1, v4, v2, v3, p1}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method
