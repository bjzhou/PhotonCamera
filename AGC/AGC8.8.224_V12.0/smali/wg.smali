.class public final Lwg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ltd;

.field private final c:I

.field private final d:Loom;

.field private final e:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Ltd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwg;->b:Ltd;

    sget-object p1, Lwh;->a:Loon;

    invoke-virtual {p1}, Loon;->b()I

    move-result p1

    iput p1, p0, Lwg;->c:I

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->h(Z)Loom;

    move-result-object p1

    iput-object p1, p0, Lwg;->d:Loom;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwg;->a:Ljava/util/List;

    new-instance p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {p1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lwg;)V

    iput-object p1, p0, Lwg;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lwg;->d:Loom;

    invoke-virtual {v0}, Loom;->b()Z

    return-void
.end method

.method public final b(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lwg;->d:Loom;

    invoke-virtual {v0}, Loom;->a()Z

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rejecting requests "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Request processor is closed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CXCP"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, v1, Lwg;->b:Ltd;

    iget-object v10, v1, Lwg;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v11, v5}, Landroid/util/ArrayMap;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iget-object v6, v0, Ltd;->a:Ltl;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3e

    instance-of v6, v6, Lsf;

    if-eqz v6, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx;

    iget-object v6, v5, Lrx;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsc;

    iget v7, v7, Lsc;->a:I

    iget-object v7, v0, Ltd;->c:Lsb;

    check-cast v7, Lwm;

    iget-object v7, v7, Lwm;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lwl;

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v5, v5, Lrx;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsc;

    iget v6, v6, Lsc;->a:I

    iget-object v6, v0, Ltd;->c:Lsb;

    check-cast v6, Lwm;

    iget-object v6, v6, Lwm;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lwl;

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    const-string v0, "CXCP"

    const-string v4, "Preview and/or Video stream use cases must be present for high speed sessions."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_b

    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrx;

    iget-object v14, v6, Lrx;->a:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, 0x0

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lsc;

    iget v9, v9, Lsc;->a:I

    invoke-static {v9}, Lsc;->a(I)Lsc;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    iget-object v3, v0, Ltd;->b:Ljava/util/Map;

    invoke-static {v9}, Lsc;->a(I)Lsc;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    if-eqz v3, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Binding "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lsc;->b(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lsc;->a(I)Lsc;

    move-result-object v13

    invoke-interface {v12, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lsc;->a(I)Lsc;

    move-result-object v9

    invoke-interface {v5, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v16, 0x1

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    if-nez v16, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Failed to bind any surfaces for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    goto/16 :goto_b

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_c
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Building CaptureRequest for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v6, v0, Ltd;->a:Ltl;

    invoke-interface {v6}, Ltl;->f()Ltm;

    move-result-object v6
    :try_end_0
    .catch Lub; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    check-cast v6, Lsg;

    iget-object v6, v6, Lsg;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Lub; {:try_start_2 .. :try_end_2} :catch_3

    iget-object v9, v4, Lrx;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v13, 0x0

    :cond_d
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lsc;

    iget v14, v14, Lsc;->a:I

    invoke-static {v14}, Lsc;->a(I)Lsc;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/Surface;

    if-eqz v14, :cond_d

    invoke-virtual {v6, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/4 v13, 0x1

    goto :goto_7

    :cond_e
    if-eqz v13, :cond_13

    move-object/from16 v9, p3

    invoke-static {v6, v9}, Ljc;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    iget-object v13, v4, Lrx;->b:Ljava/util/Map;

    invoke-static {v6, v13}, Ljc;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    move-object/from16 v13, p4

    invoke-static {v6, v13}, Ljc;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    sget-object v14, Lte;->c:Looo;

    invoke-virtual {v14}, Looo;->c()J

    move-result-wide v14

    move-object/from16 v16, v3

    invoke-static {v14, v15}, Lry;->a(J)Lry;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Ltd;->a:Ltl;

    move-object/from16 v18, v5

    instance-of v5, v6, Lsf;

    if-eqz v5, :cond_12

    check-cast v6, Lsf;

    :try_start_3
    iget-object v5, v6, Lsf;->b:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    iget-object v5, v4, Lrx;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_9

    :cond_f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsc;

    iget v6, v6, Lsc;->a:I

    iget-object v6, v0, Ltd;->c:Lsb;

    check-cast v6, Lwm;

    iget-object v6, v6, Lwm;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lwl;

    goto :goto_8

    :cond_11
    :goto_9
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ltj;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {v6, v4, v5}, Ltj;-><init>(Lrx;I)V

    invoke-static {v14, v15}, Lry;->a(J)Lry;

    move-result-object v3

    invoke-interface {v11, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    move-object/from16 v5, v18

    goto/16 :goto_6

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to createHighSpeedRequestList from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lse;->a:Ltm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because the output surface was destroyed before calling createHighSpeedRequestList."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CXCP"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lub;

    invoke-direct {v2, v0}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to createHighSpeedRequestList. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lse;->a:Ltm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " may be closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CXCP"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lub;

    invoke-direct {v2, v0}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_12
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ltj;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ltj;-><init>(Lrx;I)V

    invoke-static {v14, v15}, Lry;->a(J)Lry;

    move-result-object v4

    invoke-interface {v11, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    move-object/from16 v5, v18

    goto/16 :goto_6

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    :try_start_4
    instance-of v3, v0, Ljava/lang/IllegalArgumentException;

    if-nez v3, :cond_15

    instance-of v3, v0, Ljava/lang/IllegalStateException;

    if-nez v3, :cond_15

    instance-of v3, v0, Landroid/hardware/camera2/CameraAccessException;

    if-nez v3, :cond_15

    instance-of v3, v0, Ljava/lang/SecurityException;

    if-nez v3, :cond_15

    instance-of v3, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v3, :cond_14

    goto :goto_a

    :cond_14
    throw v0

    :cond_15
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v3, Lub;

    invoke-direct {v3, v0}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Lub; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Failed to create a CaptureRequest.Builder from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RequestTemplate(value=1)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    goto :goto_b

    :cond_16
    new-instance v0, Ltc;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v0

    move/from16 v6, p1

    move-object/from16 v9, p5

    invoke-direct/range {v5 .. v14}, Ltc;-><init>(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/util/Map;Ljava/util/Map;[B[B)V

    move-object v9, v0

    :goto_b
    if-nez v9, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting requests "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Could not create the capture sequence."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CXCP"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_17
    iget-object v0, v1, Lwg;->d:Loom;

    invoke-virtual {v0}, Loom;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, v9, Ltc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3b

    iget-boolean v0, v9, Ltc;->a:Z

    if-nez v0, :cond_18

    iget-object v2, v1, Lwg;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, Lwg;->a:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    goto :goto_c

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_18
    :goto_c
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submitting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1a

    iget-object v3, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltj;

    iget-object v4, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v4, :cond_19

    iget-object v6, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrw;

    invoke-interface {v6, v3}, Lrw;->c(Ltj;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1a
    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1c

    iget-object v3, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltj;

    iget-object v4, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v4, Lrx;

    iget-object v4, v4, Lrx;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_1b

    iget-object v6, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v6, Lrx;

    iget-object v6, v6, Lrx;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrw;

    invoke-interface {v6, v3}, Lrw;->c(Ltj;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    monitor-enter v9
    :try_end_6
    .catch Lub; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v0, v1, Lwg;->d:Loom;

    invoke-virtual {v0}, Loom;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not submit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was closed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catch Lub; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iget-boolean v0, v9, Ltc;->a:Z

    if-nez v0, :cond_20

    iget-object v0, v1, Lwg;->a:Ljava/util/List;

    monitor-enter v0

    iget-object v2, v1, Lwg;->a:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1e

    iget-object v3, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltj;

    iget-object v4, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_1d

    iget-object v6, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrw;

    iget-object v7, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    invoke-interface {v6, v7}, Lrw;->a(Lrx;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1e
    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_20

    iget-object v3, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltj;

    iget-object v4, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v4, Lrx;

    iget-object v4, v4, Lrx;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_1f

    iget-object v6, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v6, Lrx;

    iget-object v6, v6, Lrx;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrw;

    iget-object v7, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    invoke-interface {v6, v7}, Lrw;->a(Lrx;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_20
    const/4 v2, 0x0

    return v2

    :cond_21
    :try_start_9
    iget-object v0, v1, Lwg;->b:Ltd;

    iget-object v2, v9, Ltc;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    iget-object v2, v0, Ltd;->a:Ltl;

    instance-of v4, v2, Lsf;

    if-nez v4, :cond_23

    iget-boolean v4, v9, Ltc;->a:Z

    if-eqz v4, :cond_22

    iget-object v4, v9, Ltc;->b:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    iget-object v0, v0, Ltd;->d:Ldqx;

    invoke-virtual {v0}, Ldqx;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-interface {v2, v4, v9, v0}, Ltl;->d(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    goto :goto_15

    :cond_22
    iget-object v4, v9, Ltc;->b:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    iget-object v0, v0, Ltd;->d:Ldqx;

    invoke-virtual {v0}, Ldqx;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-interface {v2, v4, v9, v0}, Ltl;->a(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    goto :goto_15

    :cond_23
    iget-boolean v2, v9, Ltc;->a:Z

    if-eqz v2, :cond_24

    iget-object v2, v0, Ltd;->a:Ltl;

    iget-object v4, v9, Ltc;->b:Ljava/util/List;

    iget-object v0, v0, Ltd;->d:Ldqx;

    invoke-virtual {v0}, Ldqx;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-interface {v2, v4, v9, v0}, Ltl;->c(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    goto :goto_15

    :cond_24
    iget-object v2, v0, Ltd;->a:Ltl;

    iget-object v4, v9, Ltc;->b:Ljava/util/List;

    iget-object v0, v0, Ltd;->d:Ldqx;

    invoke-virtual {v0}, Ldqx;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-interface {v2, v4, v9, v0}, Ltl;->b(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Ltc;->e:Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v9

    const/4 v2, -0x1

    if-eq v0, v2, :cond_29

    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v0, :cond_26

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltj;

    iget-object v4, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v4, :cond_25

    iget-object v7, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrw;

    invoke-interface {v7, v2}, Lrw;->d(Ltj;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_26
    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v0, :cond_28

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltj;

    iget-object v4, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v4, Lrx;

    iget-object v4, v4, Lrx;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v4, :cond_27

    iget-object v7, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    iget-object v7, v7, Lrx;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrw;

    invoke-interface {v7, v2}, Lrw;->d(Ltj;)V
    :try_end_a
    .catch Lub; {:try_start_a .. :try_end_a} :catch_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_28
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submitted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Lub; {:try_start_b .. :try_end_b} :catch_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v15, 0x1

    goto :goto_1a

    :catchall_1
    move-exception v0

    const/4 v15, 0x1

    goto/16 :goto_1f

    :catch_4
    move-exception v0

    const/4 v15, 0x1

    goto/16 :goto_24

    :catch_5
    move-exception v0

    const/4 v15, 0x1

    goto/16 :goto_29

    :cond_29
    :try_start_c
    const-string v0, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not submit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", SequenceNumber was -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lub; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_1a
    if-nez v15, :cond_3a

    iget-boolean v0, v9, Ltc;->a:Z

    if-nez v0, :cond_3a

    iget-object v2, v1, Lwg;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_d
    iget-object v0, v1, Lwg;->a:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    monitor-exit v2

    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v0, :cond_2b

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltj;

    iget-object v4, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v4, :cond_2a

    iget-object v7, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrw;

    iget-object v8, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v8, Lrx;

    invoke-interface {v7, v8}, Lrw;->a(Lrx;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2b
    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v0, :cond_3a

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltj;

    iget-object v4, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v4, Lrx;

    iget-object v4, v4, Lrx;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v4, :cond_2c

    iget-object v7, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    iget-object v7, v7, Lrx;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrw;

    iget-object v8, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v8, Lrx;

    invoke-interface {v7, v8}, Lrw;->a(Lrx;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit v9

    throw v0
    :try_end_e
    .catch Lub; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    const/4 v15, 0x0

    :goto_1f
    if-nez v15, :cond_30

    iget-boolean v2, v9, Ltc;->a:Z

    if-nez v2, :cond_30

    iget-object v2, v1, Lwg;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_f
    iget-object v3, v1, Lwg;->a:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    monitor-exit v2

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v2, :cond_2e

    iget-object v3, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltj;

    iget-object v4, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v4, :cond_2d

    iget-object v7, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrw;

    iget-object v8, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v8, Lrx;

    invoke-interface {v7, v8}, Lrw;->a(Lrx;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_2e
    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v2, :cond_30

    iget-object v3, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltj;

    iget-object v4, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v4, Lrx;

    iget-object v4, v4, Lrx;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v4, :cond_2f

    iget-object v7, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    iget-object v7, v7, Lrx;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrw;

    iget-object v8, v3, Ltj;->a:Ljava/lang/Object;

    check-cast v8, Lrx;

    invoke-interface {v7, v8}, Lrw;->a(Lrx;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :catchall_5
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_30
    throw v0

    :catch_6
    move-exception v0

    const/4 v15, 0x0

    :goto_24
    if-nez v15, :cond_34

    iget-boolean v0, v9, Ltc;->a:Z

    if-nez v0, :cond_34

    iget-object v2, v1, Lwg;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_10
    iget-object v0, v1, Lwg;->a:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    monitor-exit v2

    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v0, :cond_32

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltj;

    iget-object v3, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_31

    iget-object v6, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrw;

    iget-object v7, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    invoke-interface {v6, v7}, Lrw;->a(Lrx;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_32
    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v0, :cond_38

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltj;

    iget-object v3, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v3, Lrx;

    iget-object v3, v3, Lrx;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_33

    iget-object v6, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v6, Lrx;

    iget-object v6, v6, Lrx;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrw;

    iget-object v7, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    invoke-interface {v6, v7}, Lrw;->a(Lrx;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :catchall_6
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_34
    const/4 v3, 0x0

    goto/16 :goto_2e

    :catch_7
    move-exception v0

    const/4 v15, 0x0

    :goto_29
    if-nez v15, :cond_39

    iget-boolean v0, v9, Ltc;->a:Z

    if-nez v0, :cond_39

    iget-object v2, v1, Lwg;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_11
    iget-object v0, v1, Lwg;->a:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    monitor-exit v2

    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v0, :cond_36

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltj;

    iget-object v3, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_35

    iget-object v6, v9, Ltc;->d:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrw;

    iget-object v7, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    invoke-interface {v6, v7}, Lrw;->a(Lrx;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_36
    iget-object v0, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v0, :cond_38

    iget-object v2, v9, Ltc;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltj;

    iget-object v3, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v3, Lrx;

    iget-object v3, v3, Lrx;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_37

    iget-object v6, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v6, Lrx;

    iget-object v6, v6, Lrx;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrw;

    iget-object v7, v2, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    invoke-interface {v6, v7}, Lrw;->a(Lrx;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_38
    const/4 v3, 0x0

    goto :goto_2e

    :catchall_7
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_39
    const/4 v3, 0x0

    :cond_3a
    :goto_2e
    return v3

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaptureSequence ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") has mismatched request and metadata lists!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting requests "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Request processor is closed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CXCP"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "build(...) should never be called with an empty request list!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "build(...) should never be called with an empty request list!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :goto_2f
    throw v0

    :goto_30
    goto :goto_2f
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GraphRequestProcessor-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwg;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
