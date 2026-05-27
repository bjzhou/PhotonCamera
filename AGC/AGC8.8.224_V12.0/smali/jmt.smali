.class public final Ljmt;
.super Ljava/lang/Object;

# interfaces
.implements Ljfh;


# instance fields
.field public a:Ljfb;

.field public b:Z

.field final synthetic c:Ljmu;


# direct methods
.method public constructor <init>(Ljmu;Ljfb;)V
    .locals 0

    iput-object p1, p0, Ljmt;->c:Ljmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljmt;->b:Z

    iput-object p2, p0, Ljmt;->a:Ljfb;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Ljmz;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljmt;->a:Ljfb;

    iget-object v0, v0, Ljfb;->b:Ljez;

    iget-boolean v1, p0, Ljmt;->b:Z

    iget-object v2, p0, Ljmt;->a:Ljfb;

    invoke-virtual {v2}, Ljfb;->a()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p2, Lkgd;

    invoke-virtual {p2, p1}, Lkgd;->i(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p1, Ljmz;->a:Lxf;

    monitor-enter v2

    :try_start_1
    iget-object v3, p1, Ljmz;->a:Lxf;

    invoke-virtual {v3, v0}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljmf;

    if-nez v6, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p2, Lkgd;

    invoke-virtual {p2, p1}, Lkgd;->i(Ljava/lang/Object;)V

    monitor-exit v2

    return-void

    :cond_1
    iget-object v0, v6, Ljmf;->a:Ljmt;

    invoke-virtual {v0}, Ljmt;->b()Ljfb;

    move-result-object v0

    invoke-virtual {v0}, Ljfb;->a()V

    if-eqz v1, :cond_3

    sget-object v0, Ljmc;->j:Ljca;

    invoke-virtual {p1, v0}, Ljmz;->I(Ljca;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljmp;

    invoke-static {v1, v6, v1}, Ljna;->a(Landroid/os/IInterface;Ljmg;Ljava/lang/String;)Ljna;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p2, Lkgd;

    invoke-static {p2, v1}, Ljmz;->J(Lkgd;Ljava/lang/Object;)Ljev;

    move-result-object p2

    invoke-virtual {p1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v0}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v1, p2}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p2, 0x59

    invoke-virtual {p1, p2, v1}, Lcbe;->z(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljmp;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v9, Ljmw;

    check-cast p2, Lkgd;

    invoke-direct {v9, v0, p2, v1, v1}, Ljmw;-><init>(Ljava/lang/Object;Lkgd;[B[B)V

    new-instance p2, Ljnc;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Ljnc;-><init>(ILjnb;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljmp;->e(Ljnc;)V

    goto :goto_0

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p2, Lkgd;

    invoke-virtual {p2, p1}, Lkgd;->i(Ljava/lang/Object;)V

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final declared-synchronized b()Ljfb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljmt;->a:Ljfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljfb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljmt;->a:Ljfb;

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Ljfb;->a()V

    iput-object p1, p0, Ljmt;->a:Ljfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
