.class abstract Ldmq;
.super Lkfg;

# interfaces
.implements Lfax;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkfg;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldmq;->a:J

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 6

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Ldmq;->a:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Linb;->n(J)D

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_1
    iput-wide v0, p0, Ldmq;->a:J

    invoke-virtual {p0, v2, v3}, Ldmq;->g(D)V

    return-void
.end method

.method public final bO()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldmq;->a:J

    return-void
.end method

.method public abstract g(D)V
.end method
