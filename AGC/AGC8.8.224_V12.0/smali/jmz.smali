.class public final Ljmz;
.super Ljgm;


# instance fields
.field public final a:Lxf;

.field private final t:Lxf;

.field private final u:Lxf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljge;Ljei;Ljff;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljgm;-><init>(Landroid/content/Context;Landroid/os/Looper;ILjge;Ljei;Ljff;)V

    new-instance p1, Lxf;

    invoke-direct {p1}, Lxf;-><init>()V

    iput-object p1, p0, Ljmz;->a:Lxf;

    new-instance p1, Lxf;

    invoke-direct {p1}, Lxf;-><init>()V

    iput-object p1, p0, Ljmz;->t:Lxf;

    new-instance p1, Lxf;

    invoke-direct {p1}, Lxf;-><init>()V

    iput-object p1, p0, Ljmz;->u:Lxf;

    return-void
.end method

.method public static final J(Lkgd;Ljava/lang/Object;)Ljev;
    .locals 2

    new-instance v0, Ljmv;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1, v1}, Ljmv;-><init>(Ljava/lang/Object;Lkgd;[B[B)V

    return-object v0
.end method


# virtual methods
.method public final C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final G()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Ljmz;->a:Lxf;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljmz;->a:Lxf;

    invoke-virtual {v1}, Lxf;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Ljmz;->t:Lxf;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Ljmz;->t:Lxf;

    invoke-virtual {v0}, Lxf;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Ljmz;->u:Lxf;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Ljmz;->u:Lxf;

    invoke-virtual {v1}, Lxf;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public final I(Ljca;)Z
    .locals 6

    invoke-virtual {p0}, Ljgb;->p()[Ljca;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p1, Ljca;->a:Ljava/lang/String;

    iget-object v5, v3, Ljca;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v3}, Ljca;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Ljca;->a()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final a()I
    .locals 1

    const v0, 0xb2c988

    return v0
.end method

.method protected final synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ljmp;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Ljmp;

    goto :goto_0

    :cond_1
    new-instance v0, Ljmp;

    invoke-direct {v0, p1}, Ljmp;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method public final e()[Ljca;
    .locals 1

    sget-object v0, Ljmc;->l:[Ljca;

    return-object v0
.end method
