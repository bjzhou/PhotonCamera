.class public final Lcev;
.super Lkfg;


# instance fields
.field private final a:Loiw;

.field private final b:Lnou;

.field private final c:Lfvd;

.field private d:J


# direct methods
.method public constructor <init>(Lnou;Lfvd;Loiw;)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p2, p0, Lcev;->c:Lfvd;

    iput-object p1, p0, Lcev;->b:Lnou;

    iput-object p3, p0, Lcev;->a:Loiw;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcev;->d:J

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 7

    iget-object v0, p0, Lcev;->b:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lceh;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lkou;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcev;->d:J

    invoke-interface {v0}, Lceh;->a()I

    move-result v0

    if-eqz v0, :cond_2

    int-to-long v5, v0

    add-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lkou;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcev;->d:J

    iget-object p1, p0, Lcev;->c:Lfvd;

    iget-object v0, p0, Lcev;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvb;

    invoke-virtual {p1, v0}, Lfvd;->b(Lfvb;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
