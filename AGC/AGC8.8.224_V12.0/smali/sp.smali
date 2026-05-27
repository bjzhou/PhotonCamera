.class public final Lsp;
.super Ljava/lang/Object;

# interfaces
.implements Ltt;


# instance fields
.field private final a:Lqz;

.field private final b:Lwm;

.field private final synthetic c:I

.field private final d:Ldqx;


# direct methods
.method public constructor <init>(Ldqx;Lqz;Lwm;Lti;I[B[B)V
    .locals 0

    iput p5, p0, Lsp;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsp;->d:Ldqx;

    iput-object p2, p0, Lsp;->a:Lqz;

    iput-object p3, p0, Lsp;->b:Lwm;

    return-void
.end method

.method public constructor <init>(Ldqx;Lwm;Lqz;Lti;I[B[B)V
    .locals 0

    iput p5, p0, Lsp;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsp;->d:Ldqx;

    iput-object p2, p0, Lsp;->b:Lwm;

    iput-object p3, p0, Lsp;->a:Lqz;

    return-void
.end method


# virtual methods
.method public final a(Ltm;Ljava/util/Map;Lty;)Ljava/util/Map;
    .locals 11

    iget v0, p0, Lsp;->c:I

    const-string v1, "Check failed."

    const/16 v2, 0x21

    const-string v3, " for "

    const-string v4, "Failed to create capture session from "

    const-string v5, "Failed to create OutputConfigurations for "

    const-string v6, "CXCP"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lsp;->a:Lqz;

    iget-object v7, p0, Lsp;->b:Lwm;

    move-object v8, p1

    check-cast v8, Lsg;

    iget-object v8, v8, Lsg;->c:Ljava/lang/String;

    invoke-static {v0, v7, p2, v8}, Lkg;->b(Lqz;Lwm;Ljava/util/Map;Ljava/lang/String;)Lud;

    move-result-object p2

    iget-object v0, p2, Lud;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lsp;->a:Lqz;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lojy;->a:Lojy;

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, p0, Lsp;->a:Lqz;

    iget-object v7, p0, Lsp;->b:Lwm;

    move-object v8, p1

    check-cast v8, Lsg;

    iget-object v8, v8, Lsg;->c:Ljava/lang/String;

    invoke-static {v0, v7, p2, v8}, Lkg;->b(Lqz;Lwm;Ljava/util/Map;Ljava/lang/String;)Lud;

    move-result-object p2

    iget-object v0, p2, Lud;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lsp;->a:Lqz;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lojy;->a:Lojy;

    goto/16 :goto_5

    :cond_0
    new-instance v0, Luj;

    iget-object v5, p2, Lud;->a:Ljava/util/List;

    iget-object v7, p0, Lsp;->d:Ldqx;

    invoke-virtual {v7}, Ldqx;->c()Ljava/util/concurrent/Executor;

    move-result-object v7

    iget-object v8, p0, Lsp;->a:Lqz;

    iget-object v8, v8, Lqz;->e:Ljava/util/Map;

    invoke-direct {v0, v5, v7, p3, v8}, Luj;-><init>(Ljava/util/List;Ljava/util/concurrent/Executor;Ltk;Ljava/util/Map;)V

    :try_start_0
    iget-object v5, v0, Luj;->e:Ltk;

    move-object v7, p1

    check-cast v7, Lsg;

    iget-object v7, v7, Lsg;->d:Loop;

    iget-object v7, v7, Loop;->a:Ljava/lang/Object;

    check-cast v7, Ltk;

    move-object v8, p1

    check-cast v8, Lsg;

    iget-object v8, v8, Lsg;->d:Loop;

    invoke-virtual {v8, v7, v5}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v1, v0, Luj;->c:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v1}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lso;

    const-class v10, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v10}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v10

    invoke-virtual {v9, v10}, Lso;->e(Lonx;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, v0, Luj;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lsl;

    invoke-direct {v1, p1, v5, v7}, Lsl;-><init>(Ltm;Ltk;Ltk;)V

    const/4 v5, 0x0

    invoke-static {v5, v8, v0, v1}, Lst;->b(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/params/SessionConfiguration;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lsg;

    iget-object v1, v1, Lsg;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, p1

    check-cast v5, Lsg;

    iget-object v5, v5, Lsg;->a:Lrd;

    invoke-interface {v5}, Lrd;->d()Ljava/util/Set;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lst;->m(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest;)V

    move-object v1, p1

    check-cast v1, Lsg;

    iget-object v1, v1, Lsg;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1, v0}, Lst;->g(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/SessionConfiguration;)V

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_5

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v1, Lub;

    invoke-direct {v1, v0}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lty;->d()V

    :goto_4
    iget-object p1, p2, Lud;->b:Ljava/util/Map;

    :goto_5
    return-object p1

    :cond_6
    :try_start_2
    iget-object p2, p2, Lud;->a:Ljava/util/List;

    iget-object v0, p0, Lsp;->d:Ldqx;

    invoke-virtual {v0}, Ldqx;->b()Landroid/os/Handler;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object v5, p1

    check-cast v5, Lsg;

    iget-object v5, v5, Lsg;->d:Loop;

    iget-object v5, v5, Loop;->a:Ljava/lang/Object;

    check-cast v5, Ltk;

    move-object v7, p1

    check-cast v7, Lsg;

    iget-object v7, v7, Lsg;->d:Loop;

    invoke-virtual {v7, v5, p3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v1, p1

    check-cast v1, Lsg;

    iget-object v1, v1, Lsg;->b:Landroid/hardware/camera2/CameraDevice;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p2}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lso;

    const-class v9, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v9}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v9

    invoke-virtual {v8, v9}, Lso;->e(Lonx;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    new-instance p2, Lsl;

    invoke-direct {p2, p1, p3, v5}, Lsl;-><init>(Ltm;Ltk;Ltk;)V

    invoke-static {v1, v7, p2, v0}, Lsr;->b(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_7

    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    move-exception p2

    :try_start_4
    instance-of v0, p2, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_9

    instance-of v0, p2, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_9

    instance-of v0, p2, Landroid/hardware/camera2/CameraAccessException;

    if-nez v0, :cond_9

    instance-of v0, p2, Ljava/lang/SecurityException;

    if-nez v0, :cond_9

    instance-of v0, p2, Ljava/lang/UnsupportedOperationException;

    if-nez v0, :cond_9

    throw p2

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v0, Lub;

    invoke-direct {v0, p2}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lty;->d()V

    :goto_7
    sget-object p1, Lojy;->a:Lojy;

    :goto_8
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
