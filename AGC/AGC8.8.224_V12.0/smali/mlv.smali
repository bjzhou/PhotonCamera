.class public final Lmlv;
.super Ljava/lang/Object;

# interfaces
.implements Lmlu;


# instance fields
.field private final a:Lmma;

.field private final b:Landroid/content/Context;

.field private final c:Lmmj;


# direct methods
.method public constructor <init>(Lmma;Lmmj;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmlv;->a:Lmma;

    iput-object p2, p0, Lmlv;->c:Lmmj;

    iput-object p3, p0, Lmlv;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljot;
    .locals 10

    iget-object v1, p0, Lmlv;->a:Lmma;

    iget-object v0, p0, Lmlv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Lmma;->a:Lmmt;

    if-nez v0, :cond_0

    invoke-static {}, Lmma;->c()Ljot;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v7, Lkgd;

    const/4 v0, 0x0

    invoke-direct {v7, v0, v0}, Lkgd;-><init>([B[B)V

    iget-object v8, v1, Lmma;->a:Lmmt;

    new-instance v9, Lmlw;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, v7

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lmlw;-><init>(Lmma;Lkgd;Ljava/lang/String;Lkgd;[B[B)V

    invoke-virtual {v8, v9, v7}, Lmmt;->e(Lmmk;Lkgd;)V

    iget-object v0, v7, Lkgd;->a:Ljava/lang/Object;

    :goto_0
    check-cast v0, Ljot;

    return-object v0
.end method

.method public final b()V
    .locals 10

    iget-object v1, p0, Lmlv;->a:Lmma;

    iget-object v0, p0, Lmlv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lmma;->a:Lmmt;

    if-nez v0, :cond_0

    invoke-static {}, Lmma;->c()Ljot;

    return-void

    :cond_0
    new-instance v7, Lkgd;

    const/4 v0, 0x0

    invoke-direct {v7, v0, v0}, Lkgd;-><init>([B[B)V

    iget-object v8, v1, Lmma;->a:Lmmt;

    new-instance v9, Lmlx;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, v7

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lmlx;-><init>(Lmma;Lkgd;Lkgd;Ljava/lang/String;[B[B)V

    invoke-virtual {v8, v9, v7}, Lmmt;->e(Lmmk;Lkgd;)V

    return-void
.end method

.method public final c(Lmlt;Landroid/app/Activity;)V
    .locals 8

    invoke-virtual {p1}, Lmlt;->b()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lmlt;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lmlt;->e:Z

    invoke-virtual {p1}, Lmlt;->b()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const v2, 0xe05f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized d(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmlv;->c:Lmmj;

    invoke-virtual {v0, p1}, Lmmj;->b(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmlv;->c:Lmmj;

    invoke-virtual {v0, p1}, Lmmj;->c(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
