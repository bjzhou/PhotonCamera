.class public final Llye;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Laqv;

.field final synthetic b:Llyd;


# direct methods
.method public constructor <init>(Llyd;Laqv;)V
    .locals 0

    iput-object p1, p0, Llye;->b:Llyd;

    iput-object p2, p0, Llye;->a:Laqv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 57

    move-object/from16 v1, p0

    iget-object v0, v1, Llye;->b:Llyd;

    iget-object v0, v0, Llyd;->a:Ljava/lang/Object;

    check-cast v0, Lapt;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, v1, Llye;->b:Llyd;

    iget-object v0, v0, Llyd;->a:Ljava/lang/Object;

    iget-object v2, v1, Llye;->a:Laqv;

    check-cast v0, Lapt;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_31

    :try_start_2
    const-string v4, "title"

    invoke-static {v2, v4}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "status_uploadProgressPercent"

    const-string v6, "status_uploadState"

    const-string v7, "status_airlockFileState"

    const-string v8, "status_uploadToF250CompletedEpochTimestamp"

    const-string v9, "status_uploadToF250RequestedEpochTimestamp"

    const-string v10, "status_addedToAirlockEpochTimestamp"

    const-string v11, "onDeviceId"

    const-string v12, "indexTokens"

    const-string v13, "provenance"

    const-string v14, "relations"

    const-string v15, "uploadTransferHandle"

    const-string v3, "overridenObfuscatedGaiaId"

    const-string v1, "nonSignedInDataOwners"

    move-object/from16 v16, v0

    const-string v0, "deleteAirlockFilesOnceUploaded"

    move/from16 v17, v4

    const-string v4, "wipeout"

    move-object/from16 v18, v5

    const-string v5, "f250Expiration"

    move-object/from16 v19, v6

    const-string v6, "f250AutoUploadDelay"

    move-object/from16 v20, v7

    const-string v7, "airlockExpiration"

    move-object/from16 v21, v8

    const-string v8, "f250ResourceId"

    move-object/from16 v22, v9

    const-string v9, "partitionId"

    move-object/from16 v23, v10

    const-string v10, "namespaceId"

    move-object/from16 v24, v11

    const-string v11, "approximateTotalSize"

    move-object/from16 v25, v12

    const-string v12, "queryableDuration"

    move-object/from16 v26, v13

    const-string v13, "queryableEpochTimestamp"

    move-object/from16 v27, v14

    const-string v14, "queryableTags"

    move-object/from16 v28, v15

    const-string v15, "experienceId"

    invoke-static {v2, v15}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    invoke-static {v2, v14}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    invoke-static {v2, v13}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    invoke-static {v2, v12}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    invoke-static {v2, v11}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-static {v2, v10}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-static {v2, v9}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    invoke-static {v2, v8}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    invoke-static {v2, v7}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    invoke-static {v2, v6}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    invoke-static {v2, v5}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v0}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v1}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    move-object/from16 v3, v28

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    move-object/from16 v3, v27

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    move-object/from16 v3, v26

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    move-object/from16 v3, v25

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    move-object/from16 v3, v24

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    move-object/from16 v3, v23

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    move-object/from16 v3, v22

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    move-object/from16 v3, v21

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    move-object/from16 v3, v20

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    move-object/from16 v3, v19

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    move-object/from16 v3, v18

    invoke-static {v2, v3}, Laeq;->n(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const/4 v3, -0x1

    const/16 v30, 0x0

    move/from16 v31, v1

    move/from16 v1, v17

    if-ne v1, v3, :cond_0

    move-object/from16 v33, v30

    goto :goto_1

    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v33, v30

    goto :goto_1

    :cond_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v33, v1

    :goto_1
    if-ne v15, v3, :cond_2

    move-object/from16 v34, v30

    goto :goto_2

    :cond_2
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v34, v30

    goto :goto_2

    :cond_3
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v1

    :goto_2
    if-ne v14, v3, :cond_4

    move-object/from16 v35, v30

    goto :goto_4

    :cond_4
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v1, v30

    goto :goto_3

    :cond_5
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Llyc;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v35, v1

    :goto_4
    if-ne v13, v3, :cond_6

    move-object/from16 v36, v30

    goto :goto_6

    :cond_6
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v1, v30

    goto :goto_5

    :cond_7
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v1

    move-object/from16 v36, v1

    :goto_6
    if-ne v12, v3, :cond_8

    move-object/from16 v37, v30

    goto :goto_8

    :cond_8
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v1, v30

    goto :goto_7

    :cond_9
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_7
    invoke-static {v1}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v1

    move-object/from16 v37, v1

    :goto_8
    const-wide/16 v12, 0x0

    if-ne v11, v3, :cond_a

    move-wide/from16 v38, v12

    goto :goto_9

    :cond_a
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-wide/from16 v38, v14

    :goto_9
    if-ne v10, v3, :cond_b

    move-object/from16 v40, v30

    goto :goto_a

    :cond_b
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v40, v30

    goto :goto_a

    :cond_c
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v40, v1

    :goto_a
    if-ne v9, v3, :cond_d

    move-object/from16 v41, v30

    goto :goto_b

    :cond_d
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v41, v30

    goto :goto_b

    :cond_e
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v41, v1

    :goto_b
    if-ne v8, v3, :cond_f

    move-object/from16 v42, v30

    goto :goto_d

    :cond_f
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v1, v30

    goto :goto_c

    :cond_10
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-static {v1}, Llyc;->z(Ljava/lang/String;)Lluq;

    move-result-object v1

    move-object/from16 v42, v1

    :goto_d
    if-ne v7, v3, :cond_11

    move-object/from16 v43, v30

    goto :goto_f

    :cond_11
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v1, v30

    goto :goto_e

    :cond_12
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_e
    invoke-static {v1}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v1

    move-object/from16 v43, v1

    :goto_f
    if-ne v6, v3, :cond_13

    move-object/from16 v44, v30

    goto :goto_11

    :cond_13
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v1, v30

    goto :goto_10

    :cond_14
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_10
    invoke-static {v1}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v1

    move-object/from16 v44, v1

    :goto_11
    if-ne v5, v3, :cond_15

    move-object/from16 v45, v30

    goto :goto_13

    :cond_15
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v1, v30

    goto :goto_12

    :cond_16
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_12
    invoke-static {v1}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v1

    move-object/from16 v45, v1

    :goto_13
    if-ne v4, v3, :cond_17

    move-object/from16 v46, v30

    goto :goto_15

    :cond_17
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object/from16 v1, v30

    goto :goto_14

    :cond_18
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_14
    invoke-static {v1}, Llyc;->f([B)Lnty;

    move-result-object v1

    move-object/from16 v46, v1

    :goto_15
    if-ne v0, v3, :cond_19

    const/16 v47, 0x0

    goto :goto_16

    :cond_19
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    const/16 v47, 0x1

    goto :goto_16

    :cond_1a
    const/16 v47, 0x0

    :goto_16
    move/from16 v0, v31

    if-ne v0, v3, :cond_1b

    move-object/from16 v48, v30

    goto :goto_18

    :cond_1b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object/from16 v0, v30

    goto :goto_17

    :cond_1c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-static {v0}, Llyc;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v48, v0

    :goto_18
    move/from16 v0, v29

    if-ne v0, v3, :cond_1d

    move-object/from16 v49, v30

    goto :goto_19

    :cond_1d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object/from16 v49, v30

    goto :goto_19

    :cond_1e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v49, v0

    :goto_19
    move/from16 v0, v28

    if-ne v0, v3, :cond_1f

    move-object/from16 v50, v30

    goto :goto_1a

    :cond_1f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object/from16 v50, v30

    goto :goto_1a

    :cond_20
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v50, v0

    :goto_1a
    move/from16 v0, v27

    if-ne v0, v3, :cond_21

    move-object/from16 v51, v30

    goto :goto_1c

    :cond_21
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object/from16 v0, v30

    goto :goto_1b

    :cond_22
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_1b
    invoke-static {v0}, Llyc;->e([B)Lobo;

    move-result-object v0

    move-object/from16 v51, v0

    :goto_1c
    move/from16 v0, v26

    if-ne v0, v3, :cond_23

    move-object/from16 v52, v30

    goto :goto_1e

    :cond_23
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_24

    move-object/from16 v0, v30

    goto :goto_1d

    :cond_24
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Llyc;->d([B)Lobn;

    move-result-object v0

    move-object/from16 v52, v0

    :goto_1e
    move/from16 v0, v25

    if-ne v0, v3, :cond_25

    move-object/from16 v53, v30

    goto :goto_20

    :cond_25
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_26

    move-object/from16 v0, v30

    goto :goto_1f

    :cond_26
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_1f
    invoke-static {v0}, Llyc;->c([B)Lntv;

    move-result-object v0

    move-object/from16 v53, v0

    :goto_20
    move/from16 v0, v24

    if-ne v0, v3, :cond_27

    move-wide/from16 v55, v12

    goto :goto_21

    :cond_27
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide/from16 v55, v0

    :goto_21
    move/from16 v0, v23

    if-ne v0, v3, :cond_28

    move-object/from16 v5, v30

    goto :goto_23

    :cond_28
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object/from16 v0, v30

    goto :goto_22

    :cond_29
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_22
    invoke-static {v0}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v0

    move-object v5, v0

    :goto_23
    move/from16 v0, v22

    if-ne v0, v3, :cond_2a

    move-object/from16 v6, v30

    goto :goto_25

    :cond_2a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    move-object/from16 v0, v30

    goto :goto_24

    :cond_2b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_24
    invoke-static {v0}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v0

    move-object v6, v0

    :goto_25
    move/from16 v0, v21

    if-ne v0, v3, :cond_2c

    move-object/from16 v7, v30

    goto :goto_27

    :cond_2c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object/from16 v0, v30

    goto :goto_26

    :cond_2d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_26
    invoke-static {v0}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v0

    move-object v7, v0

    :goto_27
    move/from16 v0, v20

    if-ne v0, v3, :cond_2e

    move-object/from16 v8, v30

    goto :goto_28

    :cond_2e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Llyc;->m(I)Llul;

    move-result-object v0

    move-object v8, v0

    :goto_28
    move/from16 v0, v19

    if-ne v0, v3, :cond_2f

    move-object/from16 v9, v30

    goto :goto_29

    :cond_2f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Llyc;->n(I)Llvk;

    move-result-object v30

    move-object/from16 v9, v30

    :goto_29
    move/from16 v0, v18

    if-ne v0, v3, :cond_30

    const-wide/16 v0, 0x0

    move-wide v10, v0

    goto :goto_2a

    :cond_30
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    move-wide v10, v0

    :goto_2a
    new-instance v54, Llwz;

    move-object/from16 v4, v54

    invoke-direct/range {v4 .. v11}, Llwz;-><init>(Lnyy;Lnyy;Lnyy;Llul;Llvk;D)V

    new-instance v0, Llyf;

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v56}, Llyf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnyy;Lnwf;JLjava/lang/String;Ljava/lang/String;Lluq;Lnwf;Lnwf;Lnwf;Lnty;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lobo;Lobn;Lntv;Llwz;J)V

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    move-object v0, v1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_2b

    :cond_31
    move-object v1, v0

    move-object/from16 v3, p0

    :try_start_3
    iget-object v0, v3, Llye;->b:Llyd;

    iget-object v0, v0, Llyd;->a:Ljava/lang/Object;

    check-cast v0, Lapt;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v0, v3, Llye;->b:Llyd;

    iget-object v0, v0, Llyd;->a:Ljava/lang/Object;

    check-cast v0, Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_2b

    :catchall_2
    move-exception v0

    move-object v3, v1

    :goto_2b
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_2c

    :catchall_4
    move-exception v0

    move-object v3, v1

    :goto_2c
    iget-object v1, v3, Llye;->b:Llyd;

    iget-object v1, v1, Llyd;->a:Ljava/lang/Object;

    check-cast v1, Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    goto :goto_2e

    :goto_2d
    throw v0

    :goto_2e
    goto :goto_2d
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llye;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
