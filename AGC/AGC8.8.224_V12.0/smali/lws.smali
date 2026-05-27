.class final Llws;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lapy;

.field final synthetic b:Llwu;


# direct methods
.method public constructor <init>(Llwu;Lapy;)V
    .locals 0

    iput-object p1, p0, Llws;->b:Llwu;

    iput-object p2, p0, Llws;->a:Lapy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 66

    move-object/from16 v1, p0

    iget-object v0, v1, Llws;->b:Llwu;

    iget-object v0, v0, Llwu;->a:Lapt;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, v1, Llws;->b:Llwu;

    iget-object v0, v0, Llwu;->a:Lapt;

    iget-object v2, v1, Llws;->a:Lapy;

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

    iget-object v3, v1, Llws;->b:Llwu;

    invoke-virtual {v3, v15}, Llwu;->d(Ljava/util/HashMap;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v34, v31

    goto :goto_3

    :cond_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v34, v14

    :goto_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v35, v31

    goto :goto_4

    :cond_5
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v35, v14

    :goto_4
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v14, v31

    goto :goto_5

    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_5
    invoke-static {v14}, Llyc;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object v36

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v14, v31

    goto :goto_6

    :cond_7
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_6
    invoke-static {v14}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v37

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v14, v31

    goto :goto_7

    :cond_8
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_7
    invoke-static {v14}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v38

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v41, v31

    goto :goto_8

    :cond_9
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v41, v14

    :goto_8
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v42, v31

    goto :goto_9

    :cond_a
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v42, v14

    :goto_9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v14, v31

    goto :goto_a

    :cond_b
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_a
    invoke-static {v14}, Llyc;->z(Ljava/lang/String;)Lluq;

    move-result-object v43

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v14, v31

    goto :goto_b

    :cond_c
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_b
    invoke-static {v14}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v44

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v14, v31

    goto :goto_c

    :cond_d
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_c
    invoke-static {v14}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v45

    move/from16 v14, v32

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_e

    move-object/from16 v32, v31

    goto :goto_d

    :cond_e
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    :goto_d
    invoke-static/range {v32 .. v32}, Llyc;->l(Ljava/lang/Long;)Lnwf;

    move-result-object v46

    move/from16 v32, v0

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_f

    move-object/from16 v23, v31

    goto :goto_e

    :cond_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    :goto_e
    invoke-static/range {v23 .. v23}, Llyc;->f([B)Lnty;

    move-result-object v47

    move/from16 v23, v0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-eqz v16, :cond_10

    const/16 v48, 0x1

    goto :goto_f

    :cond_10
    const/16 v16, 0x0

    const/16 v48, 0x0

    :goto_f
    move/from16 v16, v0

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v17, v31

    goto :goto_10

    :cond_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    :goto_10
    invoke-static/range {v17 .. v17}, Llyc;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v49

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v50, v31

    goto :goto_11

    :cond_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v50, v18

    :goto_11
    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v51, v31

    goto :goto_12

    :cond_13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v51, v19

    :goto_12
    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v20, v31

    goto :goto_13

    :cond_14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    :goto_13
    invoke-static/range {v20 .. v20}, Llyc;->e([B)Lobo;

    move-result-object v52

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v21, v31

    goto :goto_14

    :cond_15
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    :goto_14
    invoke-static/range {v21 .. v21}, Llyc;->d([B)Lobn;

    move-result-object v53

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_16

    move-object/from16 v22, v31

    goto :goto_15

    :cond_16
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    :goto_15
    invoke-static/range {v22 .. v22}, Llyc;->c([B)Lntv;

    move-result-object v54

    move/from16 v22, v0

    move/from16 v0, v30

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v30, v4

    move/from16 v4, v24

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_17

    move-object/from16 v24, v31

    goto :goto_16

    :cond_17
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    :goto_16
    invoke-static/range {v24 .. v24}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v59

    move/from16 v24, v4

    move/from16 v4, v25

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_18

    move-object/from16 v25, v31

    goto :goto_17

    :cond_18
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    :goto_17
    invoke-static/range {v25 .. v25}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v60

    move/from16 v25, v4

    move/from16 v4, v26

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_19

    move-object/from16 v26, v31

    goto :goto_18

    :cond_19
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v61

    invoke-static/range {v61 .. v62}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    :goto_18
    invoke-static/range {v26 .. v26}, Llyc;->k(Ljava/lang/Long;)Lnyy;

    move-result-object v61

    move/from16 v26, v4

    move/from16 v4, v27

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Llyc;->m(I)Llul;

    move-result-object v62

    move/from16 v27, v4

    move/from16 v4, v28

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Llyc;->n(I)Llvk;

    move-result-object v63

    move/from16 v28, v4

    move/from16 v4, v29

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v64

    new-instance v55, Llwz;

    move-object/from16 v58, v55

    invoke-direct/range {v58 .. v65}, Llwz;-><init>(Lnyy;Lnyy;Lnyy;Llul;Llvk;D)V

    move/from16 v29, v4

    new-instance v4, Llyf;

    move-object/from16 v33, v4

    invoke-direct/range {v33 .. v57}, Llyf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnyy;Lnwf;JLjava/lang/String;Ljava/lang/String;Lluq;Lnwf;Lnwf;Lnwf;Lnty;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lobo;Lobn;Lntv;Llwz;J)V

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1a

    move/from16 v34, v0

    move-object/from16 v0, v31

    goto :goto_19

    :cond_1a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move/from16 v34, v0

    move-object/from16 v0, v33

    :goto_19
    if-eqz v0, :cond_1b

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_1a

    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1a
    move/from16 v33, v5

    new-instance v5, Llyg;

    invoke-direct {v5, v4, v0}, Llyg;-><init>(Llyf;Ljava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v30

    move/from16 v0, v32

    move/from16 v5, v33

    move/from16 v30, v34

    move/from16 v32, v14

    goto/16 :goto_2

    :cond_1c
    iget-object v0, v1, Llws;->b:Llwu;

    iget-object v0, v0, Llwu;->a:Lapt;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v0, v1, Llws;->a:Lapy;

    invoke-virtual {v0}, Lapy;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Llws;->b:Llwu;

    iget-object v0, v0, Llwu;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v2, v1, Llws;->a:Lapy;

    invoke-virtual {v2}, Lapy;->j()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v2, v1, Llws;->b:Llwu;

    iget-object v2, v2, Llwu;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    goto :goto_1c

    :goto_1b
    throw v0

    :goto_1c
    goto :goto_1b
.end method
