.class public final Lbbc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    iput-object v0, p0, Lbbc;->c:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbbc;->b:Ljava/lang/Object;

    new-instance v0, Lxc;

    invoke-direct {v0}, Lxc;-><init>()V

    iput-object v0, p0, Lbbc;->d:Ljava/lang/Object;

    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    iput-object v0, p0, Lbbc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lva;[B)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lbao;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p3, v0, p2, v1}, Lbao;-><init>(Landroid/content/Context;Lva;[B)V

    new-instance v0, Lbaq;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, p2, v1}, Lbaq;-><init>(Landroid/content/Context;Lva;[B)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lbay;

    invoke-direct {v3, v2, p2, v1}, Lbay;-><init>(Landroid/content/Context;Lva;[B)V

    new-instance v2, Lbba;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p1, p2, v1}, Lbba;-><init>(Landroid/content/Context;Lva;[B)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbbc;->a:Ljava/lang/Object;

    iput-object v0, p0, Lbbc;->b:Ljava/lang/Object;

    iput-object v3, p0, Lbbc;->c:Ljava/lang/Object;

    iput-object v2, p0, Lbbc;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lapp;[I[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbc;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbbc;->c:Ljava/lang/Object;

    iput-object p3, p0, Lbbc;->d:Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object p1, Lojz;->a:Lojz;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lljr;->S(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lbbc;->b:Ljava/lang/Object;

    check-cast p2, [I

    array-length p1, p2

    check-cast p3, [Ljava/lang/String;

    array-length p2, p3

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lbby;Lti;Lne;Lre;[B[B)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbc;->d:Ljava/lang/Object;

    iput-object p2, p0, Lbbc;->a:Ljava/lang/Object;

    iput-object p3, p0, Lbbc;->b:Ljava/lang/Object;

    iput-object p4, p0, Lbbc;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbc;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbbc;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbbc;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lbbc;->e()Lva;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lbbc;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load the default backend for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CameraBackendId(value=CXCP-Camera2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "! Available backends are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Laee;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Laee;-><init>(I)V

    iput-object p1, p0, Lbbc;->b:Ljava/lang/Object;

    new-instance p1, Lxf;

    invoke-direct {p1}, Lxf;-><init>()V

    iput-object p1, p0, Lbbc;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbbc;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lbbc;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lbbc;->a:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbbc;->a:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbbc;->a:Ljava/lang/Object;

    check-cast v0, Lxf;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbbc;->a:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lbbc;->c(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This graph contains cyclic dependencies"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final d(Ljava/lang/String;IJLoku;)Ljava/lang/Object;
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p5

    instance-of v1, v3, Ltq;

    if-eqz v1, :cond_0

    move-object v1, v3

    check-cast v1, Ltq;

    iget v2, v1, Ltq;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v2, v4

    if-eqz v5, :cond_0

    sub-int/2addr v2, v4

    iput v2, v1, Ltq;->f:I

    goto :goto_0

    :cond_0
    new-instance v8, Ltq;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Ltq;-><init>(Lbbc;Loku;[B[B[B)V

    :goto_0
    iget-object v2, v1, Ltq;->e:Ljava/lang/Object;

    sget-object v3, Lolc;->a:Lolc;

    iget v4, v1, Ltq;->f:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Ltq;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lsj;

    iget-object v0, v1, Ltq;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :pswitch_1
    iget-wide v9, v1, Ltq;->d:J

    iget v0, v1, Ltq;->c:I

    iget-object v4, v1, Ltq;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v11, v1, Ltq;->a:Ljava/lang/Object;

    check-cast v11, Lbbc;

    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    move v12, v0

    move-wide v13, v9

    move-object v0, v11

    goto :goto_1

    :pswitch_2
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v2, v7, Lbbc;->a:Ljava/lang/Object;

    iput-object v7, v1, Ltq;->a:Ljava/lang/Object;

    iput-object v0, v1, Ltq;->b:Ljava/lang/Object;

    move/from16 v4, p2

    iput v4, v1, Ltq;->c:I

    move-wide/from16 v9, p3

    iput-wide v9, v1, Ltq;->d:J

    iput v6, v1, Ltq;->f:I

    invoke-interface {v2, v0, v1}, Lti;->b(Ljava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_7

    move v12, v4

    move-wide v13, v9

    move-object v4, v0

    move-object v0, v7

    :goto_1
    move-object v11, v2

    check-cast v11, Lrd;

    new-instance v2, Lsj;

    iget-object v9, v0, Lbbc;->b:Ljava/lang/Object;

    iget-object v9, v0, Lbbc;->c:Ljava/lang/Object;

    move-object v9, v2

    move-object v10, v4

    invoke-direct/range {v9 .. v14}, Lsj;-><init>(Ljava/lang/String;Lrd;IJ)V

    :try_start_1
    iget-object v0, v0, Lbbc;->d:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v0

    check-cast v9, Lbby;

    iget-object v9, v9, Lbby;->a:Ljava/lang/Object;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/CameraManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CameraDevice-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "#openCamera"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lbby;

    iget-object v0, v0, Lbby;->b:Ljava/lang/Object;

    check-cast v0, Ldqx;

    invoke-virtual {v0}, Ldqx;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v9, v4, v0, v2}, Lst;->h(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v2, Lsj;->b:Louo;

    new-instance v9, Ltr;

    invoke-direct {v9, v8}, Ltr;-><init>(Loku;)V

    iput-object v4, v1, Ltq;->a:Ljava/lang/Object;

    iput-object v2, v1, Ltq;->b:Ljava/lang/Object;

    iput v5, v1, Ltq;->f:I

    invoke-static {v0, v9, v1}, Lone;->m(Lott;Lomo;Loku;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eq v0, v3, :cond_5

    move-object v3, v2

    move-object v1, v4

    move-object v2, v0

    :goto_2
    :try_start_4
    check-cast v2, Ljo;

    instance-of v0, v2, Ltp;

    if-eqz v0, :cond_1

    new-instance v0, Luc;

    invoke-direct {v0, v3, v8, v5}, Luc;-><init>(Lsj;Lqy;I)V

    return-object v0

    :cond_1
    instance-of v0, v2, Lto;

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lsj;->a()V

    new-instance v0, Luc;

    check-cast v2, Lto;

    iget-object v2, v2, Lto;->a:Lqy;

    invoke-direct {v0, v8, v2, v6}, Luc;-><init>(Lsj;Lqy;I)V

    return-object v0

    :cond_2
    instance-of v0, v2, Ltn;

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lsj;->a()V

    new-instance v0, Luc;

    check-cast v2, Ltn;

    iget-object v2, v2, Ltn;->a:Lqy;

    invoke-direct {v0, v8, v2, v6}, Luc;-><init>(Lsj;Lqy;I)V

    return-object v0

    :cond_3
    instance-of v0, v2, Lts;

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lsj;->a()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected CameraState: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_3
    throw v0

    :cond_4
    new-instance v0, Lojb;

    invoke-direct {v0}, Lojb;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_5
    return-object v3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v1, v4

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CXCP"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lgi;->b(Ljava/lang/Throwable;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lqy;->b(II)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lsh;

    invoke-static {v1}, Lqy;->a(I)Lqy;

    move-result-object v1

    const/4 v4, 0x6

    invoke-direct {v2, v4, v1, v0, v5}, Lsh;-><init>(ILqy;Ljava/lang/Throwable;I)V

    invoke-virtual {v3, v8, v2}, Lsj;->b(Landroid/hardware/camera2/CameraDevice;Lsh;)V

    :cond_6
    new-instance v1, Luc;

    invoke-static {v0}, Lgi;->b(Ljava/lang/Throwable;)I

    move-result v0

    invoke-static {v0}, Lqy;->a(I)Lqy;

    move-result-object v0

    invoke-direct {v1, v8, v0, v6}, Luc;-><init>(Lsj;Lqy;I)V

    return-object v1

    :cond_7
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lva;
    .locals 4

    iget-object v0, p0, Lbbc;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbbc;->a:Ljava/lang/Object;

    invoke-static {}, Lqw;->a()Lqw;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lva;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lbbc;->b:Ljava/lang/Object;

    invoke-static {}, Lqw;->a()Lqw;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "CXCP-Camera2"

    invoke-static {v2, v2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lqw;->a()Lqw;

    move-result-object v2

    iget-object v3, p0, Lbbc;->a:Ljava/lang/Object;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected backend id! Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CameraBackendId(value=CXCP-Camera2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but it was actually "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CameraBackendId(value=CXCP-Camera2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v0

    check-cast v1, Lva;

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
