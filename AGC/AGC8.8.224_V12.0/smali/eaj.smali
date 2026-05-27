.class public final Leaj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lemr;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lemr;Lfuz;Lkli;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leaj;->a:Lemr;

    invoke-interface {p3}, Lkli;->k()Lklv;

    move-result-object p1

    sget-object p3, Lklv;->b:Lklv;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Leaj;->b:Z

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Lklw;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Leaj;->c:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkmm;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leaj;->a:Lemr;

    invoke-interface {v0}, Lemr;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long v5, v0, v2

    const-wide v7, 0x7fffffffffffffffL

    new-instance v9, Leai;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Leai;-><init>(Leaj;I)V

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Lkmm;->b(JJLkml;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
