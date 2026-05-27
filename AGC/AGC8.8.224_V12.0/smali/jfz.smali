.class public final Ljfz;
.super Ljft;


# instance fields
.field public final g:Landroid/os/IBinder;

.field final synthetic h:Ljgb;


# direct methods
.method public constructor <init>(Ljgb;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Ljfz;->h:Ljgb;

    invoke-direct {p0, p1, p2, p4}, Ljft;-><init>(Ljgb;ILandroid/os/Bundle;)V

    iput-object p3, p0, Ljfz;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected final a(Ljby;)V
    .locals 1

    iget-object v0, p0, Ljfz;->h:Ljgb;

    iget-object v0, v0, Ljgb;->q:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->t(Ljby;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method protected final c()Z
    .locals 6

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ljfz;->g:Landroid/os/IBinder;

    invoke-static {v2}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Ljfz;->h:Ljgb;

    invoke-virtual {v3}, Ljgb;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ljfz;->h:Ljgb;

    invoke-virtual {v3}, Ljgb;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service descriptor mismatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Ljfz;->h:Ljgb;

    iget-object v2, p0, Ljfz;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljgb;->b(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Ljfz;->h:Ljgb;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v0}, Ljgb;->z(IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ljfz;->h:Ljgb;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4, v0}, Ljgb;->z(IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Ljfz;->h:Ljgb;

    const/4 v1, 0x0

    iput-object v1, v0, Ljgb;->l:Ljby;

    iget-object v0, v0, Ljgb;->r:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljei;->b()V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    move-exception v2

    const-string v2, "service probably died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
