.class public final Lwm;
.super Ljava/lang/Object;

# interfaces
.implements Lsb;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lrd;Lqz;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Lrd;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    :goto_0
    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x4

    if-eq v6, v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v9, v1, Lqz;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbkb;

    iget-object v11, v10, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lrv;

    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    sget-object v13, Lwn;->c:Loon;

    invoke-virtual {v13}, Loon;->b()I

    move-result v15

    iget-object v13, v12, Lrv;->a:Landroid/util/Size;

    iget v14, v12, Lrv;->b:I

    iget-object v7, v1, Lqz;->a:Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v16

    check-cast v19, Ljava/lang/Integer;

    const/16 v16, 0x0

    if-eqz v8, :cond_8

    move-object/from16 v20, v6

    instance-of v6, v12, Lru;

    if-eqz v6, :cond_6

    move-object v6, v12

    check-cast v6, Lru;

    goto :goto_5

    :cond_6
    move-object/from16 v6, v16

    :goto_5
    if-nez v6, :cond_7

    goto :goto_6

    :cond_7
    throw v16

    :cond_8
    move-object/from16 v20, v6

    :goto_6
    instance-of v6, v12, Lrt;

    if-eqz v6, :cond_9

    move-object v6, v12

    check-cast v6, Lrt;

    goto :goto_7

    :cond_9
    move-object/from16 v6, v16

    :goto_7
    if-nez v6, :cond_a

    new-instance v6, Lwk;

    move/from16 v17, v14

    move-object v14, v6

    move-object/from16 v16, v13

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v19}, Lwk;-><init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v3, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v20

    goto :goto_4

    :cond_a
    throw v16

    :cond_b
    move-object/from16 v20, v6

    goto :goto_4

    :cond_c
    move-object/from16 v20, v6

    goto :goto_3

    :cond_d
    iget-object v6, v1, Lqz;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_11

    iget-object v8, v1, Lqz;->b:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbkb;

    iget-object v9, v8, Lbkb;->a:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrv;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lwk;

    new-instance v12, Lwl;

    sget-object v13, Lwn;->b:Loon;

    invoke-virtual {v13}, Loon;->b()I

    move-result v13

    iget-object v14, v11, Lwk;->a:Landroid/util/Size;

    iget v15, v11, Lwk;->b:I

    iget-object v11, v11, Lwk;->c:Ljava/lang/String;

    invoke-direct {v12, v13, v14, v15, v11}, Lwl;-><init>(ILandroid/util/Size;ILjava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    new-instance v9, Lrj;

    sget-object v11, Lwn;->a:Loon;

    invoke-virtual {v11}, Loon;->b()I

    move-result v11

    invoke-direct {v9, v11, v10}, Lrj;-><init>(ILjava/util/List;)V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lwl;

    iput-object v9, v11, Lwl;->e:Lrj;

    goto :goto_a

    :cond_f
    iget-object v8, v8, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrv;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Lwk;

    iget-object v10, v10, Lwk;->e:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    :cond_11
    iput-object v4, v0, Lwm;->c:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v4}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrj;

    iget v4, v4, Lrj;->a:I

    invoke-static {v4}, Lsc;->a(I)Lsc;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_12
    invoke-static {v1}, Lljr;->al(Ljava/lang/Iterable;)Ljava/util/Set;

    iput-object v5, v0, Lwm;->a:Ljava/util/Map;

    iget-object v1, v0, Lwm;->c:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrj;

    iget-object v4, v4, Lrj;->b:Ljava/util/List;

    invoke-static {v3, v4}, Lljr;->an(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_d

    :cond_13
    iput-object v3, v0, Lwm;->d:Ljava/util/List;

    iput-object v2, v0, Lwm;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamGraphImpl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwm;->a:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
