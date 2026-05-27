.class public final Lgcu;
.super Ljava/lang/Object;

# interfaces
.implements Lgcs;


# instance fields
.field private final a:Lkaq;

.field private final b:Ldkp;

.field private c:D


# direct methods
.method public constructor <init>(Lkap;Ldkp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4040800000000000L    # 33.0

    iput-wide v0, p0, Lgcu;->c:D

    const-string v0, "FrameJank"

    invoke-interface {p1, v0}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lgcu;->a:Lkaq;

    iput-object p2, p0, Lgcu;->b:Ldkp;

    return-void
.end method


# virtual methods
.method public final a(Lkou;DD)V
    .locals 6

    sget-object p4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    sget-object p5, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    iget-object p5, p0, Lgcu;->b:Ldkp;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p5, v0, v1, v2, v3}, Ldkp;->b(JJ)V

    :cond_0
    iget-wide p4, p0, Lgcu;->c:D

    const-wide v0, 0x4040800000000000L    # 33.0

    cmpl-double p1, p4, v0

    if-lez p1, :cond_1

    cmpl-double p1, p2, v0

    if-lez p1, :cond_1

    sub-double v2, p2, p4

    div-double/2addr v2, p4

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_1

    iget-object p1, p0, Lgcu;->a:Lkaq;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JANK! Time between frames ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "ms) increased by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "% over the expected delta ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, "ms)"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Lkaq;->f(Ljava/lang/String;)V

    :cond_1
    cmpl-double p1, p2, v0

    if-lez p1, :cond_3

    iget-wide p4, p0, Lgcu;->c:D

    cmpl-double p1, p2, p4

    if-lez p1, :cond_2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p4, p4, v0

    add-double/2addr p2, p4

    const-wide/high16 p4, 0x4026000000000000L    # 11.0

    div-double/2addr p2, p4

    iput-wide p2, p0, Lgcu;->c:D

    return-void

    :cond_2
    iput-wide p2, p0, Lgcu;->c:D

    :cond_3
    return-void
.end method
