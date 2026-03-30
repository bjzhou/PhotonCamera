.class public final Lpoj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpoa;


# instance fields
.field private final a:Lpdf;

.field private final b:Lpcu;

.field private final c:Ltxs;

.field private final d:Lmjv;

.field private final e:Lfdn;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()Lnar;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    check-cast p0, Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpoj;->c:Ltxs;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfdn;Lmjv;Lpdf;Lpcu;)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p4, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpoj;->b:Lpcu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Leot;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, p2}, Leot;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p2, p1}, Ltxz;-><init>(Luaz;)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iput-object p1, p0, Lpoj;->e:Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    iput-object p3, p0, Lpoj;->a:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lpoj;->c:Ltxs;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 p2, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lpoj;->d:Lmjv;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    const-string p1, "VerifiedCamLstPrdr"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    new-instance p2, Ltxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop
.end method

.method private static final d(Ljava/lang/IllegalStateException;)Ljava/lang/Throwable;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    instance-of v0, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    :goto_15
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lpoj;->c()Lnar;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lpoj;->23ce148e54b083367f51e25c7971761em()Lnar;

    move-result-object p0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "camera.lenstoggles_enable"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/util/List;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lpoj;->23ce148e54b083367f51e25c7971761em()Lnar;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lnar;
    .locals 18

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const-string v3, "verifyCameras"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    return-object v4

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, v1, Lpoj;->b:Lpcu;

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    sget-object v3, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->RqpgelEbnn:Ljava/lang/String;

    nop

    invoke-interface {v0, v3}, Lpcu;->b(Ljava/lang/String;)V

    new-instance v0, Lpnz;

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    nop

    invoke-static {v3}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    nop

    invoke-direct {v0, v3}, Lpnz;-><init>(Ljava/util/List;)V

    throw v0

    nop

    :cond_1
    iget-object v0, v1, Lpoj;->b:Lpcu;

    nop

    nop

    nop

    nop

    const-string v3, "No cameras available!"

    nop

    invoke-interface {v0, v3}, Lpcu;->d(Ljava/lang/String;)V

    new-instance v0, Lpoc;

    nop

    invoke-direct {v0}, Lpoc;-><init>()V

    throw v0

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_19

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v11, Lsai;

    nop

    invoke-direct {v11, v8}, Lsai;-><init>([C)V

    invoke-virtual {v11, v10}, Lsai;->k(Ljava/lang/String;)V

    invoke-static {v0}, Lpoj;->d(Ljava/lang/IllegalStateException;)Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    iput-object v0, v11, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v11}, Lsai;->j()Lpny;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lpoj;->b:Lpcu;

    nop

    nop

    new-instance v8, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->OoQLYbVjDay:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Failed logical camera Id: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v8}, Lpcu;->h(Ljava/lang/String;)V

    new-instance v0, Loz;

    nop

    nop

    nop

    invoke-direct {v0, v7}, Loz;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1c

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    new-instance v9, Lsai;

    nop

    nop

    invoke-direct {v9, v8}, Lsai;-><init>([C)V

    invoke-virtual {v9, v7}, Lsai;->k(Ljava/lang/String;)V

    invoke-static {v0}, Lpoj;->d(Ljava/lang/IllegalStateException;)Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    iput-object v0, v9, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v9}, Lsai;->j()Lpny;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Loz;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v7}, Loz;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lpoj;->b:Lpcu;

    nop

    nop

    nop

    nop

    const-string v8, "Failed logical camera Id: "

    nop

    nop

    nop

    invoke-static {v7, v8}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v7}, Lpcu;->h(Ljava/lang/String;)V

    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lpoj;->b:Lpcu;

    nop

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed camera ids "

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v0, v6}, Lpcu;->h(Ljava/lang/String;)V

    iget-object v0, v1, Lpoj;->d:Lmjv;

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    nop

    nop

    invoke-static {v6}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Lpny;

    nop

    nop

    nop

    nop

    sget v8, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v7, Lpny;->a:Ljava/lang/String;

    nop

    nop

    nop

    sget-object v14, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v15

    nop

    nop

    invoke-static {v7}, Lpdr;->b(Lpny;)Lpdr;

    move-result-object v16

    nop

    nop

    nop

    nop

    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0xb

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    move-object v7, v0

    nop

    nop

    invoke-virtual/range {v7 .. v17}, Lmjv;->s(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lpdr;Z)V

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    invoke-static {v3}, Lrkm;->aD(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    nop

    invoke-interface {v0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_4

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Loz;

    nop

    nop

    iget-object v4, v4, Loz;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    nop

    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v4, Lnar;

    nop

    nop

    nop

    invoke-direct {v4, v3, v0}, Lnar;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    goto :goto_9

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    :try_start_2
    iget-object v3, v1, Lpoj;->b:Lpcu;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lpcu;->b(Ljava/lang/String;)V

    new-instance v3, Lpob;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2, v4, v0}, Lpob;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_19

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_3
    iget-object v11, v1, Lpoj;->e:Lfdn;

    nop

    invoke-virtual {v11, v10}, Lfdn;->Z(Ljava/lang/String;)Lrp;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "Failed to read the camera list."

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    iget-object v0, v1, Lpoj;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    :goto_17
    iget-object v0, v1, Lpoj;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v0, v1, Lpoj;->e:Lfdn;

    nop

    nop

    invoke-virtual {v0, v7}, Lfdn;->Z(Ljava/lang/String;)Lrp;

    move-result-object v0

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Lrp;->b()Ljava/util/Set;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_a

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    check-cast v10, Loz;

    nop

    iget-object v10, v10, Loz;->a:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v11, Loz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v10}, Loz;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    if-eqz v11, :cond_5

    nop

    new-instance v10, Loz;

    nop

    nop

    invoke-direct {v10, v7}, Loz;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    const-string v0, "Failed to load cameraIds from CameraBackendId(value=CXCP-Camera2)"

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    const-string v3, "camera.lenstoggles_enable"

    nop

    nop

    nop

    invoke-static {v3}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    invoke-static {}, Lcom/a;->ad()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v3, v1, Lpoj;->e:Lfdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfdn;->ad()Lhwy;

    move-result-object v3

    nop

    nop

    nop

    iget-object v3, v3, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    check-cast v3, Lrx;

    nop

    nop

    nop

    invoke-virtual {v3}, Lrx;->a()Ljava/util/List;

    move-result-object v3

    nop

    nop

    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    const-string v4, "CameraBackendId(value=CXCP-Camera2)"

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const-string v4, "CXCP"

    nop

    nop

    nop

    nop

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v3, :cond_9

    nop

    sget-object v3, Ltyw;->a:Ltyw;

    nop

    nop

    nop

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/util/LinkedHashSet;

    nop

    nop

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    :cond_a
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    if-eqz v0, :cond_2

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Loz;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v0, Loz;->a:Ljava/lang/String;

    nop
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, v1, Lpoj;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method
