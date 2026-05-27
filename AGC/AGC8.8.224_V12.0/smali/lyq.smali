.class final Llyq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lapy;

.field final synthetic b:Llys;


# direct methods
.method public constructor <init>(Llys;Lapy;)V
    .locals 0

    iput-object p1, p0, Llyq;->b:Llys;

    iput-object p2, p0, Llyq;->a:Lapy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 58

    move-object/from16 v1, p0

    iget-object v0, v1, Llyq;->b:Llys;

    iget-object v0, v0, Llys;->a:Lapt;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, v1, Llyq;->b:Llys;

    iget-object v0, v0, Llys;->a:Lapt;

    iget-object v2, v1, Llyq;->a:Lapy;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "title"

    invoke-static {v2, v0}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "experienceId"

    invoke-static {v2, v4}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "queryableTags"

    invoke-static {v2, v5}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "queryableEpochTimestamp"

    invoke-static {v2, v6}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "queryableDuration"

    invoke-static {v2, v7}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "approximateTotalSize"

    invoke-static {v2, v8}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "namespaceId"

    invoke-static {v2, v9}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "partitionId"

    invoke-static {v2, v10}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "f250ResourceId"

    invoke-static {v2, v11}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "f250AutoUploadDelay"

    invoke-static {v2, v12}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "airlockExpiration"

    invoke-static {v2, v13}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "f250Expiration"

    invoke-static {v2, v14}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "wipeout"

    invoke-static {v2, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "deleteAirlockFilesOnceUploaded"

    invoke-static {v2, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "nonSignedInDataOwners"

    invoke-static {v2, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "overridenObfuscatedGaiaId"

    invoke-static {v2, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "uploadTransferHandle"

    invoke-static {v2, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "relations"

    invoke-static {v2, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "provenance"

    invoke-static {v2, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "indexTokens"

    invoke-static {v2, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "onDeviceId"

    invoke-static {v2, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v15

    const-string v15, "status_addedToAirlockEpochTimestamp"

    invoke-static {v2, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "status_uploadToF250RequestedEpochTimestamp"

    invoke-static {v2, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "status_uploadToF250CompletedEpochTimestamp"

    invoke-static {v2, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "status_airlockFileState"

    invoke-static {v2, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "status_uploadState"

    invoke-static {v2, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "status_uploadProgressPercent"

    invoke-static {v2, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v30

    const/16 v31, 0x0

    if-eqz v30, :cond_3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_0

    move/from16 v30, v3

    move-object/from16 v3, v31

    goto :goto_1

    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move/from16 v30, v3

    move-object/from16 v3, v31

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1

    move/from16 v32, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v30

    move/from16 v14, v32

    goto :goto_0

    :cond_1
    move/from16 v32, v14

    move/from16 v3, v30

    goto :goto_0

    :cond_2
    move/from16 v32, v14

    move/from16 v3, v30

    goto :goto_0

    :cond_3
    move/from16 v30, v3

    move/from16 v32, v14

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v3, v1, Llyq;->b:Llys;

    invoke-virtual {v3, v15}, Llys;->g(Ljava/util/HashMap;)V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v34, v31

    goto :goto_2

    :cond_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v0

    :goto_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v35, v31

    goto :goto_3

    :cond_5
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v35, v0

    :goto_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v0, v31

    goto :goto_4

    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Llyc;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object v36

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v0, v31

    goto :goto_5

    :cond_7
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v37

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, v31

    goto :goto_6

    :cond_8
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v38

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v41, v31

    goto :goto_7

    :cond_9
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v41, v0

    :goto_7
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v42, v31

    goto :goto_8

    :cond_a
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    :goto_8
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v0, v31

    goto :goto_9

    :cond_b
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Llyc;->z(Ljava/lang/String;)Lluq;

    move-result-object v43

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object/from16 v0, v31

    goto :goto_a

    :cond_c
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v44

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v0, v31

    goto :goto_b

    :cond_d
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_b
    invoke-static {v0}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v45

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, v31

    goto :goto_c

    :cond_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_c
    invoke-static {v0}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v46

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, v31

    goto :goto_d

    :cond_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_d
    invoke-static {v0}, Llyc;->f([B)Lnty;

    move-result-object v47

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_10

    const/16 v48, 0x1

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    const/16 v48, 0x0

    :goto_e
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, v31

    goto :goto_f

    :cond_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-static {v0}, Llyc;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v49

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v50, v31

    goto :goto_10

    :cond_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v50, v0

    :goto_10
    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v51, v31

    goto :goto_11

    :cond_13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v51, v0

    :goto_11
    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, v31

    goto :goto_12

    :cond_14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_12
    invoke-static {v0}, Llyc;->e([B)Lobo;

    move-result-object v52

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, v31

    goto :goto_13

    :cond_15
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_13
    invoke-static {v0}, Llyc;->d([B)Lobn;

    move-result-object v53

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, v31

    goto :goto_14

    :cond_16
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_14
    invoke-static {v0}, Llyc;->c([B)Lntv;

    move-result-object v54

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v3, v24

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v3, v31

    goto :goto_15

    :cond_17
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_15
    invoke-static {v3}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v5

    move/from16 v3, v25

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v3, v31

    goto :goto_16

    :cond_18
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_16
    invoke-static {v3}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v6

    move/from16 v3, v26

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v3, v31

    goto :goto_17

    :cond_19
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_17
    invoke-static {v3}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v7

    move/from16 v3, v27

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Llyc;->m(I)Llul;

    move-result-object v8

    move/from16 v3, v28

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Llyc;->n(I)Llvk;

    move-result-object v9

    move/from16 v3, v29

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    new-instance v55, Llwz;

    move-object/from16 v4, v55

    invoke-direct/range {v4 .. v11}, Llwz;-><init>(Lnyy;Lnyy;Lnyy;Llul;Llvk;D)V

    new-instance v3, Llyf;

    move-object/from16 v33, v3

    invoke-direct/range {v33 .. v57}, Llyf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnyy;Lnwf;JLjava/lang/String;Ljava/lang/String;Lluq;Lnwf;Lnwf;Lnwf;Lnty;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lobo;Lobn;Lntv;Llwz;J)V

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, v31

    goto :goto_18

    :cond_1a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    :goto_18
    if-eqz v0, :cond_1b

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_19

    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_19
    new-instance v4, Llyg;

    invoke-direct {v4, v3, v0}, Llyg;-><init>(Llyf;Ljava/util/List;)V

    move-object/from16 v31, v4

    goto :goto_1a

    :cond_1c
    :goto_1a
    iget-object v0, v1, Llyq;->b:Llys;

    iget-object v0, v0, Llys;->a:Lapt;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v0, v1, Llyq;->a:Lapy;

    invoke-virtual {v0}, Lapy;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Llyq;->b:Llys;

    iget-object v0, v0, Llys;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    return-object v31

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v2, v1, Llyq;->a:Lapy;

    invoke-virtual {v2}, Lapy;->j()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v2, v1, Llyq;->b:Llys;

    iget-object v2, v2, Llys;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    goto :goto_1c

    :goto_1b
    throw v0

    :goto_1c
    goto :goto_1b
.end method
