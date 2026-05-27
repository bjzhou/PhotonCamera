.class public final Lctq;
.super Lkfg;


# instance fields
.field private final a:Lcvw;


# direct methods
.method public constructor <init>(Ljyc;)V
    .locals 1

    invoke-direct {p0}, Lkfg;-><init>()V

    new-instance v0, Lcvw;

    invoke-direct {v0, p1}, Lcvw;-><init>(Ljyc;)V

    iput-object v0, p0, Lctq;->a:Lcvw;

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 4

    iget-object v0, p0, Lctq;->a:Lcvw;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_2

    sget-object v1, Lcvv;->a:Lcvv;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcvv;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcvw;->b:Lcvv;

    sget-object v2, Lcvv;->a:Lcvv;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lcvw;->b:Lcvv;

    iget-object p1, v0, Lcvw;->a:Ljyc;

    iget-object v0, v0, Lcvw;->b:Lcvv;

    iget v0, v0, Lcvv;->c:F

    invoke-interface {p1, v0}, Ljyc;->q(F)V

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcvv;->b:Lcvv;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcvv;->a(J)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcvw;->b:Lcvv;

    sget-object v1, Lcvv;->b:Lcvv;

    if-eq p1, v1, :cond_2

    iput-object v1, v0, Lcvw;->b:Lcvv;

    iget-object p1, v0, Lcvw;->a:Ljyc;

    iget-object v0, v0, Lcvw;->b:Lcvv;

    iget v0, v0, Lcvv;->c:F

    invoke-interface {p1, v0}, Ljyc;->q(F)V

    return-void

    :cond_2
    return-void
.end method
