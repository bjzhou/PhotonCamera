.class abstract Lkji;
.super Ljava/lang/Object;

# interfaces
.implements Lkip;


# instance fields
.field protected final a:Lkez;

.field protected final b:Lkaq;

.field protected final c:Lkbc;

.field protected final d:I

.field private final e:Lkkc;

.field private final f:Lkjn;


# direct methods
.method protected constructor <init>(ILkez;Lkkc;Lkjn;Lkaq;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkji;->d:I

    iput-object p2, p0, Lkji;->a:Lkez;

    iput-object p3, p0, Lkji;->e:Lkkc;

    iput-object p4, p0, Lkji;->f:Lkjn;

    iput-object p6, p0, Lkji;->c:Lkbc;

    const-string p1, "SessionOpener"

    invoke-interface {p5, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkji;->b:Lkaq;

    return-void
.end method

.method private static final c(Lkit;Ljava/util/concurrent/Executor;)V
    .locals 3

    iget-object v0, p0, Lkit;->a:Lkju;

    iget-object v0, v0, Lkju;->a:Ljvk;

    new-instance v1, Liiz;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Liiz;-><init>(Lkit;I)V

    invoke-interface {v0, v1, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iget-object p0, p0, Lkiu;->c:Lnou;

    new-instance v0, Lkcu;

    const/16 v1, 0xd

    invoke-direct {v0, p1, v1}, Lkcu;-><init>(Lkad;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {p0, v0, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lkoo;Lkiq;Ljava/util/List;Landroid/os/Handler;)V
.end method

.method public final b(Lkoo;Lkiq;Ljava/util/List;Ljava/util/List;Ljuf;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 6

    iget-object v0, p0, Lkji;->c:Lkbc;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Create-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkiu;

    invoke-virtual {v2}, Lkiu;->c()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkji;->f:Lkjn;

    invoke-virtual {v1, p2}, Lkjn;->d(Lkiq;)V

    iget-object v1, p0, Lkji;->f:Lkjn;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Lkjn;->d:Lkiq;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v4, "setActiveCaptureSession must be invoked first."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Llkj;->z(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lkjn;->d:Lkiq;

    if-eq p2, v2, :cond_2

    monitor-exit v1

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lkjn;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v1}, Lkjn;->c()V

    :cond_3
    :goto_2
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    invoke-virtual {v0, p4}, Lmvq;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v0, p3}, Lmvq;->h(Ljava/lang/Iterable;)V

    sget-object p3, Lye;->a:Ljava/util/Comparator;

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object v0

    invoke-static {p3, v0}, Lmvv;->r(Ljava/util/Comparator;Ljava/lang/Iterable;)Lmvv;

    move-result-object p3

    iget-object v0, p0, Lkji;->b:Lkaq;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p6}, Lkji;->a(Lkoo;Lkiq;Ljava/util/List;Landroid/os/Handler;)V

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lkir;

    invoke-static {p6, p7}, Lkji;->c(Lkit;Ljava/util/concurrent/Executor;)V

    iget-object v0, p6, Lkiu;->c:Lnou;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p6}, Lkir;->a()Lkow;

    move-result-object p6

    invoke-interface {v5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object p1

    new-instance p3, Lkjh;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lkjh;-><init>(Lkji;Ljuf;Lkiq;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1, p3, p7}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    iget-object p1, p0, Lkji;->c:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lkji;->c:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final d(Lkoo;Lkiq;Ljuf;Landroid/os/Handler;)V
    .locals 15

    move-object v10, p0

    new-instance v11, Ljud;

    move-object/from16 v8, p4

    invoke-direct {v11, v8}, Ljud;-><init>(Landroid/os/Handler;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lkji;->e:Lkkc;

    iget-object v1, v0, Lkkc;->b:Lmwn;

    iget-object v0, v0, Lkkc;->c:Lmwn;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const-string v9, "Cannot create a capture session without streams."

    invoke-static {v2, v9}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v2, v10, Lkji;->a:Lkez;

    sget-object v9, Lkez;->b:Lkez;

    const/4 v12, 0x2

    if-ne v2, v9, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const-string v9, "HIGH_SPEED Sessions cannot use buffered streams."

    invoke-static {v2, v9}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    const-string v9, "HIGH_SPEED Sessions must have streams."

    invoke-static {v2, v9}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v2, v12, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v9, "HIGH_SPEED Sessions may only have 1 or 2 streams."

    invoke-static {v2, v9}, Lmoz;->f(ZLjava/lang/Object;)V

    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkjt;

    invoke-virtual {v2}, Lkjt;->g()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v9}, Lkiv;->b(Lkkb;Landroid/view/Surface;)Lkiv;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lkkb;->h:Lkfl;

    iget v2, v2, Lkfl;->n:I

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkju;

    invoke-virtual {v1}, Lkju;->g()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v1, v2}, Lkiv;->b(Lkkb;Landroid/view/Surface;)Lkiv;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v9, v10, Lkji;->b:Lkaq;

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v3

    aput-object v1, v13, v5

    const-string v2, "%s for %s was not valid, this may prevent the viewfinder from starting!"

    invoke-static {v2, v13}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Lkaq;->i(Ljava/lang/String;)V

    :cond_6
    iget-object v2, v10, Lkji;->a:Lkez;

    sget-object v9, Lkez;->b:Lkez;

    if-eq v2, v9, :cond_a

    iget v2, v10, Lkji;->d:I

    const/4 v9, 0x5

    if-eq v2, v9, :cond_a

    const/4 v9, 0x3

    if-eq v2, v9, :cond_a

    invoke-virtual {v1}, Lkju;->h()Lkfm;

    move-result-object v2

    sget-object v9, Lkfm;->b:Lkfm;

    const/4 v13, 0x0

    if-ne v2, v9, :cond_7

    sget v2, Lkiw;->a:I

    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Lkkb;->b()Lkaf;

    move-result-object v9

    invoke-virtual {v9}, Lkaf;->c()Landroid/util/Size;

    move-result-object v9

    const-class v14, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v9, v14}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lkiw;->b(Lkkb;Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lkju;->h()Lkfm;

    move-result-object v2

    sget-object v9, Lkfm;->c:Lkfm;

    if-ne v2, v9, :cond_8

    sget v2, Lkiw;->a:I

    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Lkkb;->b()Lkaf;

    move-result-object v9

    invoke-virtual {v9}, Lkaf;->c()Landroid/util/Size;

    move-result-object v9

    const-class v14, Landroid/view/SurfaceHolder;

    invoke-direct {v2, v9, v14}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lkiw;->b(Lkkb;Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto :goto_4

    :cond_8
    move-object v2, v13

    :goto_4
    if-eqz v2, :cond_9

    new-instance v13, Lkir;

    invoke-direct {v13, v1, v2}, Lkir;-><init>(Lkju;Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto :goto_5

    :cond_9
    :goto_5
    if-eqz v13, :cond_a

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    new-instance v2, Lkis;

    invoke-direct {v2, v1}, Lkis;-><init>(Lkju;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v6}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v3

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lkji;->b(Lkoo;Lkiq;Ljava/util/List;Ljava/util/List;Ljuf;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    :goto_6
    if-ge v3, v1, :cond_d

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkis;

    invoke-static {v2, v11}, Lkji;->c(Lkit;Ljava/util/concurrent/Executor;)V

    iget-object v2, v2, Lkiu;->c:Lnou;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, v10, Lkji;->b:Lkaq;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Awaiting required outputs for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v12

    new-instance v13, Lkjg;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Lkjg;-><init>(Lkji;Ljuf;Lkiq;Ljava/util/List;Lkoo;Ljava/util/List;Ljava/util/List;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    invoke-static {v12, v13, v11}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
