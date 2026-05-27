.class final Lcrg;
.super Ljava/lang/Object;

# interfaces
.implements Lkmw;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lkmw;

.field private final c:Lcrk;

.field private final d:Ljava/lang/Object;

.field private e:I

.field private final f:Lcrd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/audio/processor/AudioProcessingStream"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcrg;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkmw;Lcrk;Lcrd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcrg;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcrg;->e:I

    iput-object p1, p0, Lcrg;->b:Lkmw;

    iput-object p3, p0, Lcrg;->f:Lcrd;

    iput-object p2, p0, Lcrg;->c:Lcrk;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcrg;->b:Lkmw;

    invoke-interface {v0}, Lkmw;->a()I

    move-result v0

    return v0
.end method

.method public final addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcrg;->b:Lkmw;

    invoke-interface {v0, p1, p2}, Lkmw;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final b()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Lcrg;->b:Lkmw;

    invoke-interface {v0}, Lkmw;->b()Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 9

    iget-object v0, p0, Lcrg;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcrg;->c:Lcrk;

    move-object v2, v1

    check-cast v2, Lcri;

    iget-object v2, v2, Lcri;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v3, v1

    check-cast v3, Lcri;

    iget-object v3, v3, Lcri;->h:Lcrh;

    sget-object v4, Lcrh;->b:Lcrh;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Cannot start from %s"

    move-object v7, v1

    check-cast v7, Lcri;

    iget-object v7, v7, Lcri;->h:Lcrh;

    invoke-static {v3, v4, v7}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Lcri;

    iget-object v3, v3, Lcri;->f:Lkmw;

    invoke-interface {v3}, Lkmw;->c()V

    move-object v3, v1

    check-cast v3, Lcri;

    iget-object v3, v3, Lcri;->i:Lcrb;

    iget-object v4, v3, Lcrb;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput v6, v3, Lcrb;->d:I

    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcrb;->f:J

    iput v6, v3, Lcrb;->e:I

    iput-wide v7, v3, Lcrb;->h:J

    iget-object v3, v3, Lcrb;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v3, Lcqf;

    move-object v4, v1

    check-cast v4, Lcri;

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Lcqf;-><init>(Lcri;I)V

    move-object v4, v1

    check-cast v4, Lcri;

    iget-object v4, v4, Lcri;->b:Lnow;

    invoke-static {v3, v4}, Lcri;->d(Ljava/lang/Runnable;Lnow;)V

    sget-object v3, Lcrh;->c:Lcrh;

    check-cast v1, Lcri;

    iput-object v3, v1, Lcri;->h:Lcrh;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x2

    :try_start_4
    iput v1, p0, Lcrg;->e:I

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcrg;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcrg;->c:Lcrk;

    invoke-interface {v1}, Lcrk;->close()V

    const/4 v1, 0x4

    iput v1, p0, Lcrg;->e:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcrg;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcrg;->c:Lcrk;

    invoke-interface {v1}, Lcrk;->c()V

    const/4 v1, 0x3

    iput v1, p0, Lcrg;->e:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(Ljava/nio/ByteBuffer;I)Lkgd;
    .locals 5

    iget-object v0, p0, Lcrg;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcrg;->e:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    sget-object p1, Lcrg;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0x220

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string p2, "Ignore to read due to stream closed."

    invoke-interface {p1, p2}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcrg;->f:Lcrd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v1, Lcrd;->b:Lcre;

    invoke-virtual {v3, p1, p2}, Lcre;->a(Ljava/nio/ByteBuffer;I)Lkgd;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Lcrd;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string v3, "Failed to read audio packet from audio piped input stream."

    const/16 v4, 0x21f

    invoke-static {p2, v3, v4, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v1}, Lcrd;->a()V

    monitor-exit v0

    return-object v2

    :cond_1
    throw v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcrg;->b:Lkmw;

    invoke-interface {v0}, Lkmw;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcrg;->b:Lkmw;

    invoke-interface {v0}, Lkmw;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcrg;->b:Lkmw;

    invoke-interface {v0, p1}, Lkmw;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    return-void
.end method

.method public final setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 1

    iget-object v0, p0, Lcrg;->b:Lkmw;

    invoke-interface {v0, p1}, Lkmw;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    return p1
.end method
