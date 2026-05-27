.class public final Lcuo;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/app/Activity;

.field public final c:Landroid/media/AudioManager;

.field public final d:Ljuf;

.field public final e:Ljava/lang/Object;

.field public final f:Lgyd;

.field public g:Z

.field public h:Z

.field public final i:Landroid/content/BroadcastReceiver;

.field public j:I

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/media/audio/AudioDeviceBluetoothManagerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcuo;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/media/AudioManager;Lgyd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lcuo;->d:Ljuf;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcuo;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcuo;->g:Z

    const/4 v1, 0x3

    iput v1, p0, Lcuo;->j:I

    const/4 v1, 0x1

    iput v1, p0, Lcuo;->k:I

    iput-boolean v0, p0, Lcuo;->h:Z

    new-instance v0, Lcun;

    invoke-direct {v0, p0}, Lcun;-><init>(Lcuo;)V

    iput-object v0, p0, Lcuo;->i:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcuo;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcuo;->c:Landroid/media/AudioManager;

    iput-object p3, p0, Lcuo;->f:Lgyd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcuo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcuo;->h:Z

    if-eqz v1, :cond_0

    sget-object p1, Lcuo;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x2bb

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Already closed. Ignore start()"

    invoke-interface {p1, v1}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget p1, p0, Lcuo;->j:I

    if-eqz p1, :cond_5

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iput v1, p0, Lcuo;->k:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    sget-object p1, Lcuo;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x2b8

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Bluetooth audio is disconnecting, retry later"

    invoke-interface {p1, v1}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_3
    iget-object p1, p0, Lcuo;->f:Lgyd;

    sget-object v2, Lgyc;->d:Lgyc;

    invoke-virtual {p1, v2}, Lgyd;->a(Lgyc;)I

    iget-object p1, p0, Lcuo;->f:Lgyd;

    sget-object v2, Lgyc;->d:Lgyc;

    invoke-virtual {p1, v2}, Lgyd;->a(Lgyc;)I

    move-result p1

    const/16 v2, 0x1a

    if-ne p1, v2, :cond_4

    iput v1, p0, Lcuo;->j:I

    iget-object p1, p0, Lcuo;->f:Lgyd;

    sget-object v1, Lgyc;->d:Lgyc;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lgyd;->e(Lgyc;Ljava/lang/Boolean;)V

    iput v2, p0, Lcuo;->k:I

    monitor-exit v0

    return-void

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object p1, p0, Lcuo;->c:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    monitor-exit v0

    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcuo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcuo;->j:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput v2, p0, Lcuo;->k:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    sget-object v1, Lcuo;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x2be

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Bluetooth audio is connecting, retry later"

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcuo;->f:Lgyd;

    sget-object v3, Lgyc;->d:Lgyc;

    invoke-virtual {v1, v3}, Lgyd;->a(Lgyc;)I

    move-result v1

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_2

    iput v2, p0, Lcuo;->j:I

    iget-object v1, p0, Lcuo;->f:Lgyd;

    sget-object v2, Lgyc;->d:Lgyc;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgyd;->e(Lgyc;Ljava/lang/Boolean;)V

    const/4 v1, 0x1

    iput v1, p0, Lcuo;->k:I

    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcuo;->j:I

    iget-object v1, p0, Lcuo;->c:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x0

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcuo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcuo;->h:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcuo;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x2b2

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Already closed"

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcuo;->c:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v1, p0, Lcuo;->d:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    iget-object v1, p0, Lcuo;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcuo;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcuo;->h:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
