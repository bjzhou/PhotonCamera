.class public final Lcsp;
.super Ljava/lang/Object;

# interfaces
.implements Lcsm;
.implements Lfaz;
.implements Lfay;


# instance fields
.field public final a:Lcsk;

.field b:Landroid/database/ContentObserver;

.field c:Z

.field d:Z

.field public e:Z

.field private final f:Lctv;

.field private final g:Lkog;

.field private final h:Ljava/lang/Object;

.field private i:Lcso;

.field private final j:Lfvx;

.field private final k:Ljew;


# direct methods
.method public constructor <init>(Lezx;Lfvx;Lctv;Lkog;Lcsk;Ljuh;Ljew;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Ljava/lang/Object;

    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcsp;->h:Ljava/lang/Object;

    sget-object p8, Lcso;->a:Lcso;

    iput-object p8, p0, Lcsp;->i:Lcso;

    iput-object p2, p0, Lcsp;->j:Lfvx;

    iput-object p3, p0, Lcsp;->f:Lctv;

    iput-object p4, p0, Lcsp;->g:Lkog;

    iput-object p5, p0, Lcsp;->a:Lcsk;

    iput-object p7, p0, Lcsp;->k:Ljew;

    new-instance p2, Lcfz;

    const/16 p3, 0x11

    invoke-direct {p2, p0, p1, p3}, Lcfz;-><init>(Lcsp;Lezx;I)V

    invoke-virtual {p6, p2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 6

    iget-object v0, p0, Lcsp;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnli;->e:Lnli;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, p0, Lcsp;->i:Lcso;

    sget-object v3, Lcso;->c:Lcso;

    invoke-virtual {v2, v3}, Lcso;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnli;

    iget v5, v4, Lnli;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lnli;->a:I

    iput-boolean v2, v4, Lnli;->b:Z

    iget-boolean v2, p0, Lcsp;->d:Z

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnli;

    iget v5, v4, Lnli;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lnli;->a:I

    iput-boolean v2, v4, Lnli;->c:Z

    iget-boolean v2, p0, Lcsp;->e:Z

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnli;

    iget v4, v3, Lnli;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lnli;->a:I

    iput-boolean v2, v3, Lnli;->d:Z

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnli;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lcsc;)V
    .locals 5

    iget-object v0, p0, Lcsp;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcsp;->k:Ljew;

    invoke-virtual {v1}, Ljew;->v()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p1, Lcsc;->d:Ljwu;

    invoke-virtual {v1}, Ljwu;->d()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcsc;->c:Ljws;

    sget-object v4, Ljws;->d:Ljws;

    invoke-virtual {v1, v4}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p1, Lcsc;->d:Ljwu;

    invoke-virtual {v1}, Ljwu;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcsc;->c:Ljws;

    sget-object v1, Ljws;->d:Ljws;

    invoke-virtual {p1, v1}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcsp;->c:Z

    new-instance p1, Lcsn;

    iget-object v1, p0, Lcsp;->f:Lctv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lctv;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcsn;-><init>(Lcsp;Landroid/os/Handler;)V

    iput-object p1, p0, Lcsp;->b:Landroid/database/ContentObserver;

    sget-object p1, Lcso;->b:Lcso;

    iput-object p1, p0, Lcsp;->i:Lcso;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcsp;->e:Z

    return-void
.end method

.method public final d()V
    .locals 6

    iget-boolean v0, p0, Lcsp;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcsp;->c:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcsp;->d:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcsp;->g:Lkog;

    iget-boolean v1, v0, Lkog;->e:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lkog;->d:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lkog;->f:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcsp;->a:Lcsk;

    invoke-virtual {v0}, Lcsk;->a()I

    move-result v0

    const/16 v1, 0x9e

    if-le v0, v1, :cond_3

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcsp;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcsp;->i:Lcso;

    sget-object v2, Lcso;->b:Lcso;

    invoke-virtual {v1, v2}, Lcso;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcsp;->i:Lcso;

    sget-object v4, Lcso;->d:Lcso;

    invoke-virtual {v1, v4}, Lcso;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    :goto_1
    const-string v4, "Cannot start from %s"

    iget-object v5, p0, Lcsp;->i:Lcso;

    invoke-static {v1, v4, v5}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcsp;->a:Lcsk;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Lcsk;->d(IZ)V

    iget-object v1, p0, Lcsp;->b:Landroid/database/ContentObserver;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcsp;->j:Lfvx;

    iget-object v1, v1, Lfvx;->c:Ljava/lang/Object;

    const-string v3, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcsp;->b:Landroid/database/ContentObserver;

    check-cast v1, Landroid/content/ContentResolver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_6
    sget-object v1, Lcso;->c:Lcso;

    iput-object v1, p0, Lcsp;->i:Lcso;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcsp;->d:Z

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcsp;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcsp;->i:Lcso;

    sget-object v2, Lcso;->c:Lcso;

    invoke-virtual {v1, v2}, Lcso;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcsp;->a:Lcsk;

    invoke-virtual {v1}, Lcsk;->b()V

    iget-object v1, p0, Lcsp;->b:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcsp;->j:Lfvx;

    iget-object v2, v2, Lfvx;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    sget-object v1, Lcso;->d:Lcso;

    iput-object v1, p0, Lcsp;->i:Lcso;

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
