.class public final Llys;
.super Llyl;


# instance fields
.field public final a:Lapt;

.field public final b:Laqa;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Llyl;-><init>()V

    iput-object p1, p0, Llys;->a:Lapt;

    new-instance v0, Llyn;

    invoke-direct {v0, p1}, Llyn;-><init>(Lapt;)V

    iput-object v0, p0, Llys;->b:Laqa;

    return-void
.end method


# virtual methods
.method public final a(Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llys;->a:Lapt;

    new-instance v1, Llym;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Llym;-><init>(Llys;I)V

    invoke-static {v0, v1, p1}, Laeo;->i(Lapt;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llys;->a:Lapt;

    new-instance v1, Llym;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Llym;-><init>(Llys;I)V

    invoke-static {v0, v1, p1}, Laeo;->i(Lapt;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Llvk;Loku;)Ljava/lang/Object;
    .locals 4

    const-string v0, "SELECT * FROM ResourceEntity WHERE status_uploadState IS ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v0

    invoke-static {p1}, Llyc;->w(Llvk;)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lapy;->e(IJ)V

    invoke-static {}, Lafj;->g()Landroid/os/CancellationSignal;

    move-result-object p1

    iget-object v2, p0, Llys;->a:Lapt;

    new-instance v3, Llyp;

    invoke-direct {v3, p0, v0}, Llyp;-><init>(Llys;Lapy;)V

    invoke-static {v2, v1, p1, v3, p2}, Ladr;->b(Lapt;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(JLlvk;Loku;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Llys;->a:Lapt;

    new-instance v7, Llze;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Llze;-><init>(Llys;Llvk;JI)V

    invoke-static {v0, v7, p4}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/HashMap;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x3e7

    const/4 v5, 0x3

    if-le v3, v4, :cond_1

    new-instance v2, Llym;

    invoke-direct {v2, v1, v5}, Llym;-><init>(Llys;I)V

    invoke-static {v0, v2}, Lafb;->t(Ljava/util/HashMap;Lomk;)V

    return-void

    :cond_1
    invoke-static {}, Lafc;->l()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT `resourceOnDeviceId`,`isAttachment`,`id`,`contentType`,`provenance`,`onDeviceSize`,`uploadTransferHandle`,`blobstoreId`,`contentHash`,`onDeviceId`,`status_addedToAirlockEpochTimestamp`,`status_uploadToF250RequestedEpochTimestamp`,`status_uploadToF250CompletedEpochTimestamp`,`status_airlockFileState`,`status_uploadState`,`status_uploadProgressPercent` FROM `AnnotachmentEntity` WHERE `resourceOnDeviceId` IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-nez v2, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    :goto_0
    invoke-static {v3, v6}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v3

    if-nez v2, :cond_3

    invoke-virtual {v3, v4}, Lapy;->f(I)V

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-nez v7, :cond_4

    invoke-virtual {v3, v6}, Lapy;->f(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lapy;->e(IJ)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    iget-object v2, v1, Llys;->a:Lapt;

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "resourceOnDeviceId"

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_11

    :cond_6
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    move-object v7, v8

    goto :goto_5

    :cond_7
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_5
    if-eqz v7, :cond_6

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Llyc;->v(I)Lluo;

    move-result-object v12

    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object v9, v8

    goto :goto_6

    :cond_8
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_6
    invoke-static {v9}, Llyc;->q(Ljava/lang/String;)Llun;

    move-result-object v13

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v14, v8

    goto :goto_7

    :cond_9
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    :goto_7
    const/4 v9, 0x4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object v9, v8

    goto :goto_8

    :cond_a
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    :goto_8
    invoke-static {v9}, Llyc;->d([B)Lobn;

    move-result-object v15

    const/4 v9, 0x5

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v9, 0x6

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v18, v8

    goto :goto_9

    :cond_b
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v9

    :goto_9
    const/4 v9, 0x7

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v19, v8

    goto :goto_a

    :cond_c
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    :goto_a
    const/16 v9, 0x8

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v20, v8

    goto :goto_b

    :cond_d
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v9

    :goto_b
    const/16 v9, 0x9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const/16 v9, 0xa

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_e

    move-object v9, v8

    goto :goto_c

    :cond_e
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :goto_c
    invoke-static {v9}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v25

    const/16 v9, 0xb

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_f

    move-object v9, v8

    goto :goto_d

    :cond_f
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :goto_d
    invoke-static {v9}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v26

    const/16 v9, 0xc

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_10

    goto :goto_e

    :cond_10
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_e
    invoke-static {v8}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v27

    const/16 v8, 0xd

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Llyc;->m(I)Llul;

    move-result-object v28

    const/16 v8, 0xe

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Llyc;->n(I)Llvk;

    move-result-object v29

    const/16 v8, 0xf

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v30

    new-instance v21, Llwz;

    move-object/from16 v24, v21

    invoke-direct/range {v24 .. v31}, Llwz;-><init>(Lnyy;Lnyy;Lnyy;Llul;Llvk;D)V

    new-instance v8, Llwq;

    move-object v9, v8

    invoke-direct/range {v9 .. v23}, Llwq;-><init>(JLluo;Llun;Ljava/lang/String;Lobn;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Llwz;J)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_11
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method
