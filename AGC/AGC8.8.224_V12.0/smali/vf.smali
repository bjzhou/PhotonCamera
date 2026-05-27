.class final Lvf;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field private final a:Lvg;

.field private final b:I


# direct methods
.method public constructor <init>(Lvg;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvf;->a:Lvg;

    iput p2, p0, Lvf;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    iget v0, v1, Lvf;->b:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lvf;->a:Lvg;

    iget-object v0, v0, Lvg;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqx;

    iget-object v2, v1, Lvf;->a:Lvg;

    iget-object v2, v2, Lvg;->k:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbbc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lli;

    invoke-direct {v0}, Lli;-><init>()V

    return-object v0

    :pswitch_0
    new-instance v0, Lva;

    invoke-direct {v0}, Lva;-><init>()V

    return-object v0

    :pswitch_1
    iget-object v0, v1, Lvf;->a:Lvg;

    invoke-virtual {v0}, Lvg;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lbkb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v2, v0}, Lbkb;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-object v2

    :pswitch_2
    new-instance v0, Ldqx;

    iget-object v3, v1, Lvf;->a:Lvg;

    iget-object v3, v3, Lvg;->e:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Llgf;

    iget-object v3, v1, Lvf;->a:Lvg;

    new-instance v15, Lui;

    new-instance v12, Lbbc;

    new-instance v6, Lbby;

    iget-object v5, v3, Lvg;->c:Loiw;

    iget-object v7, v3, Lvg;->b:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldqx;

    invoke-direct {v6, v5, v7, v2, v2}, Lbby;-><init>(Loiw;Ldqx;[B[B)V

    iget-object v2, v3, Lvg;->g:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lti;

    iget-object v2, v3, Lvg;->f:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lne;

    iget-object v2, v3, Lvg;->p:Lbkb;

    iget-object v2, v2, Lbkb;->a:Ljava/lang/Object;

    check-cast v2, Lrf;

    iget-object v9, v2, Lrf;->c:Lre;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lbbc;-><init>(Lbby;Lti;Lne;Lre;[B[B)V

    new-instance v7, Lbby;

    iget-object v2, v3, Lvg;->c:Loiw;

    iget-object v5, v3, Lvg;->b:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ldqx;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v21}, Lbby;-><init>(Loiw;Ldqx;[B[B[B)V

    iget-object v2, v3, Lvg;->f:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lne;

    iget-object v2, v3, Lvg;->h:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lbkb;

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v15

    move-object v6, v12

    move-object v12, v2

    invoke-direct/range {v5 .. v14}, Lui;-><init>(Lbbc;Lbby;Lne;Lbkb;[B[B[B[B[B)V

    iget-object v2, v1, Lvf;->a:Lvg;

    iget-object v2, v2, Lvg;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ldqx;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Ldqx;-><init>(Llgf;Lui;Ldqx;[B[B[B)V

    return-object v0

    :pswitch_3
    new-instance v0, Lne;

    invoke-direct {v0}, Lne;-><init>()V

    return-object v0

    :pswitch_4
    new-instance v0, Llgf;

    iget-object v2, v1, Lvf;->a:Lvg;

    invoke-virtual {v2}, Lvg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Llgf;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lth;

    iget-object v2, v1, Lvf;->a:Lvg;

    invoke-virtual {v2}, Lvg;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v2, Lvg;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ldqx;

    iget-object v2, v1, Lvf;->a:Lvg;

    iget-object v2, v2, Lvg;->e:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Llgf;

    iget-object v2, v1, Lvf;->a:Lvg;

    iget-object v3, v2, Lvg;->p:Lbkb;

    iget-object v3, v3, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Lrf;

    iget-object v7, v3, Lrf;->d:Lbkb;

    iget-object v2, v2, Lvg;->f:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lne;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lth;-><init>(Landroid/content/Context;Ldqx;Llgf;Lbkb;Lne;[B[B[B[B[B)V

    return-object v0

    :pswitch_6
    iget-object v0, v1, Lvf;->a:Lvg;

    invoke-virtual {v0}, Lvg;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    return-object v0

    :pswitch_7
    new-instance v0, Ltf;

    iget-object v3, v1, Lvf;->a:Lvg;

    iget-object v4, v3, Lvg;->c:Loiw;

    iget-object v3, v3, Lvg;->b:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldqx;

    invoke-direct {v0, v4, v3, v2, v2}, Ltf;-><init>(Loiw;Ldqx;[B[B)V

    return-object v0

    :pswitch_8
    iget-object v0, v1, Lvf;->a:Lvg;

    iget-object v0, v0, Lvg;->o:Loxq;

    sget-object v2, Lvj;->a:[I

    sget-object v2, Lvj;->b:Ljava/util/concurrent/ThreadFactory;

    const-string v3, "CXCP-IO-"

    invoke-static {v2, v3}, Lvj;->c(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lvj;->b(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lopx;->m(Ljava/util/concurrent/Executor;)Lopq;

    sget-object v2, Lvj;->b:Ljava/util/concurrent/ThreadFactory;

    const-string v4, "CXCP-BG-"

    invoke-static {v2, v4}, Lvj;->c(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-static {v2, v3}, Lvj;->b(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lvj;->a(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v2}, Lopx;->m(Ljava/util/concurrent/Executor;)Lopq;

    move-result-object v5

    sget-object v2, Lvj;->b:Ljava/util/concurrent/ThreadFactory;

    const-string v3, "CXCP-"

    invoke-static {v2, v3}, Lvj;->c(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    const/4 v3, -0x3

    invoke-static {v2, v3}, Lvj;->b(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    iget v0, v0, Loxq;->a:I

    invoke-static {v2, v0}, Lvj;->a(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lopx;->m(Ljava/util/concurrent/Executor;)Lopq;

    move-result-object v6

    new-instance v7, Lvh;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lvh;-><init>(I)V

    new-instance v8, Lvh;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Lvh;-><init>(I)V

    new-instance v0, Lors;

    invoke-direct {v0}, Lors;-><init>()V

    invoke-virtual {v0, v6}, Lori;->plus(Lola;)Lola;

    move-result-object v0

    new-instance v2, Lopt;

    const-string v3, "CXCP"

    invoke-direct {v2, v3}, Lopt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lola;->plus(Lola;)Lola;

    move-result-object v0

    invoke-static {v0}, Lopx;->e(Lola;)Lopu;

    move-result-object v4

    new-instance v0, Ldqx;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Ldqx;-><init>(Lopu;Lopq;Lopq;Lolz;Lolz;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lva;

    iget-object v2, v1, Lvf;->a:Lvg;

    iget-object v2, v2, Lvg;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ldqx;

    iget-object v2, v1, Lvf;->a:Lvg;

    iget-object v2, v2, Lvg;->d:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ltf;

    iget-object v2, v1, Lvf;->a:Lvg;

    iget-object v2, v2, Lvg;->g:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lth;

    iget-object v2, v1, Lvf;->a:Lvg;

    iget-object v2, v2, Lvg;->i:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ldqx;

    new-instance v14, Lvn;

    iget-object v2, v1, Lvf;->a:Lvg;

    invoke-direct {v14, v2}, Lvn;-><init>(Lvg;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lva;-><init>(Ldqx;Ltf;Lth;Ldqx;Lvn;[B[B[B)V

    return-object v0

    :pswitch_a
    iget-object v0, v1, Lvf;->a:Lvg;

    iget-object v3, v0, Lvg;->p:Lbkb;

    iget-object v3, v3, Lbkb;->a:Ljava/lang/Object;

    iget-object v4, v0, Lvg;->j:Loiw;

    iget-object v0, v0, Lvg;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Initialize defaultCameraBackend"

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    check-cast v3, Lrf;

    iget-object v4, v3, Lrf;->e:Lbkb;

    iget-object v4, v4, Lbkb;->a:Ljava/lang/Object;

    invoke-static {}, Lqw;->a()Lqw;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "CameraBackendId(value=CXCP-Camera2)"

    if-nez v4, :cond_1

    iget-object v3, v3, Lrf;->e:Lbkb;

    iget-object v3, v3, Lbkb;->a:Ljava/lang/Object;

    invoke-static {}, Lqw;->a()Lqw;

    move-result-object v4

    new-instance v6, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v6, v0, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lva;[B)V

    invoke-static {v4, v6}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object v0

    invoke-static {v3, v0}, Lljr;->X(Ljava/util/Map;Lojd;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lqw;->a()Lqw;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lbbc;

    invoke-direct {v2, v0}, Lbbc;-><init>(Ljava/util/Map;)V

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in the list of available CameraPipe backends! Available values are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraBackendConfig#cameraBackends should not contain a backend with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Use CameraBackendConfig#internalBackend field instead."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :pswitch_b
    new-instance v0, Lbkb;

    iget-object v3, v1, Lvf;->a:Lvg;

    iget-object v3, v3, Lvg;->k:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbbc;

    invoke-direct {v0, v3, v2, v2}, Lbkb;-><init>(Lbbc;[B[B)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
