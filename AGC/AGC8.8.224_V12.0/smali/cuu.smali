.class public final Lcuu;
.super Ljava/lang/Object;

# interfaces
.implements Ljye;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Lgyd;

.field private c:Landroid/media/AudioRouting;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private f:Lkad;

.field private final g:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/media/audio/AudioDeviceSelectorImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcuu;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lcvr;Lgyd;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcuu;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcuu;->g:Lcvr;

    iput-object p2, p0, Lcuu;->a:Lgyd;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcuu;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioRouting;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcuu;->a:Lgyd;

    invoke-virtual {v0}, Lgyd;->b()Lgys;

    move-result-object v0

    sget-object v1, Lgys;->b:Lgys;

    invoke-virtual {v0, v1}, Lgys;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcuu;->a:Lgyd;

    sget-object v2, Lgyc;->c:Lgyc;

    invoke-virtual {v0, v2}, Lgyd;->g(Lgyc;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcuu;->g:Lcvr;

    invoke-virtual {v0}, Lcvr;->o()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcuu;->a:Lgyd;

    invoke-virtual {v0}, Lgyd;->b()Lgys;

    move-result-object v0

    sget-object v2, Lgys;->c:Lgys;

    invoke-virtual {v0, v2}, Lgys;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcuu;->a:Lgyd;

    sget-object v2, Lgyc;->d:Lgyc;

    invoke-virtual {v0, v2}, Lgyd;->g(Lgyc;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcuu;->g:Lcvr;

    invoke-virtual {v0}, Lcvr;->n()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-interface {p1, v0}, Landroid/media/AudioRouting;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v2

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcvr;->p(Landroid/media/AudioDeviceInfo;)V

    if-nez v2, :cond_3

    invoke-interface {p1, v1}, Landroid/media/AudioRouting;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    :cond_3
    return-void
.end method

.method public final b(Landroid/media/AudioRouting;)V
    .locals 5

    iget-object v0, p0, Lcuu;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcuu;->d:Z

    if-eqz v1, :cond_0

    sget-object p1, Lcuu;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x2d0

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Ignore start. Already closed"

    invoke-interface {p1, v1}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcuu;->c:Landroid/media/AudioRouting;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcuu;->c()V

    :cond_1
    invoke-interface {p1}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    iput-object p1, p0, Lcuu;->c:Landroid/media/AudioRouting;

    invoke-virtual {p0, p1}, Lcuu;->a(Landroid/media/AudioRouting;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljvs;

    iget-object v2, p0, Lcuu;->a:Lgyd;

    iget-object v3, v2, Lgyd;->b:Ljwb;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v2, v2, Lgyd;->d:Ljwb;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Lccp;

    const/16 v3, 0xf

    invoke-direct {v2, p0, p1, v3}, Lccp;-><init>(Lcuu;Landroid/media/AudioRouting;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Lcuu;->f:Lkad;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcuu;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcuu;->d:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcuu;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x2d2

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Ignore stop. Already closed"

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcuu;->c:Landroid/media/AudioRouting;

    iget-object v2, p0, Lcuu;->f:Lkad;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lkad;->close()V

    iput-object v1, p0, Lcuu;->f:Lkad;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcuu;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcuu;->d:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcuu;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x2ce

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Already closed"

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcuu;->c()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcuu;->d:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
