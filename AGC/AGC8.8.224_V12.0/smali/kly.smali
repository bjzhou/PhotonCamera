.class public final Lkly;
.super Ljava/lang/Object;

# interfaces
.implements Lklp;


# instance fields
.field private final a:Lklo;

.field private final b:Lkbc;

.field private final c:Lkaq;

.field private final d:Loja;

.field private final e:Lbkb;


# direct methods
.method public constructor <init>(Lbkb;Lklo;Lkbc;Lkaq;[B[B[B[B)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkly;->e:Lbkb;

    iput-object p2, p0, Lkly;->a:Lklo;

    iput-object p3, p0, Lkly;->b:Lkbc;

    const-string p1, "VerifiedCamLstPrdr"

    invoke-interface {p4, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkly;->c:Lkaq;

    new-instance p1, Lpo;

    const/16 p2, 0xd

    invoke-direct {p1, p0, p2}, Lpo;-><init>(Lkly;I)V

    invoke-static {p1}, Lljr;->aP(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Lkly;->d:Loja;

    return-void
.end method

.method private static final d(Ljava/lang/IllegalStateException;)Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    goto :goto_0

    :cond_0
    instance-of v0, v0, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/IllegalArgumentException;

    return-object p0
.end method

.method private final e()Lloi;
    .locals 1

    iget-object v0, p0, Lkly;->d:Loja;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lloi;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lkly;->e()Lloi;

    move-result-object v0

    iget-object v0, v0, Lloi;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lkly;->e()Lloi;

    move-result-object v0

    iget-object v0, v0, Lloi;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Lloi;
    .locals 11

    const-string v0, "Failed to read the camera list."

    iget-object v1, p0, Lkly;->b:Lkbc;

    const-string v2, "verifyCameras"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    const-string v1, "Failed to load cameraIds from CameraBackendId(value=CXCP-Camera2)"

    :try_start_0
    iget-object v2, p0, Lkly;->e:Lbkb;

    invoke-virtual {v2}, Lbkb;->v()Lva;

    move-result-object v2

    iget-object v2, v2, Lva;->a:Ljava/lang/Object;

    check-cast v2, Ltf;

    invoke-virtual {v2}, Ltf;->a()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load cameraIds from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CameraBackendId(value=CXCP-Camera2)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "CXCP"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v2, :cond_1

    sget-object v2, Lojx;->a:Lojx;

    goto :goto_0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrc;

    iget-object v5, v5, Lrc;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lkly;->e:Lbkb;

    invoke-virtual {v6, v5}, Lbkb;->u(Ljava/lang/String;)Lrd;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v6}, Lrd;->b()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrc;

    iget-object v8, v8, Lrc;->a:Ljava/lang/String;

    invoke-static {v8}, Lrc;->a(Ljava/lang/String;)Lrc;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v5}, Lrc;->a(Ljava/lang/String;)Lrc;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_3
    iget-object v9, p0, Lkly;->e:Lbkb;

    invoke-virtual {v9, v8}, Lbkb;->u(Ljava/lang/String;)Lrd;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_4
    invoke-static {v7}, Lkly;->d(Ljava/lang/IllegalStateException;)Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v8, v7}, Lkof;->f(Ljava/lang/String;Ljava/lang/Throwable;)Lklm;

    move-result-object v7

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lkly;->c:Lkaq;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed Physical camera Id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Failed logical camera Id: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lkaq;->i(Ljava/lang/String;)V

    invoke-static {v5}, Lrc;->a(Ljava/lang/String;)Lrc;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-static {v6}, Lkly;->d(Ljava/lang/IllegalStateException;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v5, v6}, Lkof;->f(Ljava/lang/String;Ljava/lang/Throwable;)Lklm;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lrc;->a(Ljava/lang/String;)Lrc;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lkly;->c:Lkaq;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed logical camera Id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lkaq;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lkly;->c:Lkaq;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed camera ids "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lkaq;->i(Ljava/lang/String;)V

    iget-object v4, p0, Lkly;->a:Lklo;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lljr;->aj(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Lklo;->aD(Ljava/util/List;)V

    :cond_5
    invoke-static {v2}, Lljr;->ak(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrc;

    iget-object v4, v4, Lrc;->a:Ljava/lang/String;

    invoke-static {v4}, Lkll;->b(Ljava/lang/String;)Lkll;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lljr;->aj(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lloi;

    invoke-direct {v3, v1, v2}, Lloi;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lkly;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-object v3

    :cond_7
    :try_start_5
    iget-object v1, p0, Lkly;->c:Lkaq;

    const-string v2, "No working cameras available!"

    invoke-interface {v1, v2}, Lkaq;->b(Ljava/lang/String;)V

    new-instance v1, Lkln;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lljr;->aj(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lkln;-><init>(Ljava/util/List;)V

    throw v1

    :cond_8
    iget-object v1, p0, Lkly;->c:Lkaq;

    const-string v2, "No cameras available!"

    invoke-interface {v1, v2}, Lkaq;->d(Ljava/lang/String;)V

    new-instance v1, Lklr;

    invoke-direct {v1}, Lklr;-><init>()V

    throw v1
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lkly;->c:Lkaq;

    invoke-interface {v2, v0}, Lkaq;->b(Ljava/lang/String;)V

    new-instance v2, Lklq;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Lklq;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    iget-object v1, p0, Lkly;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
