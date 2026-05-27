.class final Ljfu;
.super Ljmb;


# instance fields
.field final synthetic a:Ljgb;


# direct methods
.method public constructor <init>(Ljgb;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ljfu;->a:Ljgb;

    invoke-direct {p0, p2}, Ljmb;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static final b(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljfv;

    invoke-virtual {p0}, Ljfv;->b()V

    invoke-virtual {p0}, Ljfv;->f()V

    return-void
.end method

.method private static final c(Landroid/os/Message;)Z
    .locals 3

    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_1

    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Ljfu;->a:Ljgb;

    iget-object v0, v0, Ljgb;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljfu;->c(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljfu;->b(Landroid/os/Message;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v2, :cond_3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_4

    :cond_3
    :goto_0
    iget-object v0, p0, Ljfu;->a:Ljgb;

    invoke-virtual {v0}, Ljgb;->m()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Ljfu;->a:Ljgb;

    new-instance v1, Ljby;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Ljby;-><init>(I)V

    iput-object v1, v0, Ljgb;->l:Ljby;

    iget-object p1, p0, Ljfu;->a:Ljgb;

    iget-boolean v0, p1, Ljgb;->m:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljgb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {p1}, Ljgb;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Ljfu;->a:Ljgb;

    iget-boolean v0, p1, Ljgb;->m:Z

    if-nez v0, :cond_6

    invoke-static {p1, v5}, Ljgb;->E(Ljgb;I)V

    return-void

    :catch_0
    move-exception p1

    :cond_6
    :goto_1
    iget-object p1, p0, Ljfu;->a:Ljgb;

    iget-object p1, p1, Ljgb;->l:Ljby;

    if-nez p1, :cond_7

    new-instance p1, Ljby;

    invoke-direct {p1, v4}, Ljby;-><init>(I)V

    :cond_7
    iget-object v0, p0, Ljfu;->a:Ljgb;

    iget-object v0, v0, Ljgb;->g:Ljfw;

    invoke-interface {v0, p1}, Ljfw;->a(Ljby;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_a

    iget-object p1, p0, Ljfu;->a:Ljgb;

    iget-object p1, p1, Ljgb;->l:Ljby;

    if-nez p1, :cond_9

    new-instance p1, Ljby;

    invoke-direct {p1, v4}, Ljby;-><init>(I)V

    :cond_9
    iget-object v0, p0, Ljfu;->a:Ljgb;

    iget-object v0, v0, Ljgb;->g:Ljfw;

    invoke-interface {v0, p1}, Ljfw;->a(Ljby;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    goto :goto_2

    :cond_b
    :goto_2
    new-instance v0, Ljby;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v6}, Ljby;-><init>(ILandroid/app/PendingIntent;)V

    iget-object p1, p0, Ljfu;->a:Ljgb;

    iget-object p1, p1, Ljgb;->g:Ljfw;

    invoke-interface {p1, v0}, Ljfw;->a(Ljby;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Ljfu;->a:Ljgb;

    invoke-static {v0, v3}, Ljgb;->E(Ljgb;I)V

    iget-object v0, p0, Ljfu;->a:Ljgb;

    iget-object v0, v0, Ljgb;->r:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v0, :cond_d

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljei;->a(I)V

    :cond_d
    iget-object v0, p0, Ljfu;->a:Ljgb;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Ljgb;->G()V

    iget-object p1, p0, Ljfu;->a:Ljgb;

    invoke-virtual {p1, v3, v2, v6}, Ljgb;->z(IILandroid/os/IInterface;)Z

    return-void

    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Ljfu;->a:Ljgb;

    invoke-virtual {v0}, Ljgb;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3

    :cond_f
    invoke-static {p1}, Ljfu;->b(Landroid/os/Message;)V

    return-void

    :cond_10
    :goto_3
    invoke-static {p1}, Ljfu;->c(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljfv;

    monitor-enter v0

    :try_start_1
    iget-object p1, v0, Ljfv;->d:Ljava/lang/Object;

    iget-boolean v1, v0, Ljfv;->e:Z

    if-eqz v1, :cond_11

    const-string v1, "GmsClient"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback proxy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " being reused. This is not safe."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_12

    :try_start_2
    invoke-virtual {v0}, Ljfv;->d()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    throw p1

    :cond_12
    :goto_4
    monitor-enter v0

    :try_start_3
    iput-boolean v2, v0, Ljfv;->e:Z

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Ljfv;->f()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_13
    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_14
    invoke-static {p1}, Ljfu;->b(Landroid/os/Message;)V

    return-void
.end method
